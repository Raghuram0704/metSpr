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
        document.getElementById("span1").innerHTML="Please provide only Numbers";
        return false;
        }
        else{
            document.getElementById("span1").innerHTML="";
            return true;
        }
        }
      }
        