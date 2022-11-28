
var reserveList ;
var rentList ;
var returnList ;
var overdueList;

function rentAjax(path){
	
	 $.ajax({
	    	type : 'get',
	    	dataType : "json",
	    	url :  path+"/admin/main/rentAjax.do",
	    	success : function(res){
	    		var reserveC = res.reserveCount - 30
	    		var rentC = res.rentCount  + 30
	    		var returnC = res.returnCount - 5
	    		var overdueC = res.overdueCount + 5
	    		
	    		allCount = reserveC + rentC + returnC + overdueC;
	    	
	    		
	    		reserveList = parseInt( reserveC / allCount * 100 );
	    		rentList =  parseInt(rentC / allCount * 100 );
	    		returnList =  parseInt(returnC/ allCount * 100 );
	    		overdueList =  parseInt( overdueC / allCount * 100 );
	    		rentChart();
	    	},
	    	error:function(error){
	   			alert("에러발생");
			    }
	    	});
	
}

function rentChart(){
	


var options = {
          series: [reserveList, rentList, returnList, overdueList],
          chart: {
          height: 390,
          type: 'radialBar',
        },
        plotOptions: {
          radialBar: {
            offsetY: 0,
            startAngle: 0,
            endAngle: 270,
            hollow: {
              margin: 5,
              size: '30%',
              background: 'transparent',
              image: undefined,
            },
            dataLabels: {
              name: {
                show: true,
              },
              value: {
                show: true,
              }
            }
          }
        },
        colors: ['#1ab7ea', '#0084ff', '#39539E', '#0077B5'],
        labels: ['예약 도서', '대출 도서', '반납도서', '연체도서'],
        legend: {
          show: true,
          floating: true,
          fontSize: '16px',
          position: 'left',
          offsetX: -30,
          offsetY: 5,
          labels: {
            useSeriesColors: true,
          },
          markers: {
            size: 200
          },
          formatter: function(seriesName, opts) {
            return seriesName + ":  " + opts.w.globals.series[opts.seriesIndex] + "%"
          },
          itemMargin: {
            vertical: 3
          }
        },
        responsive: [{
          breakpoint: 480,
          options: {
            legend: {
                show: false
            }
          }
        }]
        };

var chart = new ApexCharts(document.querySelector("#radialbar-chart"), options);
chart.render(); 

}
