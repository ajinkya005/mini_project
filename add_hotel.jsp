<%-- 
    Document   : add_hotel
    Created on : 22 Sep, 2019, 5:14:44 AM
    Author     : ajinkya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    </head>
    <body>
        
        
        
            <style>
label { display: inline-block; width: 210px; text-align: right; }
</style>
        
        
        <form>
         
         <div>
             
             
             
             <h3>Hotels</h3>
             <center>
                 <p>Hotel ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label><input type="text" name="h_id" class="form-control" /></label></p>
             </br></br></br>
             
             
             Day No &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <label> <input list="Day_no" name="Day No." class="form-control"></label>
			<datalist id="day_no">
				<option value="1">
				<option value="2">
				<option value="3">
                                <option value="4">
                                <option value="5">     
                                <option value="6">
                                <option value="7"> 
                                <option value="8">
                                <option value="9">    
			</datalist>
		
             
             </br></br></br>
             
             
            Hotels List &nbsp;&nbsp;&nbsp;&nbsp;
            <label><input list="hotel" name="hotel" class="form-control"></label>
			<datalist id="hotel">
				<option value="Dreamland Hotel , Shimla">
				<option value="Hotel kaveri , Manali">
				<option value="Hotel Yash Inn , Kochin">
				<option value="Noorya Hometel , Kashmir">
				<option value="J W Marriot , Darjeeling">
				<option value="Wonderland Inn , Dehradun">
                                <option value="Hotel Shivam Deluxe , KAshmir">
                                <option value="Hotel Sayaji , Munnar"> 
                                <option value="Hotel Taj , KAshmir">    
                                <option value="Hyatt , New York">
                                <option value="Rainbow Deluxe , Washington DC">
                                <option value="Colors , paris">
                                <option value="Disney House , Lodon">
                                <option value="Cetral Perk , Sweden">
                                <option value="Hotel Phoenix , Italy">
                                <option value="Lime-light Hotel , Germany">
                                <option value="Hotel Wall-Street , Cape Town">
                                <option value="Burj Khalifa , Dubai">
                                <option value="OYO Hotel , Thailand">
                                <option value="Hotel Stafi , Singapore">
                                <option value="Ginger Hotel , Indinesia">    
                                
                                    
                                        
			</datalist>
                        
                        
                        </br></br></br>
            
                       Type of Rooms &nbsp;
                       <label><input list="type" name="Type of Rooms" class="form-control"></label>
			<datalist id="type">
				<option value="Normal">
				<option value="AC">
				<option value="Deluxe">
                                <option value="Super Deluxe">
                                <option value="Special">     
                                
			</datalist>
                       
                       </br></br></br>
                       
                       
                      
                      <p> <a href="add_hotel.jsp">Add for another Day</a></p>
                      
            <input type="submit" value="Submit" class="btn btn-primary btn-lg"> 
                
            
             </center> 
            
         </div>
            
            
        
        </form>
        
        
        
        
        
        
    </body>
</html>
