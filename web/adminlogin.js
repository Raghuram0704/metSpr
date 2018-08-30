
function myfun(){
                
                
               var pw= /^\w+$/; 
               var nam= /^[a-zA-Z]+$/; 
               var z=/^(?=.*\w)(?=.*[a-zA-Z])$/
               var x1=document.getElementById("username").value;
               var x2=document.getElementById("password").value;
               
               if(x1.length<1){
                document.getElementById("span1").innerHTML="UserName Cannot be Empty";
               return false; 
                }
                else if(x1.length>1){
                if(!x1.match(nam)){
                document.getElementById("span1").innerHTML="Please Enter a Valid UserName";
                return false;
                }
                else{
                    document.getElementById("span1").innerHTML="";

                }
                }
                
                if(x2.length<1){
                document.getElementById("span2").innerHTML="Password Cannot be Empty";
               return false; 
                }
                else if(x2.length>1){
                if(!x2.test(z)){
                document.getElementById("span2").innerHTML="Please Enter a Valid Password";
                return false;
                }
                else{
                    document.getElementById("span2").innerHTML="";

                }
                }
                
            }