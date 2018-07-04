package com.yedam;

import java.math.BigDecimal;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.document.AbstractXlsxView;

@Component
public class CommonExcelView extends AbstractXlsxView {
	private static final Logger LOGGER = LoggerFactory.getLogger(CommonExcelView.class);

	@Override
	protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		Sheet sheet = workbook.createSheet("Datas in excel");
		
		
		CellStyle cellStyle = workbook.createCellStyle();
		cellStyle.setBorderTop(HSSFCellStyle.BORDER_THICK);
		cellStyle.setBorderBottom(HSSFCellStyle.BORDER_THICK);
		cellStyle.setBorderLeft(HSSFCellStyle.BORDER_THICK);
		cellStyle.setBorderRight(HSSFCellStyle.BORDER_THICK);
		
		Row row= sheet.createRow(0);;
		Cell cell= row.createCell(0);;
		cell.setCellStyle(cellStyle);
		int rowNum = 0;

		Font font = workbook.createFont();
		font.setFontName("맑은 고딕");

		

		String file_name = (String) model.get("filename") + System.currentTimeMillis() + ".xlsx";
		response.setHeader("Content-Disposition", "attachment; filename=\"" + file_name + "\"");
		// header 출력
		String[] headers = (String[]) model.get("headers");
		if (headers != null) {
			row = sheet.createRow(rowNum++);
			int colNum = 0;
			for (String header : headers) {
				row.createCell(colNum++).setCellValue(header);
			}
		}
		// body 출력
		List<Map<String, Object>> list = (List<Map<String, Object>>) model.get("datas");
		System.out.println(list);
		if (headers != null) {
			for (Map<String, Object> map : list) {
				row = sheet.createRow(rowNum++);
				int colNum = 0;
				for (String header : headers) {
					cell = row.createCell(colNum++);
					Object field = map.get(header);
					if (field == null) {
						field = "";
						System.out.println(header);
					}
					if (field instanceof String) {
						cell.setCellValue((String) field);
					} else if (field instanceof BigDecimal) {
						cell.setCellValue(((BigDecimal) field).doubleValue());
					} else if (field instanceof Date) {
						cell.setCellValue((Date) field);
					} else {
						cell.setCellValue(field.toString());
					}
				}
			}
		} else {
			for (Map<String, Object> map : list) {
				row = sheet.createRow(rowNum++);
				int colNum = 0;
				Iterator<String> iter = map.keySet().iterator();
				while (iter.hasNext()) {
					cell = row.createCell(colNum++);
					Object field = map.get(iter.next());
					if (field instanceof String) {
						cell.setCellValue((String) field);
					} else if (field instanceof BigDecimal) {
						cell.setCellValue(((BigDecimal) field).doubleValue());
					} else if (field instanceof Date) {
						cell.setCellValue((Date) field);
					} else {
						cell.setCellValue(field.toString());
					}
				}
			}
		}
		LOGGER.debug("### buildExcelDocument Map : {} end!!");
	}
}
