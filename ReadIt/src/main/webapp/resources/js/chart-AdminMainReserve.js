/*=========================================================================================
    File Name: chart-chartjs.js
    Description: Chartjs Examples
    ----------------------------------------------------------------------------------------
    Item Name: Vuexy  - Vuejs, HTML & Laravel Admin Dashboard Template
    Author: PIXINVENT
    Author URL: http://www.themeforest.net/user/pixinvent
==========================================================================================*/

  var libList = [];
  var driveList = [];
  var lockerList = [];
  var shipList = [];
  var dayList = [];

  function lastWeekAjax(path){
	  
	  let today = new Date();   

	  let year = today.getFullYear(); // 년도
	  let month = today.getMonth() + 1;  // 월
	  let date = today.getDate();  // 날짜
	  let day = today.getDay();  // 요일
	  let fullDate = year + "/" + month + "/" + date;
	  for(var i = 7; i>1; i--){
		  var realDay = day - i;
		  if(realDay < 0){
			  realDay = 8 - i + day;
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
	  console.log("dayList",dayList);
	  
	  $.ajax({
	    	type : 'get',
	    	dataType : "json",
	    	url :  path+"/admin/main/lastWeekChart.do",
	    	success : function(res){
	    		console.log("res : ",res);
	    		for(var i=0; i< 7; i++){
	    			libList.push(res.libList[i].CNT)
	    			driveList.push(res.driveList[i].CNT)
	    			lockerList.push(res.lockerList[i].CNT)
	    			shipList.push(res.shipList[i].CNT)
	    		}
	    		console.log("driveList",driveList);
	    		console.log("lockerList",lockerList);
	    		console.log("shipList",shipList);
	    		console.log("libList",libList);
	    		console.log( libList[0], libList[1], libList[2], libList[3], libList[4], libList[5], libList[6]  );
	    		lastWeekChart();
	    	},
	    	error:function(error){
	   			console.log("chart",error)
			    }
	    	});
  }
function lastWeekChart() {
  'use strict';

  var chartWrapper = $('.chartjs'),
    flatPicker = $('.flat-picker'),
    lineChartEx = $('.line-chart-ex')

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

  
  

  // Line Chart
  // --------------------------------------------------------------------
  if (lineChartEx.length) {
    var lineExample = new Chart(lineChartEx, {
      type: 'line',
      plugins: [
        // to add spacing between legends and chart
        {
          beforeInit: function (chart) {
            chart.legend.afterFit = function () {
              this.height += 20;
            };
          }
        }
      ],
      options: {
        responsive: true,
        maintainAspectRatio: false,
        backgroundColor: false,
        hover: {
          mode: 'label'
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
        layout: {
          padding: {
            top: 20,
            bottom: -20,
            left: -23
          }
        },
        scales: {
          xAxes: [
            {
              display: true,
              scaleLabel: {
                display: true
              },
              gridLines: {
                display: true,
                color: grid_line_color,
                zeroLineColor: grid_line_color
              },
              ticks: {
                fontColor: labelColor
              }
            }
          ],
          yAxes: [
            {
              display: true,
              scaleLabel: {
                display: true
              },
              ticks: {
                stepSize: 5,
                min: 0,
                max: 20,
                fontColor: labelColor
              },
              gridLines: {
                display: true,
                color: grid_line_color,
                zeroLineColor: grid_line_color
              }
            }
          ]
        },
        legend: {
          position: 'top',
          labels: {
            usePointStyle: true,
            padding: 15,
            boxWidth: 3
          }
        }
      },
      data: {
        labels: dayList,
        datasets: [
          {
            data: libList , 
            label: '현장',
            borderColor: lineChartDanger,
            lineTension: 0.5,
            pointStyle: 'circle',
            backgroundColor: lineChartDanger,
            fill: false,
            pointRadius: 1,
            pointHoverRadius: 5,
            pointHoverBorderWidth: 5,
            pointBorderColor: 'transparent',
            pointHoverBorderColor: window.colors.solid.white,
            pointHoverBackgroundColor: lineChartDanger,
            pointShadowOffsetX: 1,
            pointShadowOffsetY: 1,
            pointShadowBlur: 5,
            pointShadowColor: tooltipShadow
          },
          {
            data: lockerList , 
            label: '사물함',
            borderColor: lineChartPrimary,
            lineTension: 0.5,
            pointStyle: 'circle',
            backgroundColor: lineChartPrimary,
            fill: false,
            pointRadius: 1,
            pointHoverRadius: 5,
            pointHoverBorderWidth: 5,
            pointBorderColor: 'transparent',
            pointHoverBorderColor: window.colors.solid.white,
            pointHoverBackgroundColor: lineChartPrimary,
            pointShadowOffsetX: 1,
            pointShadowOffsetY: 1,
            pointShadowBlur: 5,
            pointShadowColor: tooltipShadow
          },
          {
            data: driveList  , 
            label: '드라이브',
            borderColor: warningColorShade,
            lineTension: 0.5,
            pointStyle: 'circle',
            backgroundColor: warningColorShade,
            fill: false,
            pointRadius: 1,
            pointHoverRadius: 5,
            pointHoverBorderWidth: 5,
            pointBorderColor: 'transparent',
            pointHoverBorderColor: window.colors.solid.white,
            pointHoverBackgroundColor: warningColorShade,
            pointShadowOffsetX: 1,
            pointShadowOffsetY: 1,
            pointShadowBlur: 5,
            pointShadowColor: tooltipShadow
          },
          {
              data:  shipList , 
              label: '배송',
              borderColor: '#FFB1C1',
              lineTension: 0.5,
              pointStyle: 'circle',
              backgroundColor:  '#FFB1C1',
              fill: false,
              pointRadius: 1,
              pointHoverRadius: 5,
              pointHoverBorderWidth: 5,
              pointBorderColor: 'transparent',
              pointHoverBorderColor: window.colors.solid.white,
              pointHoverBackgroundColor:  '#FFB1C1',
              pointShadowOffsetX: 1,
              pointShadowOffsetY: 1,
              pointShadowBlur: 5,
              pointShadowColor: tooltipShadow
            }
        ]
      }
    });
  }
}