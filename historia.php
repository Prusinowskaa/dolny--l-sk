<!DOCTYPE html> 
<html> 
<head> 
	<title>Dolny Śląsk</title> 
	<meta charset="UTF-8"> 
	<meta name="description" content="Strona poświęcona regionowi Dolnego Śląska"> 
	<style> 
		body { 
			font-family: Arial, sans-serif; 
			margin: 0; 
			padding: 0; 
		} 
		header { 
			background-color: #4CAF50; 
			color: white; 
			padding: 1em; 
			text-align: center; 
		} 
		nav { 
			background-color: #333; 
			color: white; 
			float: left; 
			width: 20%; 
            height: 80%;
			padding: 1em; 
		} 
		nav a { 
			color: white; 
			text-decoration: none; 
			display: block; 
			padding: 1em; 
			transition: background-color 0.5s ease; 
		} 
		nav a:hover { 
			background-color: #4CAF50; 
		} 
		nav ul { 
			list-style-type: none; 
			margin: 0; 
			padding: 0; 
		} 
		main { 
			background-color: #f2f2f2; 
			float: left; 
			padding: 1em; 
			width: 60%; 
		} 
		footer { 
			clear: both; 
			background-color: #333; 
			color: white; 
			padding: 1em; 
			text-align: center; 
		} 

        .map{
            border-radius: 30% 30%;
        }
	</style> 
</head> 
<body> 
	<header> 
		<h1>Historia</h1> 
	</header> 
	<nav> 
		<ul> 
            <li><a href="index.php">Strona główna </a></li>
			<li><a href="historia.php">Historia</a></li> 
			<li><a href="atrakcje.php">Atrakcje turystyczne</a></li> 
			<li><a href="kultura.php">Kultura</a></li>
            <li><a href="add.php">Dodaj Atrakcje</a></li> 
		</ul> 
	</nav> 
	<main> 
		<section id="atrakcje"> 
			<h2>Historia</h2> 
			<ul> 
				<li> 
					<h3>Dolny Ślask</h3>  
					<p>część historycznej krainy Śląska, położona w południowo-zachodniej Polsce oraz w północnej części Czech. Stolicą Dolnego Śląska jest Wrocław. <p> <img style="float: right;" src="mapa.png">
				</li> 
				<li> 
					<h3>Przynależność państwowa</h3> 
					<p>IX w. − Państwo Wielkomorawskie
                    <p>X w. − Królestwo Czech
                    <p>990-1039 − Polska pierwszych Piastów
                    <p>1039-1050 − Królestwo Czech
                    <p>1050-1138 − Polska
                    <p>1138-XIV w. − okres rozbicia dzielnicowego
                    <p>XIV w.-1526 − Królestwo Czech
                    <p>1526-1741 − Cesarstwo Austriackie
                    <p>1741-1871 − Królestwo Prus
                    <p>1871-1918 − Cesarstwo Niemieckie
                    <p>1918-1933 − Republika Weimarska
                    <p>1933-1945 − III Rzesza Niemiecka
                    <p>od 1945 – Polska (aktualnie większość historycznych ziem wchodzi w skład woj. dolnośląskiego)
				</li> 
				<li> 
					<h3>Granice</h3> 
					<p>Południowy skrawek dawnego księstwa nyskiego znajduje się w granicach obecnych Czech. Jest to skutek wojen śląskich. 
                        <p>Polski Dolny Śląsk wchodzi w większości w skład województwa dolnośląskiego, a także częściowo w skład województwa lubuskiego i województwa opolskiego. Niewielkie skrawki znajdują się także w województwie wielkopolskim.
                            <img  class="map" style="float: right;" src="map.jpg">
                    </li> 
			</ul> 
		</section> 
</main>
					</body>
</html>