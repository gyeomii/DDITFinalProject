var countList = [1,2,3,4,5,6,7,8,9,10]

function memberChart(path){
$.ajax({
	type : 'get',
	dataType : "json",
	url : path + "/main/myInfo/rentCount.do",
	success : function(res){
		countList = res;
		console.log(countList);
		smartChart();
	},
	error:function(error){
			console.log("error:"+error);
	    }
	});
}

function smartChart(){
	
// 슬기로운 도서생활 차트
var options = {
          series: [87],
          chart: {
          height: 350,
          type: 'radialBar',
          offsetY: -10
        },
        plotOptions: {
          radialBar: {
            startAngle: -135,
            endAngle: 135,
            dataLabels: {
              name: {
                fontSize: '16px',
                color: undefined,
                offsetY: 120
              },
              value: {
                offsetY: 76,
                fontSize: '22px',
                color: undefined,
                formatter: function (val) {
                  return val +'%' ;
                }
              }
            }
          }
        },
        fill: {
          type: 'gradient',
          gradient: {
              shade: 'dark',
              shadeIntensity: 0.05,
              inverseColors: false,
              opacityFrom: 1,
              opacityTo: 1,
              stops: [0, 30, 65, 91]
          },
        },
        stroke: {
          dashArray: 2
        },
        labels: ['승급 달성율'],
        };

        var schart1 = new ApexCharts(document.querySelector("#support-chart"), options);
        schart1.render();
        
        
        
//       라이브러리 차트
        var options = {
        colors: [
        	"#304758"
        ],
          series: [{
          name: '읽은 권 수',
          data: countList
        }],
          chart: {
          height: 250,
          type: 'bar',
        },
        plotOptions: {
          bar: {
            borderRadius: 5,
            dataLabels: {
              position: 'top', // top, center, bottom
            },
          }
        },
        dataLabels: {
          enabled: true,
          formatter: function (val) {
            return val + "권";
          },
          offsetY: -20,
          style: {
            fontSize: '12px',
          }
        },
        
        xaxis: {
          categories: ["총류", "철학", "종교", "사회과학", "자연과학", "기술과학", "예술", "언어", "문학", "역사"],
          position: 'bottom',
          axisBorder: {
            show: false
          },
          axisTicks: {
            show: false
          },
          crosshairs: {
            fill: {
              type: 'gradient',
              gradient: {
                colorFrom: '#D8E3F0',
                colorTo: '#BED1E6',
                stops: [0, 100],
                opacityFrom: 0.4,
                opacityTo: 0.5,
              }
            }
          },
          tooltip: {
            enabled: true,
          }
        },
        yaxis: {
          axisBorder: {
            show: false
          },
          axisTicks: {
            show: false,
          },
          labels: {
            show: false,
            formatter: function (val) {
              return val;
            }
          }
        
        },
        title: {
          text: '독서 현황',
          floating: true,
          offsetY: 10,
          align: 'center',
          style: {
            color: '#444'
          }
        }
        };

        var schart2 = new ApexCharts(document.querySelector("#lib-chart"), options);
        schart2.render();
}