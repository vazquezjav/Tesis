-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2021 at 04:22 AM
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
  `id_publicacion` int(10) NOT NULL,
  `sentimiento` varchar(250) NOT NULL DEFAULT 'Vacio',
  `num_topico` varchar(250) NOT NULL DEFAULT 'Vacio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comentarios`
--

INSERT INTO `comentarios` (`id_comentario`, `nombre_usuario`, `detalle_comentario`, `perfil_usuario_comentario`, `id_publicacion`, `sentimiento`, `num_topico`) VALUES
(3392, 'Christian Garcia', 'Un celular que por el precio realmente ofrece muchas características, recomendado para el uso diario básico ', 'https://www.facebook.com/christiano.garcia.56?rc=p&__tn__=R', 70, 'Negativo ', '1'),
(3393, 'Stalin Figueroa', 'El A70 luce una impresionante pantalla de 6.7 pulgadas; La pantalla es brillante con muy alto contraste y excelente definición. Tiene 128 GB de almacenamiento integrado, un procesador de 8 núcleos, 6 GB de RAM y puede usar una tarjeta micro SD para almacenamiento adicional.', 'https://www.facebook.com/stalinFigueroa15?rc=p&__tn__=R', 70, 'Positivo', '2'),
(3394, 'Stalin Figueroa', 'El teléfono tiene una batería que dura hasta 104 horas, y mi experiencia hasta ahora es que es increíblemente buena. La mayoría de los teléfonos con muy buena duración de la batería tienen entre 80 y 90 horas, por lo que este viene muy por encima de eso.', 'https://www.facebook.com/stalinFigueroa15?rc=p&__tn__=R', 70, 'Negativo ', '5'),
(3395, 'Stalin Figueroa', 'El A70 tiene reconocimiento facial y un lector de huellas dactilares en pantalla, y ambos funcionan a la perfección. Este teléfono es, con mucho, el mejor teléfono que he tenido. La gente cuestiona la cubierta de plástico frente a una cubierta de aluminio, pero, sinceramente, nunca lo sabrías si no te lo dijeran.', 'https://www.facebook.com/stalinFigueroa15?rc=p&__tn__=R', 70, 'Positivo', '4'),
(3396, 'Stalin Figueroa', 'Este teléfono no fue desbloqueado correctamente y no pude configurarlo para ponerlo en mi red. Después de aproximadamente 6 horas tratando de resolver el problema, me di por vencido. Xfinity era el operador anterior y me dijeron que no podían desbloquearlo porque no había una cuenta activa. Así que ten cuidado de que es un gran teléfono, pero si el vendedor no lo desbloquea correctamente, enfrentarás un problema muy grave.', 'https://www.facebook.com/stalinFigueroa15?rc=p&__tn__=R', 70, 'Negativo ', '3'),
(3397, 'Stalin Figueroa', 'El teléfono no abre el menú al desplazar para arriba. Los botones de apagado o reinicio no funcionan correctamente. Ni siquiera ha pasado una semana. El lector de huellas dactilares funcionó durante unos días, pero ahora no. Espero que el vendedor corrija esto rápidamente.', 'https://www.facebook.com/stalinFigueroa15?rc=p&__tn__=R', 70, 'Negativo ', '5'),
(3398, 'Javier Vazquez', 'lo recomiendo mucho, la fluidez me encanto mucho para correr las aplicaciones actuales, super buena y rapida', 'https://www.facebook.com/profile.php?id=100004902013812&rc=p&__tn__=R', 70, 'Positivo', '1'),
(3399, 'Ana Gómez Gom', 'Este teléfono tiene una buena cámara, carga rápida, buen almacenamiento ', 'https://www.facebook.com/ani.gomm2?rc=p&__tn__=R', 70, 'Negativo ', '5'),
(3400, 'Stalin Figueroa', 'He usado bastante el teléfono y estoy muy impresionado. Toma fotografías fabulosas. La duración de la batería también parece ser bastante precisa, pero eso depende de lo que esté haciendo.', 'https://www.facebook.com/stalinFigueroa15?rc=p&__tn__=R', 70, 'Positivo', '5'),
(3401, 'Alexander Ramirez', 'Buen celular con una muy buena cámara', 'https://www.facebook.com/alexramirez2908?rc=p&__tn__=R', 70, 'Positivo', '5'),
(3402, 'Ana Gómez Gom', 'Algunas aplicaciones que se instalan no funcionan a la perfección ', 'https://www.facebook.com/ani.gomm2?rc=p&refid=52&__tn__=R', 70, 'Positivo', '4'),
(3403, 'Ana Gómez Gom', 'toma fotografías excelentes', 'https://www.facebook.com/ani.gomm2?rc=p&refid=52&__tn__=R', 70, 'Negativo ', '5'),
(3404, 'John Henry', 'el teléfono es de mala calidad pero buen precio ', 'https://www.facebook.com/john.henry.96995238?rc=p&refid=52&__tn__=R', 70, 'Negativo ', '1'),
(3405, 'Javier Vazquez', 'tiene una muy buena bateria, me a durado todo un dia usandolo al maximo', 'https://www.facebook.com/profile.php?id=100004902013812&rc=p&refid=52&__tn__=R', 70, 'Positivo', '5'),
(3406, 'Javier Vazquez', 'no me gusto el reconocimiento de la huella digital, siempre tiene fallos no es su punto fuerte', 'https://www.facebook.com/profile.php?id=100004902013812&rc=p&refid=52&__tn__=R', 70, 'Positivo', '4'),
(3407, 'Ana Gómez Gom', 'Los juegos que se descarguen funcionan lento no sirve', 'https://www.facebook.com/ani.gomm2?rc=p&refid=52&__tn__=R', 70, 'Positivo', '3'),
(3408, 'Ana Gómez Gom', 'Aveces se cierran sola las aplicaciones y se traba mucho ', 'https://www.facebook.com/ani.gomm2?rc=p&refid=52&__tn__=R', 70, 'Positivo', '1'),
(3409, 'Xavieer Bbc', 'Celular malo, iPhone es mejor!', 'https://www.facebook.com/xavieer.bbc?rc=p&refid=52&__tn__=R', 70, 'Negativo ', '1'),
(3410, 'Ana Gómez Gom', 'Resistente a las caídas ', 'https://www.facebook.com/ani.gomm2?rc=p&refid=52&__tn__=R', 70, 'Positivo', '3'),
(3411, 'Alexander Ramirez', 'El Ram del celular es muy bueno ', 'https://www.facebook.com/alexramirez2908?rc=p&refid=52&__tn__=R', 70, 'Positivo', '2'),
(3412, 'Alexander Ramirez', 'no reconoce con facilidad la huella digital', 'https://www.facebook.com/alexramirez2908?rc=p&refid=52&__tn__=R', 70, 'Positivo', '4'),
(3413, 'Ana Gómez Gom', 'La batería dura muy poco', 'https://www.facebook.com/ani.gomm2?rc=p&refid=52&__tn__=R', 70, 'Positivo', '5'),
(3414, 'Olguita Jazmin', 'Buena cámara ', 'https://www.facebook.com/olguita.carangui.7?rc=p&refid=52&__tn__=R', 70, 'Positivo', '5'),
(3415, 'John Henry', 'Lindo ', 'https://www.facebook.com/john.henry.96995238?rc=p&refid=52&__tn__=R', 70, 'Positivo', '2'),
(3416, 'John Henry', 'Comprarás algo que valga ', 'https://www.facebook.com/john.henry.96995238?rc=p&refid=52&__tn__=R', 70, 'Negativo ', '2'),
(3417, 'Olguita Jazmin', 'Me gusga muy bueno ', 'https://www.facebook.com/olguita.carangui.7?rc=p&refid=52&__tn__=R', 70, 'Positivo', '2'),
(3418, 'John Henry', 'No me gustó ', 'https://www.facebook.com/john.henry.96995238?rc=p&refid=52&__tn__=R', 70, 'Positivo', '4'),
(3419, 'John Henry', 'Feo ', 'https://www.facebook.com/john.henry.96995238?rc=p&refid=52&__tn__=R', 70, 'Positivo', '3'),
(3420, 'Stalin Figueroa', 'Recomiendo mucho este producto. ¡Es fabuloso!', 'https://www.facebook.com/stalinFigueroa15?rc=p&refid=52&__tn__=R', 70, 'Positivo', '1'),
(3421, 'Olguita Jazmin', 'Tiene buena memoria ', 'https://www.facebook.com/olguita.carangui.7?rc=p&refid=52&__tn__=R', 70, 'Positivo', '5'),
(3422, 'Luis René Panjón', 'Existen mejores altenartivas que samsung.', 'https://www.facebook.com/luisrene199?rc=p&refid=52&__tn__=R', 70, 'Positivo', '4'),
(3423, 'Christian Garcia', 'Un celular que por el precio realmente ofrece muchas características, recomendado para el uso diario básico ', 'https://www.facebook.com/christiano.garcia.56?rc=p&__tn__=R', 71, 'Negativo ', '3'),
(3424, 'Stalin Figueroa', 'El A70 luce una impresionante pantalla de 6.7 pulgadas; La pantalla es brillante con muy alto contraste y excelente definición. Tiene 128 GB de almacenamiento integrado, un procesador de 8 núcleos, 6 GB de RAM y puede usar una tarjeta micro SD para almacenamiento adicional.', 'https://www.facebook.com/stalinFigueroa15?rc=p&__tn__=R', 71, 'Positivo', '1'),
(3425, 'Stalin Figueroa', 'El teléfono tiene una batería que dura hasta 104 horas, y mi experiencia hasta ahora es que es increíblemente buena. La mayoría de los teléfonos con muy buena duración de la batería tienen entre 80 y 90 horas, por lo que este viene muy por encima de eso.', 'https://www.facebook.com/stalinFigueroa15?rc=p&__tn__=R', 71, 'Negativo ', '1'),
(3426, 'Stalin Figueroa', 'El A70 tiene reconocimiento facial y un lector de huellas dactilares en pantalla, y ambos funcionan a la perfección. Este teléfono es, con mucho, el mejor teléfono que he tenido. La gente cuestiona la cubierta de plástico frente a una cubierta de aluminio, pero, sinceramente, nunca lo sabrías si no te lo dijeran.', 'https://www.facebook.com/stalinFigueroa15?rc=p&__tn__=R', 71, 'Positivo', '1'),
(3427, 'Stalin Figueroa', 'Este teléfono no fue desbloqueado correctamente y no pude configurarlo para ponerlo en mi red. Después de aproximadamente 6 horas tratando de resolver el problema, me di por vencido. Xfinity era el operador anterior y me dijeron que no podían desbloquearlo porque no había una cuenta activa. Así que ten cuidado de que es un gran teléfono, pero si el vendedor no lo desbloquea correctamente, enfrentarás un problema muy grave.', 'https://www.facebook.com/stalinFigueroa15?rc=p&__tn__=R', 71, 'Negativo ', '2'),
(3428, 'Stalin Figueroa', 'El teléfono no abre el menú al desplazar para arriba. Los botones de apagado o reinicio no funcionan correctamente. Ni siquiera ha pasado una semana. El lector de huellas dactilares funcionó durante unos días, pero ahora no. Espero que el vendedor corrija esto rápidamente.', 'https://www.facebook.com/stalinFigueroa15?rc=p&__tn__=R', 71, 'Negativo ', '2'),
(3429, 'Javier Vazquez', 'lo recomiendo mucho, la fluidez me encanto mucho para correr las aplicaciones actuales, super buena y rapida', 'https://www.facebook.com/profile.php?id=100004902013812&rc=p&__tn__=R', 71, 'Positivo', '3'),
(3430, 'Ana Gómez Gom', 'Este teléfono tiene una buena cámara, carga rápida, buen almacenamiento ', 'https://www.facebook.com/ani.gomm2?rc=p&__tn__=R', 71, 'Negativo ', '1'),
(3431, 'Stalin Figueroa', 'He usado bastante el teléfono y estoy muy impresionado. Toma fotografías fabulosas. La duración de la batería también parece ser bastante precisa, pero eso depende de lo que esté haciendo.', 'https://www.facebook.com/stalinFigueroa15?rc=p&__tn__=R', 71, 'Positivo', '3'),
(3432, 'Stalin Figueroa', 'Recomiendo mucho este producto. ¡Es fabuloso!', 'https://www.facebook.com/stalinFigueroa15?rc=p&__tn__=R', 71, 'Positivo', '3'),
(3433, 'Alexander Ramirez', 'Buen celular con una muy buena cámara', 'https://www.facebook.com/alexramirez2908?rc=p&refid=52&__tn__=R', 71, 'Positivo', '1'),
(3434, 'Ana Gómez Gom', 'Algunas aplicaciones que se instalan no funcionan a la perfección ', 'https://www.facebook.com/ani.gomm2?rc=p&refid=52&__tn__=R', 71, 'Positivo', '1'),
(3435, 'Ana Gómez Gom', 'toma fotografías excelentes', 'https://www.facebook.com/ani.gomm2?rc=p&refid=52&__tn__=R', 71, 'Negativo ', '3'),
(3436, 'John Henry', 'el teléfono es de mala calidad pero buen precio ', 'https://www.facebook.com/john.henry.96995238?rc=p&refid=52&__tn__=R', 71, 'Negativo ', '3'),
(3437, 'Javier Vazquez', 'tiene una muy buena bateria, me a durado todo un dia usandolo al maximo', 'https://www.facebook.com/profile.php?id=100004902013812&rc=p&refid=52&__tn__=R', 71, 'Positivo', '1'),
(3438, 'Javier Vazquez', 'no me gusto el reconocimiento de la huella digital, siempre tiene fallos no es su punto fuerte', 'https://www.facebook.com/profile.php?id=100004902013812&rc=p&refid=52&__tn__=R', 71, 'Positivo', '2'),
(3439, 'Ana Gómez Gom', 'Los juegos que se descarguen funcionan lento no sirve', 'https://www.facebook.com/ani.gomm2?rc=p&refid=52&__tn__=R', 71, 'Positivo', '2'),
(3440, 'Ana Gómez Gom', 'Aveces se cierran sola las aplicaciones y se traba mucho ', 'https://www.facebook.com/ani.gomm2?rc=p&refid=52&__tn__=R', 71, 'Positivo', '3'),
(3441, 'Xavieer Bbc', 'Celular malo, iPhone es mejor!', 'https://www.facebook.com/xavieer.bbc?rc=p&refid=52&__tn__=R', 71, 'Negativo ', '3'),
(3442, 'Ana Gómez Gom', 'Resistente a las caídas ', 'https://www.facebook.com/ani.gomm2?rc=p&refid=52&__tn__=R', 71, 'Positivo', '2'),
(3443, 'Alexander Ramirez', 'El Ram del celular es muy bueno ', 'https://www.facebook.com/alexramirez2908?rc=p&refid=52&__tn__=R', 71, 'Positivo', '3'),
(3444, 'Ana Gómez Gom', 'La batería dura muy poco', 'https://www.facebook.com/ani.gomm2?rc=p&refid=52&__tn__=R', 71, 'Positivo', '1'),
(3445, 'Olguita Jazmin', 'Buena cámara ', 'https://www.facebook.com/olguita.carangui.7?rc=p&refid=52&__tn__=R', 71, 'Positivo', '1'),
(3446, 'John Henry', 'Lindo ', 'https://www.facebook.com/john.henry.96995238?rc=p&refid=52&__tn__=R', 71, 'Positivo', '2'),
(3447, 'John Henry', 'Comprarás algo que valga ', 'https://www.facebook.com/john.henry.96995238?rc=p&refid=52&__tn__=R', 71, 'Negativo ', '2'),
(3448, 'Olguita Jazmin', 'Me gusga muy bueno ', 'https://www.facebook.com/olguita.carangui.7?rc=p&refid=52&__tn__=R', 71, 'Positivo', '3'),
(3449, 'John Henry', 'No me gustó ', 'https://www.facebook.com/john.henry.96995238?rc=p&refid=52&__tn__=R', 71, 'Positivo', '2'),
(3450, 'John Henry', 'Feo ', 'https://www.facebook.com/john.henry.96995238?rc=p&refid=52&__tn__=R', 71, 'Positivo', '2'),
(3451, 'Alexander Ramirez', 'no reconoce con facilidad la huella digital', 'https://www.facebook.com/alexramirez2908?rc=p&refid=52&__tn__=R', 71, 'Positivo', '2'),
(3452, 'Olguita Jazmin', 'Tiene buena memoria ', 'https://www.facebook.com/olguita.carangui.7?rc=p&refid=52&__tn__=R', 71, 'Positivo', '1'),
(3453, 'Luis René Panjón', 'Existen mejores altenartivas que samsung.', 'https://www.facebook.com/luisrene199?rc=p&refid=52&__tn__=R', 71, 'Positivo', '1'),
(3454, 'Geovanny Vega Alarcon', 'Cena se parece a Jim Carrey 😁', 'https://www.facebook.com/geovanny.vega.184881?rc=p&__tn__=R', 78, 'Negativo ', '3'),
(3455, '2 others', 'Sebastián te dije que alguien se me hacía conocido 🙄😂❤️', 'https://www.facebook.com/browse/users/?ids=100007382085993%2C100050634069711&refid=52&__tn__=C-R', 78, 'Negativo ', '4'),
(3456, 'Alex Cross', 'Rafael Guerrero Borja', 'https://www.facebook.com/profile.php?id=100004408838472&refid=52&__tn__=C-R', 78, 'Positivo', '1'),
(3457, 'Jeremy Catota', 'Mateo Arguello Mathew Wells', 'https://www.facebook.com/JeremyJ0ssue?rc=p&refid=52&__tn__=R', 78, 'Positivo', '4'),
(3458, 'Fernanda Velastegui', 'Felix Macias 😮', 'https://www.facebook.com/fernanda.velastegui.14?rc=p&refid=52&__tn__=R', 78, 'Positivo', '3'),
(3459, 'Alex Cross', 'Jhordan Mejia Matute jajajajaja ', 'https://www.facebook.com/profile.php?id=100004408838472&refid=52&__tn__=C-R', 78, 'Positivo', '2'),
(3460, 'Tati Cuji', 'Viviana Vinces jajajhahaha', 'https://www.facebook.com/tatis.cuji?rc=p&refid=52&__tn__=R', 78, 'Positivo', '2'),
(3461, 'Micaela Guzmán Vega', 'Barbi Gómez ', 'https://www.facebook.com/micaela.guzmanvega?rc=p&refid=52&__tn__=R', 78, 'Positivo', '2'),
(3462, 'Jhon Guamán', 'Dylan Israel ', 'https://www.facebook.com/jhon.gu07?rc=p&refid=52&__tn__=R', 78, 'Positivo', '1'),
(3463, 'Anabel Moreno', 'Cesar Mendoza Bryan Vera Oscar Cardenas Carlos Muñoz jajajaja', 'https://www.facebook.com/anabelita.moreno.3?rc=p&refid=52&__tn__=R', 78, 'Negativo ', '1'),
(3464, 'Brandom Orellana', 'Wilson Yánez jajajajajaajjaja ', 'https://www.facebook.com/brandom.orellana.56?rc=p&refid=52&__tn__=R', 78, 'Positivo', '2'),
(3465, 'Cristian Bernal', 'Christian Ignacio Yerovi Alvarez Jajajaja ', 'https://www.facebook.com/cristian.bernal.716?rc=p&refid=52&__tn__=R', 78, 'Negativo ', '1'),
(3466, 'Julian Soria', 'Christian Imbaquingo ', 'https://www.facebook.com/julianljst.soria?rc=p&refid=52&__tn__=R', 78, 'Negativo ', '3'),
(3467, 'Edgar Carranza', 'Nico Mejía', 'https://www.facebook.com/edgarcarranzatapia?rc=p&refid=52&__tn__=R', 78, 'Negativo ', '2'),
(3468, 'Diego Aguilar', 'Con razón tiene plata para devolver con lo que le pagaron de la última Peli.. grande don Naza', 'https://www.facebook.com/lecroket?rc=p&__tn__=R', 78, 'Positivo', '2'),
(3469, 'Demian Abrigo', 'Están financiando su película xD', 'https://www.facebook.com/tom.lucitor.9231?rc=p&__tn__=R', 78, 'Positivo', '3'),
(3470, 'Jefferson Solórzano', 'Ya sabemos por lo menos de donde saca el billete ', 'https://www.facebook.com/Thejeffsolorzano?rc=p&__tn__=R', 78, 'Negativo ', '3'),
(3471, 'Victor', 'Creí que la reunión de don naza y caterva era solo entre los dos 😐', 'https://www.facebook.com/chambiras?rc=p&__tn__=R', 78, 'Negativo ', '2'),
(3472, 'Rafael Ito', 'Al fin Don Naza le dio la entrevista a Caterva', 'https://www.facebook.com/RFLitoo?rc=p&__tn__=R', 78, 'Positivo', '2'),
(3473, 'Jhonathan Morocho', 'Jajajjaj niii con eso... les llega alos manes...jajja', 'https://www.facebook.com/jonathan.morocho.92?rc=p&__tn__=R', 78, 'Positivo', '3'),
(3474, 'Everson Tuarez', 'Nooooo 😔👌', 'https://www.facebook.com/everson.tuarez.5?rc=p&__tn__=R', 78, 'Negativo ', '4'),
(3475, 'Miguel Alvarado', 'El dinero en Big Money va y viene, pero lo más importante Es la Familia', 'https://www.facebook.com/profile.php?id=100013752705834&rc=p&__tn__=R', 78, 'Positivo', '4'),
(3476, 'Alexander Castro', 'la familia primero', 'https://www.facebook.com/profile.php?id=100054206777839&rc=p&__tn__=R', 78, 'Positivo', '4'),
(3477, 'Alex Cross', 'Por eso es que el man frentea en todos lados.... 😳😮😁', 'https://www.facebook.com/profile.php?id=100004408838472&refid=52&__tn__=C-R', 78, 'Positivo', '4'),
(3478, '2 others', 'Y eso en que afecta al campeón del pueblo Black Adam?', 'https://www.facebook.com/browse/users/?ids=100007382085993%2C100050634069711&refid=52&__tn__=C-R', 78, 'Positivo', '4'),
(3479, 'John Rodriguez Jordan', 'aaaaaaa ya se enteraron y están invirtiendo las ganancias de la película', 'https://www.facebook.com/johnrodriguezjordan?rc=p&refid=52&__tn__=R', 78, 'Positivo', '3'),
(3480, 'Roberto Andrade', 'LIsto', 'https://www.facebook.com/profile.php?id=100004962482304&rc=p&refid=52&__tn__=R', 78, 'Positivo', '1'),
(3481, 'Bryan Calderon', 'Ai falta el mejor Paul walker', 'https://www.facebook.com/bryan.calderon.1048?rc=p&refid=52&__tn__=R', 78, 'Positivo', '1'),
(3482, 'Pedro Andrade', 'Jaaa😂😂😅😅 ahora cualquier negro es \"Don Naza\" jaaa', 'https://www.facebook.com/pedro.andradegonzalez1?rc=p&refid=52&__tn__=R', 78, 'Positivo', '2'),
(3483, 'Victor Garcia', 'Entre Ricos ', 'https://www.facebook.com/victor.garcia.54390?rc=p&refid=52&__tn__=R', 78, 'Positivo', '1'),
(3484, 'Diego Kaio', 'Realizando grandes inversiones jajaja', 'https://www.facebook.com/diego.jimpikitkuja?rc=p&refid=52&__tn__=R', 78, 'Positivo', '2'),
(3485, 'Edwin Lojano', 'Melissa Mestanzav Valeria Navarro', 'https://www.facebook.com/edwin.lojano.18?rc=p&refid=52&__tn__=R', 78, 'Positivo', '1'),
(3486, 'Juan Carlos VR', 'la familia ante todo :v ', 'https://www.facebook.com/juancarlos.vr.5?rc=p&refid=52&__tn__=R', 78, 'Positivo', '4'),
(3487, 'Alex Cross', 'Marcos Daniel Mejia', 'https://www.facebook.com/profile.php?id=100004408838472&refid=52&__tn__=C-R', 78, 'Positivo', '2'),
(3488, 'Josue Cabrera', 'Juan Jose Alvarez', 'https://www.facebook.com/josue.cabreraespinoza?rc=p&refid=52&__tn__=R', 78, 'Positivo', '1'),
(3489, 'Samantha Guaman Ortiz', 'Toda una familia jaja ', 'https://www.facebook.com/sam11040?rc=p&refid=52&__tn__=R', 78, 'Negativo ', '4'),
(3490, 'Martin Garces', 'Davor JAJAJAJAJAJAJA ', 'https://www.facebook.com/martin.garces.73?rc=p&refid=52&__tn__=R', 78, 'Positivo', '4'),
(3491, 'B Boy Bryan', 'Carlos Burneo', 'https://www.facebook.com/bryan.cevallos.7773?rc=p&refid=52&__tn__=R', 78, 'Negativo ', '1'),
(3492, 'María Cristina Ruales', 'Gustavo Villavicencio Francisco Machado', 'https://www.facebook.com/mariacristina.ruales012?rc=p&refid=52&__tn__=R', 78, 'Positivo', '3'),
(3493, 'Dennis Toscano', 'Sebas Barros', 'https://www.facebook.com/dennis.toscano?rc=p&refid=52&__tn__=R', 78, 'Negativo ', '3'),
(3494, 'Jose Villavicencio', 'Dylan Nuñez esto se va a salir de control JAJAJAJ ', 'https://www.facebook.com/jose.villavicencio.52?rc=p&refid=52&__tn__=R', 78, 'Positivo', '4'),
(3495, 'Jose Villavicencio', 'Orlando Jarrín ', 'https://www.facebook.com/jose.villavicencio.52?rc=p&refid=52&__tn__=R', 78, 'Positivo', '2'),
(3496, '2 others', 'Boris Borbor', 'https://www.facebook.com/browse/users/?ids=100007382085993%2C100050634069711&refid=52&__tn__=C-R', 78, 'Positivo', '3'),
(3497, 'María José Maldonado', 'Joan Pilaguano JAJA.', 'https://www.facebook.com/mariajose.maldonado.94402?rc=p&refid=52&__tn__=R', 78, 'Positivo', '4'),
(3498, 'Noelia Zambrano', 'Tamara Rosales Siguencia', 'https://www.facebook.com/profile.php?id=100004849119785&rc=p&refid=52&__tn__=R', 78, 'Negativo ', '1'),
(3499, 'Henry Ramirez', 'Mateo Valle Diego Hidalgo', 'https://www.facebook.com/HenryRamirez22?rc=p&refid=52&__tn__=R', 78, 'Positivo', '4'),
(3500, 'Mateo Vega', 'Kassandra Andrade jajjjjajjj', 'https://www.facebook.com/mateo.vega.54?rc=p&refid=52&__tn__=R', 78, 'Positivo', '2'),
(3501, 'Aleks Pacheco', 'Te la rifastes hp buen meme te admiro crak', 'https://www.facebook.com/d.aleksp?rc=p&refid=52&__tn__=R', 78, 'Positivo', '2'),
(3502, 'Steven Macias', 'Grande Don Naza,convenció a Toreto y a John Cena para invertir a futuro #PorLaFamilia ', 'https://www.facebook.com/maciasteven?rc=p&refid=52&__tn__=R', 78, 'Positivo', '3'),
(3503, 'Alex Cross', 'Me robaste la foto y con descripción 😮 ', 'https://www.facebook.com/profile.php?id=100004408838472&refid=52&__tn__=C-R', 78, 'Positivo', '2'),
(3504, '2 others', 'Don Naza y los dos accionistas de Big Money', 'https://www.facebook.com/browse/users/?ids=100007382085993%2C100050634069711&refid=52&__tn__=C-R', 78, 'Positivo', '2'),
(3505, 'El NoBelero', 'Aquí está su plata vacilando con vin disel y jhon cena', 'https://www.facebook.com/ElNoBelero/?rc=p&refid=52&__tn__=R', 78, 'Positivo', '3'),
(3506, 'Jose Alava', 'Aquí invirtiendo para el futuro de LA FAMILIA', 'https://www.facebook.com/joseluis.alavacedeno.1?rc=p&refid=52&__tn__=R', 78, 'Positivo', '3'),
(3507, 'William Paredes', 'David Fuerez don naza', 'https://www.facebook.com/sedrap.wg?rc=p&refid=52&__tn__=R', 78, 'Positivo', '2'),
(3508, 'Erik Naula', 'David Almeida 😳😳😳😳 Don Naza 🥵', 'https://www.facebook.com/erik.naula?rc=p&refid=52&__tn__=R', 78, 'Positivo', '2'),
(3509, 'Luis Fuel', 'Bella FAMILIA.', 'https://www.facebook.com/luis.fuel.391?rc=p&refid=52&__tn__=R', 78, 'Positivo', '4'),
(3510, '2 others', 'Juanmar Barragan ', 'https://www.facebook.com/browse/users/?ids=100007382085993%2C100050634069711&refid=52&__tn__=C-R', 78, 'Positivo', '1'),
(3511, 'Taty Garcia', 'Jhony Guamán jajsjajajja', 'https://www.facebook.com/profile.php?id=100011251330712&rc=p&refid=52&__tn__=R', 78, 'Positivo', '1'),
(3512, 'Andres Gutierrez', 'Todos en Quevedo...', 'https://www.facebook.com/andreseduardo.gutierrezmontero?rc=p&refid=52&__tn__=R', 78, 'Positivo', '1'),
(3513, 'Isaak Diego', 'Ya los bolsiqueo a esos COJUDOS TAMBIÉN 🤣🤣🤣🤣', 'https://www.facebook.com/DiegoIsaak1984?rc=p&refid=52&__tn__=R', 78, 'Positivo', '1'),
(3514, 'César Stephan', 'Mauro Israel Urrutia JAJAJAJAJAJAJAJAJAJAJJAJAJAJAJAJAJAJAJAJJAJAJAJAJAJAJAJ', 'https://www.facebook.com/cesar.stephan?rc=p&refid=52&__tn__=R', 78, 'Positivo', '1'),
(3515, 'John Marcos Salvatierra', 'Diego Erazo Ricardo Estrella Josué Coronel', 'https://www.facebook.com/marcos.castro.9699?rc=p&refid=52&__tn__=R', 78, 'Positivo', '4'),
(3516, 'Alex Cross', 'Esteban Mise Mosquera 😂', 'https://www.facebook.com/profile.php?id=100004408838472&refid=52&__tn__=C-R', 78, 'Positivo', '3'),
(3517, '2 others', 'Leonardo Viteri', 'https://www.facebook.com/browse/users/?ids=100007382085993%2C100050634069711&refid=52&__tn__=C-R', 78, 'Positivo', '3'),
(3518, 'Milena Ruiz', 'Paul Totoy Montero ', 'https://www.facebook.com/profile.php?id=100009482263393&rc=p&refid=52&__tn__=R', 78, 'Positivo', '1'),
(3519, 'Steeven Osorio', 'Ronaldo Jácome Cevallos ', 'https://www.facebook.com/profile.php?id=100010490828605&rc=p&refid=52&__tn__=R', 78, 'Positivo', '4'),
(3520, 'Henry Ayala', 'José Julián ', 'https://www.facebook.com/henry.ayalaortiz?rc=p&refid=52&__tn__=R', 78, 'Positivo', '2'),
(3521, 'John Rodríguez', 'Luis Diego Carlos big money 🥵🥵🥵', 'https://www.facebook.com/profile.php?id=100006158438448&rc=p&refid=52&__tn__=R', 78, 'Positivo', '4'),
(3522, 'Alex Cross', 'Hover Sarango ', 'https://www.facebook.com/profile.php?id=100004408838472&refid=52&__tn__=C-R', 78, 'Negativo ', '3'),
(3523, '2 others', 'Johan Carrión ', 'https://www.facebook.com/browse/users/?ids=100007382085993%2C100050634069711&refid=52&__tn__=C-R', 78, 'Positivo', '3'),
(3524, 'Brandon Rivera Guamán', 'La familia', 'https://www.facebook.com/brandon.riveraguaman?rc=p&refid=52&__tn__=R', 78, 'Positivo', '4'),
(3525, 'Brandon Rivera Guamán', 'Nicholas Sarmiento', 'https://www.facebook.com/brandon.riveraguaman?rc=p&refid=52&__tn__=R', 78, 'Negativo ', '3'),
(3526, 'Gabucho Moreira Cse', 'David Flores xdxd ', 'https://www.facebook.com/profile.php?id=100005198104923&rc=p&refid=52&__tn__=R', 78, 'Positivo', '2'),
(3527, 'Diego Cornejo', 'Sammyr ', 'https://www.facebook.com/diego.cornejo.710?rc=p&refid=52&__tn__=R', 78, 'Negativo ', '2'),
(3528, 'Fernando Gualotuña', 'Kevin Granada ', 'https://www.facebook.com/Ferxxo96?rc=p&refid=52&__tn__=R', 78, 'Positivo', '1'),
(3529, 'Nicole Micaela Cedeño Gines', 'Edison Eduardo Escobar', 'https://www.facebook.com/NicoleMicaelaCG?rc=p&refid=52&__tn__=R', 78, 'Positivo', '3'),
(3530, 'Mell Méndez Álvarez', 'Jjajaja', 'https://www.facebook.com/mela.mendez.9?rc=p&refid=52&__tn__=R', 78, 'Positivo', '1'),
(3531, 'Kevin Vaca', 'Al menos da créditos al dueño del meme ladrón', 'https://www.facebook.com/kevin.vaca.902?rc=p&refid=52&__tn__=R', 78, 'Positivo', '3'),
(3532, 'Alex Cross', 'Joan Vera ', 'https://www.facebook.com/profile.php?id=100004408838472&refid=52&__tn__=C-R', 78, 'Positivo', '4'),
(3533, '2 others', 'Eli Delgado ', 'https://www.facebook.com/browse/users/?ids=100007382085993%2C100050634069711&refid=52&__tn__=C-R', 78, 'Positivo', '3'),
(3534, 'Viictor Pita', 'Diego Iván Rojas Rodríguez', 'https://www.facebook.com/victor.mauriiciio?rc=p&refid=52&__tn__=R', 78, 'Positivo', '4'),
(3535, 'León John', 'Jennifer Saraguro ', 'https://www.facebook.com/profile.php?id=100015555859333&rc=p&refid=52&__tn__=R', 78, 'Positivo', '1'),
(3536, 'Andrés Suárez', 'Seguro que necesitan financiamiento para fast furious 10', 'https://www.facebook.com/andres.suarez.39?rc=p&refid=52&__tn__=R', 78, 'Negativo ', '1'),
(3537, 'Kalin Monge', 'V3rg2', 'https://www.facebook.com/kalin.monge?rc=p&refid=52&__tn__=R', 78, 'Positivo', '1'),
(3538, 'Carlos Briones', 'Jonnathan Rafael jajajaja jajajaja ', 'https://www.facebook.com/brionestoaza?rc=p&refid=52&__tn__=R', 78, 'Positivo', '1'),
(3539, 'Néstor Ramiro Guanochanga', 'Emiliano Carvajal ', 'https://www.facebook.com/nestorramiro.guanochangapilicita?rc=p&refid=52&__tn__=R', 78, 'Positivo', '2'),
(3540, 'Julio Carrión', 'Jajajaj Glenn Garcés García', 'https://www.facebook.com/juliokrrion?rc=p&refid=52&__tn__=R', 78, 'Positivo', '4'),
(3541, 'Alex Cross', 'Big money  Big family', 'https://www.facebook.com/profile.php?id=100004408838472&refid=52&__tn__=C-R', 78, 'Positivo', '4');

-- --------------------------------------------------------

--
-- Table structure for table `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` int(10) NOT NULL,
  `nombre_empresa` varchar(500) NOT NULL,
  `direccion_empresa` varchar(500) NOT NULL,
  `page_facebook` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `rol` varchar(500) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `nombre_empresa`, `direccion_empresa`, `page_facebook`, `email`, `password`, `rol`) VALUES
(1000, 'Supermaxi', 'El vecino', 'Supermaxi Facebook', 'super@hotmail.com', '123456', 'user');

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
  `id_usuario` int(10) NOT NULL,
  `path_pyldavis` varchar(500) NOT NULL DEFAULT 'Vacio',
  `path_ldatopics` varchar(500) NOT NULL DEFAULT 'Vacio',
  `rating` int(10) NOT NULL DEFAULT 0,
  `imagen_publicacion` varchar(1000) NOT NULL,
  `path_tsne` varchar(1000) NOT NULL DEFAULT 'Vacio',
  `num_comentarios` int(10) NOT NULL DEFAULT 0,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publicacion`
--

INSERT INTO `publicacion` (`id_publicacion`, `id_facebook`, `nombre_publicacion`, `url_publicacion`, `alegra`, `asombra`, `encanta`, `entristese`, `importa`, `gusta`, `enoja`, `id_usuario`, `path_pyldavis`, `path_ldatopics`, `rating`, `imagen_publicacion`, `path_tsne`, `num_comentarios`, `fecha`) VALUES
(70, '126541382901680', 'Comercial Javazq - Samsung galaxi a70 | Facebook', 'https://www.facebook.com/126541382901680', 0, 0, 0, 0, 0, 3, 0, 10, 'http://localhost/tesis/pyLDAvis\\lda_70.html', 'http://localhost/tesis/imagenTopics\\topics_5_70.png', 2, 'https://scontent.fuio21-1.fna.fbcdn.net/v/t1.6435-0/p320x320/198389936_126541386235013_1638897890195908320_n.png?_nc_cat=102&ccb=1-3&_nc_sid=8024bb&efg=eyJpIjoiYiJ9&_nc_ohc=LxvvQ1Ela3sAX_XuPYG&_nc_ht=scontent.fuio21-1.fna&tp=30&oh=dbf0cbbffad6b7d6ed92da5b438f7b66&oe=60EA013A', 'http://localhost/tesis/TSNE_iteractivo\\tsne_70.html', 31, '2021-07-07'),
(71, '126541382901680', 'Comercial Javazq - Samsung galaxi a70 | Facebook', 'https://www.facebook.com/126541382901680', 0, 0, 0, 0, 0, 3, 0, 10, 'http://localhost/tesis/pyLDAvis\\lda_71.html', 'http://localhost/tesis/imagenTopics\\topics_3_71.png', 4, 'https://scontent.fuio21-1.fna.fbcdn.net/v/t1.6435-0/p320x320/198389936_126541386235013_1638897890195908320_n.png?_nc_cat=102&ccb=1-3&_nc_sid=8024bb&efg=eyJpIjoiYiJ9&_nc_ohc=LxvvQ1Ela3sAX_XuPYG&_nc_ht=scontent.fuio21-1.fna&tp=30&oh=dbf0cbbffad6b7d6ed92da5b438f7b66&oe=60EA013A', 'http://localhost/tesis/TSNE_iteractivo\\tsne_71.html', 31, '2021-07-07'),
(78, '1888131188020485', 'Ecuador hasta las huevas Play - John Cena y Vin Diesel con Don Naza | Facebook', 'https://www.facebook.com/1888131188020485', 5, 18, 28, 2, 15, 890, 0, 10, 'http://localhost/tesis/pyLDAvis\\lda_78.html', 'http://localhost/tesis/imagenTopics\\topics_4_78.png', 5, 'https://scontent.fuio21-1.fna.fbcdn.net/v/t1.6435-0/cp0/e15/q65/p320x320/209955953_1888131194687151_664553658461806163_n.jpg?_nc_cat=1&ccb=1-3&_nc_sid=110474&efg=eyJpIjoiYiJ9&_nc_ohc=QrqRfp9zoYYAX9NrQMn&_nc_ht=scontent.fuio21-1.fna&tp=3&oh=fdb351950d943a376044dd1fec6ea761&oe=60EA539D', 'http://localhost/tesis/TSNE_iteractivo\\tsne_78.html', 105, '2021-07-07');

-- --------------------------------------------------------

--
-- Table structure for table `respuesta_comentarios`
--

CREATE TABLE `respuesta_comentarios` (
  `id_respuesta_comentarios` int(10) NOT NULL,
  `nombre_usuario` varchar(500) NOT NULL,
  `detalle_respuesta` varchar(1000) NOT NULL,
  `perfil_usuario_respuesta` varchar(500) NOT NULL,
  `sentimiento` varchar(500) NOT NULL DEFAULT 'Vacio',
  `id_comentario` int(10) NOT NULL,
  `num_topico` varchar(250) NOT NULL DEFAULT 'Vacio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `respuesta_comentarios`
--

INSERT INTO `respuesta_comentarios` (`id_respuesta_comentarios`, `nombre_usuario`, `detalle_respuesta`, `perfil_usuario_respuesta`, `sentimiento`, `id_comentario`, `num_topico`) VALUES
(1, 'Jostin Avila', 'Geovanny Vega Alarcon jaja si', 'https://www.facebook.com/profile.php?id=100012741991632&rc=p&__tn__=R', 'Positivo', 3454, '4'),
(2, 'Sebastián Hurtado', 'Samantha que versos 🤣🤣🤣🤣🤣😂😂♥️♥️ si es ', 'https://www.facebook.com/18188sebastian.hurtado?rc=p&__tn__=R', 'Negativo ', 3455, '2'),
(3, 'Rafael Guerrero Borja', 'María José Maldonado SIES', 'https://www.facebook.com/profile.php?id=100003785716314&rc=p&__tn__=R', 'Positivo', 3456, '2'),
(4, 'Mateo Arguello', 'Mateo Vega que buena ', 'https://www.facebook.com/mateo.arguello.90?rc=p&__tn__=R', 'Positivo', 3457, '4'),
(5, 'Felix Macias', 'Steven Macias agarralo a ese hptaaaa', 'https://www.facebook.com/felix.macias.3745?rc=p&__tn__=R', 'Negativo ', 3458, '3'),
(6, 'Jhordan Mejia Matute', 'Tati Cuji jajajajaja ese don Naza la anda rompiendo ahora a lo Internacional jajajaja', 'https://www.facebook.com/cholis87?rc=p&__tn__=R', 'Negativo ', 3459, '2'),
(7, 'Tati Cuji', 'Jhordan Mejia Matute ahí si se pone hasta dientes de oro jajaja', 'https://www.facebook.com/tatis.cuji?rc=p&__tn__=R', 'Positivo', 3459, '2'),
(8, 'Viviana Vinces', 'Taty Garcia jajajajajaja ', 'https://www.facebook.com/viviana.vincesnavarrete?rc=p&__tn__=R', 'Negativo ', 3460, '4'),
(9, 'Barbi Gómez', 'Andres Gutierrez todo queda en familia ', 'https://www.facebook.com/ItsBarbaraGG?rc=p&__tn__=R', 'Positivo', 3461, '4'),
(10, 'Dylan Israel', 'César Stephan Se fue alv', 'https://www.facebook.com/dylan.Israel99?rc=p&__tn__=R', 'Negativo ', 3462, '3'),
(11, 'Cesar Mendoza', 'Cristian Bernal  abajajaajajajajajajajaja', 'https://www.facebook.com/profile.php?id=100009942339821&rc=p&__tn__=R', 'Negativo ', 3463, '3'),
(12, 'Wilson Yánez', 'Milena Ruiz jajajaja ', 'https://www.facebook.com/wilson.yanez.777?rc=p&__tn__=R', 'Positivo', 3464, '1'),
(13, 'Christian Ignacio Yerovi Alvarez', 'Julian Soria si publique el mismo jajajaja', 'https://www.facebook.com/cnyerovi?rc=p&__tn__=R', 'Positivo', 3465, '2'),
(14, 'Julian Soria', 'Christian Ignacio Yerovi Alvarez  Jajajaja dondee', 'https://www.facebook.com/julianljst.soria?rc=p&__tn__=R', 'Negativo ', 3465, '1'),
(15, 'Christian Imbaquingo', 'Henry Ayala que tal te fue ese día?', 'https://www.facebook.com/christian.imbaquingo.16?rc=p&__tn__=R', 'Negativo ', 3466, '3'),
(16, 'Henry Ayala', 'Christian Imbaquingo bien el Vin un goce jajaj', 'https://www.facebook.com/henry.ayalaortiz?rc=p&__tn__=R', 'Negativo ', 3466, '3'),
(17, 'Nico Mejía', 'Miguel Angel Reyes jajajaja ', 'https://www.facebook.com/nico.mejiaC?rc=p&__tn__=R', 'Positivo', 3467, '1');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(10) NOT NULL,
  `nombre_usuario` varchar(500) NOT NULL,
  `direccion_usuario` varchar(2500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `rol` varchar(500) NOT NULL DEFAULT 'user',
  `estado` varchar(250) NOT NULL DEFAULT 'Habilitado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre_usuario`, `direccion_usuario`, `email`, `password`, `rol`, `estado`) VALUES
(10, 'Eduardo Javier Vazquez Arias', 'casique duma y calle del retorno', 'javier@hotmail.com', '123456', 'user', 'Habilitado'),
(13, 'Javier Vazquez', 'mendez 2 ', 'javier2@hotmail.com', '123456', 'user', 'Habilitado'),
(16, 'Javier Admin', 'admin', 'admin@hotmail.com', 'admin', 'admin', 'Habilitado'),
(17, 'Segunda pruebas', 'cuenca', 'fepo', 'fe', 'user', 'Habilitado'),
(27, 'Jav', 'jav', 'jav', 'jav', 'user', 'Habilitado');

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
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `respuesta_comentarios`
--
ALTER TABLE `respuesta_comentarios`
  ADD PRIMARY KEY (`id_respuesta_comentarios`),
  ADD KEY `id_comentario` (`id_comentario`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3542;

--
-- AUTO_INCREMENT for table `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `id_publicacion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `respuesta_comentarios`
--
ALTER TABLE `respuesta_comentarios`
  MODIFY `id_respuesta_comentarios` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

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
  ADD CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Constraints for table `respuesta_comentarios`
--
ALTER TABLE `respuesta_comentarios`
  ADD CONSTRAINT `id_comentario` FOREIGN KEY (`id_comentario`) REFERENCES `comentarios` (`id_comentario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
