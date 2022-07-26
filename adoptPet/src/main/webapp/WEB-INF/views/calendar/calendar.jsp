<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript" src="/js/bootstrap.js"></script>

<link href='../adoptPet/fullcalendar/lib/main.css' rel='stylesheet' />
<script src='../adoptPet/fullcalendar/lib/main.js'></script>
</head>

	<script>
	 /* let schedules = [];

	 document.addEventListener('DOMContentLoaded', function () {
	      var calendarEl = document.getElementById('calendar');
	 
	 fetch('calendarList.do') // schedules가 db에 있는 모든 리스트
	 .then(function (result) {
	 console.log(result.json();
	 })
	 .then(function (result) {
	 result.forEach(schedule => {
	 let event = {}
	 event.title = schedule.title;
	 event.start = schedule.startDate;
	 event.end = schedule.endDate;
	 schedules.push(event);
	 });

	
	 var calendar = new FullCalendar.Calendar(calendarEl, {
	 headerToolbar: {
	 left: 'prev,next today',
	 center: 'title',
	 right: 'dayGridMonth,timeGridWeek,timeGridDay'
	 },
	 initialDate: new Date(),
	 navLinks: true, // can click day/week names to navigate views
	 selectable: true,
	 selectMirror: true,
	 select: function (arg) {
	 var title = prompt('봉사일정을 등록하세요:');
	 console.log(title);
	 console.log(arg);
	 if (title) {
	 // DB에 입력처리
	 fetch('calendarInsert.do', {
	 method: 'post',
	 headers: {
	 'Content-type': 'application/x-www-form-urlencoded'
	 },
	 body: "title="+title+"&start="+arg.startStr+"&end="+arg.endStr
	 })
	 .then(result => result.json())
	 .then(result => {
	 console.log(result);

	 // 화면에 그려주는 부분
	 calendar.addEvent({
	 title: title,
	 start: arg.start,
	 end: arg.end,
	 allDay: arg.allDay
	 })

	 })
	 .catch(err => console.error(err));

	 }
	 calendar.unselect();
	 },
	 eventClick: function (arg) {
	 if (confirm('일정을 삭제하겠습니까?')) {
	 // 삭제
	 console.log(arg)
	 fetch('calendarDelete.do', {
	 method: 'post',
	 headers: {
	 'Content-type': 'application/x-www-form-urlencoded'
	 },
	 body: "title="+arg.event.title
	 })
	 .then(result => result.json())
	 .then(result => {
	 console.log(result);
	 if(result.retCode == 'Success'){
	 arg.event.remove();
	 }
	 })
	 .catch(err => console.log(err))
	
	 }
	 },
	 editable: true,
	 dayMaxEvents: true, // allow "more" link when too many events
	 events: schedules
	 });

	 calendar.render();

	 console.log(schedules);
	 }) // schedules => [{},{},{}] */


      
      document.addEventListener('DOMContentLoaded', function() {
    	    var calendarEl = document.getElementById('calendar');

    	    var calendar = new FullCalendar.Calendar(calendarEl, {
    	      headerToolbar: {
    	        left: 'prev,next today',
    	        center: 'title',
    	        right: 'dayGridMonth,timeGridWeek,timeGridDay'
    	        
    	      },
    	      initialDate:  new Date(),
    	      navLinks: true, // can click day/week names to navigate views
    	      selectable: true,
    	      selectMirror: true,
    	      select: function(arg) {
    	        var title = prompt('Event Title:');
    	        if (title) {
    	          calendar.addEvent({
    	            title: title,
    	            start: arg.start,
    	            end: arg.end,
    	            allDay: arg.allDay
    	          })
    	        }
    	        calendar.unselect()
    	      },
    	      eventClick: function(arg) {
    	        if (confirm('Are you sure you want to delete this event?')) {
    	          arg.event.remove()
    	        }
    	      },
    	  
    	      editable: true,
    	      dayMaxEvents: true, // allow "more" link when too many events
    	      events: [
    	        {
    	          title: '앵두네집',
    	          start: '2022-07-01'
    	        },
    	        {
      	          title: '앵두네집',
      	          start: '2022-07-30'
      	        },
    	        {
        	      title: '앵두네집',
        	      start: '2022-07-17'
        	    },
    	        {
          	      title: '창녕 쉼터',
          	      start: '2022-07-03'
          	    },
                {
            	  title: '칠곡 반둥이네',
            	   start: '2022-07-02'
            	},
    	        {
    	          title: '창녕 쉼터',
    	          start: '2022-07-11',
    	          end: '2022-07-16'
    	        },
    	        {
	  	          title: '대구 반야월 쉼터',
		          start: '2022-07-16',
	          	  end: '2022-07-23'
	       		 },
	    	     {
		  	       title: '대구 반야월 쉼터',
			       start: '2022-07-10',
		           end: '2022-07-11'
		        },
	    	    {
			  	    title: '경산 쉼터',
				    start: '2022-07-24',
			        end: '2022-07-25'
			    },
    	        {
      	          title: '대구반야월 쉼터',
      	          start: '2022-07-19',
      	          end: '2022-07-20'
      	        },
      	      {
      	          title: '칠곡 반둥이네',
      	          start: '2022-07-07',
      	          end: '2022-07-08'
      	        },
      	      {
      	          title: '양산 사랑이네 집',
      	          start: '2022-07-25',
      	          end: '2022-07-26'
      	        },
      	       {
        	       title: '경산 쉼터',
        	       start: '2022-07-31',
        	        end: '2022-08-01'
        	    },
        	    {
         	       title: '경산 쉼터',
         	       start: '2022-07-09',
         	        end: '2022-07-10'
         	    },
        	    {
          	       title: '반야월 쉼터',
          	       start: '2022-07-04',
          	        end: '2022-07-05'
          	    },
        	    {
           	       title: '칠곡 반둥이네',
           	       start: '2022-07-27',
           	        end: '2022-07-28'
           	    },
         	        
        	   	{
    	          title: 'Project',
    	          start: '2022-07-22',
    	          end: '2022-07-23'
    	        },
    	        {
    	          title: '데려가줘 PICK ME',
    	          url: 'http://daeguoracle.com/',
    	          start: '2022-07-28'
    	        }
    	      ]
  
    	    });	
    	    
    	    calendar.render();
    	  });

	</script>
	<body>
	<div id='calendar'></div>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
	<button type="button" class="btn btn-primary btn-xl" onclick="location.href='volReviewForm.do'">봉사활동후기등록 바로가기</button>
	
	<style>
body {
	margin: 40px 10px;
	padding: 0;
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 1100px;
	margin: 0 auto;
}
</style>


	<title>봉사활동</title>

</body>
</html>