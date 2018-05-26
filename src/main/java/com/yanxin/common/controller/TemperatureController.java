/**
 * 
 */
package com.yanxin.common.controller;

import java.util.List;

import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;

/**
 * @author Cheng Guozhen
 * 
 */
public class TemperatureController extends Controller {
	
	public void index() {
		
		render("chart.jsp");
	}

public void getSensorCode() {
		
		//long roomid = getParaToLong("room");
		long building_id = getParaToLong("building_id");
		
		List<Record> records = Db.find("select sensor_code,status,name from sensor where building_id = ?", building_id);
		
		if (records != null && !records.isEmpty()) {
			setAttr("records", records);
			setAttr("result", true);
			renderJson();
		}else {
			setAttr("result", false);
			renderJson();
		}
		
	}
	
	public void getSensorType() {
		
		// String sqlString = "select * from sensor_type where id<>11 and id <>10";
		String sqlString = "select * from sensor_type";
		List<Record> sensorTypeList = Db.find(sqlString);
		setAttr("sensorTypeList", sensorTypeList);
		renderJson();
	}
	
	public void getSensorStatus() {
		
		String sensor_code = getPara("sensor_code");
		
		Record record = Db.findById("sensor", "sensor_code", sensor_code);
		
		setAttr("record", record);
		
		renderJson();
		
	}
	
	public void getData() {
		
		String sensorCodeString = getPara("sensor_code");
		/*long sensorType = getParaToLong("type");
		long status = getParaToLong("status");*/
		String createTimeString = getPara("create_time");
		String endTimeString = getPara("end_time");
		
		String sqlString = "SELECT * FROM temp WHERE temp_sensor_code = ? AND create_time>? AND create_time<? ORDER BY create_time ASC LIMIT 50";
		
		List<Record> dataList = Db.find(sqlString,sensorCodeString,createTimeString,endTimeString);
		setAttr("dataList", dataList);
		
		// render("galleryquery.jsp");
		
		if(dataList != null && dataList.size() > 0){
			setAttr("result", true);
		}else{
			setAttr("result", false);
		}
		
		renderJson();
		
	}

}
