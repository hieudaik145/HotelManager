package common;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public class Common {

	public static long tinhKhoangTime(String ngayDen, String ngayDi) {
		
		
		  DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

		  Date currentDate = new Date();
		  Date date1 = null;
		  Date date2 = null;
		  try {
		   String startDate = "01-01-2016";
		   String endDate = simpleDateFormat.format(currentDate);

		   date1 = simpleDateFormat.parse(ngayDen);
		   date2 = simpleDateFormat.parse(ngayDi);

		   long getDiff = date2.getTime() - date1.getTime();

		   long getDaysDiff = getDiff / (24 * 60 * 60 * 1000);
		   return getDaysDiff;
		  } catch (Exception e) {
		   e.printStackTrace();
		  }
		  return -1;
		  
		}
	
	public static Date convertToDate(String chuoi) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			 date = sdf.parse(chuoi);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return date;
	}
	
	public static java.sql.Date convertToDateSql(Date datevao){
		java.sql.Date date = new java.sql.Date(datevao.getTime());
		return date;
	}
}
