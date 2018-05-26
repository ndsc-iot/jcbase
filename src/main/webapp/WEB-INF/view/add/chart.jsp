<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<% System.setProperty("no_visible_elements", "false"); %>
<%@ include file="common/header.jsp" %>

<div>
    <ul class="breadcrumb">
        <li>
            <a href="/">主页</a>
        </li>
        <li>
            <a href="#">温度趋势</a>
        </li>
    </ul>
</div>

<div class="row">

    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well">
                <h2><i class="glyphicon glyphicon-dashboard"></i> 温度曲线</h2>

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
      					<div class="row">
      						<span> &nbsp;&nbsp;</span>
      					</div>
      					<div hidden id = "time_div" class="form-inline row">
      						<div class="col-md-2">
        						<label class="form-label control-label">起止时间</label> 
        					</div> 
        					<div class="col-md-6">
        						
        						<div id="reportrange" class="pull-left dateRange" style="width:350px">
									<i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
									<span id="searchDateRange"></span>
									<b class="caret"></b>
								</div>
        					</div>
        					
      					</div>
      					
                        <div class="row">
      						<span> &nbsp;&nbsp;</span>
      					</div>
                        
                    <button id="op_class_add" type="button" onclick="command(this)" class="btn btn-success btn-lg" value="0" disabled><i
                                class="glyphicon glyphicon-search glyphicon-white"></i>查询图像</button>

                    <br>
                <!-- </div> end of alert-info-->    
                    <div class="row">
      						<span> &nbsp;&nbsp;</span>
      				</div>
                <!-- </div> -->    

                <div id="container" style="min-width:400px;height:400px"></div>
                
               
            </div>
        </div>
    </div>


</div><!--/row-->
<div id ='tempdatarow' class="row">

    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well">
                <h2><i class="glyphicon glyphicon-dashboard"></i> 温度记录</h2>

            </div>
          <div style="display:inline-block; *display:inline; *zoom:1">
            <div style="width:auto; height:auto; display:inline"><button type="button" value="0" class="btn btn-success btn-lg" onclick="getImport(this)"><i class="glyphicon glyphicon-download glyphicon-white"> </i>导出全部记录 </button></div>
            <div style="width:200px; height:auto; display:inline"> <button type="button" id="btn" value="0" class="btn btn-success btn-lg"><i class="glyphicon glyphicon-download glyphicon-white"> </i>导出当前记录  </button></div>
          </div> 
            <div id="mytabledata" class="box-content">
				<table id="userTable2" class="table table-striped table-bordered bootstrap-datatable datatable responsive text-nowrap">
				    <thead>
				    <tr id="table_tr">
				    	<th>序号</th>
				        <th>摄像头编号</th>
				        <th>最低温度</th>
				        <th>平均温度</th>
				        <th>最高温度</th>
				        <th>创建时间</th>
				    </tr>
				    </thead>
				    
				    
				    <%-- <tbody>
						<c:forEach var="dList" items="${dataList}">
					    	<c:set var="row" value="${row+1}" />
						    <tr>
						    
						    	<td  class="center"><c:out value="${row}"  /></td>
						    	<td  class="center"><c:out value="${dList.temp_sensor_code}"  /></td>
						    	<td  class="center"><c:out value="${dList.temp_sensor_code}"  /></td>
						    	<td  class='center'> <span class='label-success label label-default'><c:out value="${dList.min_temp}"  /> </span></td>
						    	<td  class='center'> <span class='label-warning label label-default'><c:out value="${dList.av_temp}"  /> </span></td>
						    	<td  class='center'> <span class='label-danger label label-default'><c:out value="${dList.max_temp}"  /> </span></td>
						    	<td  class="center"><c:out value="${dList.create_time}"  /></td>
						       
						    </tr>
						</c:forEach>
				    </tbody> --%>
			    </table>
            </div>
        </div>
    </div>


</div><!--/row-->
<!-- 导出数据***************************** -->
<script type="text/javascript" src="${res_url}jsto/easy/jquery.min.js"></script> 
<script type="text/javascript" src="${res_url}jsto/jquery.table2excel.min.js"></script>
<script type="text/javascript">
//导出当前页面的方法**************************************************
 $(function(){
        $("#btn").click(function(){
            $("#userTable2").table2excel({
                // 不被导出的表格行的CSS class类
                exclude: ".noExl",
                // 导出的Excel文档的名称，（没看到作用）
                name: "Excel Document Name",
                fileext: ".xls",
                // Excel文件的名称
                filename: "当前温度记录"
            });
        });
    });

//导出全部JSON数据的方法***************************************************
function getImport(which){
			var ljurl = 'http://172.20.202.158:8080/pass2/mobile/record/operateRecordList?ywb=1&station=9&equipType='  
			var s = ['ticketNumber', 'ticketList','equipName','alertType','alarmNumber','equipNumber','removePerson','equipState',
				'alarmType','alarmState','phone','person','smsContent','sms','equipAlarmType','time', ]; 
		  $.ajax ({  
             url:ljurl,  
             type:'GET',  
             dataType:'json',  
             timeout:20000,  
             error:function(){  
               alert('Failed to communicate to the server. Try again!')     
             },success:function(ljdata){   
                  
             var jsonData = eval(ljdata).data; //数组  
             JSONToExcelConvertor(jsonData, "全部温度记录", s);
           }  
     });	   
 }	
		function JSONToExcelConvertor(JSONData, FileName, ShowLabel) {  
	        //先转化json  
	        var arrData = typeof JSONData != 'object' ? JSON.parse(JSONData) : JSONData;  
	          
	        var excel = '<table>';      
	          
	        //设置表头  
	        var row = "<tr>";  
	        for (var i = 0; i < ShowLabel.length; i++) {  
	            row += "<td>" + ShowLabel[i] + '</td>';  
	        }  
	          
	          
	        //换行  
	        excel += row + "</tr>";  
	          
	        //设置数据  
	        for (var i = 0; i < arrData.length; i++) {  
	            var row = "<tr>";  
	              
	           
	                var ticketNumber = arrData[i].ticketNumber === "." ? "" : arrData[i].ticketNumber;  
	                row += '<td>' + ticketNumber + '</td>';
	                var ticketList = arrData[i].ticketList === "." ? "" : arrData[i].ticketList;  
	                row += '<td>' + ticketList + '</td>';  
	                var equipName = arrData[i].equipName === "." ? "" : arrData[i].equipName;  
	                row += '<td>' + equipName + '</td>';  
	                var alertType = arrData[i].alertType === "." ? "" : arrData[i].alertType;  
	                row += '<td>' + alertType + '</td>';  
	                var alarmNumber = arrData[i].alarmNumber === "." ? "" : arrData[i].alarmNumber;  
	                row += '<td>' + alarmNumber + '</td>';  
	                var equipNumber = arrData[i].equipNumber === "." ? "" : arrData[i].equipNumber;  
	                row += '<td>' + equipNumber + '</td>';  
	                var removePerson = arrData[i].removePerson === "." ? "" : arrData[i].removePerson;  
	                row += '<td>' + removePerson + '</td>';  
	                var equipState = arrData[i].equipState === "." ? "" : arrData[i].equipState;  
	                row += '<td>' + equipState + '</td>';  
	                var alarmType = arrData[i].alarmType === "." ? "" : arrData[i].alarmType;  
	                row += '<td>' + alarmType + '</td>';  
	                var alarmState = arrData[i].alarmState === "." ? "" : arrData[i].alarmState;  
	                row += '<td>' + alarmState + '</td>';  
	                var phone = arrData[i].phone === "." ? "" : arrData[i].phone;  
	                row += '<td>' + phone + '</td>';
	                var person = arrData[i].person === "." ? "" : arrData[i].person;  
	                row += '<td>' + person + '</td>'; 
	                var smsContent = arrData[i].smsContent === "." ? "" : arrData[i].smsContent;  
	                row += '<td>' + smsContent + '</td>'; 
	                var sms = arrData[i].sms === "." ? "" : arrData[i].sms;  
	                row += '<td>' + sms + '</td>'; 
	                var equipAlarmType = arrData[i].equipAlarmType === "." ? "" : arrData[i].equipAlarmType;  
	                row += '<td>' + equipAlarmType + '</td>'; 
	                var time = arrData[i].time === "." ? "" : arrData[i].time;  
	                row += '<td>' + time + '</td>'; 
	    
	                
	            excel += row + "</tr>";  
	        }  

	        excel += "</table>";  

	        var excelFile = "<html xmlns:o='urn:schemas-microsoft-com:office:office' xmlns:x='urn:schemas-microsoft-com:office:excel' xmlns='http://www.w3.org/TR/REC-html40'>";  
	        excelFile += '<meta http-equiv="content-type" content="application/vnd.ms-excel; charset=UTF-8">';  
	        excelFile += '<meta http-equiv="content-type" content="application/vnd.ms-excel';  
	        excelFile += '; charset=UTF-8">';  
	        excelFile += "<head>";  
	        excelFile += "<!--[if gte mso 9]>";  
	        excelFile += "<xml>";  
	        excelFile += "<x:ExcelWorkbook>";  
	        excelFile += "<x:ExcelWorksheets>";  
	        excelFile += "<x:ExcelWorksheet>";  
	        excelFile += "<x:Name>";  
	        excelFile += "sheet";  
	        excelFile += "</x:Name>";  
	        excelFile += "<x:WorksheetOptions>";  
	        excelFile += "<x:DisplayGridlines/>";  
	        excelFile += "</x:WorksheetOptions>";  
	        excelFile += "</x:ExcelWorksheet>";  
	        excelFile += "</x:ExcelWorksheets>";  
	        excelFile += "</x:ExcelWorkbook>";  
	        excelFile += "</xml>";  
	        excelFile += "<![endif]-->";  
	        excelFile += "</head>";  
	        excelFile += "<body>";  
	        excelFile += excel;  
	        excelFile += "</body>";  
	        excelFile += "</html>";  

	          
	        var uri = 'data:application/vnd.ms-excel;charset=utf-8,' + encodeURIComponent(excelFile);  
	          
	        var link = document.createElement("a");      
	        link.href = uri;  
	          
	        link.style = "visibility:hidden";  
	        link.download = FileName + ".xls";  
	          
	        document.body.appendChild(link);  
	        link.click();  
	        document.body.removeChild(link);  
	    }

</script>
<script type="text/javascript" src="${res_url}jsto/highchart/highcharts.js"></script>
<script type="text/javascript" src="${res_url}jsto/highchart/exporting.js"></script>

<script type="text/javascript">
   $(window).load(function(){
	   $('#tempdatarow').hide();
		getOperationClass();
		
    });
    
    var status = 0;
	function command(which){
		 $('#tempdatarow').show();
		var parentdiv = $(which).parents('.box-content');
		
		var type = parentdiv.find("#add_type");
		var sensor_code = parentdiv.find("#add_sensor_code");
		var station_op = parentdiv.find("#station_op_class");
		var station = parentdiv.find("#add_station");
		var building = parentdiv.find("#add_building");
		var layer = parentdiv.find("#add_layer");
		var room = parentdiv.find("#add_room");
		
		var timeArray = $('#reportrange span').html().split(" - ");
		 
		var tbody_tr = $('#mytabledata').find('tbody');
		
		clearData();
		// tbody_tr.html('');
		$.ajax({
			    type: 'POST',
			    dataType: 'json',
			    async: false,
			    url: "<%=request.getContextPath()%>"+"/temp/getData",
			    data: {"type":type.val(),
			    		"sensor_code":sensor_code.find("option:selected").val(),
			    		"station_op":station_op.val(),
			    		"station":station.val(),
			    		"building":building.val(),
			    		"layer":layer.val(),
			    		"room":room.val(),
			    		"create_time":timeArray[0],
			    		"end_time":timeArray[1],
			    		"status":status},
			    timeout:10000,
			    success: function(data) {
			    	var source = station.val()+'--'+building.val()+'--'+layer.val()+'--'+room.val();
					var result = data.result;
				    //console.log("result="+result);
				    var dataList = data.dataList;
		            if (result == true) { //成功添加
		            	var create_time = [];
		            	var avtemp = [];
		            	var maxtemp=[];
		            	var mintemp=[];
		            	var l =0;
		            	var curse = [];
		                 $.each(dataList, function(i,value){
		                 		create_time.push(value.create_time);
		                 		avtemp.push(value.av_temp);
		                 		maxtemp.push(value.max_temp);
		                 		mintemp.push(value.min_temp);
		                 		l++;
		                 		/* tbody_tr.append("<tr>")
		                 		tbody_tr.append("<td  class='center'>"+l+"</td>");
		                 		tbody_tr.append("<td  class='center'>"+value.temp_sensor_code+"</td>");
		                 		tbody_tr.append("<td  class='center'>"+sensor_code.find("option:selected").text()+"</td>");
		                 		tbody_tr.append("<td  class='center'> <span class='label-success label label-default'>"+value.min_temp+"</span></td>");
		                 		tbody_tr.append("<td  class='center'><span class='label-warning label label-default'>"+value.av_temp+"</span></td>");
		                 		tbody_tr.append("<td  class='center'><span class='label-danger label label-default'>"+value.max_temp+"</span></td>");
		                 		tbody_tr.append("<td  class='center'>"+value.create_time+"</td>");
		                 		tbody_tr.append("</tr>") */
		                 		
								$('#userTable2').DataTable().row.add([l,value.temp_sensor_code, value.min_temp, value.av_temp,value.max_temp,value.create_time]).draw( false );
									
									
		                 	});
		                 	curse.push({name:'最小值', data:mintemp});
		                 	curse.push({name:'平均值', data:avtemp});
		                 	curse.push({name:'最大值', data:maxtemp});
		                 	
							$('#container').highcharts({
						        chart: {
						            type: 'line'
						        },
						        title: {
						            text: '红外测温结果'
						        },
						        subtitle: {
						            text: '数据来源: '+source
						        },
						        xAxis: {
						            categories: create_time
						        },
						        yAxis: {
						            title: {
						                text: '温度(°C)'
						            }
						        },
						        plotOptions: {
						            line: {
						                dataLabels: {
						                    enabled: true          // 开启数据标签
						                },
						                enableMouseTracking: false // 关闭鼠标跟踪，对应的提示框、点击事件会失效
						            }
						        },
						        series: curse
						    });


		                return true;
		            }else{ //添加失败
		            	
		                $.toaster({ priority : 'warning', title : '告警信息', message : '在此时间区间没有数据报告！'});
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

	function clearData(){
		document.getElementById("container").innerHTML = "";
		$('#userTable2').DataTable().clear().draw();
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
	    
	    clearData();
	    
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
		$('#time_div').hide();
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
					    	//console.log(value.id+"--"+value.user_name);
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
		clearData();
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
		$('#time_div').hide();
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
			    url: "<%=request.getContextPath()%>"+"/building/getBuilding",
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
// 		clearData();
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
// 		$('#time_div').hide();	
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
// 		clearData();
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
// 		$('#time_div').hide();
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
	
// 		clearData();
// 		var sindex = which.selectedIndex;
// 		$('div.alert-danger').hide(); 
// 		if(sindex == 0){		
		
// 			$('#add_type_div').hide();
// 		}else{
// 			$('#add_type_div').show();
			
// 			getType(which.value);
// 		}
// 		$('#sensor_code_div').hide();
// 		$('#time_div').hide();
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
		clearData();
		var sindex = which.selectedIndex;
		$('div.alert-danger').hide(); 
		if(sindex == 0){		
		
			$('#sensor_code_div').hide();
			$('#time_div').hide();
		}else{
			$('#sensor_code_div').show();
			$('#time_div').hide();
			getCode(which);
		}
		
		$('#op_class_add').prop('disabled', true);
	}
	
	function getCode(op){
		
		var which = $(op);
		var parentdiv = $(which).parents('.box-content');

		//var room = parentdiv.find("#add_room");
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
		clearData();
		var code = $(which);
		var sindex = which.selectedIndex;
		$('div.alert-danger').hide(); 
		if(code.val() == 0){
			$('#op_class_add').prop('disabled', true);
			$('#time_div').hide();
			//$('#op_class_add').text("开关监控器");
		}else{
			$('#op_class_add').prop('disabled', false);
			$('#time_div').show();
			// daterangetimeplugin();
			//console.log("code="+code.find("option:selected").text());
			$.ajax({
			    type: 'POST',
			    dataType: 'json',
			    url: "<%=request.getContextPath()%>"+"/temp/getSensorStatus",
			    data:{"sensor_code":code.find("option:selected").val()},
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
	$(document).ready(function() {
		daterangetimeplugin();
	}); 
	
       /* $(document).ready(function() {
       		$('#reportrange span').html(moment().subtract('days', 1).format('YYYY-MM-DD HH:mm:ss') + ' - ' + moment().format('YYYY-MM-DD HH:mm:ss'));

			$('#reportrange').daterangepicker({
	           timePicker: true,
	           timePickerIncrement: 30,
	           format: 'YYYY-MM-DD HH:mm:ss'
        	}, function(start, end, label) {
           console.log(start.toISOString(), end.toISOString(), label);
         });
      }); */
	
		function daterangetimeplugin(){
					//时间插件
					$('#reportrange span').html(moment().subtract('days', 1).format('YYYY-MM-DD HH:mm:ss') + ' - ' + moment().format('YYYY-MM-DD HH:mm:ss'));

					$('#reportrange').daterangepicker(
							{
								// startDate: moment().startOf('day'),
								//endDate: moment(),
								//minDate: '01/01/2012',	//最小时间
								// maxDate : moment(), //最大时间 
								dateLimit : {
									days : 30
								}, //起止时间的最大间隔
								showDropdowns : true,
								showWeekNumbers : true, //是否显示第几周
								timePicker : true, //是否显示小时和分钟
								timePickerIncrement : 60, //时间的增量，单位为分钟
								timePicker12Hour : false, //是否使用12小时制来显示时间
								ranges : {
									//'最近1小时': [moment().subtract('hours',1), moment()],
									'今日': [moment().startOf('day'), moment()],
				                    '昨日': [moment().subtract('days', 1).startOf('day'), moment().subtract('days', 1).endOf('day')],
				                    '最近7日': [moment().subtract('days', 6), moment()],
				                    '最近30日': [moment().subtract('days', 29), moment()]
								},
								opens : 'right', //日期选择框的弹出位置
								buttonClasses : [ 'btn btn-default' ],
								applyClass : 'btn-small btn-primary blue',
								cancelClass : 'btn-small',
								format : 'YYYY-MM-DD HH:mm:ss', //控件中from和to 显示的日期格式
								separator : ' to ',
								locale : {
									applyLabel : '确定',
									cancelLabel : '取消',
									fromLabel : '起始时间',
									toLabel : '结束时间',
									customRangeLabel : '自定义',
									daysOfWeek : [ '日', '一', '二', '三', '四', '五', '六' ],
									monthNames : [ '一月', '二月', '三月', '四月', '五月', '六月',
											'七月', '八月', '九月', '十月', '十一月', '十二月' ],
									firstDay : 1
								}
							}, function(start, end, label) {//格式化日期显示框
				                
			                 	$('#reportrange span').html(start.format('YYYY-MM-DD HH:mm:ss') + ' - ' + end.format('YYYY-MM-DD HH:mm:ss'));
			               });

				//设置日期菜单被选项  --开始--
		      	  var dateOption ;
		      	  if("${riqi}"=='day') {
						dateOption = "今日";
		          }else if("${riqi}"=='yday') {
						dateOption = "昨日";
		          }else if("${riqi}"=='week'){
						dateOption ="最近7日";
		          }else if("${riqi}"=='month'){
						dateOption ="最近30日";
		          }else if("${riqi}"=='year'){
						dateOption ="最近一年";
		          }else{
						dateOption = "自定义";
		          }
		      	  $(".daterangepicker").find("li").each(function(){
						if($(this).hasClass("active")){

							$(this).removeClass("active");

						}
						
						if(dateOption==$(this).html()){

							$(this).addClass("active");

						}
		          });
			      //设置日期菜单被选项  --结束--
		}
	
</script>

<%@ include file="common/footer.jsp" %>

