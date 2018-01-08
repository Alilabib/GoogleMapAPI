<?php 
     include ("init.php");
     include($tpl."header.php");
 ?>

<div class="map" >
 <div class="container">
  <div class="row">
  <div class="col-md-6">
    <div id="floating-panel">
    <form class="form-inline">
      <input class="form-control form-group-lg add" id="address" type="text" placeholder="Sreach By Name Of Area">
      <input id="submit" type="button" class="btn btn-primary" value="Show">
     </form> 
      <div class="data">
        <table class="table table-striped" >
          <tr>
           <th> id </th>
           <th>Name</th>
           <th>date</th>
          </tr> 
          <tbody id="data">
          </tbody>
        </table>
        <p></p>
      </div>
    </div>
  </div>
	<div class="col-md-6">	  
	  	<div id="map" style="width: 600px; height: 500px;margin: 0 auto">
	 </div>
  </div> 
 </div>
</div>
  <script>
      function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 8,
          center: {lat: -30.397, lng: 34.644}
        });
        var geocoder = new google.maps.Geocoder();

        document.getElementById('submit').addEventListener('click', function() {
          geocodeAddress(geocoder, map);
        });

        var fc = document.getElementById('foucs'); 
        if(fc){
         fc.addEventListener('click', function() {
          geocodeFoucsAddress(geocoder, map);
        });
        }
      }

      function geocodeAddress(geocoder, resultsMap) {
        if(document.getElementById('address').value!=""){
        var address = document.getElementById('address').value;
        geocoder.geocode({'address': address}, function(results, status) {
          if (status === 'OK') {
            resultsMap.setCenter(results[0].geometry.location);
            var marker = new google.maps.Marker({
              map: resultsMap,
              position: results[0].geometry.location
            });
          } else {
            alert('Geocode was not successful for the following reason: ' + status);
          }
        });
      }
    }
    
      function geocodeFoucsAddress(geocoder, resultsMap) {
        var address = document.getElementById('foucsed').innerHTML;
        geocoder.geocode({'address': address}, function(results, status) {
          if (status === 'OK') {
            resultsMap.setCenter(results[0].geometry.location);
            var marker = new google.maps.Marker({
              map: resultsMap,
              position: results[0].geometry.location
            });
          } else {
            alert('Geocode was not successful for the following reason: ' + status);
          }
        });
      }
    </script>


 <?php
     include($tpl."footer.php");
 ?>


