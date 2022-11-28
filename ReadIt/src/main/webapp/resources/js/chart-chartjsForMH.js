/*=========================================================================================
    File Name: chart-chartjs.js
    Description: Chartjs Examples
    ----------------------------------------------------------------------------------------
    Item Name: Vuexy  - Vuejs, HTML & Laravel Admin Dashboard Template
    Author: PIXINVENT
    Author URL: http://www.themeforest.net/user/pixinvent
==========================================================================================*/
 var dataList = [];
 var datalabel = [];

 function mh(path){
		
	
		$.ajax({
			type : 'get',
			dataType : "json",
			url : path + "/main/facilitySpace/statisticsData.do",
			success:function(data){
				for(var i=0; i<data.length; i++){
					dataList.push(data[i].cnt);
					datalabel.push(data[i].day);
				}
				mhChart();
			
				},
			error:function(error){
				alert("에러")
			}
		});
	
	}
  
  
function mhChart() {
	
  'use strict';

  var chartWrapper = $('.chartjs'),
    flatPicker = $('.flat-picker'),
    barChartEx = $('.bar-chart-ex'),
    horizontalBarChartEx = $('.horizontal-bar-chart-ex'),
    lineChartEx = $('.line-chart-ex'),
    radarChartEx = $('.radar-chart-ex'),
    polarAreaChartEx = $('.polar-area-chart-ex'),
    bubbleChartEx = $('.bubble-chart-ex'),
    doughnutChartEx = $('.doughnut-chart-ex'),
    scatterChartEx = $('.scatter-chart-ex'),
    lineAreaChartEx = $('.line-area-chart-ex');

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





  // Horizontal Bar Chart
  // --------------------------------------------------------------------
  if (horizontalBarChartEx.length) {
    new Chart(horizontalBarChartEx, {
      type: 'horizontalBar',
      options: {
        elements: {
          rectangle: {
            borderWidth: 2,
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
    	  
        labels: [datalabel[0],datalabel[1],datalabel[2],datalabel[3],datalabel[4],datalabel[5],datalabel[6]],
        datasets: [
          {
            data: [ dataList[0],dataList[1],dataList[2],dataList[3],dataList[4],dataList[5],dataList[6]],
            barThickness: 15,
            backgroundColor: window.colors.solid.info,
            borderColor: 'transparent'
          }
        ]
      }
    });
  }


  // Polar Area Chart
  // --------------------------------------------------------------------
  if (polarAreaChartEx.length) {
	    var polarExample = new Chart(polarAreaChartEx, {
	      type: 'polarArea',
	      options: {
	        responsive: true,
	        maintainAspectRatio: false,
	        responsiveAnimationDuration: 500,
	        legend: {
	          position: 'right',
	          labels: {
	            usePointStyle: true,
	            padding: 25,
	            boxWidth: 9,
	            fontColor: labelColor
	          }
	        },
	        layout: {
	          padding: {
	            top: -5,
	            bottom: -45
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
	          scale: {
	            scaleShowLine: true,
	            scaleLineWidth: 1,
	            ticks: {
	              display: false,
	              fontColor: labelColor
	            },
	            reverse: false,
	            gridLines: {
	              display: false
	            }
	          },
	          animation: {
	            animateRotate: false
	          }
	        },
	      data: {
	        labels: [labelsList[0], labelsList[1], labelsList[2], labelsList[3], labelsList[4], labelsList[5]],
	        datasets: [
	          {
	            label: 'Population (millions)',
	            backgroundColor: [
	              primaryColorShade,
	              warningColorShade,
	              window.colors.solid.primary,
	              infoColorShade,
	              greyColor,
	              successColorShade
	            ],
	            data: [valuesList[0], valuesList[1], valuesList[2], valuesList[3], valuesList[4], valuesList[5]],
	            borderWidth: 0
	          }
	        ]
	      }
	    });
	  }
  
  // Scatter Chart
  // --------------------------------------------------------------------


}
