/*=========================================================================================
    File Name: chart-chartjs.js
    Description: Chartjs Examples
    ----------------------------------------------------------------------------------------
    Item Name: Vuexy  - Vuejs, HTML & Laravel Admin Dashboard Template
    Author: PIXINVENT
    Author URL: http://www.themeforest.net/user/pixinvent
==========================================================================================*/

$(window).on('load', function () {
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
        labels: ['문학', '사회과학', '기술과학', '총류', '철학', '예술'],
        datasets: [
          {
            label: 'Population (millions)',
            backgroundColor: [
              primaryColorShade,
              warningColorShade,
              blueLightColor,
              infoColorShade,
              greyColor,
              successColorShade
            ],
            data: [1358, 857, 929, 677, 763, 1239],
            borderWidth: 0
          }
        ]
      }
    });
  }

  // Bubble Chart
  // --------------------------------------------------------------------
  if (bubbleChartEx.length) {
    var bubbleExample = new Chart(bubbleChartEx, {
      type: 'bubble',
      options: {
        responsive: true,
        maintainAspectRatio: false,
        scales: {
          xAxes: [
            {
              display: true,
              gridLines: {
                color: grid_line_color,
                zeroLineColor: grid_line_color
              },
              ticks: {
                stepSize: 10,
                min: 0,
                max: 140,
                fontColor: labelColor
              }
            }
          ],
          yAxes: [
            {
              display: true,
              gridLines: {
                color: grid_line_color,
                zeroLineColor: grid_line_color
              },
              ticks: {
                stepSize: 100,
                min: 0,
                max: 400,
                fontColor: labelColor
              }
            }
          ]
        },
        legend: {
          display: false
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
        }
      },
      data: {
        animation: {
          duration: 10000
        },
        datasets: [
          {
            backgroundColor: primaryColorShade,
            borderColor: primaryColorShade,
            data: [
              {
                x: 20,
                y: 74,
                r: 10
              }
            ]
          },
          {
            backgroundColor: warningColorShade,
            borderColor: warningColorShade,
            data: [
              {
                x: 30,
                y: 72,
                r: 5
              }
            ]
          },
          {
            backgroundColor: primaryColorShade,
            borderColor: primaryColorShade,
            data: [
              {
                x: 10,
                y: 110,
                r: 5
              }
            ]
          },
          {
            backgroundColor: warningColorShade,
            borderColor: warningColorShade,
            data: [
              {
                x: 40,
                y: 110,
                r: 7
              }
            ]
          },
          {
            backgroundColor: warningColorShade,
            borderColor: warningColorShade,
            data: [
              {
                x: 20,
                y: 135,
                r: 6
              }
            ]
          },
          {
            backgroundColor: warningColorShade,
            borderColor: warningColorShade,
            data: [
              {
                x: 10,
                y: 160,
                r: 12
              }
            ]
          },
          {
            backgroundColor: primaryColorShade,
            borderColor: primaryColorShade,
            data: [
              {
                x: 30,
                y: 165,
                r: 7
              }
            ]
          },
          {
            backgroundColor: primaryColorShade,
            borderColor: primaryColorShade,
            data: [
              {
                x: 40,
                y: 200,
                r: 20
              }
            ]
          },
          {
            backgroundColor: primaryColorShade,
            borderColor: primaryColorShade,
            data: [
              {
                x: 90,
                y: 185,
                r: 7
              }
            ]
          },
          {
            backgroundColor: primaryColorShade,
            borderColor: primaryColorShade,
            data: [
              {
                x: 50,
                y: 240,
                r: 7
              }
            ]
          },
          {
            backgroundColor: primaryColorShade,
            borderColor: primaryColorShade,
            data: [
              {
                x: 60,
                y: 275,
                r: 10
              }
            ]
          },
          {
            backgroundColor: primaryColorShade,
            borderColor: primaryColorShade,
            data: [
              {
                x: 70,
                y: 305,
                r: 5
              }
            ]
          },
          {
            backgroundColor: primaryColorShade,
            borderColor: primaryColorShade,
            data: [
              {
                x: 80,
                y: 325,
                r: 4
              }
            ]
          },
          {
            backgroundColor: warningColorShade,
            borderColor: warningColorShade,
            data: [
              {
                x: 50,
                y: 285,
                r: 5
              }
            ]
          },
          {
            backgroundColor: warningColorShade,
            borderColor: warningColorShade,
            data: [
              {
                x: 60,
                y: 235,
                r: 5
              }
            ]
          },
          {
            backgroundColor: warningColorShade,
            borderColor: warningColorShade,
            data: [
              {
                x: 70,
                y: 275,
                r: 7
              }
            ]
          },
          {
            backgroundColor: warningColorShade,
            borderColor: warningColorShade,
            data: [
              {
                x: 80,
                y: 290,
                r: 4
              }
            ]
          },
          {
            backgroundColor: warningColorShade,
            borderColor: warningColorShade,
            data: [
              {
                x: 90,
                y: 250,
                r: 10
              }
            ]
          },
          {
            backgroundColor: warningColorShade,
            borderColor: warningColorShade,
            data: [
              {
                x: 100,
                y: 220,
                r: 7
              }
            ]
          },
          {
            backgroundColor: warningColorShade,
            borderColor: warningColorShade,
            data: [
              {
                x: 120,
                y: 230,
                r: 4
              }
            ]
          },
          {
            backgroundColor: warningColorShade,
            borderColor: warningColorShade,
            data: [
              {
                x: 110,
                y: 320,
                r: 15
              }
            ]
          },
          {
            backgroundColor: warningColorShade,
            borderColor: warningColorShade,
            data: [
              {
                x: 130,
                y: 330,
                r: 7
              }
            ]
          },
          {
            backgroundColor: primaryColorShade,
            borderColor: primaryColorShade,
            data: [
              {
                x: 100,
                y: 310,
                r: 5
              }
            ]
          },
          {
            backgroundColor: primaryColorShade,
            borderColor: primaryColorShade,
            data: [
              {
                x: 110,
                y: 240,
                r: 5
              }
            ]
          },
          {
            backgroundColor: primaryColorShade,
            borderColor: primaryColorShade,
            data: [
              {
                x: 120,
                y: 270,
                r: 7
              }
            ]
          },
          {
            backgroundColor: primaryColorShade,
            borderColor: primaryColorShade,
            data: [
              {
                x: 130,
                y: 300,
                r: 6
              }
            ]
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
            labels: ['Tablet', 'Mobile', 'Desktop'],
            data: [10, 10, 80],
            backgroundColor: [successColorShade, warningLightColor, window.colors.solid.primary],
            borderWidth: 0,
            pointStyle: 'rectRounded'
          }
        ]
      }
    });
  }

  // Scatter Chart
  // --------------------------------------------------------------------
  if (scatterChartEx.length) {
    var scatterExample = new Chart(scatterChartEx, {
      type: 'scatter',
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
        responsiveAnimationDuration: 800,
        title: {
          display: false,
          text: 'Chart.js Scatter Chart'
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
        scales: {
          xAxes: [
            {
              gridLines: {
                color: grid_line_color,
                zeroLineColor: grid_line_color
              },
              ticks: {
                stepSize: 10,
                min: 0,
                max: 140,
                fontColor: labelColor
              }
            }
          ],
          yAxes: [
            {
              gridLines: {
                color: grid_line_color,
                zeroLineColor: grid_line_color
              },
              ticks: {
                stepSize: 100,
                min: 0,
                max: 400,
                fontColor: labelColor
              }
            }
          ]
        },
        legend: {
          position: 'top',
          align: 'start',
          labels: {
            usePointStyle: true,
            padding: 25,
            boxWidth: 9
          }
        },
        layout: {
          padding: {
            top: -20
          }
        }
      },
      data: {
        datasets: [
          {
            label: 'iPhone',
            data: [
              {
                x: 72,
                y: 225
              },
              {
                x: 81,
                y: 270
              },
              {
                x: 90,
                y: 230
              },
              {
                x: 103,
                y: 305
              },
              {
                x: 103,
                y: 245
              },
              {
                x: 108,
                y: 275
              },
              {
                x: 110,
                y: 290
              },
              {
                x: 111,
                y: 315
              },
              {
                x: 109,
                y: 350
              },
              {
                x: 116,
                y: 340
              },
              {
                x: 113,
                y: 260
              },
              {
                x: 117,
                y: 275
              },
              {
                x: 117,
                y: 295
              },
              {
                x: 126,
                y: 280
              },
              {
                x: 127,
                y: 340
              },
              {
                x: 133,
                y: 330
              }
            ],
            backgroundColor: window.colors.solid.primary,
            borderColor: 'transparent',
            pointBorderWidth: 2,
            pointHoverBorderWidth: 2,
            pointRadius: 5
          },
          {
            label: 'Samsung Note',
            data: [
              {
                x: 13,
                y: 95
              },
              {
                x: 22,
                y: 105
              },
              {
                x: 17,
                y: 115
              },
              {
                x: 19,
                y: 130
              },
              {
                x: 21,
                y: 125
              },
              {
                x: 35,
                y: 125
              },
              {
                x: 13,
                y: 155
              },
              {
                x: 21,
                y: 165
              },
              {
                x: 25,
                y: 155
              },
              {
                x: 18,
                y: 190
              },
              {
                x: 26,
                y: 180
              },
              {
                x: 43,
                y: 180
              },
              {
                x: 53,
                y: 202
              },
              {
                x: 61,
                y: 165
              },
              {
                x: 67,
                y: 225
              }
            ],
            backgroundColor: yellowColor,
            borderColor: 'transparent',
            pointRadius: 5
          },
          {
            label: 'OnePlus',
            data: [
              {
                x: 70,
                y: 195
              },
              {
                x: 72,
                y: 270
              },
              {
                x: 98,
                y: 255
              },
              {
                x: 100,
                y: 215
              },
              {
                x: 87,
                y: 240
              },
              {
                x: 94,
                y: 280
              },
              {
                x: 99,
                y: 300
              },
              {
                x: 102,
                y: 290
              },
              {
                x: 110,
                y: 275
              },
              {
                x: 111,
                y: 250
              },
              {
                x: 94,
                y: 280
              },
              {
                x: 92,
                y: 340
              },
              {
                x: 100,
                y: 335
              },
              {
                x: 108,
                y: 330
              }
            ],
            backgroundColor: successColorShade,
            borderColor: 'transparent',
            pointBorderWidth: 2,
            pointHoverBorderWidth: 2,
            pointRadius: 5
          }
        ]
      }
    });
  }

  // Line AreaChart
  // --------------------------------------------------------------------
  if (lineAreaChartEx.length) {
    new Chart(lineAreaChartEx, {
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
        legend: {
          position: 'top',
          align: 'start',
          labels: {
            usePointStyle: true,
            padding: 25,
            boxWidth: 9
          }
        },
        layout: {
          padding: {
            top: -20,
            bottom: -20,
            left: -20
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
        scales: {
          xAxes: [
            {
              display: true,
              gridLines: {
                color: 'transparent',
                zeroLineColor: grid_line_color
              },
              scaleLabel: {
                display: true
              },
              ticks: {
                fontColor: labelColor
              }
            }
          ],
          yAxes: [
            {
              display: true,
              gridLines: {
                color: 'transparent',
                zeroLineColor: grid_line_color
              },
              ticks: {
                stepSize: 100,
                min: 0,
                max: 400,
                fontColor: labelColor
              },
              scaleLabel: {
                display: true
              }
            }
          ]
        }
      },
      data: {
        labels: [
          '7/12',
          '8/12',
          '9/12',
          '10/12',
          '11/12',
          '12/12',
          '13/12',
          '14/12',
          '15/12',
          '16/12',
          '17/12',
          '18/12',
          '19/12',
          '20/12',
          ''
        ],
        datasets: [
          {
            label: 'Africa',
            data: [40, 55, 45, 75, 65, 55, 70, 60, 100, 98, 90, 120, 125, 140, 155],
            lineTension: 0,
            backgroundColor: blueColor,
            pointStyle: 'circle',
            borderColor: 'transparent',
            pointRadius: 0.5,
            pointHoverRadius: 5,
            pointHoverBorderWidth: 5,
            pointBorderColor: 'transparent',
            pointHoverBackgroundColor: blueColor,
            pointHoverBorderColor: window.colors.solid.white
          },
          {
            label: 'Asia',
            data: [70, 85, 75, 150, 100, 140, 110, 105, 160, 150, 125, 190, 200, 240, 275],
            lineTension: 0,
            backgroundColor: blueLightColor,
            pointStyle: 'circle',
            borderColor: 'transparent',
            pointRadius: 0.5,
            pointHoverRadius: 5,
            pointHoverBorderWidth: 5,
            pointBorderColor: 'transparent',
            pointHoverBackgroundColor: blueLightColor,
            pointHoverBorderColor: window.colors.solid.white
          },
          {
            label: 'Europe',
            data: [240, 195, 160, 215, 185, 215, 185, 200, 250, 210, 195, 250, 235, 300, 315],
            lineTension: 0,
            backgroundColor: greyLightColor,
            pointStyle: 'circle',
            borderColor: 'transparent',
            pointRadius: 0.5,
            pointHoverRadius: 5,
            pointHoverBorderWidth: 5,
            pointBorderColor: 'transparent',
            pointHoverBackgroundColor: greyLightColor,
            pointHoverBorderColor: window.colors.solid.white
          }
        ]
      }
    });
  }
});
