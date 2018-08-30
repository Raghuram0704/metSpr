function myfun(){  
        
        var x1;
        var num= /^[0-9]+$/;
        
        x1=document.getElementById("status").value;
          
        
        //validate status
        if(x1.length<1){
        document.getElementById("span1").innerHTML="Booking ID Cannot be empty";
        return false;
        }
        else if(x1.length>5){
            document.getElementById("span1").innerHTML="Max Size of Booking ID is 5";
           return false; 
        }
        else if(x1.length<6){
        if(!x1.match(num)){
        document.getElementById("span1").innerHTML="please provide only numbers";
        return false;
        }
        else{
            document.getElementById("span1").innerHTML="";
            return true;
        }
        }
      }
        function myfun1(){
        
        var x2;
        var num= /^[0-9]+$/;
        x2=document.getElementById("details").value;
        
        //validate details
        if(x2.length<1){
        document.getElementById("span2").innerHTML="Booking ID Cannot be empty";
        return false;
        }
        else if(x2.length>5){
            document.getElementById("span2").innerHTML="Max Size of Booking ID is 5";
            return false;
        }
        else if(x2.length<6){
        if(!x2.match(num)){
        document.getElementById("span2").innerHTML="please provide only numbers";
        return false;
        }
        else{
            document.getElementById("span2").innerHTML="";
            return true;
        }
        }
       
     } 