<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<% System.setProperty("no_visible_elements", "false"); 
 String localPathString = "/img/";
%>
<%@ include file="common/header.jsp" %>

<div>
    <ul class="breadcrumb">
        <li>
            <a href="/">主页</a>
        </li>
        <li>
            <a href="#">云台控制</a>
        </li>
    </ul>
</div>

<div class="row">

    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well">
                <h2><i class="glyphicon glyphicon-list-alt"></i> 默认预设点</h2>

            </div>
             <div class="box-content">
                	<!-- <div class="alert alert-info"> -->
      					<div hidden id="typealert" class="form-group alert alert-danger">
					    	<strong>警告:</strong>请选择一个运维组！
						</div>
      					<div hidden id="nooperationalert" class="form-group alert alert-danger">
					   		 <strong>警告:</strong>没有可用的运维组，请先创建运维组！
						</div>

      					<div class="form-inline row">
      						<div class="col-md-2">
      							<label class="form-label control-label">所属运维班</label>
      						</div>
      						<div class="col-md-6">	
	      						<select id="station_op_class" onchange="getOpClassSelect(this)" class="form-control selectpicker">
	                        		<option  value='0'>---请选择运维班---</option>
	                       		</select>
                       		</div>
      					</div>
      					
                        <div class="row">
      						<span> &nbsp;&nbsp;</span>
      					</div>
      					
					    <div hidden id="nostationalert" class="form-group alert alert-danger">
					   		 <strong>警告:</strong>该运维组无biandian站！
						</div>
      					<div hidden id="add_station_manager_div" class="form-inline row">
      						<div class="col-md-2">
      							<label class="form-label control-label">biandian站</label>
      						</div>
      						<div class="col-md-6">	
	      						<select id="add_station" onclick="managerSelect(this)" class="form-control selectpicker">
	                        		<option  value='0'>---请选择biandian站---</option>
	                       		</select>
                       		</div>
      					</div>
      					
      					<div class="row">
      						<span> &nbsp;&nbsp;</span>
      					</div>
      					
      					<div hidden id="nobuildingalert" class="form-group alert alert-danger">
					   		 <strong>警告:</strong>没有大楼信息，请先创建大楼！
						</div>
      					<div hidden id="add_building_div" class="form-inline row">
      						<div class="col-md-2">
      							<label class="form-label control-label">所属大楼</label>
      						</div>
      						<div class="col-md-6">	
	      						<select id="add_building" onclick="typeSelect(this)" class="form-control selectpicker">
                        		<option  value='0'>---请选择大楼---</option>	
	                       		</select>
                       		</div>
      					</div>
      					<div class="row">
      						<span> &nbsp;&nbsp;</span>
      					</div>

<!--       					<div hidden id="nolayeralert" class="form-group alert alert-danger"> -->
<!-- 					   		 <strong>警告:</strong>没有楼层信息，请先创建楼层！ -->
<!-- 						</div> -->
<!--       					<div hidden id="add_layer_div" class="form-inline row"> -->
<!--       						<div class="col-md-2"> -->
<!--       							<label class="form-label control-label">所属楼层</label> -->
<!--       						</div> -->
<!--       						<div class="col-md-6">	 -->
<!-- 	      						<select id="add_layer" onclick="roomSelect(this)" class="form-control selectpicker"> -->
<!--                         		<option  value='0'>---请选择楼层---</option> -->	 
<!-- 	                       		</select> -->
<!--                        		</div> -->
<!--       					</div> -->
      					
      					<!-- <div hidden id="noroomalert" class="form-group alert alert-danger">
					   		 <strong>警告:</strong>没有biandian室信息，请先创建！
						</div>
      					<div hidden id="add_room_div" class="form-inline row">
      						<div class="col-md-2">
      							<label class="form-label control-label">所属biandian室</label>
      						</div>
      						<div class="col-md-6">	
	      						<select id="add_room" onclick="roomSelect(this)" class="form-control selectpicker">
	                        		<option  value='0'>---请选择biandian室---</option>
	                       		</select>
                       		</div>
      					</div> -->
      					
<!--       					<div hidden id="notypealert" class="form-group alert alert-danger"> -->
<!-- 					   		 <strong>警告:</strong>没有类型信息，请先创建！ -->
<!-- 						</div> -->
<!--       					<div hidden id="add_type_div" class="form-inline row"> -->
<!--       						<div class="col-md-2"> -->
<!--       							<label class="form-label control-label">所属类型</label> -->
<!--       						</div> -->
<!--       						<div class="col-md-6">	 -->
<!-- 	      						<select id="add_type" onclick="typeSelect(this)" class="form-control selectpicker"> -->
<!--                       		<option  value='0'>---请选择监控器类型---</option>  -->	  
<!-- 	                       		</select> -->
<!--                        		</div> -->
<!--       					</div> -->
      					
      					<div hidden id="nosensoralert" class="form-group alert alert-danger">
					   		 <strong>警告:</strong>没有监控器，请先添加！
						</div>
						<div hidden id="nosensoralert2" class="form-group alert alert-danger">
					   		 <strong>警告:</strong>该监控器不存在，请确认！
						</div>
      					<div hidden id = "sensor_code_div" class="form-inline row">
      						<div class="col-md-2">
        						<label class="form-label control-label">监控器编号</label>
        					</div> 
        					<div class="col-md-6">
        						<select id="add_sensor_code" onclick="codeSelect(this)" class="form-control selectpicker">
	                        		<option  value='0'>----请选择监控器编号----</option>
	                       		</select>
        						<!-- <input  id ="add_sensor_code_value" type="text"  onblur="isNameEmpt(this)" onfocus="hiddenNameAlert()" class="form-control" value=""> -->
        					</div>
        					<div class="col-md-2">
        						<span class='availability_status'></span>
        					</div>
      					</div>
      					<div hidden id="nocolouralert" class="form-group alert alert-danger">
					   		 <strong>警告:</strong>没有配置云台设置点，请先添加！
						</div>
						<div hidden id="nocolouralert2" class="form-group alert alert-danger">
					   		 <strong>警告:</strong>设置点不存在，请确认！
						</div>
						
						<div class="row">
      						<span> &nbsp;&nbsp;</span>
      					</div> 
						
      					<div hidden id = "platform_code_div" class="form-inline row">
      						<div class="col-md-2">
        						<label class="form-label control-label">云台预设点</label>
        					</div> 
        					<div class="col-md-8">
								<div id = "platform_checkbox" >
								
								</div>
								<div id = "platform_checkbox_button" >
								
								</div>
							</div>
        					
        					<div class="col-md-2">
        						<span class='availability_status'></span>
        					</div>
      					</div>
      					<div class="row">
      						<span> &nbsp;&nbsp;</span>
      					</div> 
      					<div hidden id = "image_show_div" class="form-inline row">
                    		<ul id = "myquerygallery" class="thumbnails gallery">

                    		</ul>
      					</div>

   						<%-- <c:forEach var="ilist" items="${records}">
		                    		 <li hidden id="${ilist.id}" class="thumbnail">
		                                <a style="background:url(<%=request.getContextPath()+localPathString%>${ilist.pp_sensor_code}<%="/"%>${ilist.images}<%=".jpg"%>)"
		                                   title="${ilist.platform_code}" href="<%=request.getContextPath()+localPathString%>${ilist.pp_sensor_code}<%="/"%>${ilist.images}<%=".jpg"%>"><img
		                                        class="gallery" src="<%=request.getContextPath()+localPathString%>${ilist.pp_sensor_code}<%="/"%>${ilist.images}<%=".jpg"%>">${ilist.images}</a>
		                            </li>
                    			</c:forEach> --%>
						
                    <button id="op_class_add" type="button" onclick="command(this)" class="btn btn-success btn-lg" value="0" disabled style="text-shadow: black 5px 3px 3px;"><i
                                class="glyphicon glyphicon-pushpin glyphicon-white"></i>设置默认预设点</button>

                    <br>
                <!-- </div>   -->  
            

            </div>
        </div>
    </div>


</div><!--/row-->

<script type="text/javascript" src="${res_url}jsto/highchart/highcharts.js"></script>
<script type="text/javascript" src="${res_url}jsto/highchart/exporting.js"></script>

<script type="text/javascript">
   $(window).load(function(){

		getOperationClass();
		// $('#op_class_add').text("转动云台");

    });

    //5、获取多个选中的checkbox值
    /*  var vals = [];
     $('input:checkbox:checked').each(function (index, item) {
         vals.push($(this).val());
     }); */

     //6、判断checkbox是否选中（jquery 1.6以前版本 用  $(this).attr("checked")）    $("input:checkbox").change
     function checkChanged() {

     	var obj = document.getElementsByName("mypcode");//选择所有name="mypcode"的对象，返回数组    
        //var s='';//如果这样定义var s;变量s中会默认被赋个null值
        var ul=$("ul.thumbnails");//获取所有的li元素 
        var lis = ul.children('li.thumbnail');
        var tag = false;
        var select_tag = new Array(obj.length);
        var select = 0;
        for(var i=0;i<obj.length;i++){

             if(obj[i].checked){ //取到对象数组后，我们来循环检测它是不是被选中
             	// s+=obj[i].value+','; //如果选中，将value添加到变量s中    
             	// $("ul li[class='thumbnail']").eq(i).show();
             	lis.eq(i).show();
             	tag = true;
             	select_tag[i] = 1;
             	select |= (0x00000001<<i);
             }else {
             	lis.eq(i).hide();
             	select_tag[i] = 0;
             }
        }
        if(tag){
        	$('#op_class_add').prop('disabled', false);
        }else{
        	$('#op_class_add').prop('disabled', true);
        }
     	console.log("checked--"+select);
		return select;
     }

    var status = 0;
	function command(which){
		var parentdiv = $(which).parents('.box-content');
		
		var type = parentdiv.find("#add_type");
		var sensor_code = parentdiv.find("#add_sensor_code");
		var station_op = parentdiv.find("#station_op_class");
		var station = parentdiv.find("#add_station");
		var building = parentdiv.find("#add_building");
		var layer = parentdiv.find("#add_layer");
		var room = parentdiv.find("#add_room");
		var colour = parentdiv.find("#add_angle_code");
		// var timeArray = $('#reportrange span').html().split(" - ");
		var platform = checkChanged();
		$.ajax({
			    type: 'POST',
			    dataType: 'json',
			    async: false,
			    url: "<%=request.getContextPath()%>"+"/platformdefault/setPlatform",
			    data: {"type":type.val(),
			    		"sensor_code":sensor_code.find("option:selected").val(),
			    		"station_op":station_op.val(),
			    		"station":station.val(),
			    		"building":building.val(),
			    		"layer":layer.val(),
			    		"room":room.val(),
			    		"status":status,
			    		"platform":platform},
			    timeout:10000,
			    success: function(data) {
			    	// var source = station.val()+'--'+building.val()+'--'+layer.val()+'--'+room.val();
					var result = data.result;
					// var record = data.record;
					if(result){
						/* var port = record.port;
					    // 加入调用命令
					    var commond = "ffplay -f h264 udp://192.168.1.118:"+port;
					    // var commond = "calc"
			            console.log(commond);
			            // exeCMD(command); */
			            $.toaster.reset();
			            $.toaster({priority : 'success', title : '提示信息', message : '云台默认预设点配置已经下发，请稍等！'});
					}else{ //添加失败
		                $.toaster({ priority : 'warning', title : '告警信息', message : '没有数据报告！'});
		                return false;
		            }
					
			    },
			    error:function(){
			    	$.toaster({ priority : 'danger', title : '错误信息', message : '请求错误，请确认路径正确或网络正常！'});
			    	//$('#addModal').modal("hide");
			    }
	        });
	        
	    //window.location.reload("/station");
	    return false;
	}

	
	function getOperationClass(){
	
		var which = $('#station_op_class');
		
		$(which).empty();
		
		$(which).append("<option value='0'>---请选择运维班---</option>"); 
		var name="${sessionScope.sysUser.name}";
		$.ajax({
			    type: 'POST',
			    dataType: 'json',
			    url: "<%=request.getContextPath()%>"+"/getoperation",
			    data:{"username":name},
			    success: function(data) {
					var result = data.oplist;
					var notEmpty = data.notempty;
					if(notEmpty){
						 
					     $.each(result, function(i,value){
					     	
					    	//$('#operationclass').options.add(new Option(value.op_name,value.id));
					    	// console.log(value.id+"--"+value.op_name);
					    	//$('#operationclass').append("<option value='"+value.id+"'"+">"+value.op_name+"</option>");
					    	$(which).append("<option value='"+value.id+"'>"+value.op_name+"</option>"); 
					    });
					}else{
						showAlert('nooperationalert');
						$('#add_station_manager_div').hide();
					}
			    }
	        });

	}
	
	function getOpClassSelect(which){
			        
	    var sindex = which.selectedIndex;
	    
	    hiddleComp('typealert',which);
	    $('div.alert-danger').hide(); 
		if(sindex == 0){
			isSelect('typealert',which);
			$('#add_station_manager_div').hide();
			
		}else{
			
			$('#add_station_manager_div').show();						
			getStation(which.value);
		}
		$('#add_building_div').hide();
		$('#add_layer_div').hide();
		$('#add_room_div').hide();
		$('#add_type_div').hide();
		$('#sensor_code_div').hide();
		$('#image_show_div').hide();
		$('#platform_code_div').hide();
		$('#op_class_add').prop('disabled', true);
	}
	
	function getStation(op){
		var which = $('#add_station');
		var opclass = op;
		// console.log("opclass="+opclass);
		hiddleComp('nostationalert',which);
		$(which).empty();
		$(which).append("<option  value='0'>---请选择biandian站---</option>");
		
		$.ajax({
			    type: 'POST',
			    dataType: 'json',
			    url: "<%=request.getContextPath()%>"+"/building/getStation",
			    data:{"opclass":opclass},
			    success: function(data) {
					var result = data.stationRecords;
					var notEmpty = data.notempty;
					if(result){
						
					     $.each(result, function(i,value){
					     	
					    	//$('#operationclass').options.add(new Option(value.op_name,value.id));
					    	// console.log(value.id+"--"+value.user_name);
					    	//$('#operationclass').append("<option value='"+value.id+"'"+">"+value.op_name+"</option>");
					    	$(which).append("<option value='"+value.id+"'>"+value.station_name+"</option>"); 
					    });
					}else{
						// console.log('nostationalert');
						showAlert('nostationalert');
						$('#add_station_manager_div').hide();
					}
			    }
	        });
	        
	}
	
	function managerSelect(which){
		var sindex = which.selectedIndex;
		$('div.alert-danger').hide(); 
		if(sindex == 0){
			$('#add_building_div').hide();
			
		}else{
			$('#add_building_div').show();
			
			
			getBuilding(which.value);
		}
		$('#add_layer_div').hide();
		$('#add_room_div').hide();
		$('#add_type_div').hide();
		$('#sensor_code_div').hide();
		$('#platform_code_div').hide();
		$('#image_show_div').hide();
		$('#op_class_add').prop('disabled', true);
	}
	

	function getBuilding(op){
		
		var which = $('#add_building');
		hiddleComp('nobuildingalert',which);
		$(which).empty();
		$(which).append("<option  value='0'>---请选择大楼---</option>");
		var para = op;
		$.ajax({
			    type: 'POST',
			    dataType: 'json',
			    url: "<%=request.getContextPath()%>"+"/layer/getBuilding",
			    data:{"station":para},
			    success: function(data) {
					var result = data.buildingRecords;
					if(result){
						
					     $.each(result, function(i,value){
					     	
					    	//$('#operationclass').options.add(new Option(value.op_name,value.id));
					    	//console.log(value.id+"--"+value.user_name);
					    	//$('#operationclass').append("<option value='"+value.id+"'"+">"+value.op_name+"</option>");
					    	$(which).append("<option value='"+value.id+"'>"+value.building_name+"</option>"); 
					    });
					}else{
						showAlert('nobuildingalert');
						$('#add_building_div').hide();
					}
			    }
	        });
	}

// 	function buildingSelect(which){
// 		var sindex = which.selectedIndex;
// 		$('div.alert-danger').hide(); 
// 		if(sindex == 0){
// 			$('#add_layer_div').hide();
			
// 		}else{
// 			$('#add_layer_div').show();

// 			getLayer(which.value);
// 		}
		
// 		$('#add_room_div').hide();
// 		$('#add_type_div').hide();
// 		$('#sensor_code_div').hide();
// 		$('#platform_code_div').hide();
// 		$('#image_show_div').hide();
// 		$('#op_class_add').prop('disabled', true);
// 	}
	
// 	function getLayer(op){
		
// 		var which = $('#add_layer');
		
// 		$(which).empty();
// 		$(which).append("<option  value='0'>---请选择楼层---</option>");
// 		var para = op;
// 		$.ajax({
// 			    type: 'POST',
// 			    dataType: 'json',
<%-- 			    url: "<%=request.getContextPath()%>"+"/room/getLayer", --%>
// 			    data:{"layer":para},
// 			    success: function(data) {
// 					var result = data.layerRecords;
// 					if(result){
// 						hiddleComp('nolayeralert',which);
// 					     $.each(result, function(i,value){
					     	
// 					    	//$('#operationclass').options.add(new Option(value.op_name,value.id));
// 					    	//console.log(value.id+"--"+value.user_name);
// 					    	//$('#operationclass').append("<option value='"+value.id+"'"+">"+value.op_name+"</option>");
// 					    	$(which).append("<option value='"+value.id+"'>"+value.layer_name+"</option>"); 
// 					    });
// 					}else{
// 						showAlert('nolayeralert');
// 						$('#add_layer_div').hide();
// 					}
// 			    }
// 	        });
// 	}
	
// 	function layerSelect(which){
// 		var sindex = which.selectedIndex;
// 		$('div.alert-danger').hide(); 
// 		if(sindex == 0){			
// 			$('#add_room_div').hide();
			
// 		}else{
// 			$('#add_room_div').show();
			
// 			getRoom(which.value);
// 		}
// 		$('#add_type_div').hide();
// 		$('#sensor_code_div').hide();
// 		$('#platform_code_div').hide();
// 		$('#image_show_div').hide();
// 		$('#op_class_add').prop('disabled', true);
// 	}
	
// 	function getRoom(op){
		
// 		var which = $('#add_room');
		
// 		$(which).empty();
// 		$(which).append("<option  value='0'>---请选择biandian室---</option>");
		
// 		var para = op;
// 		$.ajax({
// 			    type: 'POST',
// 			    dataType: 'json',
<%-- 			    url: "<%=request.getContextPath()%>"+"/room/getRoom", --%>
// 			    data:{"layer":para},
// 			    success: function(data) {
// 					var result = data.roomRecords;
// 					if(result){
// 						hiddleComp('noroomalert',which);
// 					     $.each(result, function(i,value){
					     	
// 					    	//$('#operationclass').options.add(new Option(value.op_name,value.id));
// 					    	//console.log(value.id+"--"+value.user_name);
// 					    	//$('#operationclass').append("<option value='"+value.id+"'"+">"+value.op_name+"</option>");
// 					    	$(which).append("<option value='"+value.id+"'>"+value.room_name+"</option>"); 
// 					    });
// 					}else{
// 						showAlert('noroomalert');
// 						$('#add_room_div').hide();
// 					}
// 			    }
// 	        });
// 	}

// 	function roomSelect(which){
// 		var sindex = which.selectedIndex;
// 		$('div.alert-danger').hide(); 
// 		if(sindex == 0){		
		
// 			$('#add_type_div').hide();
			
// 		}else{
// 			$('#add_type_div').show();
			
// 			getType(which.value);
// 		}
// 		$('#sensor_code_div').hide();
// 		$('#platform_code_div').hide();
// 		$('#image_show_div').hide();
// 		$('#op_class_add').prop('disabled', true);
// 	}
	
// 	function getType(op){
		
// 		var which = $('#add_type');
		
// 		$(which).empty();
// 		$(which).append("<option  value='0'>---请选择监控器类型---</option>");
		
// 		var para = op;
// 		$.ajax({
// 			    type: 'POST',
// 			    dataType: 'json',
<%-- 			    url: "<%=request.getContextPath()%>"+"/temp/getSensorType", --%>
// 			    data:{"room":para},
// 			    success: function(data) {
// 					var result = data.sensorTypeList;
// 					if(result){
// 						hiddleComp('notypealert',which);
// 					     $.each(result, function(i,value){
					     	
// 					    	//$('#operationclass').options.add(new Option(value.op_name,value.id));
// 					    	//console.log(value.id+"--"+value.user_name);
// 					    	//$('#operationclass').append("<option value='"+value.id+"'"+">"+value.op_name+"</option>");
// 					    	$(which).append("<option value='"+value.id+"'>"+value.type_name+"</option>"); 
// 					    });
// 					}else{
// 						showAlert('notypealert');
// 						$('#add_type_div').hide();
// 					}
// 			    }
// 	        });
// 	}
	
	function typeSelect(which){
	
		$('div.alert-danger').hide(); 
		var sindex = which.selectedIndex;
		if(sindex == 0){		
		
			$('#sensor_code_div').hide();
			
		}else{
			$('#sensor_code_div').show();
			getCode(which);
		}
		$('#platform_code_div').hide();
		$('#image_show_div').hide();
		$('#op_class_add').prop('disabled', true);
	}
	
	function getCode(op){
		
		var which = $(op);
		
		var parentdiv = $(which).parents('.box-content');

// 		var room = parentdiv.find("#add_room");
// 		var sensor_type = parentdiv.find("#add_type");
        var building_id = parentdiv.find("#add_building");
		$('#add_sensor_code').empty();
		$('#add_sensor_code').append("<option  value='0'>---请选择监控器编号---</option>");
		
		$.ajax({
			    type: 'POST',
			    dataType: 'json',
			    url: "<%=request.getContextPath()%>"+"/temp/getSensorCode",
			    data:{//"room":room.val(),
			    	"building_id":building_id.val()},
			    success: function(data) {
			    	var notEmpty = data.result;
					var result = data.records;
					
					if(notEmpty){
						hiddleComp('nosensoralert',which);
					     $.each(result, function(i,value){
					     	l=i+1;
					    	$('#add_sensor_code').append("<option value='"+value.sensor_code+"'>"+value.name+"</option>"); 
					    	// console.log("add_sensor_code value="+l);
					    });
					}else{
						showAlert('nosensoralert');
						$('#sensor_code_div').hide();
					}
			    }
	        });
	}

	
	function codeSelect(which){

		var code = $(which);
		var sindex = which.selectedIndex;
		//console.log("code-index="+code.val());
		$('div.alert-danger').hide(); 
		if(code.val() == 0){
			$('#platform_code_div').hide();
			$('#image_show_div').hide();
		}else{
			
			$('#platform_code_div').show();
			$('#image_show_div').show();
			getPlaform();
			// daterangetimeplugin();
			//console.log("code="+code.find("option:selected").text());

		}
		
		$('#op_class_add').prop('disabled', true);
	}
	
	
	
	function getPlaform(){
		var sensor_code = $("#add_sensor_code");

		$('#platform_checkbox').html("");
		// $('#add_angle_code').append("<option  value='0'>---请选择云台设置点---</option>");
		$('#platform_checkbox_button').html("");
		var ul=document.getElementById("myquerygallery");//获取所有的li元素 
		ul.innerHTML = "";
		$.ajax({
			    type: 'POST',
			    dataType: 'json',
			    url: "<%=request.getContextPath()%>"+"/platformdefault/getPlatform",
			    data:{"sensor_code":sensor_code.find("option:selected").val()},
			    success: function(data) {
			    	var notEmpty = data.result;
					var result = data.records;
					// console.log("notEmpty = "+notEmpty);
					if(notEmpty){
						hiddleComp('nocolouralert');
					     $.each(result, function(i,value){
					     	if(value.status > 0){
					     		$('#platform_checkbox').append("<input OnClick='checkChanged()' type='radio' id='"+value.id+" class='styled' value='"+value.id+"' name='mypcode' checked='checked'/>"+value.platform_code+"&nbsp;&nbsp;&nbsp;");
					     	}else {
					    		$('#platform_checkbox').append("<input OnClick='checkChanged()' type='radio' id='"+value.id+" class='styled' value='"+value.id+"' name='mypcode'/>"+value.platform_code+"&nbsp;&nbsp;&nbsp;");
					    	}
					    	<%-- var paths = <%=request.getContextPath()+localPathString%>;
					    	paths += value.pp_sensor_code+"/"+value.images+".jpg";
					    	backgroud = "background:url('"+paths+"')";
					    	ul.append("<li hidden class='thumbnail'><a style='"+backgroud+"' title='"+value.platform_code+"' href='"+paths+"'><img class='gallery' src='"+paths+"'>"+value.images+"</a></li>");
					    	console.log("path="+paths); --%>
					    	
					    	var paths = "<%=request.getContextPath()+localPathString%>";
					    	paths += value.pp_sensor_code+"/"+value.images+".jpg";
					    	var backgroud = "background:url('"+paths+"')";
					    	
					    	var temp = document.createElement("li"); 
					     	temp.id = value.id;
					     	temp.className = "thumbnail";
					     	ul.appendChild(temp);    	
					     	var tempa = document.createElement("a"); 
					     	tempa.href= paths;
					     	tempa.title = value.images;
					     	tempa.style=backgroud;
					     	tempa.className="gallery";
					     	//tempa.innerHTML=value.images;
					     	temp.appendChild(tempa);
					     	var tempimg = document.createElement("img"); 
					     	tempimg.src= paths;
					     	tempimg.className="gallery";
					     	tempa.appendChild(tempimg);
					     	//console.log("backgroud="+backgroud);
					    });
					    $("a.gallery").colorbox({
							"rel":"gallery"
						}); 
					    /* $('#platform_checkbox_button').append("<input id='checkbox_select' OnClick='selectAll()' name='mypcode' type='button' class='btn btn-primary' value='反选'>")
					    */
					}else{
						showAlert('nocolouralert');
						$('#platform_code_div').hide();
						$('#image_show_div').hide();
						$('#platform_checkbox_button').html("");
					}
			    }
	        });
	}

	//全选、取消全选的事件  
	function selectAll(){ 
	    console.log(1);
	    console.log($("input[type='checkbox'][name='mypcode']").prop("checked"));
	    if ($("input[type='checkbox'][name='mypcode']").prop("checked")) {
	        console.log(2);
	        $("input[type='checkbox'][name='mypcode']").prop("checked",false);//取消全选 
	    } else { 
	        console.log(3);               
	        $("input[type='checkbox'][name='mypcode']").prop("checked",true);  //全选 
	    } 
	    
	    checkChanged();
	}  


	function colourSelect(which){
		var code = $(which);
			
		var parentdiv = code.parents('.box-content');
		var sensor = parentdiv.find("#add_sensor_code");
		
		var image = parentdiv.find("#image_show_div");
		image.html("");
		var sindex = which.selectedIndex;
		//console.log("code-index="+code.val());
		if(code.val() == 0){
			$('#op_class_add').prop('disabled', true);
			$('#image_show_div').hide();
			//$('#op_class_add').text("开关监控器");
		}else{
			$('#op_class_add').prop('disabled', false);
			// $('#platform_code_div').show();
			// daterangetimeplugin();
			//console.log("code="+code.find("option:selected").text());
			$('#image_show_div').show();
			var imgNode=document.createElement('img');
			$('#image_show_div').append(imgNode);
			imgNode.src = "../img/show_img/"+code.val()+".jpg";
			$.ajax({
			    type: 'POST',
			    dataType: 'json',
			    url: "<%=request.getContextPath()%>"+"/temp/getSensorStatus",
			    data:{"sensor_code":sensor.find("option:selected").val()},
			    success: function(data) {
					var result = data.record;
					if(result){
					
						if(result.status == 0){
							status = 1;
							//$('#op_class_add').text("启动监控器");
							$('#op_class_add').attr('value', '0');
						}else{
							//$('#op_class_add').text("关闭监控器");
							$('#op_class_add').attr('value', '1');
							status = 0;
						}
					
					}else{
						showAlert('nosensoralert2');
					}
			    }
	        });
		}
	}
	
	function showAlert(comp){
		var selected = "#"+comp;
		console.log("selected="+selected);
		$(selected).show();
	}
	
		//判断密码不为空
	function isSelect(comp,obj){
		var selected = "#"+comp;
		if(obj.selectedIndex == 0){
			//$('#passalert').removeClass("hidden");
			$(selected).show();
		}
	}
	
	//获取焦点后，隐藏告警信息
	function hiddleComp(comp,obj){
		//$('#passalert').addClass("hidden");
		var selected = "#"+comp;
		$(selected).hide();
	}
	
	//获取焦点后，隐藏告警信息
	function hiddleComp(comp){
		//$('#passalert').addClass("hidden");
		var selected = "#"+comp;
		$(selected).hide();
	}
	

</script>

<%@ include file="common/footer.jsp" %>

