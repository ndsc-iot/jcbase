package com.yanxin.common.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseRoom<M extends BaseRoom<M>> extends Model<M> implements IBean {

	public void setId(java.lang.Long id) {
		set("id", id);
	}

	public java.lang.Long getId() {
		return get("id");
	}

	public void setLayerId(java.lang.Long layerId) {
		set("layer_id", layerId);
	}

	public java.lang.Long getLayerId() {
		return get("layer_id");
	}

	public void setRoomName(java.lang.String roomName) {
		set("room_name", roomName);
	}

	public java.lang.String getRoomName() {
		return get("room_name");
	}

	public void setCreateTime(java.util.Date createTime) {
		set("create_time", createTime);
	}

	public java.util.Date getCreateTime() {
		return get("create_time");
	}

}
