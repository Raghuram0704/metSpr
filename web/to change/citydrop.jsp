

<script type="text/javascript">
function mycity()
{
	var selbox= document.login.pickup;
        var selbox1= document.login.drop;
        selbox1=selbox;
	selbox.options.length=0;
        selbox1.options.length=0;
        
        
	if(document.login.city.options[document.login.city.selectedIndex].value == 'delhi')
	{
		document.login.service[1].disabled=false;
		document.login.service[0].disabled=false;
		
		selbox.disabled=false;
                selbox.options[selbox.options.length]=new Option('Qutub Minar','Qutub Minar');
		selbox.options[selbox.options.length]=new Option('Red Fort','Red Fort');
		selbox.options[selbox.options.length]=new Option('Lotus Temple','Lotus Temple');
                selbox.options[selbox.options.length]=new Option('Dwarka','Dwarka');
	}
	else if(document.login.city.options[document.login.city.selectedIndex].value == 'mumbai')
	{
		document.login.service[1].disabled=true;
		document.login.service[0].disabled=true;
                
                selbox.disabled=false;
		selbox.options[selbox.options.length]=new Option('Gateway of India','Gateway of India');
		selbox.options[selbox.options.length]=new Option('High Court','High Court');
		selbox.options[selbox.options.length]=new Option('Crawfort Market','Crawfort Market');
                selbox.options[selbox.options.length]=new Option('Bandra','Bandra');
	}
        else if(document.login.city.options[document.login.city.selectedIndex].value == 'kolkata')
	{
		document.login.service[1].disabled=true;
		document.login.service[0].disabled=true;
                
                selbox.disabled=false;
		selbox.options[selbox.options.length]=new Option('Bidhan Nagar','Bidhan Nagar');
		selbox.options[selbox.options.length]=new Option('Howrah','Howrah');
		selbox.options[selbox.options.length]=new Option('New Town','New Town');
                selbox.options[selbox.options.length]=new Option('Barrackpore','Barrackpore');
	}
        else if(document.login.city.options[document.login.city.selectedIndex].value == 'chennai')
	{
		document.login.service[1].disabled=true;
		document.login.service[0].disabled=true;
                
                selbox.disabled=false;
		selbox.options[selbox.options.length]=new Option('T.Nagar','T.Nagar');
		selbox.options[selbox.options.length]=new Option('Egmore','Egmore');
		selbox.options[selbox.options.length]=new Option('Thambaram','Thambaram');
                selbox.options[selbox.options.length]=new Option('Sholinganallur','Sholinganallur');
	}
	else
	{
		document.login.service[1].disabled=true;
		document.login.service[0].disabled=true;
		selbox.disabled="disabled";
                selbox1.disabled="disabled";
	}
        
        if(document.login.city.options[document.login.city.selectedIndex].value == 'delhi')
	{
		document.login.service[1].disabled=false;
		document.login.service[0].disabled=false;
		
		selbox1.disabled=false;
                selbox1.options[selbox.options.length]=new Option('Qutub Minar','Qutub Minar');
		selbox1.options[selbox.options.length]=new Option('Red Fort','Red Fort');
		selbox1.options[selbox.options.length]=new Option('Lotus Temple','Lotus Temple');
                selbox1.options[selbox.options.length]=new Option('Dwarka','Dwarka');
	}
	else if(document.login.city.options[document.login.city.selectedIndex].value == 'mumbai')
	{
		document.login.service[1].disabled=true;
		document.login.service[0].disabled=true;
                
                selbox1.disabled=false;
		selbox1.options[selbox.options.length]=new Option('Gateway of India','Gateway of India');
		selbox1.options[selbox.options.length]=new Option('High Court','High Court');
		selbox1.options[selbox.options.length]=new Option('Crawfort Market','Crawfort Market');
                selbox1.options[selbox.options.length]=new Option('Bandra','Bandra');
	}
        else if(document.login.city.options[document.login.city.selectedIndex].value == 'kolkata')
	{
		document.login.service[1].disabled=true;
		document.login.service[0].disabled=true;
                
                selbox1.disabled=false;
		selbox1.options[selbox.options.length]=new Option('Bidhan Nagar','Bidhan Nagar');
		selbox1.options[selbox.options.length]=new Option('Howrah','Howrah');
		selbox1.options[selbox.options.length]=new Option('New Town','New Town');
                selbox1.options[selbox.options.length]=new Option('Barrackpore','Barrackpore');
	}
        else if(document.login.city.options[document.login.city.selectedIndex].value == 'chennai')
	{
		document.login.service[1].disabled=true;
		document.login.service[0].disabled=true;
                
                selbox1.disabled=false;
		selbox1.options[selbox.options.length]=new Option('T.Nagar','T.Nagar');
		selbox1.options[selbox.options.length]=new Option('Egmore','Egmore');
		selbox1.options[selbox.options.length]=new Option('Thambaram','Thambaram');
                selbox1.options[selbox.options.length]=new Option('Sholinganallur','Sholinganallur');
	}
	else
	{
		document.login.service[1].disabled=true;
		document.login.service[0].disabled=true;
		selbox1.disabled="disabled";
	}
        
}




</script>

		<form action="AddVehicleController" method="post" name="login" onsubmit="return validate()">
						
				<table >
					
					<tr>
						<td>CITY</td>
						<td>
							<select name="city" onchange="mycity()">
								<option value=""></option>
                                                                <option value="delhi">DELHI</option>
                                                                <option value="mumbai">MUMBAI</option>
                                                                <option value="kolkata">KOLKATA</option>
                                                                <option value="chennai">CHENNAI</option>
                                                        </select>
                                                </td>
                                        <tr>
                                                <td>PICKUP LOCATION</td>
                                                <td>
							<select name="pickup" disabled="disabled">
								<option value="">----</option>
							</select>
						</td>
					</tr>
                                        <tr>
                                                <td>drop LOCATION</td>
                                                <td>
							<select name="drop" disabled="disabled">
								<option value="">----</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>TYPE OF VECHICLE</td>
						<td><input type="radio" name="service" value="A/C" disabled="disabled" checked="checked" ><b>A/C</b>
                                                    <input type="radio" name="service" value="NonA/C" disabled="disabled"  ><b>Non A/C</b>
						</td>
					</tr>
					
												
						</table>
				</form>
		


<!--

if(document.login.type[1].value == 'URGENT'){
            document.login.date.disabled=false;
}
else{
                document.login.date.disabled=true; 
}


if(document.getElementById('NORMAL').checked) {
     document.getElementById("date").disabled = false;
    }else if(document.getElementById('URGENT').checked) {
      document.getElementById("date").disabled = true;
    }


!-->


