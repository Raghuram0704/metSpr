<!DOCTYPE html>
<html>
<body>


<p id="demo1"></p>
<p id="demo2"></p>
<p id="demo3"></p>
<p id="demo4"></p>
<script>
    
function myFunction() {
var x=new Date();
var d = new Date();
var d1=  d.toDateString();
var year=d.getFullYear();
var mth=d.getMonth();
var month=mth+1;
var day=d.getDate(); 
var date1=year+"-0"+month+"-"+day;
document.getElementById("myText").value = date1;

</script>

</body>
</html>

