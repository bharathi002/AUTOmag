<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Automobile</title>
</head>
<script type="text/javascript">
function submitForm(action){
	document.getElementById("action").value =action;
	if(action == "Delete"){
		if(confirm("Are you sure to delete record ?"))
			document.forms(0).submit();
	}else
		document.forms(0).submit();
}
</script>
<jsp:useBean id="search" class="com.ntu.auto.magazine.filter.SearchFilter" scope="request"></jsp:useBean>
<body>
<form action="searchAutomobile" method="post">
<input type="hidden" name="action" id="action">
<table id="inputform" align="center">
<tr>
 	<th align="left">Category</th>
 	<td>
 		<select id="category" name="category" class=".ui-widget">
 			<option value="">---SELECT---</option>
 			<option value="Sports Car" <%="Sports Car".equals(search.getCategory())?"selected":"" %>>Sports Car</option>
 			<option value="Passenger Car" <%="Passenger Car".equals(search.getCategory())?"selected":"" %>>Passenger Car</option>
 			<option value="Hybrid Car" <%="Hybrid Car".equals(search.getCategory())?"selected":"" %>>Hybrid Car</option>
 			<option value="SUV" <%="SUV".equals(search.getCategory())?"selected":"" %>>SUV</option>
 			<option value="MPV" <%="MPV".equals(search.getCategory())?"selected":"" %>>MPV</option>
 			<option value="Hatchback" <%="Hatchback".equals(search.getCategory())?"selected":"" %>>Hatchback</option>
 			<option value="Mid-Sized Sedan" <%="Mid-Sized Sedan".equals(search.getCategory())?"selected":"" %>>Mid-Sized Sedan</option>
 			<option value="Luxury Sedan" <%="Luxury Sedan".equals(search.getCategory())?"selected":"" %>>Luxury Sedan</option>
 			<option value="Stationwagon" <%="Stationwagon".equals(search.getCategory())?"selected":"" %>>Stationwagon</option>
 			<option value="Truck" <%="Truck".equals(search.getCategory())?"selected":"" %>>Truck</option>
 			<option value="Van" <%="Van".equals(search.getCategory())?"selected":"" %>>Van</option>
 			<option value="Bus/Mini Bus" <%="Bus/Mini Bus".equals(search.getCategory())?"selected":"" %>>Bus/Mini Bus</option>
 			<option value="Others" <%="Others".equals(search.getCategory())?"selected":"" %>>Others</option>
 		</select>
 	</td>
 
 	<th align="left">Make</th>
 	<td>
 	<select id="make" name="make" class=".ui-widget">
 	    <option value="">---SELECT---</option>
 		<option value="Alpha Romeo" <%="Alpha Romeo".equals(search.getMake())?"selected":"" %>>Alfa Romeo</option>
 		<option value="Aston Martin" <%="Aston Martin".equals(search.getMake())?"selected":"" %>>Aston Martin</option>
 		<option value="Audi" <%="Audi".equals(search.getMake())?"selected":"" %>>Audi</option>
 		<option value="Bently" <%="Bently".equals(search.getMake())?"selected":"" %>>Bently</option>
 		<option value="BMW" <%="BMW".equals(search.getMake())?"selected":"" %>>BMW</option>
 		<option value="Chery" <%="Chery".equals(search.getMake())?"selected":"" %>>Chery</option>
 		<option value="Chevrolet" <%="Chevrolet".equals(search.getMake())?"selected":"" %>>Chevrolet</option>
 		<option value="Chrysler" <%="Chrysler".equals(search.getMake())?"selected":"" %>>Chrysler</option>
 		<option value="Citroen" <%="Citroen".equals(search.getMake())?"selected":"" %>>Citroen</option>
 		<option value="Daihatsu" <%="Daihatsu".equals(search.getMake())?"selected":"" %>>Daihatsu</option>
 		<option value="Dongfeng" <%="Dongfeng".equals(search.getMake())?"selected":"" %>>Dongfeng</option>
 		<option value="Daimler" <%="Daimler".equals(search.getMake())?"selected":"" %>>Daimler</option>
 		<option value="Dodge" <%="Dodge".equals(search.getMake())?"selected":"" %>>Dodge</option>
 		<option value="Ferrari" <%="Ferrari".equals(search.getMake())?"selected":"" %>>Ferrari</option>
 		<option value="Fiat" <%="Fiat".equals(search.getMake())?"selected":"" %>>Fiat</option>
 		<option value="Ford" <%="Ford".equals(search.getMake())?"selected":"" %>>Ford</option>
 		<option value="Geely" <%="Geely".equals(search.getMake())?"selected":"" %>>Geely</option>
 		<option value="Golden Dragon" <%="Golden Dragon".equals(search.getMake())?"selected":"" %>>Golden Dragon</option>
 		<option value="Hafei" <%="Hafei".equals(search.getMake())?"selected":"" %>>Hafei</option>
 		<option value="Hino" <%="Hino".equals(search.getMake())?"selected":"" %>>Hino</option>
 		<option value="Hummer" <%="Hummer".equals(search.getMake())?"selected":"" %>>Hummer</option>
 		<option value="Honda" <%="Honda".equals(search.getMake())?"selected":"" %>>Honda</option>
 		<option value="Hyundai" <%="Hyundai".equals(search.getMake())?"selected":"" %>>Hyundai</option>
 		<option value="Infiniti" <%="Infiniti".equals(search.getMake())?"selected":"" %>>Infiniti</option>
 		<option value="Isuzu" <%="Isuzu".equals(search.getMake())?"selected":"" %>>Isuzu</option>
 		<option value="JAC" <%="JAC".equals(search.getMake())?"selected":"" %>>JAC</option>
 		<option value="Jaguar" <%="Jaguar".equals(search.getMake())?"selected":"" %>>Jaguar</option>
 		<option value="Jeep" <%="Jeep".equals(search.getMake())?"selected":"" %>>Jeep</option>
 		<option value="Jinbei" <%="Jinbei".equals(search.getMake())?"selected":"" %>>Jinbei</option>
 		<option value="Joylong" <%="Joylong".equals(search.getMake())?"selected":"" %>>Joylong</option>
 		<option value="Kia" <%="Kia".equals(search.getMake())?"selected":"" %>>Kia</option>
 		<option value="King Long" <%="King Long".equals(search.getMake())?"selected":"" %>>King Long</option>
 		<option value="Lamborghini" <%="Lamborghini".equals(search.getMake())?"selected":"" %>>Lamborghini</option>
 		<option value="Land Rover" <%="Land Rover".equals(search.getMake())?"selected":"" %>>Land Rover</option>
 		<option value="Lexus" <%="Lexus".equals(search.getMake())?"selected":"" %>>Lexus</option>
 		<option value="Lotus" <%="Lotus".equals(search.getMake())?"selected":"" %>>Lotus</option>
 		<option value="Man" <%="Man".equals(search.getMake())?"selected":"" %>>Man</option>
 		<option value="Maserati" <%="Maserati".equals(search.getMake())?"selected":"" %>>Maserati</option>
 		<option value="Mazda" <%="Mazda".equals(search.getMake())?"selected":"" %>>Mazda</option>
 		<option value="McLaren" <%="McLaren".equals(search.getMake())?"selected":"" %>>McLaren</option>
 		<option value="Mercedes-Benz" <%="Mercedes-Benz".equals(search.getMake())?"selected":"" %>>Mercedes-Benz</option>
 		<option value="MG" <%="MG".equals(search.getMake())?"selected":"" %>>MG</option>
 		<option value="Mini" <%="Mini".equals(search.getMake())?"selected":"" %>>Mini</option>
 		<option value="Mitsubishi" <%="Mitsubishi".equals(search.getMake())?"selected":"" %>>Mitsubishi</option>
 		<option value="Mitsuoko" <%="Mitsuoko".equals(search.getMake())?"selected":"" %>>Mitsuoko</option>
 		<option value="Morris" <%="Morris".equals(search.getMake())?"selected":"" %>>Morris</option>
 		<option value="Morgan" <%="Morgan".equals(search.getMake())?"selected":"" %>>Morgan</option>
 		<option value="Naza" <%="Naza".equals(search.getMake())?"selected":"" %>>Naza</option>
 		<option value="Nissan" <%="Nissan".equals(search.getMake())?"selected":"" %>>Nissan</option>
 		<option value="Opel" <%="Opel".equals(search.getMake())?"selected":"" %>>Opel</option>
 		<option value="Perodua" <%="Perodua".equals(search.getMake())?"selected":"" %>>Perodua</option>
 		<option value="Peugeot" <%="Peugeot".equals(search.getMake())?"selected":"" %>>Peugeot</option>
 		<option value="Piaggio" <%="Piaggio".equals(search.getMake())?"selected":"" %>>Piaggio</option>
 		<option value="Porshe" <%="Porshe".equals(search.getMake())?"selected":"" %>>Porshe</option>
 		<option value="Porton" <%="Porton".equals(search.getMake())?"selected":"" %>>Porton</option>
 		<option value="Renault" <%="Renault".equals(search.getMake())?"selected":"" %>>Renault</option>
 		<option value="Rolls-Royce" <%="Rolls-Royce".equals(search.getMake())?"selected":"" %>>Rolls-Royce</option>
 		<option value="Rover" <%="Rover".equals(search.getMake())?"selected":"" %>>Rover</option>
 		<option value="Saab" <%="Saab".equals(search.getMake())?"selected":"" %>>Saab</option>
 		<option value="Skoda" <%="Skoda".equals(search.getMake())?"selected":"" %>>Skoda</option>
 		<option value="Skania" <%="Skania".equals(search.getMake())?"selected":"" %>>Skania</option>
 		<option value="Smart" <%="Smart".equals(search.getMake())?"selected":"" %>>Smart</option>
 		<option value="Suzuki" <%="Suzuki".equals(search.getMake())?"selected":"" %>>Suzuki</option>
 		<option value="Toyota" <%="Toyota".equals(search.getMake())?"selected":"" %>>Toyota</option>
 		<option value="Volkswagen" <%="Volkswagen".equals(search.getMake())?"selected":"" %>>Volkswagen</option>
 		<option value="Volvo" <%="Volvo".equals(search.getMake())?"selected":"" %>>Volvo</option>
 		<option value="Wuling" <%="Wuling".equals(search.getMake())?"selected":"" %>>Wuling</option>
 		<option value="Youngman" <%="Youngman".equals(search.getMake())?"selected":"" %>>Youngman</option>
 		<option value="Youtong" <%="Youtong".equals(search.getMake())?"selected":"" %>>Youtong</option>
 		<option value="Zotye" <%="Zotye".equals(search.getMake())?"selected":"" %>>Zotye</option>
 	</select>
 	</td>
 	
 	<th align="left">Gear</th>
 	<td>
 	<select id="gear" name="gear" class=".ui-widget">>
 		<option value="">---SELECT---</option>
 		<option value="Auto" <%="Auto".equals(search.getGear())?"selected":"" %>>Auto</option>
 		<option value="Manual" <%="Manual".equals(search.getGear())?"selected":"" %>>Manual</option>
 		
 	</select>
 	</td>
 </tr>
 <tr>
 	<th align="left">Year of Manufacture</th>
 	<td><input type="text" id="makeYear" name="makeYear" value="<%=search.getMakeYear() %>"/></td>

 	<th align="left">Year Registered</th>
 	<td><input type="text" id="registeredYear" name="registeredYear" value="<%=search.getRegisteredYear() %>" /></td>

 	<th align="left">Engine Capacity</th>
 	<td><input type="text" id="engineCapacity" name="engineCapacity" value="<%=search.getEngineCapacity()  %>" /> cc</td>
 </tr>
 <tr>
    <th align="left">Model</th>
 	<td><input type="text" id="model" name="model" value="<%=search.getModel() %>" /></td>

 	<th align="left">Mileage</th>
 	<td><input type="text" id="mileage" name="mileage" value="<%=search.getMileage() %>"/> km/lt</td>

 	<th align="left">Price</th>
 	<td>S$ <input type="text" id="price" name="price" value="<%=search.getPrice() %>"/></td>
 </tr>
 <tr>
 	<td colspan="6" align="center">
 	<input type="submit" value="Search" />
 	<input type="reset" value="Clear" />
 	</td>
 </tr>
</table>
</form>
</body>
</html>