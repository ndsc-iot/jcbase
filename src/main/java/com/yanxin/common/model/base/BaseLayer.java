package com.yanxin.common.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseLayer<M extends BaseLayer<M>> extends Model<M> implements IBean {

	public void setId(java.lang.Long id) {
		set("id", id);
	}

	public java.lang.Long getId() {
		return get("id");
	}

	public void setBuildingId(java.lang.Long buildingId) {
		set("building_id", buildingId);
	}

	public java.lang.Long getBuildingId() {
		return get("building_id");
	}

	public void setLayerName(java.lang.String layerName) {
		set("layer_name", layerName);
	}

	public java.lang.String getLayerName() {
		return get("layer_name");
	}

	public void setCreateTime(java.util.Date createTime) {
		set("create_time", createTime);
	}

	public java.util.Date getCreateTime() {
		return get("create_time");
	}

}