 <?php  
 $connect = mysqli_connect("localhost", "root", "", "swissranks");  
 $query = "SELECT status, count(*) as number FROM intern GROUP BY status";  
 $result = mysqli_query($connect, $query);  
 ?>  
 <!DOCTYPE html>  
 <html>  
      <head> 
      	<style >
      h1 {
  			text-align: center;
		}
		</style>
 
           <title>PIE CHART</title>

           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
         <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

    <style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 250px;
  width: 200px;
  position: fixed;
  z-index: 1;
  top: 120px;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 50px;
}

.sidenav a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 15px;
  color: #818181;
  display: block;
}

 .active {
  color: white;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.main {
  margin-left: 160px; /* Same as the width of the sidenav */
  font-size: 22px; /* Increased text to enable scrolling */
  padding: 0px 10px;
}

body{
background: #004FF9;  /* fallback for old browsers */
background: -webkit-linear-gradient(to left, #FFF94C, #004FF9);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to left, #FFF94C, #004FF9); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

.trans {
  background: rgba(0,0,0,0.5);
  border-radius: 15px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>

           <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>  
           <script type="text/javascript">  
           google.charts.load('current', {'packages':['corechart']});  
           google.charts.setOnLoadCallback(drawChart);  
           function drawChart()  
           {  
                var data = google.visualization.arrayToDataTable([  
                          ['status', 'Number'],  
                          <?php  
                          while($row = mysqli_fetch_array($result))  
                          {  
                               echo "['".$row["status"]."', ".$row["number"]."],";  
                          }  
                          ?>  
                     ]);  
                var options = {  
                      title: 'Statistics of All Parts Created', 
                      colors:'white', 
                      legend: {position: 'bottom',textStyle: {color: 'white', fontSize: 12}}, 
                      slices: [{offset:0.01,color: '#b30000'},{offset:0.01,color: '#1a66ff'},{offset:0.01,color: '#cccc00'},{offset:0.01,color: '#408000'}], 
                      pieSliceText : 'value',
                      backgroundColor: 'transparent',
                      pieSliceTextStyle : {color:'white',fontSize:20},
                      titleTextStyle : {color:'white',fontSize:24}
                     };  
                var chart = new google.visualization.PieChart(document.getElementById('piechart'));  
                chart.draw(data, options);  
           }  
           </script>  
      </head>

       <body>
     <br><br><br>
  <div class="sidenav">
  <a style="color: white" href="#about">PieChart</a>
  <a href="../chartjs/bargraph-Status/bargraph-Status.html">Status-Barchart</a>
  <a href="../chartjs/bargraph-ApprovedBy/bargraph-ApprovedBy.html">ApprovedBy-Barchart</a>
  <a href="../chartjs/bargraph1-CreatedBy/bargraph.html">CreatedBy-Barchart</a>
</div>

<div class="main">
<div class="container text-white trans">
  <div class="row">
    <div class="col-sm">
      <div id="piechart" style="width: 700px; height: 500px;"></div>
    </div>
    <div class="col-sm">
      <br><br>
           <table class="table">
            <thead>
            <th>Status</th> 
            <th>Total</th>
          </thead>
          <tbody id="tbody">
                                    <?php  
                          $result = mysqli_query($connect, $query);           
                          while($row = mysqli_fetch_array($result))  
                          {  
                              echo "<tr>" ;
                               echo "<td>".$row["status"]."</td><td>".$row["number"]."</td>";  
                               echo "</tr>" ;
                          }  
                          ?>
          </tbody>
        </table> 
    </div>
  </div>
</div>
</div>
  </body> 
 </html> 