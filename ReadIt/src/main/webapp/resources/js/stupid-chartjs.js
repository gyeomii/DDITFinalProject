/*=========================================================================================
    File Name: chart-chartjs.js
    Description: Chartjs Examples
    ----------------------------------------------------------------------------------------
    Item Name: Vuexy  - Vuejs, HTML & Laravel Admin Dashboard Template
    Author: PIXINVENT
    Author URL: http://www.themeforest.net/user/pixinvent
==========================================================================================*/

 var dayList = [];
 var countList = [];
 var kdcList = [];
 var kdcCountList = [];
  function sgAjax(path){
	  let today = new Date();   

	  let year = today.getFullYear(); // 년도
	  let month = today.getMonth() + 1;  // 월
	  let date = today.getDate();  // 날짜
	  let day = today.getDay();  // 요일
	  let fullDate = year + "/" + month + "/" + date;
	  for(var i = 0; i<7; i++){
		  var realDay = day - i;
		  if(realDay < 0){
			  realDay = 7 - i + day;
		  }
		  var dayKor = "";
		  if(realDay == 0){
			  dayKor = "일"
		  }else if(realDay == 1){
			  dayKor = "월"
		  }else if(realDay == 2){
			  dayKor = "화"
		  }else if(realDay == 3){
			  dayKor = "수"
		  }else if(realDay == 4){
			  dayKor = "목"
		  }else if(realDay == 5){
			  dayKor = "금"
		  }else if(realDay == 6){
			  dayKor = "토"
		  }
		  dayList.push(dayKor);
	  }
	  console.log(dayList);
	  console.log(fullDate);
	  
		$.ajax({
	    	type : 'get',
	    	dataType : "json",
	    	url : path + "/admin/bookManage/stupid/chart.do?fullDate=" + fullDate,
	    	success : function(res){
	    		countList = res.weekList.reverse();
	    		var list = res.kdcList;
	    		for(var i=0; i<list.length; i++){
	    			kdcList.push(list[i].book_kdc);
	    			kdcCountList.push(list[i].cnt);
	    		}
	    		console.log(kdcList);
	    		console.log(kdcCountList);
	    		sgChart();
	    	},
	    	error:function(error){
	   			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			    }
	    	});
  }


 function sgChart() {
  'use strict';

  var chartWrapper = $('.chartjs'),
    flatPicker = $('.flat-picker'),
    lineChartEx = $('.line-chart-ex'),
    doughnutChartEx = $('.doughnut-chart-ex'),
    horizontalBarChartEx = $('.horizontal-bar-chart-ex');
  // Color Variables
  var primaryColorShade = '#836AF9',
    yellowColor = '#ffe800',
    successColorShade = '#28dac6',
    warningColorShade = '#ffe802',
    warningLightColor = '#FDAC34',
    infoColorShade = '#299AFF',
    greyColor = '#4F5D70',
    blueColor = '#2c9aff',
    blueLightColor = '#84D0FF',
    greyLightColor = '#EDF1F4',
    tooltipShadow = 'rgba(0, 0, 0, 0.25)',
    lineChartPrimary = '#666ee8',
    lineChartDanger = '#ff4961',
    labelColor = '#6e6b7b',
    grid_line_color = 'rgba(200, 200, 200, 0.2)'; // RGBA color helps in dark layout

  // Detect Dark Layout
  if ($('html').hasClass('dark-layout')) {
    labelColor = '#b4b7bd';
  }

  // Wrap charts with div of height according to their data-height
  if (chartWrapper.length) {
    chartWrapper.each(function () {
      $(this).wrap($('<div style="height:' + this.getAttribute('data-height') + 'px"></div>'));
    });
  }

  // Init flatpicker
  if (flatPicker.length) {
    var date = new Date();
    flatPicker.each(function () {
      $(this).flatpickr({
        mode: 'range',
        defaultDate: ['2019-05-01', '2019-05-10']
      });
    });
  }
  
  // Horizontal Bar Chart
  // --------------------------------------------------------------------
  if (horizontalBarChartEx.length) {
    new Chart(horizontalBarChartEx, {
      type: 'horizontalBar',
      options: {
        elements: {
          rectangle: {
            borderWidth: 4,
            borderSkipped: 'right'
          }
        },
        tooltips: {
          // Updated default tooltip UI
          shadowOffsetX: 1,
          shadowOffsetY: 1,
          shadowBlur: 8,
          shadowColor: tooltipShadow,
          backgroundColor: window.colors.solid.white,
          titleFontColor: window.colors.solid.black,
          bodyFontColor: window.colors.solid.black
        },
        responsive: true,
        maintainAspectRatio: false,
        responsiveAnimationDuration: 500,
        legend: {
          display: false
        },
        layout: {
          padding: {
            bottom: -30,
            left: -25
          }
        },
        scales: {
          xAxes: [
            {
              display: true,
              gridLines: {
                zeroLineColor: grid_line_color,
                borderColor: 'transparent',
                color: grid_line_color
              },
              scaleLabel: {
                display: true
              },
              ticks: {
                min: 0,
                fontColor: labelColor
              }
            }
          ],
          yAxes: [
            {
              display: true,
              gridLines: {
                display: false
              },
              scaleLabel: {
                display: true
              },
              ticks: {
                fontColor: labelColor
              }
            }
          ]
        }
      },
      data: {
        labels: dayList,
        datasets: [
          {
            data: countList,
            barThickness: 20,
            backgroundColor: window.colors.solid.info,
            borderColor: 'transparent'
          }
        ]
      }
    });
  }

  
  // Doughnut Chart
  // --------------------------------------------------------------------
  if (doughnutChartEx.length) {
    var doughnutExample = new Chart(doughnutChartEx, {
      type: 'doughnut',
      options: {
        responsive: true,
        maintainAspectRatio: false,
        responsiveAnimationDuration: 500,
        cutoutPercentage: 60,
        legend: { display: false },
        tooltips: {
          callbacks: {
            label: function (tooltipItem, data) {
              var label = data.datasets[0].labels[tooltipItem.index] || '',
                value = data.datasets[0].data[tooltipItem.index];
              var output = ' ' + label + ' : ' + value + ' %';
              return output;
            }
          },
          // Updated default tooltip UI
          shadowOffsetX: 1,
          shadowOffsetY: 1,
          shadowBlur: 8,
          shadowColor: tooltipShadow,
          backgroundColor: window.colors.solid.white,
          titleFontColor: window.colors.solid.black,
          bodyFontColor: window.colors.solid.black
        }
      },
      data: {
        datasets: [
          {
            labels: kdcList,
            data: kdcCountList,
            backgroundColor: ['#FF3366', '#FF9966','#FFFF00', '#33FF33', '#00CCCC', '#006699', '#0066CC', '#6666CC', '#CC99FF', '#9900CC'],
            borderWidth: 0,
            pointStyle: 'rectRounded'
          }
        ]
      }
    });
  }
}
