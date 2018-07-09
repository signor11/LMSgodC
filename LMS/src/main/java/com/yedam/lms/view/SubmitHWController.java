package com.yedam.lms.view;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.yedam.lms.classs.ClassService;
import com.yedam.lms.hw.AddFileService;
import com.yedam.lms.hw.AddFileVO;
import com.yedam.lms.hw.HWService;
import com.yedam.lms.hw.SubmitHWService;
import com.yedam.lms.hw.SubmitHWVO;


@Controller
public class SubmitHWController {

	@Autowired
	SubmitHWService submitHWService;
	@Autowired
	AddFileService addfileService;
	@Autowired
	HWService hwService;
	@Autowired
	ClassService classService;
	
	
	//학생과제제출폼
	@RequestMapping(value = "/submitHW", method= RequestMethod.GET)
	public String submitHwInsertform(HttpServletRequest request, SubmitHWVO vo, HttpSession session) {
		vo.setStudentnum((String)session.getAttribute("loginvo"));
		request.setAttribute("sb", hwService.getHW(vo.getHwnum()));
		request.setAttribute("up_hw", submitHWService.getsubmitHw(vo));
		return "hw/submitHW";
	}
	
	//학생과제제출
		@RequestMapping(value = "/submitHW", method= RequestMethod.POST)
		public String submitHWInsert(SubmitHWVO vo, HttpSession session, HttpServletRequest request) throws IllegalStateException, IOException {
			
			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
			MultipartFile file = multipartRequest.getFile("tempuploadfile");

			if (!file.isEmpty() && file.getSize() > 0) {
				String filename = file.getOriginalFilename();
				file.transferTo(new File("d:/upload", filename));
			
				AddFileVO addvo = new AddFileVO();
				addvo.setAddfilename(filename);
				addfileService.addfileInsert(addvo);
				vo.setAddfileid(addvo.getAddfileid());
				
			}
			
			
			vo.setStudentnum((String)session.getAttribute("loginvo"));
			
			submitHWService.submitHwInsert(vo);
			request.setAttribute("id", vo.getAddfileid());
			return "redirect:/getHWList?classnum="+vo.getClassnum();
		}
		
	//학생과제수정
		@RequestMapping(value = "/submitHWUpdate", method= RequestMethod.POST)
		public String submitHwUpdate(SubmitHWVO vo, HttpSession session) {
			vo.setStudentnum((String)session.getAttribute("loginvo"));
			submitHWService.submitHwUpdate(vo);
			return "redirect:/getHWList";
		}
		
	//교수의 학생 과제 확인
		@RequestMapping(value = "/getsubmitHwList")
		public String getsubmitHwList(HttpServletRequest request, SubmitHWVO vo, @RequestParam String hwnum) {
			vo.setHwnum(hwnum);
			request.setAttribute("hw", hwService.getHW(vo.getHwnum()));
			request.setAttribute("sh", submitHWService.getsubmitHwList(vo));
			request.setAttribute("cn", classService.getClass(vo.getClassnum()));
			return "hw/submitHWListPro";
			
		}
		
		
		
	
	//파일 다운
		
		@RequestMapping("/getAddFile")
		public void getAddFile(@RequestParam String addfileid, HttpServletResponse response, HttpServletRequest request)
				throws Exception {
			AddFileVO vo = addfileService.getAddFile(addfileid);
			String filename = vo.getAddfilename();
			System.out.println(vo);
			File uFile = new File("d:/upload", filename);
			long fSize = uFile.length();
			if (fSize > 0) {
				String mimetype = "application/x-msdownload";
				response.setContentType(mimetype);
				// response.setHeader("Content-Disposition", "attachment;
				// filename=\"" + URLEncoder.encode(fvo.getOrignlFileNm(), "utf-8") + "\"");
				setDisposition(filename, request, response);
				BufferedInputStream in = null;
				BufferedOutputStream out = null;
				try {
					in = new BufferedInputStream(new FileInputStream(uFile));
					out = new BufferedOutputStream(response.getOutputStream());
					//FileCopyUtils.copy(in, out);
					
					int temp;
					while((temp = in.read()) != -1) {
						out.write(temp);
					}
					out.flush();
				} catch (IOException ex) {
				} finally {
					in.close();
					response.getOutputStream().flush();
					response.getOutputStream().close();
				}
			} else {
				response.setContentType("application/x-msdownload");
				PrintWriter printwriter = response.getWriter();
				printwriter.println("<html>");
				printwriter.println("<h2>Could not get file name:<br>" + filename + "</h2>");
				printwriter.println("<center><h3><a href='javascript: history.go(-1)'>Back</a></h3></center>");
				printwriter.println("&copy; webAccess");
				printwriter.println("</html>");
				printwriter.flush();
				printwriter.close();
			}
		}

		private String getBrowser(HttpServletRequest request) {
			String header = request.getHeader("User-Agent");
			if (header.indexOf("MSIE") > -1) {
				return "MSIE";
			} else if (header.indexOf("Trident") > -1) { // IE11 문자열 깨짐 방지
				return "Trident";
			} else if (header.indexOf("Chrome") > -1) {
				return "Chrome";
			} else if (header.indexOf("Opera") > -1) {
				return "Opera";
			}
			return "Firefox";
		}

		/**
		 * Disposition 지정하기.
		 *
		 * @param filename
		 * @param request
		 * @param response
		 * @throws Exception
		 */
		private void setDisposition(String filename, HttpServletRequest request, HttpServletResponse response)
				throws Exception {
			String browser = getBrowser(request);
			String dispositionPrefix = "attachment; filename=";
			String encodedFilename = null;
			if (browser.equals("MSIE")) {
				encodedFilename = URLEncoder.encode(filename, "UTF-8").replaceAll("\\+", "%20");
			} else if (browser.equals("Trident")) { // IE11 문자열 깨짐 방지
				encodedFilename = URLEncoder.encode(filename, "UTF-8").replaceAll("\\+", "%20");
			} else if (browser.equals("Firefox")) {
				encodedFilename = "\"" + new String(filename.getBytes("UTF-8"), "8859_1") + "\"";
			} else if (browser.equals("Opera")) {
				encodedFilename = "\"" + new String(filename.getBytes("UTF-8"), "8859_1") + "\"";
			} else if (browser.equals("Chrome")) {
				StringBuffer sb = new StringBuffer();
				for (int i = 0; i < filename.length(); i++) {
					char c = filename.charAt(i);
					if (c > '~') {
						sb.append(URLEncoder.encode("" + c, "UTF-8"));
					} else {
						sb.append(c);
					}
				}
				encodedFilename = sb.toString();
			} else {
				throw new IOException("Not supported browser");
			}
			response.setHeader("Content-Disposition", dispositionPrefix + encodedFilename);
			if ("Opera".equals(browser)) {
				response.setContentType("application/octet-stream;charset=UTF-8");
			}
		}
		
		
	
}
