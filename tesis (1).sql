-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2021 at 10:53 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tesis`
--

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` int(10) NOT NULL,
  `nombre_usuario` varchar(1000) NOT NULL,
  `detalle_comentario` varchar(1000) NOT NULL,
  `perfil_usuario_comentario` varchar(500) NOT NULL,
  `id_publicacion` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comentarios`
--

INSERT INTO `comentarios` (`id_comentario`, `nombre_usuario`, `detalle_comentario`, `perfil_usuario_comentario`, `id_publicacion`) VALUES
(1, 'Victor Hugo Vasconez Gomez', 'El poder de don dinero es evidente en la justicia La evidencia es clara y contundente se llevaron el dinero de ctas ahorristas y cta Corrientes inversiones. Y ahora dicen son inocentes y bienes por el vuelto', 'https://www.facebook.com/victorhugo.vasconezvasquez?rc=p&__tn__=R', 1),
(2, 'Betancourt Lourdes', 'Así como vamos se debe reescribir la historia. No hubo Feriado Bancario, no existió migración masiva, familias destruidas, muertes.                                     Un país saqueado, repartido, fraccionado, en la quiebra ahora repite la historia como una pesadilla sin fin; vinieron los Bucaram, los socios y sus negocios \"Inocentes\"  los Isaías \"Inocentes\" Moreno Inocente y a indeminizarlos por calumnias, a devolver lo que les robamos, 👁 nosotros fuimos los delincuentes.                                     Dios los cria,  el Diablo los junta\"      Los jueces, la fiscal, los entes pagados con plata del pueblo, encontra del pueblo.', 'https://www.facebook.com/lourdes.betancourth?rc=p&__tn__=R', 1),
(3, 'Frank Garcia', 'Apoyo total a la Fiscal Diana Salazar.', 'https://www.facebook.com/frank.garcia.393950?rc=p&__tn__=R', 1),
(4, 'Alberto Ayala', 'Alguien sabe cuántos años tiene este proceso judicial , es para un deber de derecho ????', 'https://www.facebook.com/profile.php?id=100013501693663&rc=p&__tn__=R', 1),
(5, 'Gabriela Salazar Cortez', 'La Fiscal se merece otro reconocimiento por su lucha anticorrupción!! 🤢', 'https://www.facebook.com/GabySalazarCortez?rc=p&__tn__=R', 1),
(6, 'De Mas Pauteño', 'Perros HDP tantas familias que sufrieron muchos se suicidaron como pueden estar libres, el primer favor de Lasso que dirán los que votaron por el; que todavía no es presidente mentes inocentes', 'https://www.facebook.com/correavuelve.paute?rc=p&__tn__=R', 1),
(7, 'Rodrigo Rivas', 'Los Isaías por $6.000 MILLONES... INOCENTES. El Correa por $6.000.... CULPABLE  LINDA JUSTICIA', 'https://www.facebook.com/rodrigo.rivas.123276?rc=p&__tn__=R', 1),
(8, 'Jimmy Sevilla', 'Viva la patria florindos', 'https://www.facebook.com/jimmy.sevilla.3?rc=p&__tn__=R', 1),
(9, 'Cristobal Valarezo', 'Cuando el río suena..Lenin trajo a Bucaran ,y Laso a los Isaías....lo mejor está por venir. Si pero para los banqueros.no para florindos.', 'https://www.facebook.com/profile.php?id=100009114053778&rc=p&refid=52&__tn__=R', 1),
(10, 'Jeferson Suárez', 'Que heroínas resulta que ahora estos dos diablos son angelitos, y no me cave  duda que Jamil también saldrán que es un perseguido político que es otro angelito y lo peor ahora el estado ecuatoriano tendrá que indemnizarlos osea nuestro dinero se pondrá para darles,, a estas fichas,,,, Dios que pasa con esta justicia humana,, encima la pandemia esto Está peor que la apocalipsis,,,', 'https://www.facebook.com/profile.php?id=100008319581817&rc=p&refid=52&__tn__=R', 1),
(11, 'David Alejandro', 'Hecha la indignada... Jajajajaja', 'https://www.facebook.com/profile.php?id=100054602988829&rc=p&refid=52&__tn__=R', 1),
(12, 'Monica Espinoza', 'Seguro ,No le dieron su buena tajada del pastel...que por eso dice ilegítima...', 'https://www.facebook.com/profile.php?id=100022967742393&rc=p&refid=52&__tn__=R', 1),
(13, 'Orfa Guarnizo', 'Los ladtones libres y los inocentes a la carcel que leyes  y que injusticia', 'https://www.facebook.com/profile.php?id=100009588605656&rc=p&refid=52&__tn__=R', 1),
(14, 'Katia Andrade', 'Definitivamente 10 / 20 Fue la mejor CALIFICACIÓN..... xq para sta hasta el 0⃣ es DEMACIADOS', 'https://www.facebook.com/katia.andrade.35380?rc=p&refid=52&__tn__=R', 1),
(15, 'LaLu Benavides', 'Si si son tan inocentes que devuelvan lo robado que vengan a devolver lo robado #Ecuador #Fiscalía, esperemos que esta vez si actúe, pues su sueldo pagamos todos los ecuatorianos. Todos estos jueces corruptos comen de nuestros impuestos #LosCorruptosSiempreFueronEllos', 'https://www.facebook.com/lucyabenavides?rc=p&refid=52&__tn__=R', 1),
(16, 'Janneth Ortiz', 'Así es está negra justicia...a los que ellos quieren aunque sean ladrones los dejan libres....y acusan a los que ellos quieren así sean inocentes.', 'https://www.facebook.com/janneth.ortiz.900?rc=p&refid=52&__tn__=R', 1),
(17, 'Jose Columbus Nader', 'Y colorin colorado antes de que salga Moreno este juicio y robo se ha consumado', 'https://www.facebook.com/jose.columbusnader?rc=p&refid=52&__tn__=R', 1),
(18, 'Fresia Tomala', 'Entre banqueros se defienden su nuevo presidente les va a devolver lo que el estado les confiscó a causa del robo descarado que cometieron en el feriado bancario a todos sus ahorristas. Y de paso quieren pedir indemnización al gobierno !!!! Esto es un descaro total !!!', 'https://www.facebook.com/fresia.tomala.75?rc=p&refid=52&__tn__=R', 1),
(19, 'Carlos Augusto Loachamin Collaguazo', 'Estos dos sujetos con el dinero del feriado compran cualquier conciencia lastimosamente peor cierto y con lasso de presidente a estos dos los tendremos en el pais', 'https://www.facebook.com/loachamincollaguazo?rc=p&refid=52&__tn__=R', 1),
(20, 'Eliceo Pinto', 'Qué devuelvan los 2.500 millones e intereses y que regresen al Ecuador.', 'https://www.facebook.com/eliceo.pinto.5?rc=p&refid=52&__tn__=R', 1),
(21, 'Milo Simbaña', 'Mejor suelten a todos los ladrones mejor', 'https://www.facebook.com/milo.simbana?rc=p&refid=52&__tn__=R', 1),
(22, 'Carlos Malucin', 'Son inocentes Lasso Aspiazu  e Hermanos Isaías entonces quiénes son los culpables  Que regresen  tal vez hay algún cargo en el Gobierno', 'https://www.facebook.com/carlos.malucin?rc=p&refid=52&__tn__=R', 1),
(23, 'Jenny Ordoñez', 'Me quiero equivocar pensando que este gobierno entrante permita tal infamia ...Moreno habría las puertas al ladrón de Bucaram ,ahora con este al parecer los ladrones estarán todos libres', 'https://www.facebook.com/alexandra.ordonez.50?rc=p&refid=52&__tn__=R', 1),
(24, 'Rosa Maria Velasco', 'Esta esta liberandi a todos los sentenciados  por llevar la contraria a correa sino por que no libera a Glas esta odiadora', 'https://www.facebook.com/rosamaria.velasco.5264?rc=p&refid=52&__tn__=R', 1),
(25, 'Claudio Valdivieso-Cantautor', 'Obra de lasso son sus compadres....', 'https://www.facebook.com/claudio.valdivieso.35?rc=p&refid=52&__tn__=R', 1),
(26, 'Patricio Mejía', 'Viva la fiesta en el país del encuentro.', 'https://www.facebook.com/patricio.mejia.182?rc=p&refid=52&__tn__=R', 1),
(27, 'Henry Cantos', 'Mientras tanto una historia de amor', 'https://www.facebook.com/henry.cantos.927?rc=p&refid=52&__tn__=R', 1),
(28, 'Majito Coro', 'Pobre de mi pais vamos de mal en peor ....', 'https://www.facebook.com/majo.maylin?rc=p&refid=52&__tn__=R', 1),
(29, 'Juan Valdez', 'Está 10/20 pronto pagará con cárcel todo lo que a hecho', 'https://www.facebook.com/profile.php?id=100004178501625&rc=p&refid=52&__tn__=R', 1),
(30, 'Sofi Luu', 'Cuando existirá justicia', 'https://www.facebook.com/Soofiiluuuluuu?rc=p&refid=52&__tn__=R', 1),
(31, 'Wilberto Ortiz', 'Que ignorancia de esas jueces si les declaran inosentes es lógico q van a pedir la devolución de los bienes q mentes tan torpes no piensan en el daño q le hacen al país y a la gente q fue oerfudicada', 'https://www.facebook.com/wilberto.ortiz.359?rc=p&refid=52&__tn__=R', 1),
(32, 'Fabian Calderón', 'No esperaron ni hasta el lunes, que se posiciona el otro Banquero..', 'https://www.facebook.com/angel.f.calderon.7?rc=p&refid=52&__tn__=R', 1),
(33, 'Eduardo Once', 'Donde est@ la plata, Lazo sabrá algo o tendrá amnesia', 'https://www.facebook.com/profile.php?id=100004261697702&rc=p&refid=52&__tn__=R', 1),
(34, 'Julieta Antonella Gonzalez', 'Los q votaron por lasso🤡', 'https://www.facebook.com/julieta.a.gonzalez.90?rc=p&refid=52&__tn__=R', 1),
(35, 'Richard Pila', 'Y esto recién empieza, en poco los beatifican y al que le disgusta le dicen que es correista. Banquero choro', 'https://www.facebook.com/richard.pila.14?rc=p&refid=52&__tn__=R', 1),
(36, 'Pedro Padilla', 'Sikiera asi que se labe las manos hotra de las mismas', 'https://www.facebook.com/pedro.padilla.1481169?rc=p&refid=52&__tn__=R', 1),
(37, 'Jaime Vinicio Teran Quilumba', 'Esta justicia es la peor ojala este nuevo gobierno cambi a estos pillos de la justicia', 'https://www.facebook.com/jaimeviniciot?rc=p&refid=52&__tn__=R', 1),
(38, 'Jeff Begay', 'Ahi están sus pu.@s soluciones  politicas contra la corrupción 😡😡', 'https://www.facebook.com/jefferson.begay.7?rc=p&refid=52&__tn__=R', 1),
(39, 'Diosito', 'Aquí triunfo la justicia Hermanos Isaias son puros.   Pero puros mmvgs ', 'https://www.facebook.com/Diosito-103622701556663/?rc=p&refid=52&__tn__=R', 1),
(40, 'Osvaldo Fabregas Moya', 'Definitivamente en este país solo para el de poncho es la justicia !! ', 'https://www.facebook.com/chak.fabregas?rc=p&refid=52&__tn__=R', 1),
(41, 'Ruben T Chacon', 'La mejor fiscal  Así le duela a mameluco', 'https://www.facebook.com/ruben.tchacon.1?rc=p&refid=52&__tn__=R', 1),
(42, 'Jose Lopez', 'Tooooooma tu 10 / 20  Como se estarán ...revolcando en la  tumba...los pobres abuelitos q perdieron sus ahorros...y también familias destruidas x la migración...pero y lo peor q hay 🐴🐴🐴🐴... Q aplauden y se ríen....', 'https://www.facebook.com/josricarlopez?rc=p&refid=52&__tn__=R', 1),
(43, 'Oliver Sandokan', 'Liberen a glass', 'https://www.facebook.com/oliver.sandokan?rc=p&refid=52&__tn__=R', 1),
(44, 'Leonardo Zúñiga', 'Los panas del ladronasso', 'https://www.facebook.com/leofernandzt?rc=p&refid=52&__tn__=R', 1),
(45, 'Teresa Leon', 'Esque salen ayudar a el Señor  Lasso', 'https://www.facebook.com/profile.php?id=100043033053859&rc=p&refid=52&__tn__=R', 1),
(46, 'Ricardo Ochoa', 'No veo ningún lasisboy opinando acerca de estos ladrones de corbata 👔 y por aquí conosco un montón, bien dicen, EL SILENCIO ES CÓMPLICE DE SU CONCIENCIA!!!!! #efectolasso.', 'https://www.facebook.com/ricardo.ochoa.58910049?rc=p&refid=52&__tn__=R', 1),
(47, 'Miriam Vargas', 'Esté es mi lindo Ecuador 😠😠', 'https://www.facebook.com/profile.php?id=100009327698528&rc=p&refid=52&__tn__=R', 1),
(48, 'Mauricio Flores', 'Al César lo que es del César, y al pueblo devuelvan lo robado.', 'https://www.facebook.com/mauricio.flores.33671748?rc=p&__tn__=R', 1),
(49, 'Luis Romulo Porras', 'Paraq se de cuenta sra fiscal cuanta corrupcion y ahora  tienen q devolverles todo lo saqueado de los cuenta ahorristas hasta cuando todo este atropello de estos corruptos', 'https://www.facebook.com/luisromulo.porras?rc=p&__tn__=R', 1),
(50, 'Monica Estrella', 'Si quebraron el banco y no respondieron a los depositantes, y aún así EEUU no encontró razones para extraditarlos, Bélgica, encontrará sustento en el influjo psíquico para extraditar a Correa?.', 'https://www.facebook.com/monica.estrella.750?rc=p&refid=52&__tn__=R', 1),
(51, 'Ruben Cevallos', 'Por esto es importante disolver al Poder Judicial y a la Asamblea Nacional.  El país no puede progresar cuando existen delincuentes administrando justicia, fiscalizando y creando leyes torcidas!!!', 'https://www.facebook.com/ruben.cevallos.315?rc=p&refid=52&__tn__=R', 1),
(52, 'José Jiménez', 'Entonces si no hubo peculado donde está la plata bien manejada y porque quebró el banco 🤷🏻‍♂️ allí hubo dinero para los jueces.', 'https://www.facebook.com/jajr.de?rc=p&refid=52&__tn__=R', 1),
(53, 'Juan José', 'Tiene todo el apoyo de los Ecuatorianos siga adelante Dra Diana los que somos honestos la respaldamos que debuelvan  la plata robada.', 'https://www.facebook.com/jose.asanza.54?rc=p&refid=52&__tn__=R', 1),
(54, 'Cris Camacho', 'Los creadores del mayor atraco al País están de vuelta junto co Lasso a la cabeza, vestidos de honestos según ellos, por mi parte no como cuento!', 'https://www.facebook.com/cristianalexander.camachocamacho?rc=p&refid=52&__tn__=R', 1),
(55, 'Amy Adams', 'No puede ser  que los delincuente culpables de la muerte de mucha gente ecuatoriana queden sin castigo ...', 'https://www.facebook.com/profile.php?id=100035866817297&rc=p&refid=52&__tn__=R', 1),
(56, 'Mercedes Velasquez', 'Que inocentes y viviendo  como reyes mientras otros nunca se recuperaron y murieron que justicia ', 'https://www.facebook.com/profile.php?id=100009139630214&rc=p&refid=52&__tn__=R', 1),
(57, 'Agustin Torres', 'Los delincuentes  manejan la justicia en este país y ellos mismo se declaran inocentes', 'https://www.facebook.com/agustinclansun?rc=p&refid=52&__tn__=R', 1),
(58, 'Luis Chuya', 'LES TOCA DEVOLVER COMO EN EL CUARTEL CUANDO DECIAN QUE ALGUIEN DESERTO Y LUEGO APARECÍA EN EL BATALLÓN EMPEZABAN LOS ...........A LANZAR LAS COSAS  HURTADAS  ', 'https://www.facebook.com/luis.chuya.777?rc=p&refid=52&__tn__=R', 1),
(59, 'Francis Xavier Cedeño Garcia', 'En EEUU siguen libres, los causantes de la crisis del 2008..... Mientras ellos sean ladrones de saco y corbata. Y tengan plata, jamas serán apresados.', 'https://www.facebook.com/francisxavier.cedenogarcia?rc=p&refid=52&__tn__=R', 1),
(60, 'Carlos Montes', 'Que hps que son desde que se supo que ganó laso los  Bucaram los Isaías están libres ahora belleza de país', 'https://www.facebook.com/profile.php?id=100063943305474&rc=p&refid=52&__tn__=R', 1),
(61, 'Andres Peralta', 'Está fiscal tiene que pagar todo está corrupción que está cometiendo así pase años se tendrá que revisar así sea 10 años tiene que ir ala cárcel', 'https://www.facebook.com/profile.php?id=100008968629976&rc=p&refid=52&__tn__=R', 1),
(62, 'Calixto Chlcando', 'Jjja q considensia no laso presidente y los Isaías inocentes  cuando fu el feriado bancario  alli estan ésas yoyas  pueblo a despertar  te van a llevar en peso sin sentir ', 'https://www.facebook.com/calixto.chlcando?rc=p&refid=52&__tn__=R', 1),
(63, 'Gatobei Arigato', 'Y entonces, señoras parece a no está funcionando, la plata gobierna', 'https://www.facebook.com/sucytoo?rc=p&refid=52&__tn__=R', 1),
(64, 'Cael Kojba', 'Está persona que supuestamente es fiscal. Es parte del reparto, solo da opiniones para querer tapar a sus patrones!', 'https://www.facebook.com/enrique.cachiguango?rc=p&refid=52&__tn__=R', 1),
(65, 'Fernando Arroyo Maldonado', 'Que cuenten de que viven en EEUU sus lujos y tantos años ??? ', 'https://www.facebook.com/fernando.arroyomaldonado?rc=p&refid=52&__tn__=R', 1),
(66, 'Granda Luis', 'Para los ojos de los corruptos son par angelitos...', 'https://www.facebook.com/luis.grandazamora?rc=p&refid=52&__tn__=R', 1),
(67, 'Jose Gaibor Silva', 'Que pena de país Razón mucha gente se va y no vuelve', 'https://www.facebook.com/jose.gaiborsilva.3?rc=p&refid=52&__tn__=R', 1),
(68, 'Marcelo Herrera', 'Pregunten a la famosa jueza Camacho, ella fué quien dio paso a la absolución de los ñañitos Isaías', 'https://www.facebook.com/marcelo.herrera.5036?rc=p&refid=52&__tn__=R', 1),
(69, 'Hugt Yanti', 'Viva Ecuador', 'https://www.facebook.com/profile.php?id=100016561754308&rc=p&refid=52&__tn__=R', 1),
(70, 'Frederick Lanker', 'Fui como muchos perjudicado Filanbanco adquirió el Banco de la Previsora en una turbia y truculenta negociaciones de gatos de media noche Alvaro Guerrero se fugo a EE.UU a vender ollas de aluminio, perjudicando a todos los Accionistas del Banco la Previsora. Dieron en dacíon de pago el Museo Nahin Issaias sobrevalorando piezas y pinturas, y que decir de FEREXPO .etc .', 'https://www.facebook.com/freddy.tinajero.1?rc=p&refid=52&__tn__=R', 1),
(71, 'Bolivar Proaño', 'No se si es peor la Justicia de Ecuador o el Covid  19', 'https://www.facebook.com/bolivar.proano?rc=p&refid=52&__tn__=R', 1),
(72, 'Giuseppe Pesantez', '10/20 -> con influjo psíquico declara libre de culpas a los Isaias', 'https://www.facebook.com/andres.pesantez1?rc=p&refid=52&__tn__=R', 1),
(73, 'Rosi Altamirano', 'Solo a los de poncho les quitan  sus propiedades.', 'https://www.facebook.com/rosi.altamirano.3?rc=p&refid=52&__tn__=R', 1),
(74, 'Cruzma Borbor Delgado', 'Ojala asi reaccione con las rata bucaram ortiz y la gavilla bucaram pulley', 'https://www.facebook.com/cruzma.borbordelgado?rc=p&refid=52&__tn__=R', 1),
(75, 'Maria Jose Lopez Salazar', '#Vizcaíno es un delincuente, solamente busca su beneficio intentando que aprueben la ley del transporte Guillermo Lasso Cesar Monge Luis Felipe Vizcaíno no piensa en la reactivación económica de nuestro país, él sólo piensa en su bolsillo Daniel Noboa  Azin Rina Campain ', 'https://www.facebook.com/mariajose.lopezsalazar.98?rc=p&refid=52&__tn__=R', 1),
(76, 'Martin Parodi', 'La era del chulquero  Lazo  a  iniciado...a Reinar', 'https://www.facebook.com/martinenrique.parodicastro?rc=p&refid=52&__tn__=R', 1),
(77, 'Bladimir Bladimir', 'Ahí si como dice la canción, es merengue o no es merengue es merengue o no es merengue..', 'https://www.facebook.com/bladimir.bladimir.96780?rc=p&refid=52&__tn__=R', 1),
(78, 'Jorge Portilla Gamboa', 'La fiscal 10 sobre 20  jajajaja indignada porque no le tocó la tajada :v', 'https://www.facebook.com/jorge.portillagamboa?rc=p&refid=52&__tn__=R', 1),
(79, 'Marco Rubio', 'Esa parece una jugada entre banqueros (lasso) ', 'https://www.facebook.com/marco.rubio.92?rc=p&refid=52&__tn__=R', 1),
(80, 'Martin Lino Zambrano', 'Ahora se dan cuenta jajaja de qué fiscal estamos hablando ajjaja una comprada por unos billetes capaz de acusar al inocente ', 'https://www.facebook.com/martinlino189?rc=p&refid=52&__tn__=R', 1),
(81, 'Jd Zambrano', 'Claro  esos  manes  no  usaron  influso psiquico', 'https://www.facebook.com/jose.zambranocevallos.3?rc=p&refid=52&__tn__=R', 1),
(82, 'Edison Villegas', 'BIEN SRA DIANITA UD ES LA UNICA EN ESE PUESTO QUE SIGUE DEFENDIENDO AL PUEBLO', 'https://www.facebook.com/edison.villegas.5245?rc=p&refid=52&__tn__=R', 1),
(83, 'Cristina Morales', 'No sé cómo pueden decir que es una buena fiscal se le ha pasado muchas cosas', 'https://www.facebook.com/cristina.morales.900?rc=p&refid=52&__tn__=R', 1),
(84, 'Xime Del Rocío Vas', 'Hasta cuando se los protege a estos delincuentes', 'https://www.facebook.com/xime.vasconez?rc=p&refid=52&__tn__=R', 1),
(85, 'David Simbaña', 'A trabajar holgazanes, que las indemnizaciones para este par de sinvergüenzas no se pagan solas.', 'https://www.facebook.com/alexis.tuquerres.71?rc=p&refid=52&__tn__=R', 1),
(86, 'Tonny Visson', 'Hubo mano negra 😏 ', 'https://www.facebook.com/tonny.visson.1?rc=p&refid=52&__tn__=R', 1),
(87, 'Susana Hallo', 'La FISCAL debe denunciar este hecho por escrito a organismos INTERNACIONALES', 'https://www.facebook.com/susana.hallo.5?rc=p&refid=52&__tn__=R', 1),
(88, 'Mario P Ayala Luna', 'Me pregunto tan podrida esta está justicia', 'https://www.facebook.com/profile.php?id=100005731836608&rc=p&refid=52&__tn__=R', 1),
(89, 'Dannyel Cunalata', 'Muy  buena obra de teatro🎬', 'https://www.facebook.com/edissoncitoc?rc=p&refid=52&__tn__=R', 1),
(90, 'Centurion Vinueza', 'Y ahora el pueblo  a pagar para devolver el dinero que  cosa', 'https://www.facebook.com/carloscenturion.moncayovinueza?rc=p&refid=52&__tn__=R', 1),
(91, 'Karina Andrade Portero', 'A eso le llaman justicia ciega pero', 'https://www.facebook.com/karina.andradeportero?rc=p&refid=52&__tn__=R', 1),
(92, 'José S. Tarco Pad', 'Que se puede esperar de esta peste negra', 'https://www.facebook.com/profile.php?id=100036996137278&rc=p&refid=52&__tn__=R', 1),
(93, 'Pedro Morocho', 'Esta fiscal será juzgada en un par de años.. y se le encontrara cuanto costo su honestidad... millones', 'https://www.facebook.com/pedroandres.morochocruz?rc=p&refid=52&__tn__=R', 1),
(94, 'Bolivar Fraga', 'Que defensa tuvo el estado.', 'https://www.facebook.com/bolivar.fraga.5?rc=p&refid=52&__tn__=R', 1),
(95, 'Caor Orellana', 'Buenísima la fiscal volvimos a los buenos tiempos ', 'https://www.facebook.com/carlosarorellana?rc=p&refid=52&__tn__=R', 1),
(96, 'Fabian Salas', 'Je je je je, y esa es la justicia que rige nuestro país!', 'https://www.facebook.com/fabian.salas.rueda?rc=p&refid=52&__tn__=R', 1),
(97, 'Barciona Sanchez', 'No le creo, es un teatro que intenta limpiar los errores de la fiscal.', 'https://www.facebook.com/barciona.sanchez?rc=p&refid=52&__tn__=R', 1),
(98, 'Ra Sh', 'No les deje fiscal!! Hágales pagar!!  Sin vergüenzas!! ', 'https://www.facebook.com/rash.saa?rc=p&refid=52&__tn__=R', 1),
(99, 'Ramiro TD', 'Que pena de mi País, tanta ingenuidad.', 'https://www.facebook.com/ramiro.tacuri.52?rc=p&refid=52&__tn__=R', 1),
(100, 'Consuelo Guzmán', 'Está justicia ecuatoriana de a v....', 'https://www.facebook.com/profile.php?id=100044752234944&rc=p&refid=52&__tn__=R', 1),
(101, 'Luis Carlos Roa', 'Grande Dianita, la mejor fiscal', 'https://www.facebook.com/lucho.roa.96?rc=p&refid=52&__tn__=R', 1),
(102, 'Freddy Vargas', 'La 10/20... Cada vez peor... No sirve... Ni una a pegado', 'https://www.facebook.com/justin.narvaez1?rc=p&refid=52&__tn__=R', 1),
(103, 'Marco Vintimilla', 'Esa fiscal si que sorprende !!! Solo juicios dudosos', 'https://www.facebook.com/marco.vintimilla.9?rc=p&refid=52&__tn__=R', 1),
(104, 'Francisca Mendoza', 'Esa es la sorpresa de laso', 'https://www.facebook.com/profile.php?id=100035707364358&rc=p&refid=52&__tn__=R', 1),
(105, 'Rigoberto Prieto', 'Vga la ley en el país', 'https://www.facebook.com/rigoberto.prieto.5?rc=p&refid=52&__tn__=R', 1),
(106, 'Miguel Angel Encalada Villacres', 'PROCEDAN CON LA NULIDAD, NO PERMITAN QUE SE SALGAN CON LA SUYA', 'https://www.facebook.com/miguelangel.encaladavillacres.9?rc=p&refid=52&__tn__=R', 1),
(107, 'Benavides Mili', 'Por fin va a hacer algo bueno', 'https://www.facebook.com/pili.villarreal.12?rc=p&refid=52&__tn__=R', 1),
(108, 'E Javier Mendoza', 'Reacción tardía', 'https://www.facebook.com/eudesjavier.mendozacedeno?rc=p&refid=52&__tn__=R', 1),
(109, 'Roxxy Sotomayor', 'El mono ese se termino de llenar los bolsillos antes de irse', 'https://www.facebook.com/roxxy.sotomayor?rc=p&refid=52&__tn__=R', 1),
(110, 'Monita Pau Pilco', 'Fiscal?', 'https://www.facebook.com/MONITAPAU?rc=p&refid=52&__tn__=R', 1),
(111, 'Mylito Tkd', 'La cosa es antes...', 'https://www.facebook.com/milton.ordonez.100?rc=p&refid=52&__tn__=R', 1),
(112, 'Galo Alex Salazar Fiallo', 'NO ERA INFLUJO PSIQUICO?????', 'https://www.facebook.com/galoalex.salazarfiallo?rc=p&refid=52&__tn__=R', 1),
(113, 'Raúl Endara García', 'Por lo menos... Así sea teatro de ella', 'https://www.facebook.com/raulendara.garcia.7?rc=p&refid=52&__tn__=R', 1),
(114, 'Lisa Palomino', 'Luis Felipe Vizcaíno es una rata de alcantarilla Guillermo Lasso Cesar Monge porque no dice que él no paga impuestos cuando importa sus neumáticos a #Vizcaíno sólo le interesa su bolsillo Asamblea Nacional del Ecuador Fiscalía General del Estado Ecuador Andersson Boscán Pico ', 'https://www.facebook.com/liza.palomino.507?rc=p&refid=52&__tn__=R', 1),
(115, 'Aegis Libertad', 'banqueros tenían  q ser.....', 'https://www.facebook.com/aegis.libertad?rc=p&refid=52&__tn__=R', 1),
(116, 'Mariana Zambrano Yalamà', 'Si no les aprueba...le ahorcan', 'https://www.facebook.com/mariana.zambranoyalama?rc=p&refid=52&__tn__=R', 1),
(117, 'Guamán Ernesto', 'X algo es 10/20😄', 'https://www.facebook.com/profile.php?id=100007152794907&rc=p&refid=52&__tn__=R', 1),
(118, 'Atanacio Chafla', 'Cuanto le habrá billeteado', 'https://www.facebook.com/atanacio.chafla.71?rc=p&refid=52&__tn__=R', 1),
(119, 'Bolivar Fraga', 'Regresan a robar o a invertir  .A hacerse  los santos', 'https://www.facebook.com/bolivar.fraga.5?rc=p&refid=52&__tn__=R', 1),
(120, 'Fredicyn G CH', 'Solo en Ecuador.', 'https://www.facebook.com/fredy.guamingochavez?rc=p&refid=52&__tn__=R', 1),
(121, 'Wilfrido Mieles', 'Llegará el fin del hombre araña', 'https://www.facebook.com/wilfrido.mieles.3?rc=p&refid=52&__tn__=R', 1),
(122, 'Carlos Carlos', 'Malditos y los perjudicados bien gracias. Malditos perros', 'https://www.facebook.com/profile.php?id=100040820411933&rc=p&refid=52&__tn__=R', 1),
(123, 'Rossana Orellana Carrasco', 'Viejas chismosas, tal cual', 'https://www.facebook.com/rossana.orellana?rc=p&refid=52&__tn__=R', 1),
(124, 'Lidia Chimarro', 'probé mi Ecuador', 'https://www.facebook.com/lidia.chimarro.77?rc=p&refid=52&__tn__=R', 1),
(125, 'Sesé Cobo', 'Peeeeeero \"inducción psíquica\"', 'https://www.facebook.com/sese.kar?rc=p&refid=52&__tn__=R', 1),
(126, 'Norman Enrique Teran Bravo', 'Una de vaqueros….!!!!!', 'https://www.facebook.com/normanenrique.teranbravo?rc=p&refid=52&__tn__=R', 1),
(127, 'Ines Alcivar', 'Todos son iguales promete y prometen total para queda en los mismos', 'https://www.facebook.com/ines.alcivar.7?rc=p&refid=52&__tn__=R', 1),
(128, 'Gonzalo Iván GC', 'Todos absolutamente todos los jueces son malandrines .....', 'https://www.facebook.com/GIGC0?rc=p&refid=52&__tn__=R', 1),
(129, 'Damián O. García', 'Solo a los correistas no les gusta como trabaja la Fiscal Diana Salazar, por qué a la mayoría los investigo ! ', 'https://www.facebook.com/damian.otalvar?rc=p&refid=52&__tn__=R', 1),
(130, 'Roberto Zambrano', 'No le llegó su cheque ? jajaja ', 'https://www.facebook.com/roberto.zambrano.39?rc=p&refid=52&__tn__=R', 1),
(131, 'Agustin Jimpikit', 'Que carajo esta pasando por la plata baila el mono', 'https://www.facebook.com/agustinpatricio.jimpikitkuja?rc=p&refid=52&__tn__=R', 1),
(132, 'Eduardo Sodav', '. . LAS MAFIAS REGREZAN. . . SE ORGANIZAN. . . PARA EL ATRACO FINAL. . . . .CUANTO HABRAN  DADO LOS ISAIAS. . .PRA ESTO????. . . . .', 'https://www.facebook.com/profile.php?id=100012460603132&rc=p&refid=52&__tn__=R', 1),
(133, 'Joe Martin', 'claro como no, ahora son unos \"angelitos\".', 'https://www.facebook.com/profile.php?id=100000487789370&rc=p&refid=52&__tn__=R', 1),
(134, 'Sergio Mauricio Mayorga', 'Jjajaj payasa D Salazar hay si no te brilla el ojo como dolares', 'https://www.facebook.com/mayorga.araujo?rc=p&refid=52&__tn__=R', 1),
(135, 'Fabricio Giraldo Palacios', 'Aja.......si la 10/20 lo dice', 'https://www.facebook.com/fabricio.giraldopalacios?rc=p&refid=52&__tn__=R', 1),
(136, 'Flore Mezza', 'Y por qué Fiscalía no usó la del influjo psíquico?, esa es infalible.', 'https://www.facebook.com/flore.mezza?rc=p&refid=52&__tn__=R', 1),
(137, 'Victor Gonzalez', 'ja.ja .armara un show nuevamente', 'https://www.facebook.com/profile.php?id=100026596490298&rc=p&refid=52&__tn__=R', 1),
(138, 'Patricio Salazar Fierro', 'Y cuando les devuelvan las productivas empresas, quebradas por los robolucionarios? 😲', 'https://www.facebook.com/patriciosalazarfierro?rc=p&refid=52&__tn__=R', 1),
(139, 'Copo Andino JC', 'Este es el PAÍS DEL ENCUENTRO ALBERTO DAGIK LOS BUCARANES AHORA LOS ISAIAS EN FIN LA PELÍCULA TIERRA DE POLÍTICOS LADRONES JUNTO A BANQUEROS Y EMPRESARIOS CORRUPTOS', 'https://www.facebook.com/jhony.copoandino?rc=p&refid=52&__tn__=R', 1),
(140, 'Edison Anago Soria', 'Mientras tanto ', 'https://www.facebook.com/raul.anagosoria?rc=p&refid=52&__tn__=R', 1),
(141, 'Romel Zaquinaula', 'Ahí es cuando da ganas de formar un grupo armado.y matar a todos esos rateros, ladrones de toda la vida, incluido,esas autoridades, cómplices de esos sinvergüenza ladrones', 'https://www.facebook.com/romel.zaquinaula?rc=p&refid=52&__tn__=R', 1),
(142, 'Juan Carlos Bonilla', 'Dra. Salazar no deje que los delincuentes se salgan con la suya!!!', 'https://www.facebook.com/juan.c.bonilla.142?rc=p&refid=52&__tn__=R', 1),
(143, 'Dennis Castillo', 'Tampoco hubo migración masiva, ni feriado bancario. El poder de don Dinero', 'https://www.facebook.com/dennis.castillo.9083?rc=p&refid=52&__tn__=R', 1),
(144, 'Luis Regalado M', 'El Gobierno de circos y teatros.. cuando daño le han hecho al pais', 'https://www.facebook.com/LuisRegaladoM?rc=p&refid=52&__tn__=R', 1),
(145, 'LG Taker', 'si no es influjo psíquico no sirve diga??', 'https://www.facebook.com/lenin.taker?rc=p&refid=52&__tn__=R', 1),
(146, 'Ruben T Chacon', 'Y los ladrones que se llevaron Miles de millones  Que paso   OSEA VAMOS A SEGUIR EL CIRCULO DE CORRUPCION  YA ME PARECE QUE POCO A POCO SE VA ACLARANDO EL PANORAMA', 'https://www.facebook.com/ruben.tchacon.1?rc=p&refid=52&__tn__=R', 1),
(147, 'Carlos Martinez', 'Que raro no veo a los Burros diciendo ..! Isi ista bien volvió la dimicricia..! Burros malditos ', 'https://www.facebook.com/andres.briones.182?rc=p&refid=52&__tn__=R', 1),
(148, 'Loly Chavez', 'Y le dieron otro merecido reconocimiento y por esté otro reconocimiento por su lucha anticorrupción  jjjjjjjjj si asi va sus paredes no alcanzará para tantos honores 😂', 'https://www.facebook.com/profile.php?id=100021778579824&rc=p&refid=52&__tn__=R', 1),
(149, 'Christian Teran Tamayo', 'A caramba, me sorprende esta tarada🤬, veremos dijo el ciego ', 'https://www.facebook.com/christian.t.tamayo.3?rc=p&refid=52&__tn__=R', 1),
(150, 'Rch Rch', 'Sra fiscal mano dura contra los choros ', 'https://www.facebook.com/raul.chacha.5?rc=p&refid=52&__tn__=R', 1),
(151, 'Santiago Arias', 'ilegítimo es el cargo que ocupa', 'https://www.facebook.com/santyago.arias?rc=p&refid=52&__tn__=R', 1),
(152, 'Jose Armando', 'Calla inútil sinvergüenza no eres muy diferente a esos jueces corruptos ', 'https://www.facebook.com/damian.skint?rc=p&refid=52&__tn__=R', 1),
(153, 'Edwar Sc', 'Son panas del lasso pues ingnorates', 'https://www.facebook.com/edgarcadena79677?rc=p&refid=52&__tn__=R', 1),
(154, 'Pame Bustamante Cruz', 'No pues si todos los.ex que fueron.sentensiaods resulta que son inocentes y comp.para variar banqueros que coincidencia', 'https://www.facebook.com/pame.bustamantecruz?rc=p&refid=52&__tn__=R', 1),
(155, 'Renato Pluas Raymomdi', 'Pienso que van a vender el pais', 'https://www.facebook.com/Renatopluas1990?rc=p&refid=52&__tn__=R', 1),
(156, 'Martha Daste', 'Apoyo total a la Fiscal Diana Salazar', 'https://www.facebook.com/profile.php?id=100016030848343&rc=p&refid=52&__tn__=R', 1),
(157, 'Hector David Varela Arias', 'Entre ladrones se entienden escorias de la sociedad', 'https://www.facebook.com/hectordavid.varelaarias?rc=p&refid=52&__tn__=R', 1),
(158, 'Julio Cesar Andrade Naveda', 'Show de la 10/20', 'https://www.facebook.com/juliocesar.andradenaveda?rc=p&refid=52&__tn__=R', 1),
(159, 'Ramiro TD', 'Dios mío esa es 0/20, cuánto dinero  se estará llevando por todo lo que ha hecho, investiguenla y verán el dinero que tiene esta sinvergüenza.', 'https://www.facebook.com/ramiro.tacuri.52?rc=p&refid=52&__tn__=R', 1),
(160, 'Rafael Piña', 'Cuánto te pagarían, que fiscal para sinvergüenza,,', 'https://www.facebook.com/Rafajr27?rc=p&refid=52&__tn__=R', 1),
(161, 'Ruben T Chacon', 'Y a los LADRONES de los 14 años cuando', 'https://www.facebook.com/ruben.tchacon.1?rc=p&refid=52&__tn__=R', 1),
(162, 'Giss Garcia De Dávila', 'Juez de centavo', 'https://www.facebook.com/gise.garcia.9615?rc=p&refid=52&__tn__=R', 1),
(163, 'Adam Axem', 'Esos pillos saben escabullirse.', 'https://www.facebook.com/adan.arosemena?rc=p&refid=52&__tn__=R', 1),
(164, 'Angel R Cedeno', 'Pura lampara', 'https://www.facebook.com/angelr.cedeno.33?rc=p&refid=52&__tn__=R', 1),
(165, 'Pablo Esteban', 'Así vamos!', 'https://www.facebook.com/pabloestebans?rc=p&refid=52&__tn__=R', 1),
(166, 'JP Puma', 'Payasa mona esa 😂😂😂😂😂', 'https://www.facebook.com/puma.jp.5?rc=p&refid=52&__tn__=R', 1),
(167, 'Emeleccista Granillo', 'Bien la fiscal', 'https://www.facebook.com/adri.granillo.1?rc=p&refid=52&__tn__=R', 1),
(168, 'Hernán Alvarez Villacres', 'jaja', 'https://www.facebook.com/hernan.alvarezvillacres?rc=p&refid=52&__tn__=R', 1),
(169, 'Abel Valarezo', 'En este país no hay justicia', 'https://www.facebook.com/abel.valarezo.3?rc=p&refid=52&__tn__=R', 1),
(170, 'Elizabeth Naranjo Calle', 'Y se vendrán cosas peores ...... por votar por otro inútil 😡😡😡😡😡', 'https://www.facebook.com/elizabeth.naranjocalle.9?rc=p&refid=52&__tn__=R', 1),
(171, 'Carlos Enrique Armijos Veintimilla', 'Si todos  jueces y gran mayoria de fiscales LADRONES Y DELINCUENTES .', 'https://www.facebook.com/carlosenrique.armijosveintimilla.3?rc=p&refid=52&__tn__=R', 1),
(172, 'Nataly Rodriguez', 'Que terrible !', 'https://www.facebook.com/natalyr?rc=p&refid=52&__tn__=R', 1),
(173, 'Coral Fran', 'Que bien sra fizcal', 'https://www.facebook.com/coral.fran.5?rc=p&refid=52&__tn__=R', 1),
(174, 'Nidia Pastrano', 'Quero  vomitar🤮', 'https://www.facebook.com/nidia.pastrano?rc=p&refid=52&__tn__=R', 1),
(175, 'JC Juan Carlos Condor', 'Otro showw sinvergüenzas', 'https://www.facebook.com/carlos.condor.58?rc=p&refid=52&__tn__=R', 1),
(176, 'Dario Javier', 'Puro show', 'https://www.facebook.com/epincaychalen?rc=p&refid=52&__tn__=R', 1),
(177, 'Nancy Mercedes Pucha Sivisaca', 'Ladrones', 'https://www.facebook.com/nancymercedes.puchasivisaca.7?rc=p&refid=52&__tn__=R', 1),
(178, 'Fausto Vasquez', 'Buen trabajo Dra Salazar ', 'https://www.facebook.com/fausto.fa.5?rc=p&refid=52&__tn__=R', 1),
(179, 'Ángelito W Moreta Paredes', 'Carc l a estás basuras', 'https://www.facebook.com/angel.moreta.52?rc=p&refid=52&__tn__=R', 1),
(180, 'Anibal Collaguazo', 'Justicia podrida,', 'https://www.facebook.com/anibal.collaguazo.79?rc=p&refid=52&__tn__=R', 1),
(181, 'Edmundo Pazmiño', 'Y el billete ?????', 'https://www.facebook.com/edmundo.pazmino.3?rc=p&refid=52&__tn__=R', 1),
(182, 'Raul Suarez Rubio', 'Ladrones y mecos', 'https://www.facebook.com/RaulSu?rc=p&refid=52&__tn__=R', 1),
(183, 'Eduardo Torres', 'El Efecto Lasso..', 'https://www.facebook.com/profile.php?id=100015735188704&rc=p&refid=52&__tn__=R', 1),
(184, 'Elizabeth Medranda', '🤮🤮🤮', 'https://www.facebook.com/elizabeth.medranda.5?rc=p&refid=52&__tn__=R', 1),
(185, 'Luis Sanchez Bajaña', 'GRACIAS BURROS', 'https://www.facebook.com/luis.sanchezbajana?rc=p&refid=52&__tn__=R', 1),
(186, 'Shimun Fray', 'AHORA EL PRESIDENTE ES UN BANQUERO LADRON DE Q SE QUEJAN... ARRIBA LA IMPUNIDAD', 'https://www.facebook.com/alejandro.gudino.547?rc=p&refid=52&__tn__=R', 1),
(187, 'Alvaro Gordon', 'Todo está direccionado..........', 'https://www.facebook.com/profile.php?id=100007754087570&rc=p&refid=52&__tn__=R', 1),
(188, 'Darwin Maldonado', 'esa fiscal 10/20', 'https://www.facebook.com/theboraz?rc=p&refid=52&__tn__=R', 1),
(189, 'Fernando Guaña Tapia', 'Mi apoyo para la Fiscal', 'https://www.facebook.com/fernando.guanatapia?rc=p&refid=52&__tn__=R', 1),
(190, 'Victor G Aguilar', 'Siquiera en esto reaccióna', 'https://www.facebook.com/victor.g.aguilar.7?rc=p&refid=52&__tn__=R', 1),
(191, 'Manuel Allaico', 'Jueces corrupts simverguezas descarados', 'https://www.facebook.com/profile.php?id=100012126453130&rc=p&refid=52&__tn__=R', 1),
(192, 'Carlos Augusto Quiroz Lopez', 'Harta corrupcion en el pais', 'https://www.facebook.com/carlos.quiroz.lopez?rc=p&refid=52&__tn__=R', 1),
(193, 'Jorgue Caw Castro', 'Estos viejos desgraciados..', 'https://www.facebook.com/profile.php?id=100002989408491&rc=p&refid=52&__tn__=R', 1),
(194, 'Melva Jimenez', 'Corruptos jueces', 'https://www.facebook.com/melva.jimenez.96?rc=p&refid=52&__tn__=R', 1),
(195, 'Francisco Carrillo', 'Bruta! ', 'https://www.facebook.com/francisco.carrillo.963?rc=p&refid=52&__tn__=R', 1),
(196, 'Juan Carlos Álvarez', 'Solo diré 🤮🤮🤮🤮🤮', 'https://www.facebook.com/profile.php?id=100010347754645&rc=p&refid=52&__tn__=R', 1),
(197, 'Isabela Isabel', 'Lacras mal vivientes', 'https://www.facebook.com/isabela.guaman.71?rc=p&refid=52&__tn__=R', 1),
(198, 'Gaby Ordoñez', 'Que chiste no leyeron bien', 'https://www.facebook.com/gaby.ordonez.3154?rc=p&refid=52&__tn__=R', 1),
(199, 'Andrés B. Soto', 'Posi', 'https://www.facebook.com/TheLastDreamer1?rc=p&refid=52&__tn__=R', 1),
(200, 'GL GL GL', 'Es es corrupción pura....', 'https://www.facebook.com/profile.php?id=100015567874148&rc=p&refid=52&__tn__=R', 1),
(201, 'Lali Aviles', 'Empezo el circo!!!!', 'https://www.facebook.com/lali.aviles.3?rc=p&refid=52&__tn__=R', 1),
(202, 'Byron Rodrigo Pilatuña Bastidas', 'Viva la patria', 'https://www.facebook.com/byronrodrigo.pilatunabastidas?rc=p&refid=52&__tn__=R', 1),
(203, 'Alicia Davalos', 'Tarea de sinvergüenzas', 'https://www.facebook.com/alicia.davalos.18?rc=p&refid=52&__tn__=R', 1),
(204, 'Alicia Davalos', 'Que infamia', 'https://www.facebook.com/alicia.davalos.18?rc=p&refid=52&__tn__=R', 1),
(205, 'Teresa Leon', '😲😲😲😲😲😲😲', 'https://www.facebook.com/profile.php?id=100043033053859&rc=p&refid=52&__tn__=R', 1),
(206, 'Ricardo Montalvan', 'Ojalá se mueran los tres mamarrachos', 'https://www.facebook.com/profile.php?id=100008329961287&rc=p&refid=52&__tn__=R', 1),
(207, 'Jose Luis Ibarra', 'Jajaja Lassies Boys', 'https://www.facebook.com/profile.php?id=100004549985146&rc=p&refid=52&__tn__=R', 1),
(208, 'Diego Castro Cruz', '10/20', 'https://www.facebook.com/dieguito.castro.quito?rc=p&refid=52&__tn__=R', 1),
(209, 'Vladimir Ronny Jimenez', 'Bien hecho por la fiscal de la nacion y esperemos que meta preso a esos 2 jueces vorructos y sinvergüenzas que lo declararon inocentes', 'https://www.facebook.com/ronny.jimenez.m?rc=p&refid=52&__tn__=R', 1),
(210, 'Wlady E. Acosta', 'Que pasaría con la ex funcionaria Ocles...??? Fiscalia debe rendir cuentas de los casos que se investigan', 'https://www.facebook.com/profile.php?id=100013377602867&rc=p&refid=52&__tn__=R', 1);

-- --------------------------------------------------------

--
-- Table structure for table `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` int(10) NOT NULL,
  `nombre_empresa` varchar(500) NOT NULL,
  `direccion_empresa` varchar(500) NOT NULL,
  `id_facebook` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `nombre_empresa`, `direccion_empresa`, `id_facebook`) VALUES
(1000, 'Supermaxi', 'El vecino', 'Supermaxi Facebook');

-- --------------------------------------------------------

--
-- Table structure for table `publicacion`
--

CREATE TABLE `publicacion` (
  `id_publicacion` int(10) NOT NULL,
  `id_facebook` varchar(500) NOT NULL,
  `nombre_publicacion` varchar(500) NOT NULL,
  `url_publicacion` varchar(500) NOT NULL,
  `alegra` int(10) NOT NULL,
  `asombra` int(10) NOT NULL,
  `encanta` int(10) NOT NULL,
  `entristese` int(10) NOT NULL,
  `importa` int(10) NOT NULL,
  `gusta` int(10) NOT NULL,
  `enoja` int(10) NOT NULL,
  `id_empresa` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publicacion`
--

INSERT INTO `publicacion` (`id_publicacion`, `id_facebook`, `nombre_publicacion`, `url_publicacion`, `alegra`, `asombra`, `encanta`, `entristese`, `importa`, `gusta`, `enoja`, `id_empresa`) VALUES
(1, '4640200359337023', 'El Comercio - #ATENCIÓN | Fiscal reacciona. “Ilegítima” pericia se usó en el caso de los exbanqueros Roberto y William Isaías » https://bit.ly/3fF149d | Facebook', 'https://www.facebook.com/photo?fbid=4640200359337023', 420, 56, 19, 6, 7, 1, 493, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `respuesta_comentarios`
--

CREATE TABLE `respuesta_comentarios` (
  `id_respuesta_comentarios` int(10) NOT NULL,
  `nombre_usuario` varchar(500) NOT NULL,
  `detalle_respuesta` varchar(1000) NOT NULL,
  `perfil_usuario_respuesta` varchar(500) NOT NULL,
  `id_comentario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `respuesta_comentarios`
--

INSERT INTO `respuesta_comentarios` (`id_respuesta_comentarios`, `nombre_usuario`, `detalle_respuesta`, `perfil_usuario_respuesta`, `id_comentario`) VALUES
(1, 'Sonia Rodríguez', 'Victor Hugo Vasconez Gomez Que presión habrán tenido los jueces.', 'https://www.facebook.com/profile.php?id=100004767761053&rc=p&__tn__=R', 1),
(2, 'Cristobal Gonzalez', 'Sonia Rodríguez presion  no que cantidad de dólares lo hizo abrlr los ojos y abrir las manos para de clararlo inocente. ', 'https://www.facebook.com/profile.php?id=100009677193695&rc=p&__tn__=R', 1),
(3, 'Gina Proaño', 'Sonia Rodríguez mucha plata ', 'https://www.facebook.com/gina.proano.58?rc=p&__tn__=R', 1),
(4, 'Francisco Endara', 'Betancourt Lourdes lee muspa!!!', 'https://www.facebook.com/panchito.endarash?rc=p&__tn__=R', 2),
(5, 'Holger Bolivar Anchatipan Chiriboga', 'Francisco Endara ', 'https://www.facebook.com/holgerbolivar.anchatipanchiriboga?rc=p&__tn__=R', 2),
(6, 'Holger Bolivar Anchatipan Chiriboga', 'El mushpa eres tu, dejaron una brecha para que estos dos delincuentes luego que las aguas se calmen entable un juicio al Estado para devolución de sus bienes incautados.', 'https://www.facebook.com/holgerbolivar.anchatipanchiriboga?rc=p&__tn__=R', 2),
(7, 'Fabian Jimenez', 'Betancourt Lourdes Mi estimada Lourdes..solita puedes defenderte...del MUSPA..h.aslo la ignorancia es atrevida..estupideces andando..', 'https://www.facebook.com/gfabianjimenez?rc=p&__tn__=R', 2),
(8, 'Abg Milton Patricio Marmol Colimba', 'Alberto Ayala Google ', 'https://www.facebook.com/milton.marmol1?rc=p&__tn__=R', 4),
(9, 'Kevin Nuñez', 'https://youtu.be/Fsx5NJJKjZo.    mire este video a veces es bueno informarse yo desconozco  que realmente hicieron estos Isaias pero hay cosas que si merecen ser escuchadas y analizadas', 'https://www.facebook.com/profile.php?id=100005997318885&rc=p&__tn__=R', 6),
(10, 'Arcangel Gabriel', 'Rodrigo Rivas así sra por un dólar ladrón es ladrón ', 'https://www.facebook.com/luisvalenzuelaf?rc=p&__tn__=R', 7),
(11, 'Jess Salme', 'Rodrigo Rivas 6000 diarios ', 'https://www.facebook.com/jenny.escobar.100046?rc=p&__tn__=R', 7),
(12, 'Fernando Castro', 'Rodrigo Rivas ni siquiera es por $6000. es por “influjo psiquico”', 'https://www.facebook.com/carlos.aragundicastro?rc=p&__tn__=R', 7),
(13, 'Sandra Zamora', 'Jimmy Sevilla que viva borrego sanduchero', 'https://www.facebook.com/sandra.zamora.56481?rc=p&__tn__=R', 8),
(14, 'Samantha Vijay', 'Jimmy Sevilla dolido esta mula vs borrego Los ladrones libres . prófugos  otros con grillete y los  inocentes en la cársel Que injuzticia', 'https://www.facebook.com/profile.php?id=100006947162573&rc=p&__tn__=R', 8),
(15, 'Irina Montenegro', 'Cristobal Valarezo Bucaram regresó porque su juicio prescribió, ni Correa con todo el control que tenía pudo evitarlo y sí se lee es la CSJ quienes los declaran inocentes, la Fiscal presentó el correspondiente argumento legal para que no se dé paso, pero esos jueces están haciendo lo que les viene en gana. A ésto, dónde interviene Lenin o Lasso aquí?', 'https://www.facebook.com/norisirinam?rc=p&__tn__=R', 9),
(16, 'Martha Cecilia', 'Cristobal Valarezo ', 'https://www.facebook.com/profile.php?id=100009490034004&rc=p&__tn__=R', 9),
(17, 'Salomòn Estrella', 'Irina Montenegro 😂😂😂😂😂😂😂😂😂😂😂😂😂😂😂😂😂😂😂', 'https://www.facebook.com/LUICKI?rc=p&__tn__=R', 9),
(18, 'Inés Cisneros', 'Martha Cecilia ', 'https://www.facebook.com/inesisabelc?rc=p&__tn__=R', 9),
(19, 'Santiago Coloma', 'Inés Cisneros ', 'https://www.facebook.com/profile.php?id=514162699&rc=p&__tn__=R', 9),
(20, 'Rosi Altamirano', 'Jeferson Suárez son  del circulo  de  Lasso.', 'https://www.facebook.com/rosi.altamirano.3?rc=p&__tn__=R', 10),
(21, 'Alejandro Bermudez', 'Monica Espinoza 🤦‍♂️...', 'https://www.facebook.com/profile.php?id=100065017389004&rc=p&__tn__=R', 12),
(22, 'Martha Cecilia', 'Monica Espinoza de que tajada hablas ?  Y no te gusto que declare ilegitimo ? Que estupidez ', 'https://www.facebook.com/profile.php?id=100009490034004&rc=p&__tn__=R', 12),
(23, 'Jenny Ordoñez', 'Orfa Guarnizo así mismo ', 'https://www.facebook.com/alexandra.ordonez.50?rc=p&__tn__=R', 13),
(24, 'Francisco Serrano Illescas', 'Orfa Guarnizo cual inocente? si te refieres a Glass permite reírme. ', 'https://www.facebook.com/chelo.serrano.5682?rc=p&__tn__=R', 13),
(25, 'Vicente Guillermo Lapo Muños', 'Francisco Serrano Illescas riete nomas no te  acordaras q vivíamos en tinieblas y gracias a glas somos exportadores  de electresidad ', 'https://www.facebook.com/vicenteguillermo.lapomunos?rc=p&__tn__=R', 13),
(26, 'Santiago Coloma', 'Katia Andrade 105/100?', 'https://www.facebook.com/profile.php?id=514162699&rc=p&__tn__=R', 14),
(27, 'Carlos Rosero Gaviria', 'LaLu Benavides pero si son inocentes porque tienen que devolver....  🤔', 'https://www.facebook.com/carlos.rosero.7564?rc=p&__tn__=R', 15),
(28, 'Taty Briones', 'Carlos Rosero Gaviria inocentes? 😡', 'https://www.facebook.com/taty.briones.3?rc=p&__tn__=R', 15),
(29, 'Guillermo Castillo', 'LaLu Benavides tambien que se acuerde de INAPEIPERS  ', 'https://www.facebook.com/guillermo.castillo.9275?rc=p&__tn__=R', 15),
(30, 'Lennin Mosquera', 'Janneth Ortiz sobretodo negra la justicia 😂☻', 'https://www.facebook.com/lennin.mosquera?rc=p&__tn__=R', 16),
(31, 'Nelly Mendoza', 'Jose Columbus Nader Caso Cerrado.Dra Apolo.jijijiji', 'https://www.facebook.com/nelly.mendoza.7771?rc=p&__tn__=R', 17),
(32, 'Gaby Ordoñez', 'Jose Columbus Nader no leyó bien', 'https://www.facebook.com/gaby.ordonez.3154?rc=p&__tn__=R', 17),
(33, 'Kevin Nuñez', 'Fresia Tomala https://youtu.be/Fsx5NJJKjZo', 'https://www.facebook.com/profile.php?id=100005997318885&rc=p&__tn__=R', 18),
(34, 'Amor Incondicional E', 'Carlos Augusto Loachamin Collaguazo MUY PRONTO OCUPARÁN UN CARGO PÚBLICO', 'https://www.facebook.com/amor.incondicional.501151?rc=p&__tn__=R', 19),
(35, 'Zulay Arellano', 'Carlos Augusto Loachamin Collaguazo Y no nos sorprendamos si bienen con un nuevo banco', 'https://www.facebook.com/aries197624?rc=p&__tn__=R', 19),
(36, 'Kevin Nuñez', 'Eliceo Pinto https://youtu.be/Fsx5NJJKjZo', 'https://www.facebook.com/profile.php?id=100005997318885&rc=p&__tn__=R', 20),
(37, 'Gaby Ordoñez', 'Milo Simbaña no leyó bien', 'https://www.facebook.com/gaby.ordonez.3154?rc=p&__tn__=R', 21),
(38, 'Martha Cecilia', 'Carlos Malucin no se que te robó el señor Lasso , no lo ves libre ? Los prófugos son otritos ', 'https://www.facebook.com/profile.php?id=100009490034004&rc=p&__tn__=R', 22),
(39, 'Inés Cisneros', 'Martha Cecilia ', 'https://www.facebook.com/inesisabelc?rc=p&__tn__=R', 22),
(40, 'Ian Levallois', 'Inés Cisneros 😂😂', 'https://www.facebook.com/ian.levallois.9?rc=p&__tn__=R', 22),
(41, 'Inés Cisneros', 'Ian Levallois 😭😭', 'https://www.facebook.com/inesisabelc?rc=p&__tn__=R', 22),
(42, 'Marcia Zambrano', 'Jenny Ordoñez No se equivoca. ese fue el trato, estimada..... ', 'https://www.facebook.com/profile.php?id=100008315285872&rc=p&__tn__=R', 23),
(43, 'Jenny Ordoñez', 'Marcia Zambrano que tristeza ', 'https://www.facebook.com/alexandra.ordonez.50?rc=p&__tn__=R', 23),
(44, 'Rossana Orellana Carrasco', 'Marcia Zambrano los chismosos abundan en este país.  Aun no gobierna   el sr. Lasso. ', 'https://www.facebook.com/rossana.orellana?rc=p&__tn__=R', 23),
(45, 'Jenny Ordoñez', 'Rossana Orellana Carrasco Que poco sentido común tiene ', 'https://www.facebook.com/alexandra.ordonez.50?rc=p&__tn__=R', 23),
(46, 'Susana Briones Espinoza', 'Jenny Ordoñez no esta equivocada. ', 'https://www.facebook.com/profile.php?id=100019445800568&rc=p&__tn__=R', 23),
(47, 'Ian Levallois', 'Jenny Ordoñez claro que están libres los ladrones y andan por México y Bélgica ', 'https://www.facebook.com/ian.levallois.9?rc=p&__tn__=R', 23),
(48, 'Jess Salme', 'Rosa Maria Velasco ¿para que quiere usted a los delincuentes libres?', 'https://www.facebook.com/jenny.escobar.100046?rc=p&__tn__=R', 24),
(49, 'Estefania Galarza', 'Claudio Valdivieso-Cantautor  no sea IGNORANTE, el caso de los ISAÍAS simpre fue ilegal, Rafael y su banda hicieron mal las incautaciónes y ahora nos va a tocar pagar a todos', 'https://www.facebook.com/estefania.galarza.98229?rc=p&__tn__=R', 25),
(50, 'Sandra Zamora', 'Claudio Valdivieso-Cantautor ', 'https://www.facebook.com/sandra.zamora.56481?rc=p&__tn__=R', 25),
(51, 'Gaby Ordoñez', 'Patricio Mejía no leyó bien ', 'https://www.facebook.com/gaby.ordonez.3154?rc=p&__tn__=R', 26),
(52, 'Santi Oliver', 'Cantos xfa envieme ese video ', 'https://www.facebook.com/simon.rea.003?rc=p&__tn__=R', 27),
(53, 'Alex Montenegro', 'Majito Coro ¿Cuándo ha estado bien el payasito de América llamado Ecuador? -_- ', 'https://www.facebook.com/alex.montenegro.503?rc=p&__tn__=R', 28),
(54, 'Amor Incondicional E', 'Sofi Luu HASTA QUE SALGA LASSO DEL PODER', 'https://www.facebook.com/amor.incondicional.501151?rc=p&__tn__=R', 30),
(55, 'Marcelo Moncayo Vernaza', 'Wilberto Ortiz terrible. ', 'https://www.facebook.com/Chelocapitan?rc=p&__tn__=R', 31),
(56, 'Susana Briones Espinoza', 'Fabian Calderón los vera en la posesion. ', 'https://www.facebook.com/profile.php?id=100019445800568&rc=p&__tn__=R', 32),
(57, 'Amor Incondicional E', 'Fabian Calderón ES QUE SON INVITADOS DE HONOR DE LA POSESIÓN', 'https://www.facebook.com/amor.incondicional.501151?rc=p&__tn__=R', 32),
(58, 'Arturo Rey', 'Y los imb3c1les que votaron por Lenin.', 'https://www.facebook.com/senior.equis.7393?rc=p&__tn__=R', 34),
(59, 'Lizi Alvarez', 'Richard Pila 🙄🙄🙄', 'https://www.facebook.com/lizi.alvarez.372?rc=p&__tn__=R', 35),
(60, 'Gaby Ordoñez', 'Jaime Vinicio Teran Quilumba no leyó bien ', 'https://www.facebook.com/gaby.ordonez.3154?rc=p&__tn__=R', 37),
(61, 'Gaby Ordoñez', 'Jeff Begay no leyó bien', 'https://www.facebook.com/gaby.ordonez.3154?rc=p&__tn__=R', 38),
(62, 'Narcissa Moreira Velez', 'Diosito  ud tiene razón, amén 🙌😬', 'https://www.facebook.com/narcisa.moreiravelez?rc=p&__tn__=R', 39),
(63, 'Kevin Maigua', 'Diosito 😱👉🏻 https://m.youtube.com/watch?v=iiEw_8Z9asI', 'https://www.facebook.com/kevin.maigua.5?rc=p&__tn__=R', 39),
(64, 'Peluza SanMartin', 'Ruben T Chacon calla troll!', 'https://www.facebook.com/peluza.sanmartin?rc=p&__tn__=R', 41),
(65, 'David Alejandro', 'Ruben T Chacon No', 'https://www.facebook.com/profile.php?id=100054602988829&rc=p&__tn__=R', 41),
(66, 'Ruben T Chacon', 'David Alejandro ', 'https://www.facebook.com/ruben.tchacon.1?rc=p&__tn__=R', 41),
(67, 'Ruben T Chacon', 'David Alejandro ', 'https://www.facebook.com/ruben.tchacon.1?rc=p&__tn__=R', 41),
(68, 'Francisco Endara', 'Jose Lopez  si leíste muspa?', 'https://www.facebook.com/panchito.endarash?rc=p&__tn__=R', 42),
(69, 'Melba Mata de Higbee', 'Oliver Sandokan 😡', 'https://www.facebook.com/melba.higbee?rc=p&__tn__=R', 43),
(70, 'Xavier Cruz', 'Leonardo Zúñiga ', 'https://www.facebook.com/profile.php?id=100005900054905&rc=p&__tn__=R', 44),
(71, 'Leonardo Zúñiga', 'Xavier Cruz Preguntale a un correista...', 'https://www.facebook.com/leofernandzt?rc=p&__tn__=R', 44),
(72, 'Jenny Ordoñez', 'Teresa Leon ayudar a robar ', 'https://www.facebook.com/alexandra.ordonez.50?rc=p&__tn__=R', 45),
(73, 'Estefania Galarza', 'Ricardo Ochoa otro IGNORANTE, señor, a mi no me agrada lasso pero lo que hizo RAFAEL y su banda delincuencial con los ISAÍAS ES ILEGAL!!! En ninguna parte del mundo NO se da derecho a defensa, repito en ningún lugar. Las incautaciónes fueron ILEGALES y ahora nos tocó pagar a todos', 'https://www.facebook.com/estefania.galarza.98229?rc=p&__tn__=R', 46),
(74, 'Víctor Rodríguez', 'Ricardo Ochoa el presidente no interfiere en la justicia. Que Mameluco los haya convencido porque él metía mano y se creía juez cada sábado es otro cosa. Los presidentes en dictaduras son los que interfieren en la justicia ¡despabílate!', 'https://www.facebook.com/victorhugo.rodrigueztamayo?rc=p&__tn__=R', 46);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `id_publicacion` (`id_publicacion`);

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Indexes for table `publicacion`
--
ALTER TABLE `publicacion`
  ADD PRIMARY KEY (`id_publicacion`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Indexes for table `respuesta_comentarios`
--
ALTER TABLE `respuesta_comentarios`
  ADD PRIMARY KEY (`id_respuesta_comentarios`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `id_publicacion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `respuesta_comentarios`
--
ALTER TABLE `respuesta_comentarios`
  MODIFY `id_respuesta_comentarios` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `id_publicacion` FOREIGN KEY (`id_publicacion`) REFERENCES `publicacion` (`id_publicacion`);

--
-- Constraints for table `publicacion`
--
ALTER TABLE `publicacion`
  ADD CONSTRAINT `id_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
