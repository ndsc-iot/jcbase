/**
 * 
 */
package com.yanxin.common.controller;

import java.util.Date;
import java.util.List;

import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.yanxin.common.model.Building;
import com.yanxin.common.model.Station;

/**
 * @author Cheng Guozhen
 * 
 */
public class BuildingListController extends Controller {
	
	public void index() {
		String sqlString = "SELECT building.id,building.building_name,building.create_time,station.station_name,station.station_addr FROM building,station WHERE building.station_id=station.id";
		
		List<Record> buildingList = Db.find(sqlString);
		setAttr("buildingList", buildingList);
		render("buildinglist.jsp");
	}
	
	public void deleteItem() {
		int id = getParaToInt("Id");
		
		boolean result = Db.deleteById("building", "id", id);
		
		setAttr("result", result);
		
		renderJson();
	}
	public void getStation() {
		int id = getParaToInt("opclass");
		
		String sqlString = "select id, station_name from station where op_id = ?";
		List<Record> stationRecords = Db.find(sqlString, id);
		if(null!=stationRecords && !stationRecords.isEmpty()){
			setAttr("notempty", true);
			setAttr("stationRecords", stationRecords);
		}else{
			setAttr("notempty", false);
		}
		
		renderJson();
		
	}
	public void addItem() {
		Building building = new Building();
		
		building.setBuildingName(getPara("building_name"));
		building.setStationId(getParaToLong("station"));
		
		building.setCreateTime(new Date());
		
		boolean result = Db.save("building", building.toRecord());
		setAttr("result", result);
		renderJson();
	}

	public void isExisting() {
		String buildingName = getPara("buildingName");
		
		List<Record> sRecords = Db.find("select * from building where building_name=?", buildingName);
		
		if(sRecords.isEmpty()){
			
			setAttr("hasExisting", 0);
		}else{
			setAttr("hasExisting", 1);
		}
		renderJson();
	}
	public void getBuilding() {
		int id = getParaToInt("station");
		
		List<Record> buildingRecords = Db.find("select id,building_name from building where station_id=?", id);
		if(buildingRecords != null && !buildingRecords.isEmpty()){
			setAttr("buildingRecords", buildingRecords);
			setAttr("notempty", true);
		}else {
			setAttr("notempty", false);
		}
		
		
		renderJson();
		
	}
}
