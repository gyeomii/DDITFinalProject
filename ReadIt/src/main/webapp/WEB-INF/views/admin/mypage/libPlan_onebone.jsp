<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<!-- BEGIN: Head-->

<head>
 	<meta charset='utf-8' />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <title>도서관 일정관리</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/resources/jquery/jquery.min.js"></script>
   	<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/locales-all.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js"></script>

</head>
<!-- END: Head-->
<!-- BEGIN: Body-->
<body>
	<div class="container">
	<div class="card">
		<div class="card-body row">
			<div id="calendar" class="col-9 col-lg-9">
			
			</div>
		</div>
	</div>
	</div>
	
	
<!-- <h1>테스트 텍스트</h1> -->
<%@ include file="../../common/index_js.jsp" %>  
<script type="text/javascript">
var dataList = ${dataList};

console.log(dataList);
</script>

	<!-- fullCalendar 관련 script -->
	<script>
	
	document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
			events: 
				$.ajax({
					url: '<%=request.getContextPath()%>/admin/mypage/libPlanList.do',
					type: 'GET',
					success: function(res){
						var list = res;
						console.log(list);
						
						var calendarEl = document.getElementById('calendar');
						
						var events = list.map(function(dataList){
							return {
								title : dataList.lp_name,
								start : dataList.lp_start,
								end   : dataList.lp_end
							}
						});
						console.log(events);
						
						var calendar = new FullCalendar.Calendar(calendarEl, {
							events : events,
							eventTimeFormat: { // like '14:30:00'
							    hour: '2-digit',
							    minute: '2-digit',
							    hour12: true
							  },
							headerToolbar: {
						          left: 'prev,next today',
						          center: 'title',
						          right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
						        }, // 월별로 보여줄지, 주별로 보여줄 지 선택하는  버튼 
				        	initialView: 'dayGridMonth',
				         	selectable: true,
				        	editable: true, // 수정 가능?
						   	dayMaxEvents: true,
							locale:'ko',
						});
						calendar.render();
					},
					error: function(error) {
						alert("스케쥴러 오류... 잠시후 다시 시도하세요.");
					}
				}),
				// ajax end
			
		   	eventAdd: function(obj) { // 이벤트가 추가되면 발생하는 이벤트
		   		console.log("이벤트 실행됨?");
// 				   	console.log("추가 : ",obj)
// 					console.log("추가 id  : ",obj.event.id)
// 					console.log("추가  title : ",obj.event.title)
// 					console.log("추가  start: ",obj.event.start)
// 					console.log("추가  groupId: ",obj.event.groupId)
// 					console.log("추가  end: ",obj.event.end)
// 					var startDateObj = obj.event.start
// 					var endDateObj = obj.event.end
// 					var calendarData =null;
// 				  	$('#detailEnd').val("");
// 					$('#detailStart').val("");
// 					$('#detailText').html("");
// 					$("#addDetail").val("");
// 					console.log("ttt",$('#detailText').val());
		   	}
        }); //new FullCalendar end
	});
	

</script>
	
</body>
<!-- END: Body-->

</html>