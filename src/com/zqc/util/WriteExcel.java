package com.zqc.util;

import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;



public class WriteExcel{
	
	public static void main(String[] args) {
		//writeDbtoExcel("student","");
	}
	public static String writeDbtoExcel(String tName,String path){
	
		HSSFWorkbook book=new HSSFWorkbook();
		HSSFSheet sheet=book.createSheet("表");
		try {
			PreparedStatement prst=null;
			Connection con=Basedao.getConnection();
			String sql="select * from "+tName+" where status1='已报名' order by department,datetime";
			prst=con.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			ResultSetMetaData rsmd=rs.getMetaData();//得到结果集的字段名
			int c=rsmd.getColumnCount();//得到数据表的结果集的字段的数量
			//生成表单的第一行，即表头
			HSSFRow row0=sheet.createRow(0);//创建第一行
			for(int i=0;i<c;i++){
				HSSFCell cel=row0.createCell(i);//创建第一行的第i列
				cel.setCellValue(rsmd.getColumnName(i+1));
//				cel.setCellStyle(style);
			}
			//将数据表中的数据按行导入进Excel表中
			int r=1;
			while(rs.next()){
				HSSFRow row=sheet.createRow(r++);//创建非第一行的其他行
				for(int i=0;i<c;i++){//仍然是c列，导入第r行的第i列
					HSSFCell cel=row.createCell(i);
					//以下两种写法均可
//					cel.setCellValue(rs.getString(rsmd.getColumnName(i+1)));
					cel.setCellValue(rs.getString(i+1));
				}
			}
			//用文件输出流类创建名为table的Excel表格
			FileOutputStream out=new FileOutputStream(path);
			book.write(out);//将HSSFWorkBook中的表写入输出流中
			Thread.sleep(500);
			out.close();
			//book.close;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return path;
	}

}
