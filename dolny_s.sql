-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 06 Mar 2023, 11:39
-- Wersja serwera: 10.4.20-MariaDB
-- Wersja PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `dolny_s`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miejsce`
--

CREATE TABLE `miejsce` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(80) NOT NULL,
  `adres` varchar(80) NOT NULL,
  `kontakt` varchar(60) NOT NULL,
  `g_otwarcia` text NOT NULL,
  `cennik` text NOT NULL,
  `opis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `miejsce`
--

INSERT INTO `miejsce` (`id`, `nazwa`, `adres`, `kontakt`, `g_otwarcia`, `cennik`, `opis`) VALUES
(1, ' Kraina Wygasłych Wulkanów', 'Dobków 66 Dobków, 59-540 Świerzawa', '75 617 14 68', '-', '-', 'Kraina Wygasłych Wulkanów to położony na zachodzie województwa dolnośląskiego region, który charakteryzuje się górami o stożkowym kształcie. Wyróżnia go niezwykła różnorodność skał wulkanicznych. Najwyższym wygasłym wulkanem jest góra Ostrzyca, nazywana śląską Fudżi. Na szczyt prowadzi dosyć stromy 40­-minutowy szlak po kamiennych schodach.\r\nNa terenie Krainy Wygasłych Wulkanów występuje bardzo dużo skał bazaltowych, które tworzą imponujące formy skalne. Najsłynniejsze z nich to Organy Wielisławskie, ale my polecamy te mniej znane, a naszym zdaniem piękniej położone, Małe Organy Myśliborskie. Jest to bazaltowy czop wulkanu, zbudowany z niemal pionowych słupów z zakrzepłej lawy. Do startu szlaku prowadzi szutrowa droga, skąd czerwonym szlakiem w kwadrans dochodzi się do Organów.\r\nWięcej o Krainie Wygasłych Wulkanów i jej geologii można się dowiedzieć w Sudec­kiej Zagrodzie Edukacyjnej i Geoparku Krainy Wygasłych Wulkanów.'),
(2, 'Zamek Czocha', 'Zapusta, 59-830 Olszyna Gmina, Dolnośląskie', '601 212 203', 'godz. 10.00 – 18.15 (ostatnie wejście około godziny 17:00)\r\ngodz. 10.00 – 20.00 (lipiec – sierpień, ostatnie wejście godz.: 18:30)\r\ngodz. 10:00 – 17:45 (grudzień – luty, ostatnie wejście godz. 16:30)', 'Standardowe bilety\r\nBilet normalny - 35 PLN / os.\r\nBilet ulgowy - 27 PLN / os.\r\nBilety ulgowe dotyczą dzieci i młodzieży dla 15 roku życia oraz Osoby niepełnosprawne.\r\n*Cennik nie obowiązuję, w przypadku imprez dodatkowych.\r\n\r\nBilety rodzinne\r\n2+2 - 172 PLN / 4 os.\r\n2+3 - 205 PLN / 5 os.\r\nzwiedzanie zamku z przewodnikiem\r\nzwiedzanie sal tortur\r\n\r\nBilet na dziedzińce\r\nBilet normalny - 8.00 PLN / os.\r\nBilet ulgowy - 6.00 PLN / os.\r\nZwiedzanie zewnętrznych dziedzińców zamku bez przewodnika\r\nUwaga! Zwiedzając zamek z przewodnikiem - bilety na dziedzińce są już w cenie.\r\n\r\nZwiedzanie Multimedialnych Sal Tortur\r\nBilet normalny - 16 PLN / os.\r\nBilet ulgowy - 12 PLN / os.\r\nBilety ulgowe dotyczą dzieci i młodzieży dla 15 roku życia oraz Osoby niepełnosprawne.\r\n\r\n', 'Zamek Czocha to jeden z najpiękniej położonych i najbardziej tajemniczych zamków w Polsce. Twierdza położona jest nad Jeziorem Leśniańskim, skąd wypływa Kwisa. Wła­ściciele zamku zmieniali się przez wieki, ale łączyło ich zamiłowanie do dyskrecji. Do dzisiaj odnaleziono kilkanaście tajnych przejść, a w sumie jest ich ponoć ponad 40. Zgod­nie z planami w kilku miejscach są ukryte klatki schodowe, a pod zamkiem znajdują się dodatkowe piętra. Niestety z powodów formalnych dalsze poszukiwania w tym zabytko­wym obiekcie nie są na razie możliwe.\r\n\r\nWiele osób doszukuje się też w zamku licznych symboli masońskich, takich jak potrójnych schodów czy ukrytych wizerunków diabła.\r\nW zamku powstało wiele filmów, m.in. serial Tajemnica twierdzy szyfrów czy polski Wiedźmin.\r\n\r\nOd kilku lat zamek zamienia się też w polski Hogwart – przyjeżdżają tu miłośnicy Harry’ego Pottera z całego świata i na kilka dni przywdziewają stroje i przenoszą się do świata magii i czarodziejstwa.\r\nTuryści mogą zwiedzić zamek z przewodnikiem, który opowie o zamkowych legendach i pokaże tajne przejścia. Znajdują się tu jeszcze Gabinet Osobliwości i Multimedialne Sale Tortur. Dostępne jest też nocne zwiedzanie.\r\nW zamku działają kawiarnia, restauracja i hotel, który oferuje kilkadziesiąt pokoi – można przespać się nawet w Komnacie Książęcej.'),
(3, 'Kompleks Riese', '3 Maja, 58-320 Walim, Lower Silesia', '74 84 57 300', 'Obiekt czynny jest codziennie:\r\nW miesiącach od października do kwietnia:\r\nod poniedziałku do piątku od 9:00, ostatnie wejście o 16:00,\r\nw soboty, niedziele i święta od 9:00, ostatnie wejście o 17:00.\r\n\r\nW miesiącach od maja do września:\r\nod poniedziałku do piątku od 9:00, ostatnie wejście o 17:00,\r\nw soboty, niedziele i święta od 9:00, ostatnie wejście o 18:00.\r\n\r\nObiekt jest nieczynny w Niedzielę Wielkanocną, 1 XI i 24-25-26 XII.\r\nSobota Wielkanocna i 31 XII ostatnie wejście o 14:00.\r\nNowy Rok czynne od godziny 11:00.\r\n\r\n \r\n\r\nOczekiwanie na wejście z przewodnikiem do 40 min*.\r\n\r\n*w przypadku dużej ilości zwiedzających czas może ulec wydłużeniu.\r\n\r\nW obiekcie obowiązuje zakaz wchodzenia ze zwierzętami (oprócz psów przewodników).', 'Ceny biletów:\r\nNormalny – 26 zł\r\nUlgowy* – 22 zł\r\n\r\nAudioprzewodnik (angielski, niemiecki, czeski, francuski):\r\nWypożyczenie – 14 zł / osoby + bilet\r\n\r\nHonorujemy Kartę Dużej Rodziny:\r\nZniżka na bilet – 2 zł\r\n*Bilet ulgowy przysługuje: dzieciom, studentom do 26 roku życia, emerytom, rencistom, osobom niepełnosprawnym i ich opiekunom, osobom z grupami inwalidzkimi. Dzieci do lat 4 wchodzą bezpłatnie.\r\n\r\n*Zakup biletu jest równoznaczny z akceptacją regulaminu Sztolni.', 'Na południu Dolnego Śląska znajduje się podziemne miasto, które kryje jedną z naj­większych tajemnic hitlerowców. Legendy mówią o ukrytym tam złotym pociągu, bursztynowej komnacie czy o tajnych laboratoriach.\r\nZ Zamku Książ miały rozchodzić się wielokilometrowe podziemne tunele prowadzące do olbrzymich podziemnych „sal” różnego przeznaczenia. I tu pojawia się wiele hipotez. Hipotez, bo hitlerowcy nie zostawili żadnych dokumentów dotyczących tych planów. Pod­ ziemne obiekty, które do dziś odkryto, to: Książ, Walim­, Rzeczka, Jugowice Górne­, Jawor­nik, Włodarz, Głuszyca­, Osówka, Soboń, Sokolec, ­Gontowa, Wielka Sowa, Moszna. Według jednej z hipotez w kompleksie miały działać laboratoria pracujące nad stworzeniem bomby atomowej, której Hitler z pewnością nie zawahałby się użyć. Wydaje się to prawdopodobne, jeśli wziąć pod uwagę, że w Górach Sowich występują obfite złoża uranu, które Niemcy intensywnie wydobywali.\r\nZwiedzanie podziemi z przewodnikiem trwa około 60 min.\r\n1. Zwiedzanie kompleksu odbywa się tylko z przewodnikiem.\r\n\r\n2. Z uwagi na niską temperaturę (5-7°C) i dużą wilgotność wewnątrz obiektu, zaleca się zabranie ciepłej odzieży.\r\n\r\n3. Dla osób obcojęzycznych istnieje możliwość zwiedzania podziemi z audio-przewodnikiem. Do wyboru język: angielski, niemiecki i francuski.\r\n\r\n4. Podziemna trasa turystyczna w kompleksie “Rzeczka” jest pozostałością po jednym z najbardziej tajemniczych przedsięwzięć górniczych i budowlanych, prowadzonych w czasie II wojny światowej przez III Rzeszę w Górach Sowich. Całkowita długość wyrobisk podziemnych wynosi ok. 500 m, powierzchnia 2 500 m², a objętość 14 000 m³.'),
(4, 'Rudawski Park Krajobrazowy', '58-400 Kamienna Góra', '71 364 27 58', '-', '-', 'Nazwa parku pochodzi od pasma górskiego Rudawy Janowickie, które przebiega przez ten park. Nie są to góry wysokie, ale wyróżniają je charakterystyczne porozrzucane wszędzie formy skalne. W tym parku jest wiele ciekawych miejsc, ale najbardziej po­lecamy dwa:\r\n\r\nStarościńskie Skały\r\nGrupa form skalnych znajdująca się na południu parku. Niektóre skałki mają ponad 20 m, a na jednej z nich znajduje się platforma widokowa. Poczuliśmy się tu, jakbyśmy przenieśli się do Australii. Miejsce bardzo wyjątkowe, w którym nie uświadczy się tłu­mów – my przez cały dzień nie spotkaliśmy tu nikogo.\r\n\r\nKolorowe Jeziorka\r\nPołożone w Rudawskim Parku Krajobrazowym cztery różnokolorowe jeziorka powsta­łe w starych wyrobiskach pokopalnianych. Cały szlak ma około 3 km, ale warto go przejść, bo widoki są niesamowite.'),
(5, 'Park Narodowy Gór Stołowych', 'ul. Słoneczna 31, 57-350 Kudowa-Zdrój, Woj. Dolnośląskie', '74 866 14 36', '-', 'Park Narodowy Gór Stołowych pobiera wyłącznie opłaty za wejście na trasę turystyczną na Błędnych Skałach i Szczelińcu Wielkim.\r\n- Bilet normalny 12zł, bilet ulgowy 6zł.\r\nWjazdy:\r\n- samochód osobowy 30zł\r\n- autokar 70zł\r\n- samochód osobowy przewożący osoby niepełnosprawne 15zł\r\n- motocykl 20zł', 'Pasmo górskie, które swoją nazwę zawdzięcza licznym poziomo ułożonym skałom, które są „płaskie jak stół”. Jest to przepiękny park narodowy z niesamowitymi forma­cjami skalnymi – to tu nakręcono kilka scen „Opowieści z Narnii”. Szczególnie polecamy skalne labirynty Błędnych Skał. W sezonie w labiryncie bywa tłoczno, dlatego warto wybrać się tu poza sezonem albo chociaż nie w weekend, żeby w pełni cieszyć się tym cudem natury. Warto wejść też na Szczeliniec Wielki, na którego szczycie znajduje się schronisko z tarasami widokowymi (polecamy wejście od północy – jest dosyć strome, ale mniej tłoczne. Polecamy szczególnie o zachodzie). A jeśli chcecie uniknąć weekendowych tłumów, to wybierzcie się np. na szlak do Skalnych Grzybów.');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `miejsce`
--
ALTER TABLE `miejsce`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
