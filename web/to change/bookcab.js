function myfun(){
        
        var x1,x2;
        var num= /^[0-9]+$/;
        
        x1=document.getElementById("bookid").value;
        x2=document.getElementById("bankname").value;
       
       
       
       //validate book id
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
            
        }
        }

        
        //validate bank name
        
        if(x2.length<1){
        document.getElementById("span2").innerHTML="id Cant be empty";
        return false;
        }
        else{
        document.getElementById("span2").innerHTML="";
        
        }
        
        //to check payment mode
        if(document.getElementById("cc").checked==false && document.getElementById
        ("dc").checked==false ){
        document.getElementById("span3").innerHTML="please select your service";
        return false;
        }
        else{
        document.getElementById("span3").innerHTML="";
        return true;
        }

        
        
        
    }
    