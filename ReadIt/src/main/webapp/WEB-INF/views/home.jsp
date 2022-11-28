<html>
<head>
<title>Home</title>
<link rel="stylesheet"
	href="https://uicdn.toast.com/grid/latest/tui-grid.css" />
<script src="https://uicdn.toast.com/grid/latest/tui-grid.js"></script>
<link rel="stylesheet"
	href="https://uicdn.toast.com/chart/latest/toastui-chart.min.css" />
<script src="https://uicdn.toast.com/chart/latest/toastui-chart.min.js"></script>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	<div class="card-body">
		<div id="grid" style="width: 1000px; height: 300px"></div>
	</div>
	<div>
		<div id="barChart" style="width: 1000px; height: 600px"></div>
	</div>
	<div>
		<div id="Scatter" style="width: 1000px; height: 600px"></div>
	</div>
	<script>
 var Grid = tui.Grid
 var data1 = [
	  {
	    id: '10012',
	    city: 'Seoul',
	    country: 'South Korea'
	  },
	  {
	    id: '10013',
	    city: 'Tokyo',
	    country: 'Japan'    
	  },
	  {
	    id: '10014',
	    city: 'London',
	    country: 'England'
	  },
	  {
	    id: '10015',
	    city: 'Ljubljana',
	    country: 'Slovenia'
	  },
	  {
	    id: '10016',
	    city: 'Reykjavik',
	    country: 'Iceland'
	  }
	];
 var grid = new Grid({
     el: document.getElementById('grid'),
     data: data1,
     scrollX: false,
     scrollY: false,
     rowHeaders: ['checkbox'],
     columns: [
       {
         header: 'ID',
         name: 'id'
       },
       {
         header: 'CITY',
         name: 'city'
       },
       {
         header: 'COUNTRY',
         name: 'country'
       }
     ]
   });
 </script>
	<script>
 /* namespace */
 var Chart = toastui.Chart;
 var el = document.getElementById('barChart');
 var data = {
		  categories: ['Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
		  series: [
		    {
		      name: 'Budget',
		      data: [5000, 3000, 5000, 7000, 6000, 4000, 1000],
		    },
		    {
		      name: 'Income',
		      data: [8000, 4000, 7000, 2000, 6000, 3000, 5000],
		    },
		    {
		      name: 'Expenses',
		      data: [4000, 4000, 6000, 3000, 4000, 5000, 7000],
		    },
		    {
		      name: 'Debt',
		      data: [3000, 4000, 3000, 1000, 2000, 4000, 3000],
		    }
		  ]
		}
var options = {
	chart: { width: 1000, height: 600 },
};
 var chart = Chart.barChart({ el, data, options });
 // var chart = new BarChart({ el, data, options }); // Second way
 </script>
	<script>
 /* namespace */
 var Chart = toastui.Chart;
 el = document.getElementById('Scatter');
 data = {
		  series: [
		    {
		      name: 'male',
		      data: [
		        { x: 174, y: 65.6 },
		        { x: 175.3, y: 71.8 },
		        { x: 193.5, y: 80.7 },
		        { x: 186.5, y: 72.6 },
		        { x: 187.2, y: 78.8 },
		      ],
		    },
		    {
		      name: 'female',
		      data: [
		        { x: 161.2, y: 51.6 },
		        { x: 167.5, y: 59 },
		        { x: 159.5, y: 49.2 },
		        { x: 157, y: 63 },
		        { x: 155.8, y: 53.6 },
		      ],
		    },
		  ],
		}
options = {
	chart: { width: 1000, height: 600 },
};
chart = Chart.scatterChart({ el, data, options });
 // var chart = new BarChart({ el, data, options }); // Second way
 </script>
</body>
</html>
