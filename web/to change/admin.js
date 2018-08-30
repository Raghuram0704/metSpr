

function myfun(){  
        
        
        var x1;
        var num= /^[0-9]+$/;
        
        x1=document.getElementById("delete").value;
          
        
        //validate bkid
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
        x2=document.getElementById("update").value;
        
        //validate bkid
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
            
        }
        }
        
        if(document.getElementById("accept").checked==false && document.getElementById
            ("decline").checked==false ){
            document.getElementById("span3").innerHTML="Please select a Status";
            return false;
            }
            else{
            document.getElementById("span3").innerHTML="";
            return true;
         }
       
        }

	   function myfun2(){
            
            var x1,x2;

            x1=document.getElementById("city").value;
            x2=document.getElementById("date").value;
            
            //to check city 
            if(x1.length<1){
            document.getElementById("span8").innerHTML="location Cant be empty";
            return false;
            }
            else{
            document.getElementById("span8").innerHTML="";
            }
            
            //to check date
            if(x2==""){
                document.getElementById("span9").innerHTML="please select the date";
                return false;
                
            }  
            else{
            document.getElementById("span9").innerHTML="";
            return true;
            }

        }
 