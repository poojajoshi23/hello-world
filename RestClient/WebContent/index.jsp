<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Show JSON response_test1</title>
</head>
<body>
	<button id="test">get data</button>
	<button id="ajax">ajax call</button>
<button id="json">json</button>
<div id="output"></div>
<script type="text/javascript">

var mycars = [{name:'Susita'}, {name:'BMW'}];
for (i in mycars)
{
  document.write(mycars[i].name + "<br />");
}

var url ='http://localhost:8080/SpringRestExample/rest/emps';


   $('#json').click(function(){
        alert('json');
         $.getJSON("http://localhost:8080/SpringRestExample/rest/emps",
         function(data) {
            alert(data);
          });
    });

    $('#ajax').click(function(){
        alert('ajax');
         $.ajax({
             type: "GET",
             dataType: "json",
             url: "http://localhost:8080/SpringRestExample/rest/emps",
             success: function(data){
            	 console.log("SUCCESS: ", data);
            	 for (i in data)
            	 {
            	document.write(data[i].id+"<br>"+ data[i].name);
            	 }
             }
  			  } );

         });



</script>

</body>
</html>
