/**
 * 
 */
package com.yanxin.common.controller;

import java.util.Date;
import java.util.List;

import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.plugin.activerecord.RecordBuilder;
import com.yanxin.common.model.Station;

/**
 * @author Cheng Guozhen
 * 
 */
public class StationListController extends Controller {
	
	public void index() {
		
		String sqlString = "SELECT station.id,station.station_name,station_addr,station_desc,name,operation_class.op_name,station.create_time FROM station left join operation_class ON station.op_id = operation_class.id left join`sys_user` ON station.station_manager = `sys_user`.id";
		
		List<Record> stationRecords = Db.find(sqlString);
		setAttr("stationRecords", stationRecords);
		
		render("stationlist.jsp");
		
	}
	
	public void deleteItem() {
		int id = getParaToInt("Id");
//		int station_manager=getParaToInt("station_manager");
		boolean result = Db.deleteById("station", id);
//		int a=Db.update("update sys_user set grade=? where id=?", 4, station_manager);
		setAttr("result", result);
		renderJson();
	}
	
	public void getStationManager(){
		int id = getParaToInt("opclass");
		
		String sqlString = "select sys_user.id, sys_user.name from sys_user, operation_class where sys_user.operation_class_id = operation_class.id and operation_class.id = ?  AND sys_user.id NOT IN(select DISTINCT station_manager FROM station)";
		List<Record> userreRecords = Db.find(sqlString, id);
		
		setAttr("userreRecords", userreRecords);
		
		renderJson();
	}

	public void isExisting() {
		String stationName = getPara("stationName");
		
		List<Record> sRecords = Db.find("select * from station where station_name=?", stationName);
		
		if(sRecords.isEmpty()){
			
			setAttr("hasExisting", 0);
		}else{
			setAttr("hasExisting", 1);
		}
		renderJson();
	}
	
	public void addItem() {
		Station station = new Station();
		
		station.setStationName(getPara("station_name"));
		station.setOpId(getParaToLong("station_op"));
		station.setStationManager(getParaToLong("station_manager"));
		station.setStationAddr(getPara("station_addr"));
		station.setStationDesc(getPara("station_desc"));
		
		station.setCreateTime(new Date());
		
		boolean result = Db.save("station", station.toRecord());
//		int a=Db.update("update sys_user set grade=? where id=?", 3, getParaToInt("station_manager"));
		int b=Db.update("update sys_user set station_id=(select id from station where station_manager=?) where id=?",getParaToInt("station_manager"),getParaToInt("station_manager"));
//		int a=Db.update("update sys_user set operation_class_id=(select id from operation_class where op_manager=?) where id=?",getParaToLong("station_op"),getParaToLong("station_op"));
		setAttr("result", result);
		renderJson();
	}
}
