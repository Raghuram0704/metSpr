
function myfun(){  
        
        var x1,x2,x3;
        var num= /^[0-9]+$/;
        
        x1=document.getElementById("bookid").value;
        x2=document.getElementById("date").value; 
        x3=document.getElementById("feedback").value; 
        
        //validate status
        if(x1.length<1){
        document.getElementById("span1").innerHTML="Booking ID Cannot be Empty";
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
            
        }
        }
        
        if(x2==""){
            document.getElementById("span2").innerHTML="Please select the Date";
            return false;
        }  
        else if(new Date() - new Date(x2) > (99999999)){
               document.getElementById("span2").innerHTML="Invalid Date, Please select Today";
                return false;
        }  
        else if(new Date() - new Date(x2) < (0)){
            document.getElementById("span2").innerHTML="Invalid Date, Please select Today";
            return false;
        }    
        else{
        document.getElementById("span2").innerHTML="";
        }
        
        if( x3 == ""){
            document.getElementById("span3").innerHTML="Please enter some text into the Feedback Field";
            return false;
        }  
        else{
        document.getElementById("span3").innerHTML="";
        return true;
        }
        
      }