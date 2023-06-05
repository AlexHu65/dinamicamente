-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-04-2020 a las 23:39:47
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dinamicamente`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenido` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bullet` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_mobile` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT current_timestamp(),
  `autor` int(11) DEFAULT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `programacion` timestamp NULL DEFAULT NULL,
  `vistas` int(11) DEFAULT 0,
  `id_seccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `id_categoria`, `titulo`, `contenido`, `bullet`, `img`, `img_mobile`, `fecha`, `autor`, `slug`, `activo`, `created_at`, `updated_at`, `deleted_at`, `programacion`, `vistas`, `id_seccion`) VALUES
(10, 3, 'Tipos de violencia', '<p>De acuerdo a la definici&oacute;n de Violencia hacia las mujeres, entenderemos cada tipo de violencia como cualquier acci&oacute;n u omisi&oacute;n expresado de las siguientes maneras:</p>\r\n<p><strong>Violencia psicol&oacute;gica.- </strong>da&ntilde;a la estabilidad psicol&oacute;gica que puede consistir en: negligencia, abandono, descuido reiterado, celotipia, insultos, humillaciones, devaluaci&oacute;n, marginaci&oacute;n, indiferencia, infidelidad, comparaciones destructivas, rechazo, restricci&oacute;n a la autodeterminaci&oacute;n y amenazas, las cuales conllevan a la persona que ha vivido violencia a la depresi&oacute;n, al aislamiento, a la devaluaci&oacute;n de su autoestima e incluso al suicidio.</p>\r\n<p><strong>Violencia f&iacute;sica.-</strong> cualquier da&ntilde;o no accidental usando la fuerza f&iacute;sica o alg&uacute;n tipo de arma u objeto que pueda provocar o no, lesiones, ya sean internas, externas o incluso la muerte.</p>\r\n<p><strong>Violencia econ&oacute;mica.-</strong> afecta la supervivencia econ&oacute;mica de la persona que est&aacute; recibiendo violencia, se manifiesta a trav&eacute;s de limitaciones encaminadas a controlar el ingreso de sus percepciones econ&oacute;micas as&iacute; como la percepci&oacute;n de un salario menor por igual trabajo, dentro de un mismo centro laboral.</p>\r\n<p><strong>Violencia patrimonial.-</strong> se manifiesta en la transformaci&oacute;n, sustracci&oacute;n, destrucci&oacute;n, retenci&oacute;n o distracci&oacute;n de objetos, documentos personales, bienes y valores, derechos patrimoniales o recursos econ&oacute;micos, destinados a satisfacer sus necesidades y puede abarcar los da&ntilde;os a los bienes comunes o propios de la persona que ha vivido violencia.</p>\r\n<p><strong>Violencia sexual.-</strong> acciones que degradan o da&ntilde;an el cuerpo y/o la sexualidad de la persona que est&aacute; viviendo violencia y que por tanto atenta contra su libertad, dignidad e integridad f&iacute;sica. Es una expresi&oacute;n de abuso de poder que implica la supremac&iacute;a de una persona sobre otra, al denigrarla y concebirla como objeto.</p>\r\n<p>Es importante saber que aunque existe esta clasificaci&oacute;n, la violencia nunca se ejerce de manera aislada, pues una misma situaci&oacute;n puede conllevar varios de los tipos ya mencionados, es por eso que te invitamos a conocerlos para identificarla y prevenirla. Consideramos importante que una manera de hacerlo es saber que existe una l&iacute;nea de atenci&oacute;n psicol&oacute;gica gratuita en la cual te podemos asesorar, contener y decir los lugares a los los que puedes acudir dependiendo de tu situaci&oacute;n.</p>', NULL, 'Imagen_Articulo_1.jpg', 'Imagen_Articulo_1.jpg', '0000-00-00', 4, 'tipos-de-violencia-', 1, '2018-11-14 06:00:00', '2020-03-29 03:11:09', NULL, NULL, 274, 9),
(11, 2, 'Mitos y Realidades del suicidio.', '<p><strong>Mito:</strong> Las personas que hablan de suicidio no cometen suicidio.</p>\r\n<p><strong>Realidad: </strong>La mayor&iacute;a de los suicidas han advertido sobre sus intenciones.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Mito:</strong> Los suicidas tienen toda la intenci&oacute;n de morir.</p>\r\n<p><strong>Realidad: </strong>La mayor&iacute;a de ellos es ambivalente. No sabe si vivir o morir.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Mito:</strong> El suicidio sucede sin advertencias.</p>\r\n<p><strong>Realidad: </strong>Los suicidas a menudo dan amplias indicaciones.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Mito: </strong>La mejor&iacute;a despu&eacute;s de una crisis significa que el riesgo de suicidio se ha superado.</p>\r\n<p><strong>Realidad: </strong>Muchos suicidios ocurren en el periodo de mejor&iacute;a, cuando la persona tiene toda la energ&iacute;a y la voluntad para convertir los pensamientos.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Mito:</strong> No todos los suicidios pueden prevenirse.</p>\r\n<p><strong>Realidad:</strong> Los que ya ha pasado es verdadero, pero los dem&aacute;s son prevenibles.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Mito:</strong> Una vez que una persona es suicida, lo es para siempre.</p>\r\n<p><strong>Realidad:</strong> Los pensamientos suicidas pueden regresar, pero no son permanentes y en algunas personas pueden no hacerlo jam&aacute;s.</p>', NULL, 'ARTICULO1_SUICIDIO.jpg', 'ARTICULO1_SUICIDIO.jpg', '0000-00-00', 4, 'mitos-y-realidades-del-suicidio', 1, '2018-11-14 06:00:00', '2020-03-28 21:02:47', NULL, NULL, 1972, 9),
(12, 3, 'Transtornos Psicóticos (Esquizofrenia, Ideas Delirantes, Psicóticos y Esquizotípico)', '<p>Los trastornos psic&oacute;ticos son una categor&iacute;a de enfermedades mentales que abarcan un gran n&uacute;mero de subcategor&iacute;as y se caracterizan en su conjunto por la presencia de psicosis, la cual se caracteriza por una p&eacute;rdida del juicio de realidad, deterioro del funcionamiento mental representado por la presencia de ideas delirantes, alucinaciones, lenguaje y comportamiento desorganizado.</p>\r\n<p>La esquizofrenia es el trastorno prototipo de la psicosis, por ser el m&aacute;s frecuente y de &eacute;sta, el subtipo paranoide es el m&aacute;s frecuente. La edad de inicio es m&aacute;s temprana en los hombres (15-25 a&ntilde;os) que en las mujeres (25-35 a&ntilde;os). Cuando el trastorno comienza despu&eacute;s de los 45 a&ntilde;os, se denomina como esquizofrenia de inicio tard&iacute;o.</p>\r\n<p>El trastorno de ideas delirantes cuenta con una subclasificaci&oacute;n de uso habitual que la categoriza de acuerdo con los s&iacute;ntomas que presenta el paciente: s&iacute;ntomas positivos (delirios y alucinaciones), s&iacute;ntomas negativos (afecto aplanado, apat&iacute;a, dificultades en la atenci&oacute;n) y s&iacute;ntomas de desorganizaci&oacute;n (habla desorganizada, trastorno del pensamiento, conducta desorganizada).</p>\r\n<p>Si bien los positivos son los m&aacute;s relevantes en las fases agudas de los trastornos, los s&iacute;ntomas determinantes en las disfunciones sociales y ocupacionales de los pacientes con esquizofrenia son los negativos y los d&eacute;ficits cognitivos. Los s&iacute;ntomas negativos y los d&eacute;ficit cognitivos son extremadamente importantes, tanto cl&iacute;nicamente como en t&eacute;rminos de rehabilitaci&oacute;n, pues afectan la capacidad de trabajo, las relaciones con los dem&aacute;s y los lazos emocionales, es decir, a la capacidad del paciente para desarrollar una vida en condiciones normales.</p>\r\n<p>El tratamiento ambulatorio, se sugiere como m&iacute;nimo 4 valoraciones al a&ntilde;o y en casos severos o complicados (ideaci&oacute;n o intento suicida, agitaci&oacute;n psicomotora, destructividad, s&iacute;ntomas negativos severos), requieren de hospitalizaci&oacute;n para su manejo agudo. La hospitalizaci&oacute;n, ser&aacute; por un per&iacute;odo corto, los objetivos de &eacute;sta pueden ser para precisi&oacute;n diagn&oacute;stica, aunque la mayor&iacute;a de las veces s&oacute;lo es necesaria cuando hay una descompensaci&oacute;n de los s&iacute;ntomas psicol&oacute;gicos y/o conductuales.</p>\r\n<p>Dependiendo de la severidad de &eacute;stos, la hospitalizaci&oacute;n puede llevarse en un hospital general si &eacute;stos son leves. Si la intensidad es de moderada a severa (agitaci&oacute;n psicomotora, agresividad f&iacute;sica heterodirigida, intento suicida, s&iacute;ntomas negativos severos) se recomienda la hospitalizaci&oacute;n en un servicio especializado. Al remitir la descompensaci&oacute;n debe continuarse el manejo ambulatorio m&eacute;dico y de rehabilitaci&oacute;n.</p>\r\n<p>Una valoraci&oacute;n adecuada debe ser complementada por un examen del estado mental y del deterioro funcional, una exploraci&oacute;n f&iacute;sica con especial &eacute;nfasis en el &aacute;rea neurol&oacute;gica, as&iacute; como la evaluaci&oacute;n de consumo de alcohol o drogas. La valoraci&oacute;n debe ser realizada por profesionales de la salud: m&eacute;dicos generales con entrenamiento en los test de evaluaci&oacute;n neuropsicol&oacute;gica, psiquiatras, neur&oacute;logos, psic&oacute;logos (con entrenamiento en detecci&oacute;n de s&iacute;ntomas de cuadros psic&oacute;ticos, que puedan hacer una referencia oportuna).?</p>', NULL, 'Imagen_Articulo_2.jpg', 'Imagen_Articulo_2.jpg', '0000-00-00', 4, 'transtornos-psicoticos-esquizofrenia-ideas-delirantes-psicoticos-y-esquizotipico', 1, '2018-11-14 06:00:00', '2020-03-28 21:06:04', NULL, NULL, 438, 9),
(13, 2, '¿Cómo saber si tu hijo presenta riesgo de suicidio?', '<p>Foto: Ciudadan&iacute;a Express</p>\r\n<p>La adolescencia es una etapa cr&iacute;tica, la mayor&iacute;a de nuestros j&oacute;venes ante problemas escolares, familiares, o de pareja se tornan muy vulnerables, es por ello que es muy importante identificar en qu&eacute; momento se puede presentar el riesgo de suicidio. Debemos atender desde la idea o deseo de no querer vivir, ya que muchos adultos piensan que los j&oacute;venes lo hacen &ldquo;para llamar la atenci&oacute;n&rdquo; o que solo es un mal momento y &ldquo;se le va a pasar&rdquo;.</p>\r\n<p>En M&eacute;xico seg&uacute;n estad&iacute;sticas publicadas por el Instituto Nacional de Estad&iacute;stica y Geograf&iacute;a (Inegi) en 2013. Las cifras establecen que el grupo m&aacute;s vulnerable es de 15 a 29 a&ntilde;os, con un total de dos mil 345 casos, lo que represent&oacute; 40.8% del total en ese a&ntilde;o. Siendo mayor la prevalencia de suicidio en hombres que en mujeres. De acuerdo a la OMS, el suicidio es la segunda causa principal de defunci&oacute;n en el grupo etario de 15 a 29 a&ntilde;os, por cada suicidio, hay muchas m&aacute;s tentativas de suicidio cada a&ntilde;o.</p>\r\n<p>Cifras que son alarmantes y que la poblaci&oacute;n debe tomar en cuenta para prevenir y atender un problema de salud p&uacute;blica que a todos nos compete. Se estima que un 90% de las personas que se suicidan hab&iacute;an expresado anteriormente su intenci&oacute;n de hacerlo. Entre la poblaci&oacute;n en general, un intento de suicidio no consumado es el factor de riesgo m&aacute;s importante.</p>\r\n<p>Algunas de las principales se&ntilde;ales que los adolescentes pueden manifestar ante la ideaci&oacute;n o tentativa de suicidio son las siguientes:</p>\r\n<p>Se despide de forma escrita o verbal de alguien.</p>\r\n<p>Regala objetos personales de gran valor sentimental para &eacute;l.</p>\r\n<p>Se aleja de amigos, familiares y actividades que sol&iacute;a disfrutar. Pierde inter&eacute;s en hacer cosas que usualmente le gusta hacer, como practicar deportes, pasatiempos o visitar amigos.</p>\r\n<p>Verbaliza aspectos relativos a la muerte o al suicidio, es decir, hace advertencias directas e indirectas de suicidio.</p>\r\n<p>Declaraciones como &ldquo;me quiero morir&rdquo; o &ldquo;me voy a suicidar&rdquo;, &ldquo;Pronto dejar&eacute; de ser un problema para usted&rdquo; o &ldquo;Yo no tengo motivos para vivir&rdquo;.</p>\r\n<p>Cambios dram&aacute;ticos en personalidad o apariencia, incluyendo comportamientos irracionales.</p>\r\n<p>Menciona que escucha voces que le dicen que debe suicidarse.</p>\r\n<p>Cambios en el estado &aacute;nimo, conducta violenta, irritabilidad, tristeza, ansiedad, alegr&iacute;a. Etc. Si permanece triste y melanc&oacute;lico constantemente y act&uacute;a diferente a lo acostumbrado.</p>\r\n<p>Se corta a s&iacute; mismo, golpea su cabeza contra las paredes o hace otras cosas para hacerse da&ntilde;o.</p>\r\n<p>Baja en sus calificaciones y rendimiento escolar.</p>\r\n<p>Cambio en sus h&aacute;bitos de sue&ntilde;o, dormir poco o dormir en exceso</p>\r\n<p>Cambio en sus h&aacute;bitos alimenticios, episodios de inapetencia o de comer demasiado.</p>\r\n<p>Falta de cuidado a su higiene personal.</p>\r\n<p>Abuso de sustancias (alcohol o drogas)</p>\r\n<p>Participar en comportamientos riesgosos.</p>\r\n<p>P&eacute;rdida de energ&iacute;a vital. Se le nota cansado, abatido, aburrido.</p>\r\n<p>Presenta quejas frecuentes de dolores f&iacute;sicos, tales como dolores de cabeza, de estomago y fatiga, asociados con su estado emocional.</p>\r\n<p>Ha pasado recientemente por un evento de p&eacute;rdida: Un cambio dr&aacute;stico en su vida o una p&eacute;rdida de un ser querido (ya sea por causa de muerte, divorcio, separaci&oacute;n o relaci&oacute;n fracasada).</p>\r\n<p>Existen antecedentes de suicidio en la familia.</p>\r\n<p>Es necesario tener en consideraci&oacute;n que varias de estas se&ntilde;ales deben estar presentes por un espacio de tiempo no inferior a un mes. La conducta suicida en los adolescentes constituye un serio problema de salud, debe ser afrontado por la sociedad, ya que intervienen factores multicausales: individuales, familiares y de la comunidad.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>BUSCA AYUDA PROFESIONAL DE INMEDIATO</strong></p>\r\n<p><strong>L&Iacute;NEA DE ATENCI&Oacute;N PSICOL&Oacute;GICA 01 800 290 00 24</strong></p>', NULL, 'ARTICULO2_SUICIDIO.jpg', 'ARTICULO2_SUICIDIO.jpg', '0000-00-00', 4, 'como-saber-si-tu-hijo-presenta-riesgo-de-suicidio', 1, '2018-11-14 06:00:00', '2020-03-28 21:07:55', NULL, NULL, 1219, 9),
(14, 3, 'Qué son los trastornos de la conducta alimentaria', '<p>Los trastornos de la alimentaci&oacute;n son problemas de conducta serios. Puede ser que la persona coma en exceso o que no coma lo suficiente como para mantenerse sana y saludable.</p>\r\n<p><strong>&iquest;Qu&eacute; causa un trastorno alimenticio?</strong></p>\r\n<p>Aunque los trastornos alimenticios pueden comenzar con preocupaciones por la comida y el peso, son mucho m&aacute;s que solamente comida. La gente con trastornos alimenticios utiliza la comida y el control de la comida como un intento para compensar los sentimientos y emociones que de otra manera son vistos como insoportables. Para algunos, la dieta, los atracones y la purgaci&oacute;n pueden comenzar como una forma de lidiar con las emociones dolorosas y para sentirse en control de su vida personal, pero al final estos comportamientos da&ntilde;an la salud f&iacute;sica y emocional, la autoestima y la sensaci&oacute;n de competitividad y control de la persona.</p>\r\n<p>Los tipos de trastornos son:</p>\r\n<p>Anorexia nerviosa; es un trastorno alimentario que causa que las personas pierdan m&aacute;s peso de lo que se considera saludable para su edad y estatura, y principalmente se debe a que la persona adelgaza demasiado, pues no comen lo suficiente porque se sienten gordos, esto quiere decir que las personas con este trastorno pueden tener un miedo intenso a aumentar de peso, incluso cuando est&aacute;n con peso insuficiente, en ocasiones hacen dietas o ejercicio en forma excesiva o utilizan otros m&eacute;todos para bajar de peso.</p>\r\n<p>Bulimia nerviosa; es un trastorno alimentario por el cual una persona tiene episodios regulares de comer una gran cantidad de alimento, durante los cuales siente una p&eacute;rdida de control sobre la comida, pero despu&eacute;s de esto, tiene un gran sentimiento de culpa, y utiliza luego diferentes formas, tales como vomitar o purgarse para evitar el aumento de peso.</p>\r\n<p>Trastorno por atrac&oacute;n; este es un trastorno que se presenta sin ataques compulsivos de bulimia, pero en la mayor&iacute;a de los casos si existe aumento de peso, e incluso obesidad. El caso t&iacute;pico es el de una persona que siente deseos de comer alimentos de forma descontrolada (en ocasiones, sobrepasando la ingesta de 6000 calor&iacute;as diarias), pero a diferencia de la bulimia, no busca contrarrestar el atrac&oacute;n provoc&aacute;ndose el v&oacute;mito. El trastorno por atrac&oacute;n por lo general conduce a la obesidad, aunque tambi&eacute;n puede ocurrir en individuos con un peso normal.</p>\r\n<p>Las mujeres tienen m&aacute;s probabilidades que los hombres de tener trastornos de la alimentaci&oacute;n, este trastorno suele comenzar en la adolescencia, y con frecuencia se presentan con depresi&oacute;n, trastornos de ansiedad y abuso de drogas. Los trastornos de la alimentaci&oacute;n pueden causar problemas en el coraz&oacute;n, en los ri&ntilde;ones e incluso la muerte.</p>\r\n<p>Las siguientes son posibles se&ntilde;ales de anorexia y bulimia; la preocupaci&oacute;n exagerada acerca del peso corporal (incluso si la persona no tiene exceso de peso), la obsesi&oacute;n con las calor&iacute;as, los gramos de grasa y los alimentos, el uso de cualquier medicamento para prevenir el aumento de peso.</p>\r\n<p>Las se&ntilde;ales de advertencia m&aacute;s graves pueden ser m&aacute;s dif&iacute;ciles de observar debido a que las personas que tienen un trastorno de la alimentaci&oacute;n tratan de mantenerlo en secreto. Vomitar despu&eacute;s de las comidas, desmayo sin ninguna explicaci&oacute;n, callos o cicatrices en el nudillo (a causa de un v&oacute;mito forzado) pueden ser algunas se&ntilde;ales.</p>\r\n<p>Por lo tanto, cada que tengas sospechas de que puede existir la presencia de un trastorno de la conducta alimentaria, debes de asistir o sugerirle a la persona con el problema alimenticio que acuda con especialistas, ya sea un pediatra, un nutri&oacute;logo o un psic&oacute;logo, ya que son problemas que deben de tratarse justo a tiempo para llevar el seguimiento de un tratamiento, para tener mejor&iacute;as en su evoluci&oacute;n y pron&oacute;stico.?</p>', NULL, 'Imagen_Articulo_3.jpg', 'Imagen_Articulo_3.jpg', '0000-00-00', 4, 'que-son-los-trastornos-de-la-conducta-alimentaria', 1, '2018-11-14 06:00:00', '2020-03-28 21:05:10', NULL, NULL, 328, 9),
(15, 2, 'Día mundial de la prevención del suicidio.', '<p>En la actualidad el suicidio es la segunda causa de muerte de la poblaci&oacute;n joven en todo el mundo. Los adultos mayores son el segundo grupo poblacional donde se presenta el fen&oacute;meno. Todas las personas pertenecientes a minor&iacute;as, quienes viven en pobreza, violencia o padecen enfermedades f&iacute;sicas y mentales, tambi&eacute;n son especialmente vulnerables. Cada 40 segundos una persona muere por mano propia en alguna parte del mundo. Y lo m&aacute;s alarmante, es muy probable que los anteriores datos no reflejen la realidad del suicidio ya que muchos pa&iacute;ses no cuentan con sistemas de registro suficientes, en otros m&aacute;s est&aacute; criminalizado y se subestima o incluso se confunde con accidentes. Se calcula que por cada suicidio consumado hubo entre 20 y hasta 100 personas que de alguna manera lo intentaron sin consumarlo.</p>\r\n<p>Para el a&ntilde;o 2020 las tasas de suicidio en todo el mundo deber&aacute;n reducirse en un 10%. Es la asamblea de la Organizaci&oacute;n Mundial de la Salud propuso esta meta. Para que esto suceda es necesario que las naciones cuenten con planes nacionales de atenci&oacute;n a la salud mental en general, y en espec&iacute;fico, con estrategias nacionales de prevenci&oacute;n del suicidio. Adem&aacute;s deben colaborar todos los sectores de la sociedad, desde la implementaci&oacute;n del cuidado de la Salud en Todas las Pol&iacute;ticas, pasando por instituciones civiles y los mismos ciudadanos con un mejor cuidado de la salud y menos estigmas.</p>\r\n<p>En el &uacute;ltimo a&ntilde;o disponible en el Global Burden Disease Study &ndash;el observatorio internacional m&aacute;s grande sobre da&ntilde;os a la salud y mortalidad&ndash; se reconoce que el suicidio en todo el mundo ha disminuido 1.06% y esta tendencia a la baja es lenta pero constante desde hace m&aacute;s de veinte a&ntilde;os. Mientras que en 1990 el suicidio era la decimocuarta causa de muertes en todo el mundo, para el 2016 es la decimos&eacute;ptima. Los pa&iacute;ses de Asia central como Kazajistan, Ucrania y el mismo Jap&oacute;n han logrado disminuir significativamente las tasas de suicidios.</p>\r\n<p>Lamentablemente M&eacute;xico muestra una tendencia a la alza del mismo modo que buena parte del continente americano. En 1990 la tasa de suicidios era de 3.4 muertes por cada 100,000 habitantes; diez a&ntilde;os despu&eacute;s la tasa era de 4.3 y el pasado 2016 ya era de 5.78. Del lugar 34 pas&oacute; al 17 como causa de muerte general y la quinta para la poblaci&oacute;n entre 15 y 49 a&ntilde;os de edad. Se presentan cuatro veces m&aacute;s muertes de este tipo en hombres que en mujeres, con casos en edades cada vez menores. Los estados donde se presenta con m&aacute;s frecuencia son Campeche, Aguascalientes, Chihuahua y Yucat&aacute;n. Guanajuato est&aacute; entre los estados con tasas mayores a 7 por cada 100,00o habitantes. Sin embargo, hay que tomar en cuenta que es el estado con mayor proporci&oacute;n de profesionales de la salud mental por habitante, que cuenta con m&aacute;s de 150 unidades de atenci&oacute;n a la salud con servicios de salud mental, incluyendo centros especializados como por ejemplo el Hospital Psiqui&aacute;trico y tres Centros de atenci&oacute;n Integral a la Salud Mental. Adem&aacute;s Guanajuato es uno de los pocos estados que tienen un servicio de intervenci&oacute;n en crisis que funciona las 24 horas del d&iacute;a todos los d&iacute;as del a&ntilde;o en el n&uacute;mero 01800 29 000 24.</p>\r\n<p>En la conmemoraci&oacute;n del D&iacute;a Mundial de la Prevenci&oacute;n del Suicidio de este a&ntilde;o se propone como lema Trabajando juntos para la prevenci&oacute;n del suicidio. La asociaci&oacute;n internacional que lo promueve cada a&ntilde;o publica una lista de actividades mediante las que podemos apoyar este d&iacute;a. Desde la organizaci&oacute;n de eventos p&uacute;blicos y la realizaci&oacute;n de trabajos especializados desde la academia, educaci&oacute;n o pol&iacute;tica, hasta el involucramiento en convocatorias concretas como inscribirse en el paseo ciclista, subir videos a sus canales en redes sociales, diseminar informaci&oacute;n cient&iacute;fica y finalmente, encender una vela y colocarla cerca de una ventana alrededor de las 20:00 horas en todas las ciudades. Esto como una muestra de reconocimientos y respeto para quienes han pasado por una crisis suicida. Todos podemos hacer algo, todos podemos ayudar y todos merecemos recibir ayuda.?</p>', 'Día mundial de la prevención del suicidio.', 'articulos\\March2020\\jvH0M7F4jbAzWKW1eEgv.jpg', 'articulos\\March2020\\zDYz1VXVdKmsNkmkEYkZ.jpg', '0000-00-00', 4, 'dia-mundial-de-la-prevencion-del-suicidio', 1, '2018-11-14 06:00:00', '2020-03-28 20:51:55', NULL, NULL, 547, 9),
(16, 3, 'Atención psicológica para padres de menores con autismo', '<p>Los trastornos del espectro autista se manifiestan desde la m&aacute;s temprana infancia e incluyen una serie de s&iacute;ntomas que dificultan la convivencia familiar. Adem&aacute;s de los posibles retrasos en el desarrollo, los menores que lo padecen presentan retraso o ausencia de lenguaje, dificultades en la interacci&oacute;n social, comportamientos repetitivos, estereotipados o agresivos as&iacute; como una alta susceptibilidad a infecciones. El tratamiento recomendado puede combinar la farmacoterapia con educaci&oacute;n especializada, terapia de lenguaje, f&iacute;sica y ocupacional as&iacute; como entrenamientos en habilidades sociales b&aacute;sicas.</p>\r\n<p>Ante esta situaci&oacute;n se advierte que tener un hijo con trastorno del espectro autista es altamente demandante, tanto en lo material como en lo psicol&oacute;gico y lo econ&oacute;mico. Tener un hijo que no responde a la sonrisa de la madre, o a los cuidados que recibe, puede ser profundamente frustante; albergar la preocupaci&oacute;n por el futuro de un hijo que es incapaz de valerse por s&iacute; mismo puede ser angustiante. El cansancio, las regresiones, los gastos y ocupaciones constantes abonan a la merma psicol&oacute;gica de los padres.</p>\r\n<p>La atenci&oacute;n recomendada para los padres y cuidadores de menores con este diagn&oacute;stico se organiza en dos niveles diferentes. El primero es informativo. Es necesario que conozcan y comprendan en qu&eacute; consiste el trastorno, cu&aacute;l es el pron&oacute;stico y sobre todo, qu&eacute; tratamiento es el m&aacute;s recomendado y en qu&eacute; recursos puede apoyarse. Existen servicios de salud que se ofrecen por parte del sector p&uacute;blico, hay tambi&eacute;n asociaciones civiles cuya poblaci&oacute;n objetivo son precisamente las familias donde hay miembros con autismo, hay finalmente servicios privados y en suma, le conviene a las familias conocer con qu&eacute; recursos cuentan en sus comunidades y c&oacute;mo se pueden beneficiar de ellos.</p>\r\n<p>En un segundo nivel se intentar&iacute;a atender las necesidades emocionales de los familiares. Esto es, validar sus inquietudes, dudas y emociones asociadas a la enfermedad de sus hijos; examinar sus expectativas acerca de la evoluci&oacute;n de la enfermedad; analizar el efecto sobre la familia, en la relaci&oacute;n con otros hijos y entre los c&oacute;nyuges, contener ansiedades, culpas, etc&eacute;tera.</p>\r\n<p>En otras palabras, los padres se ver&iacute;an altamente beneficiados de iniciar procesos psicoterap&eacute;uticos con personal especializado en el tema. Los hay en formatos grupales o individuales. Se puede llevar a cabo a modo de asesor&iacute;a cada que se deban hacer ajustes en la adaptaci&oacute;n a la vida cotidiana, o como procesos terap&eacute;uticos intensivos. Lo importante es que se puedan brindar el espacio para hablar, ser escuchados y escucharse entre s&iacute; y a s&iacute; mismos. Y m&aacute;s all&aacute; de eso, el acompa&ntilde;amiento terap&eacute;utico ayudar&iacute;a indirectamente a sus hijos. Como lo dir&iacute;a el padre de una ni&ntilde;a con autismo, &ldquo;para poder estar ah&iacute;, atento, cuando tenga avances&rdquo;.?</p>', 'Atención psicológica para padres de menores con autismo', 'articulos\\March2020\\b1yIdSxuQiTpFqZcqmps.jpg', 'articulos\\March2020\\dfJvEIMNAuh5wCPIdVe1.jpg', '0000-00-00', 4, 'atencion-psicologica-para-padres-de-menores-con-autismo', 1, '2018-11-14 06:00:00', '2020-03-28 20:40:56', NULL, NULL, 359, 9),
(17, 2, 'El suicidio es un fenómeno multifactorial.', '<p>En ocasiones al suicidio se le relaciona con trastornos mentales, porque se le ha podido relacionar a alucinaciones, a depresiones fuertes u obsesiones, de hecho, existen dos clases de causas extra sociales a los que se puede atribuir influencia; como al referido anteriormente, y a la naturaleza del medio f&iacute;sico en el que desenvuelve la persona.</p>\r\n<p>&nbsp;</p>\r\n<p>En el aspecto social se ha podido observar que la edad relacionada con la solter&iacute;a result&oacute; como factor detonante de conductas suicidas.</p>\r\n<p>&nbsp;</p>\r\n<p>En el aspecto social, los j&oacute;venes son m&aacute;s propensos al suicidio por aspecto de la adolescencia y los dilemas que viven en esa etapa de su vida. A su vez todas las manifestaciones sociales estimulan la colectividad y la uni&oacute;n es m&aacute;s significativa, lo cual provoca que el individuo piense menos en s&iacute; mismo y vea m&aacute;s por el bien de la idea com&uacute;n. Por lo anterior se deduce que el suicidio se puede suscitar cuando hay desintegraci&oacute;n en lo familiar, en lo religioso y lo pol&iacute;tico.</p>\r\n<p>&nbsp;</p>\r\n<p>La familia tambi&eacute;n toma parte importante como freno hacia el suicidio, ya que se dan razonamientos sobre las responsabilidades, y en personas que han formado ya familias, podr&iacute;a decirse que los hijos y la propia esposa son maneras de retener esos pensamientos. Aunque tambi&eacute;n se debe de tomar en cuenta el matrimonio entre personas muy j&oacute;venes como factor detonante, principalmente en los hombres, pues las estad&iacute;sticas se&ntilde;alan que estas uniones precoces y la problem&aacute;tica que puede generar, ejercen una influencia agravante en el suicidio</p>\r\n<p>&nbsp;</p>\r\n<p>Los patrones familiares destructivos como, por ejemplo, el alcoholismo de alguno de los padres, la violencia, o los acontecimientos traum&aacute;ticos en la ni&ntilde;ez temprana pueden afectar la vida de los j&oacute;venes, desde ese momento en adelante, especialmente si no pudieron superar el trauma.</p>\r\n<p>&nbsp;</p>\r\n<p>El factor econ&oacute;mico tiene un papel importante, ya que, al no contar tanto dinero, no se necesita m&aacute;s de lo necesario; cosa contraria pasa si hay riqueza, pues cuando hay crisis econ&oacute;micas la tasa del suicidio se incrementa, pero si estas llegan a disminuir, lo mismo no pasa con la cifra de suicidio. La consagraci&oacute;n del materialismo se da ya que la religi&oacute;n perdi&oacute; la fuerza que ten&iacute;a como consuelo para pobres y ricos. En las sociedades modernas las situaciones que derivan de la carencia de normas sociales o de su degradaci&oacute;n, da pauta para el suicidio por el sufrimiento que conlleva.</p>\r\n<p>&nbsp;</p>\r\n<p>El crecimiento individual de cada joven se entrelaza con la tradici&oacute;n cultural colectiva; los ni&ntilde;os y los j&oacute;venes que carecen de ra&iacute;ces culturales tienen marcados problemas de identidad y carecen de un modelo para la resoluci&oacute;n de conflictos. En algunas situaciones de estr&eacute;s pueden recurrir a comportamientos autodestructivos tales como el intento de suicidio o el suicidio.</p>\r\n<p>&nbsp;</p>\r\n<p>En algunos casos puede ser imposible determinar si algunas muertes causadas, por ejemplo, por accidentes de autom&oacute;vil, ahogados, ca&iacute;das y sobredosis de drogas ilegales, fueron intencionales o no intencionales. Generalmente que la informaci&oacute;n sobre el comportamiento suicida en la adolescencia est&aacute; por debajo de su ocurrencia, porque muchas muertes de este tipo se clasifican imprecisamente como no intencionales o accidentales.</p>\r\n<p>&nbsp;</p>\r\n<p>El bajo nivel educativo y el desempleo en la familia son considerados factores de riesgo. Los pueblos ind&iacute;genas y los inmigrantes pueden ser asignados a este grupo, dado que a menudo experimentan no s&oacute;lo dificultades emocionales y ling&uuml;&iacute;sticas, sino tambi&eacute;n falta de redes sociales.</p>\r\n<p>&nbsp;</p>\r\n<p>Los atributos de inconformismo de g&eacute;nero y las cuestiones de identidad relativas a orientaci&oacute;n sexual, constituyen tambi&eacute;n factores de riesgo para los comportamientos suicidas. Los ni&ntilde;os y los adolescentes que no son aceptados abiertamente en su cultura por su familia y sus compa&ntilde;eros o por su escuela y otras instituciones tienen serios problemas de integraci&oacute;n y carecen de los modelos de apoyo para un desarrollo &oacute;ptimo.</p>\r\n<p>&nbsp;</p>\r\n<p>El tener siempre en cuenta de las muchas formas en las que nuestro estado de &aacute;nimo nos puede llevar a conflictos emocionales m&aacute;s profundos, el conocer que como una conducta nos puede generar un problema grave, as&iacute; como el no tratar de minimizar cualquier problema, y como &eacute;ste puede desembocar en una ideaci&oacute;n o conducta suicida, nos ayuda a ser parte de cultura de la prevenci&oacute;n, pues ning&uacute;n ser humano debe de considerarse exento del sufrimiento y sus consecuencias.?</p>\r\n<p style=\"text-align: left;\">&nbsp;</p>', NULL, 'ARTICULO4_SUICIDIO.jpg', 'ARTICULO4_SUICIDIO.jpg', '0000-00-00', 4, 'el-suicidio-es-un-fenomeno-multifactorial', 1, '2018-11-14 06:00:00', '2020-03-28 20:58:53', NULL, NULL, 1127, 9),
(18, 3, '10 estrategias para manejar la ansiedad', '<p>Hablar de ansiedad es muy significativo pues muchas personas presentan este padecimiento. Es importante que sepas que la ansiedad est&aacute; vinculada a los pensamientos, en especial a las preocupaciones y a la incertidumbre que le acompa&ntilde;a; por ello es importante que identifiques lo que te dices a ti mismo en tu cabeza y as&iacute; poder identificar entre las tres principales preocupaciones:</p>\r\n<ul>\r\n<li>Problemas inmediatos, reales y modificables.</li>\r\n<li>Problemas inmediatos, reales, pero que no son modificables.</li>\r\n<li>Acontecimientos muy improbables, que no se basan en la realidad y que, por consiguiente, no son modificables.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&iquest;Ya identificaste que tipo de preocupaci&oacute;n presentas? Ahora veamos a las siguientes recomendaciones.</p>\r\n<p>Parece muy sencillo pero es relevante, no creas todo lo que piensas.</p>\r\n<p>Realiza actividades f&iacute;sicas agradables; nadar, bailar, correr, jugar, entre otras.</p>\r\n<p>Las t&eacute;cnicas de relajaci&oacute;n ha mostrado tener buenos resultados en el manejo de la ansiedad, existen varios ejercicios de relajaci&oacute;n que se pueden consultar y utilizar; se recomienda que antes de iniciar el ejercicio de relajaci&oacute;n se traiga a la mente un momento espec&iacute;fico y concreto de la vida que fue tranquilizador y produjese relajaci&oacute;n, as&iacute; mismo, al finalizar el ejercicio volver a recordar ese momento. Es importante practicarla por lo menos durante un mes para ver resultados.</p>\r\n<p>Expresar o comunicar tus emociones te puede ayudar a tener mayor claridad emocional y a disminuir la ansiedad.</p>\r\n<p>Darte la oportunidad de comprender las situaciones de otras formas, favorecer&aacute; tu regulaci&oacute;n emocional y adaptabilidad.</p>\r\n<p>Te comparto la siguiente t&eacute;cnica que ha mostrado muy buenos resultados: Demorar las preocupaciones durante el d&iacute;a e iniciar a preocuparse en un lugar y tiempo espec&iacute;fico, es decir, siempre en el mismo lugar y a la misma hora por 30 minutos; debes realmente esforzarte por pensar en tus preocupaciones, considerando posibles consecuencias con im&aacute;genes mentales. &iexcl;Pru&eacute;bala!</p>\r\n<p>Si tu tipo de preocupaci&oacute;n es la primera, es decir; eres una persona en situaci&oacute;n de preocupaci&oacute;n por problemas actuales y modificables, es importante que te centres en la soluci&oacute;n y no en el problema.</p>\r\n<p>Si tu tipo de preocupaci&oacute;n es la segunda, es decir; personas con preocupaci&oacute;n por acontecimientos reales, pero no modificables, es importante reconocer tu realidad y centrarse en las emociones para adaptarse a la situaci&oacute;n que no cambiar&aacute;.</p>\r\n<p>Si tu tipo de preocupaci&oacute;n es la tercera, es decir; personas con preocupaci&oacute;n por acontecimientos improbables y que por consiguiente no son modificables, por el nivel de ansiedad que generan &eacute;ste tipo de pensamientos, es importante que consideres acudir con un profesional, has click aqu&iacute; para encontrar el lugar de atenci&oacute;n m&aacute;s cercano. Se podr&aacute; hacer una liga aqu&iacute;?</p>\r\n<p>Buscar ayuda profesional cuando los s&iacute;ntomas afectan la vida diaria, es la mejor opci&oacute;n.</p>\r\n<p>Recuerda, el logro de una mayor regulaci&oacute;n emocional permite mejorar la autoestima y la satisfacci&oacute;n por la vida.?</p>', 'Estrategias para la ansiedad', 'articulos\\March2020\\bhlrl4oOp6DzxRrtkmFU.jpg', 'articulos\\March2020\\RXnuMTDGbWRMK6cr3f5T.jpg', '0000-00-00', 4, '10-estrategias-para-manejar-la-ansiedad', 1, '2018-11-14 06:00:00', '2020-03-31 07:23:11', NULL, NULL, 2370, 3),
(19, 2, 'Pautas para la postvención en escuelas y centros de trabajo', '<p>Pautas para la postvenci&oacute;n en escuelas y centros de trabajo</p>\r\n<p>Un suicidio consumado es una tragedia personal. Y m&aacute;s all&aacute; de eso, tambi&eacute;n es un gran impacto para su entorno: los familiares y amigos cercanos pueden desarrollar crisis que les cambiar&aacute;n la vida, vecinos y compa&ntilde;eros de trabajo incluso cuando no fueron cercanos, igual se conmocionan. Pueden desarrollarse culpas, miedos, sufrirse o practicar estigmas. &ldquo;Cada suicidio supone la devastaci&oacute;n emocional, social y econ&oacute;mica de numerosos familiares y amigos&rdquo;, declar&oacute; la funcionaria de la OMS, Catherine Le Gal&egrave;s-Camus. Una muerte por suicidio rompe un poco el tejido social y esta es la principal raz&oacute;n por la que diversos fil&oacute;sofos lo han condenado.</p>\r\n<p>Las escuelas y centros de trabajo donde una persona se quit&oacute; la vida necesitan implementar intervenciones para los afectados. La intervenci&oacute;n recomendada se llama postvenci&oacute;n y, como su nombre lo indica, es posterior a un evento letal e intenta prevenir m&aacute;s da&ntilde;os. Es una propuesta de 1971 del psic&oacute;logo Edwin Shneidman. Puede tratarse de una sencilla sesi&oacute;n en la que un profesional hable con el equipo de trabajo o los compa&ntilde;eros de escuela, escuche la versi&oacute;n que se ha construido en torno a la decisi&oacute;n fatal, as&iacute; como las consecuencias en las personas y en la din&aacute;mica grupal.</p>\r\n<p>Hay procesos m&aacute;s largos para entornos m&aacute;s cohesionados o con m&aacute;s factores de riesgo. Y es que mientras por un lado el objetivo de un proceso de postvenci&oacute;n es aliviar la afectaci&oacute;n emocional en los afectados, adicionalmente mediante ella se eval&uacute;a el riesgo para las dem&aacute;s personas. Las condiciones que hacen m&aacute;s necesaria una intervenci&oacute;n posterior son: cuando ha habido m&aacute;s comportamientos suicidas en el entorno; si hay factores de riesgo para el suicidio; ante tab&uacute;es que se manifiestan en silencios, o estigmatizaci&oacute;n con rumores persistentes; si hay estresores importantes tales como violencia, desastres naturales, crisis econ&oacute;mica, etc&eacute;tera; cuando se reconoce que hay una fuerte identificaci&oacute;n con la persona que atent&oacute; contra su vida, o bien, si en el imaginario existe la idea de que en el trabajo o la escuela reside el motivo por el que se precipit&oacute; el suicidio.?</p>', NULL, 'ARTICULO5_SUICIDIO.jpg', 'ARTICULO5_SUICIDIO.jpg', '0000-00-00', 4, 'pautas-para-la-postvencion-en-escuelas-y-centros-de-trabajo', 1, '2018-11-14 06:00:00', '2020-03-28 22:51:40', NULL, NULL, 1488, 9),
(20, 4, 'Violencia contra las mujeres', '<p>Cuando nace un beb&eacute; lo hace con un sexo que lo determina como hombre o mujer, a partir de ah&iacute; las personas a su alrededor se hacen ideas de c&oacute;mo ser&aacute; y le van exigiendo cierto comportamiento en la vida cotidiana, por ejemplo; si es ni&ntilde;o le piden que no llore o no se queje, y si es ni&ntilde;a le piden obediencia o aprender labores del hogar, as&iacute; cada d&iacute;a, hasta que poco a poco van entrando en los roles que se piden a hombres y mujeres seg&uacute;n los estereotipos sociales. Todo parece natural y normal, no se reflexiona sobre si &eacute;sta forma de educar ayuda o no al desarrollo pleno de las personas.&nbsp; As&iacute; la sociedad va construyendo la identidad de g&eacute;nero de hombres y mujeres, que no tiene relaci&oacute;n con su sexo de nacimiento, sino m&aacute;s bien con el contexto socio-cultural en el que naci&oacute; con ese cuerpo sexuado.</p>\r\n<p>&nbsp;</p>\r\n<p>Por ejemplo; cuando le decimos a un ni&ntilde;o que no llore o no se queje, se est&aacute; formando a un hombre que puede tener dificultad para expresar sus afectos o para reconocer su necesidad de atenci&oacute;n m&eacute;dica, por otro lado, si se somete a una ni&ntilde;a a la obediencia, se le env&iacute;a el mensaje de que no tiene derecho a tomar decisiones. El hecho es que estos estereotipos limitan tanto a hombres como a mujeres en diferentes &aacute;reas de su desarrollo; mientras brindan libertades en algunas &aacute;reas, los limitan en otras.</p>\r\n<p>&nbsp;</p>\r\n<p>Durante d&eacute;cadas se ha investigado sobre temas de g&eacute;nero y se ha observado que se relaciona con cuestiones de poder y el abuso del mismo, es decir con violencia. La forma en que funciona la sociedad da ciertos privilegios a algunos y por ende dejar sin ellos a otros, as&iacute; se han identificado varios grupos vulnerables como; mujeres, ni&ntilde;os y ni&ntilde;as, personas de la tercera edad o en situaci&oacute;n de pobreza extrema, etc&eacute;tera.&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>En relaci&oacute;n al g&eacute;nero que es formado por la cultura, se ha observado que a los hombres se les otorgan privilegios o incluso derechos sobre las mujeres, lo que ha llevado a un desequilibrio del poder y en ocasiones se usa &eacute;se poder como medio para controlar a la mujer; a lo anterior se le conoce como violencia de g&eacute;nero.</p>\r\n<p>&nbsp;</p>\r\n<p>Cabe mencionar que muchos de los actos de violencia de g&eacute;nero conllevan en s&iacute; mismos violaciones a los derechos humanos.</p>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>En cuestiones de g&eacute;nero y violencia, es importante tener claridad sobre c&oacute;mo queremos vivir o c&oacute;mo nos gustar&iacute;a que vivan nuestros descendientes, y m&aacute;s importante es darnos la oportunidad de reflexionar sobre nuestra vida cotidiana y saber si nos llevar&aacute; a lo que esperamos.</li>\r\n</ol>', NULL, 'violencia_contra_las_mujeres_1.jpg', 'violencia_contra_las_mujeres_1.jpg', '0000-00-00', 4, 'violencia-contra-las-mujeres', 1, '2018-11-14 06:00:00', '2020-03-31 07:27:52', NULL, NULL, 382, 9),
(21, 4, '¿Qué hago si soy víctima de Violencia Sexual?', '<p>Al igual que en toda situaci&oacute;n de violencia es fundamental el poder hablar sobre el hecho ocurrido, ya sea con la familia y/o amigos, o bien con alg&uacute;n profesional de la salud o del &aacute;mbito legal, e iniciar y dar seguimiento al proceso de atenci&oacute;n psicol&oacute;gica y/o m&eacute;dica que te sea indicada.</p>\r\n<p>Considerar en todo momento que la persona que genera la agresi&oacute;n siempre ser&aacute; la responsable de su conducta, independientemente de lo que t&uacute; hagas o c&oacute;mo vistas. Es muy importante que busques atenci&oacute;n m&eacute;dica en los casos de violaci&oacute;n sexual, ya que son urgencias m&eacute;dicas y requieren atenci&oacute;n inmediata.</p>\r\n<p>Al acudir a una unidad m&eacute;dica, podr&aacute;s recibir las siguientes atenciones:</p>\r\n<p>Evaluaci&oacute;n y tratamiento de lesiones f&iacute;sicas.</p>\r\n<p>Atenci&oacute;n psicol&oacute;gica mediante intervenci&oacute;n en crisis y posterior seguimiento (en aquellas unidades en donde no cuenten con &eacute;ste personal, se te canalizar&aacute; a la unidad de salud m&aacute;s cercana que tenga el servicio de psicolog&iacute;a).</p>\r\n<p>En caso de violaci&oacute;n, se ofrece de inmediato y hasta en un m&aacute;ximo de 120 horas despu&eacute;s de ocurrido el evento, la anticoncepci&oacute;n de emergencia, previa informaci&oacute;n completa sobre la utilizaci&oacute;n de &eacute;ste m&eacute;todo, a fin de que decidas de manera libre e informada.</p>\r\n<p>Cabe se&ntilde;alar que entre m&aacute;s pronto se utilice la anticoncepci&oacute;n de emergencia habr&aacute; mayor probabilidad de prever un embarazo no deseado.</p>\r\n<p>Recibir informaci&oacute;n y profilaxis (tratamiento) para la prevenci&oacute;n de Infecciones de Transmisi&oacute;n Sexual (ITS) incluyendo VIH/Sida, previa valoraci&oacute;n m&eacute;dica. Resaltando la importancia de tomar el medicamento acorde a las indicaciones m&eacute;dicas para asegurar la efectividad el mismo, as&iacute; como acudir a las consultas m&eacute;dicas de seguimiento.</p>\r\n<p>Interrupci&oacute;n Voluntaria del Embarazo (IVE), previa solicitud por escrito bajo protesta de decir verdad de la mujer que manifiesta haber sido v&iacute;ctima de violaci&oacute;n, y en caso de ser menor de 12 a&ntilde;os de edad, a solicitud de su pap&aacute; y/o madre, o a falta de &eacute;stos, de su tutor o conforme a las disposiciones jur&iacute;dicas aplicables.</p>\r\n<p>Previa a la intervenci&oacute;n m&eacute;dica se brindar&aacute; informaci&oacute;n completa y clara sobre los posibles riesgos y consecuencias del procedimiento de IVE, con el fin de garantizar que la decisi&oacute;n de la v&iacute;ctima sea una decisi&oacute;n informada conforme a las disposiciones aplicables.</p>\r\n<p>Si en el momento de la solicitud de atenci&oacute;n no se pudiera prestar el servicio de manera oportuna y adecuada, se referir&aacute; de inmediato a la usuaria, a una unidad de salud que cuente con este tipo de personal y con infraestructura de atenci&oacute;n con calidad.</p>\r\n<p>Actualmente en el Estado de Guanajuato se cuenta con Centros Especializados de Atenci&oacute;n a la Violencia Familiar (CEAVIF):</p>\r\n<p>Cualquier duda o pregunta que tengas puedes hacerla a trav&eacute;s de nuestro chat.</p>', NULL, 'Qué_hago_si_soy_víctima_de_Violencia_Sexual.jpg', 'Qué_hago_si_soy_víctima_de_Violencia_Sexual.jpg', '0000-00-00', 4, 'que-hago-si-soy-victima-de-violencia-sexual', 1, '2018-11-14 06:00:00', '2020-03-28 21:09:58', NULL, NULL, 203, 9);
INSERT INTO `articulos` (`id`, `id_categoria`, `titulo`, `contenido`, `bullet`, `img`, `img_mobile`, `fecha`, `autor`, `slug`, `activo`, `created_at`, `updated_at`, `deleted_at`, `programacion`, `vistas`, `id_seccion`) VALUES
(22, 4, 'Violencia contra las mujeres', '<p>Las Naciones Unidas definen la violencia contra la mujer como &ldquo;todo acto de violencia de g&eacute;nero que resulte, o pueda tener como resultado un da&ntilde;o f&iacute;sico, sexual o psicol&oacute;gico para la mujer, inclusive las amenazas de tales actos, la coacci&oacute;n o la privaci&oacute;n arbitraria de libertad, tanto si se producen en la vida p&uacute;blica como en la privada&rdquo;.</p>\r\n<p>&nbsp;</p>\r\n<p>La violencia de pareja se refiere al comportamiento de la pareja o ex pareja que causa da&ntilde;o f&iacute;sico, sexual o psicol&oacute;gico, incluidas la agresi&oacute;n f&iacute;sica, la coacci&oacute;n sexual, el maltrato psicol&oacute;gico y las conductas de control.</p>\r\n<p>&nbsp;</p>\r\n<p>La violencia sexual es cualquier acto sexual, la tentativa de consumar un acto sexual u otro acto dirigido contra la sexualidad de una persona mediante coacci&oacute;n por otra persona, independientemente de su relaci&oacute;n con la v&iacute;ctima, en cualquier &aacute;mbito. Comprende la violaci&oacute;n, que se define como la penetraci&oacute;n, mediante coerci&oacute;n f&iacute;sica o de otra &iacute;ndole, de la vagina o el ano con el pene, otra parte del cuerpo o un objeto.</p>\r\n<p>&nbsp;</p>\r\n<p>Datos y cifras</p>\r\n<p>&nbsp;</p>\r\n<p>La violencia contra la mujer -especialmente la ejercida por su pareja y la violencia sexual- constituye un grave problema de salud p&uacute;blica y una violaci&oacute;n de los derechos humanos de las mujeres.</p>\r\n<p>Las estimaciones mundiales publicadas por la OMS indican que alrededor de una de cada tres (35%) mujeres en el mundo han sufrido violencia f&iacute;sica y/o sexual de pareja o violencia sexual por terceros en alg&uacute;n momento de su vida.</p>\r\n<p>La mayor&iacute;a de estos casos son violencia infligida por la pareja. En todo el mundo, casi un tercio (30%) de las mujeres que han tenido una relaci&oacute;n de pareja refieren haber sufrido alguna forma de violencia f&iacute;sica y/o sexual por parte de su pareja en alg&uacute;n momento de su vida.</p>\r\n<p>Un 38% de los asesinatos de mujeres que se producen en el mundo son cometidos por su pareja masculina.</p>\r\n<p>Estas formas de violencia pueden afectar negativamente a la salud f&iacute;sica, mental, sexual y reproductiva de las mujeres y aumentar la vulnerabilidad al VIH.</p>\r\n<p>Entre los factores asociados a un mayor riesgo de cometer actos violentos cabe citar un bajo nivel de instrucci&oacute;n, el maltrato infantil o haber estado expuesto a escenas de violencia en la familia, el uso nocivo del alcohol, actitudes de aceptaci&oacute;n de la violencia y las desigualdades de g&eacute;nero.</p>\r\n<p>Entre los factores asociados a un mayor riesgo de ser v&iacute;ctima de la pareja o de violencia sexual figuran un bajo nivel de instrucci&oacute;n, el hecho de haber estado expuesto a escenas de violencia entre los progenitores, el maltrato durante la infancia, actitudes de aceptaci&oacute;n de la violencia y las desigualdades de g&eacute;nero.</p>\r\n<p>En entornos de ingresos altos, hay datos que apuntan que los programas escolares de prevenci&oacute;n de la violencia de pareja (o violencia en el noviazgo) entre los j&oacute;venes pueden ser eficaces.</p>\r\n<p>En los entornos de ingresos bajos, las estrategias destinadas a aumentar la emancipaci&oacute;n econ&oacute;mica y social de la mujer, como la microfinanciaci&oacute;n unida a la formaci&oacute;n en igualdad de g&eacute;nero y las iniciativas comunitarias dirigidas contra la desigualdad de g&eacute;nero o tendentes a mejorar las aptitudes para las relaciones interpersonales, han demostrado una cierta eficacia para reducir la violencia de pareja.</p>\r\n<p>Las situaciones de conflicto, posconflicto y desplazamiento pueden agravar la violencia, como la violencia por parte de la pareja, y dar lugar a formas adicionales de violencia contra las mujeres.</p>\r\n<p>Magnitud del problema</p>\r\n<p>&nbsp;</p>\r\n<p>Las estimaciones m&aacute;s precisas de la prevalencia de la violencia de pareja y la violencia sexual en entornos sin conflictos son las proporcionadas por encuestas poblacionales basadas en el testimonio de las v&iacute;ctimas. En el Estudio multipa&iacute;s de la OMS sobre salud de la mujer y la violencia dom&eacute;stica, realizado en 2005 en 10 pa&iacute;ses, en su mayor&iacute;a de renta media y baja, se observ&oacute; que en las mujeres de 15 a 49 a&ntilde;os:</p>\r\n<p>&nbsp;</p>\r\n<p>entre el 15% de ellas en el Jap&oacute;n y el 71% en Etiop&iacute;a refer&iacute;an haber sufrido a lo largo de su vida violencia f&iacute;sica o sexual perpetrada por su pareja;</p>\r\n<p>entre un 0,3% y un 11,5% refer&iacute;an haber sufrido violencia sexual perpetrada por alguien que no era su pareja despu&eacute;s de cumplidos 15 a&ntilde;os;</p>\r\n<p>la primera experiencia sexual hab&iacute;a sido forzada en muchos casos (17% de las mujeres en la Tanzan&iacute;a rural, 24% en el Per&uacute; rural y 30% en zonas rurales de Bangladesh indicaron que su primera experiencia sexual hab&iacute;a sido forzada).</p>\r\n<p>En un an&aacute;lisis realizado en 2013 por la OMS, la Escuela de Higiene y Medicina Tropical de Londres y el Consejo de Investigaciones M&eacute;dicas, y basado en los datos de m&aacute;s de 80 pa&iacute;ses, se comprob&oacute; que casi una tercera parte (30%) de las mujeres que han mantenido una relaci&oacute;n de pareja han sufrido violencia f&iacute;sica o sexual por parte de su pareja.</p>\r\n<p>&nbsp;</p>\r\n<p>Las estimaciones de la prevalencia van del 23,2% en los pa&iacute;ses de ingresos elevados y el 24,6% en los pa&iacute;ses de la Regi&oacute;n del Pac&iacute;fico Occidental al 37% en la Regi&oacute;n del Mediterr&aacute;neo Oriental y el 37,7% en la Regi&oacute;n de Asia Sudoriental. Por otra parte, un 38% de los asesinatos de mujeres que se producen en el mundo son cometidos por su pareja. Adem&aacute;s de la violencia de pareja, el 7% de las mujeres refieren hacer sufrido agresiones sexuales por parte de personas distintas de su pareja, aunque los datos al respecto son m&aacute;s limitados.</p>\r\n<p>&nbsp;</p>\r\n<p>La violencia de pareja y la violencia sexual son perpetradas en su mayor&iacute;a por hombres contra mujeres y ni&ntilde;as. El abuso sexual infantil afecta a ni&ntilde;os y ni&ntilde;as. En los estudios internacionales realizados, aproximadamente el 20% de las mujeres y el 5%-10% de los hombres refieren haber sido v&iacute;ctimas de violencia sexual en la infancia. La violencia entre los j&oacute;venes, que incluye tambi&eacute;n la violencia de pareja, es otro gran problema.</p>\r\n<p>&nbsp;</p>\r\n<p>Factores de riesgo</p>\r\n<p>&nbsp;</p>\r\n<p>Los factores de riesgo de violencia de pareja y violencia sexual son de car&aacute;cter individual, familiar, comunitario y social. Algunos se asocian a la comisi&oacute;n de actos de violencia, otros a su padecimiento, y otros a ambos. Entre los factores de riesgo de ambas, violencia de pareja y violencia sexual, se encuentran los siguientes:</p>\r\n<p>&nbsp;</p>\r\n<p>un bajo nivel de instrucci&oacute;n (autores de violencia sexual y v&iacute;ctimas de violencia sexual);</p>\r\n<p>la exposici&oacute;n al maltrato infantil (autores y v&iacute;ctimas);</p>\r\n<p>la experiencia de violencia familiar (autores y v&iacute;ctimas);</p>\r\n<p>el trastorno de personalidad antisocial (autores);</p>\r\n<p>el uso nocivo del alcohol (autores y v&iacute;ctimas);</p>\r\n<p>el hecho de tener muchas parejas o de inspirar sospechas de infidelidad en la pareja (autores);</p>\r\n<p>las actitudes de aceptaci&oacute;n de la violencia (autores y v&iacute;ctimas).</p>\r\n<p>Entre los factores asociados espec&iacute;ficamente a la violencia de pareja cabe citar:</p>\r\n<p>&nbsp;</p>\r\n<p>los antecedentes de violencia (autores y v&iacute;ctimas);</p>\r\n<p>la discordia e insatisfacci&oacute;n marital (autores y v&iacute;ctimas).</p>\r\n<p>las dificultades de comunicaci&oacute;n entre los miembros de la pareja.</p>\r\n<p>Y entre los factores asociados espec&iacute;ficamente a la violencia sexual destacan:</p>\r\n<p>&nbsp;</p>\r\n<p>la creencia en el honor de la familia y la pureza sexual;</p>\r\n<p>las ideolog&iacute;as que consagran los privilegios sexuales del hombre; y</p>\r\n<p>la levedad de las sanciones legales contra los actos de violencia sexual.</p>\r\n<p>La desigualdad de la mujer con respecto al hombre y el uso normativo de la violencia para resolver los conflictos est&aacute;n estrechamente asociados tanto a la violencia de pareja como a la violencia sexual ejercida por cualquier persona.</p>\r\n<p>&nbsp;</p>\r\n<p>Consecuencias para la salud</p>\r\n<p>&nbsp;</p>\r\n<p>La violencia de pareja y la violencia sexual producen a las v&iacute;ctimas supervivientes y a sus hijos graves problemas f&iacute;sicos, psicol&oacute;gicos, sexuales y reproductivos a corto y a largo plazo, y tienen un elevado costo econ&oacute;mico y social.</p>\r\n<p>&nbsp;</p>\r\n<p>La violencia contra la mujer puede tener consecuencias mortales, como el homicidio o el suicidio.</p>\r\n<p>Asimismo, puede producir lesiones, y el 42% de las mujeres v&iacute;ctimas de violencia de pareja refieren alguna lesi&oacute;n a consecuencia de dicha violencia.</p>\r\n<p>La violencia de pareja y la violencia sexual pueden ocasionar embarazos no deseados, abortos provocados, problemas ginecol&oacute;gicos, e infecciones de transmisi&oacute;n sexual, entre ellas la infecci&oacute;n por VIH. El an&aacute;lisis de 2013 revel&oacute; que las mujeres que han sufrido maltratos f&iacute;sicos o abusos sexuales a manos de su pareja tienen una probabilidad 1,5 veces mayor de padecer infecciones de transmisi&oacute;n sexual, incluida la infecci&oacute;n por VIH en algunas regiones, en comparaci&oacute;n con las mujeres que no hab&iacute;an sufrido violencia de pareja. Por otra parte, tambi&eacute;n tienen el doble de probabilidades de sufrir abortos.</p>\r\n<p>La violencia en la pareja durante el embarazo tambi&eacute;n aumenta la probabilidad de aborto involuntario, muerte fetal, parto prematuro y beb&eacute;s con bajo peso al nacer.</p>\r\n<p>La violencia contra la mujer puede ser causa de depresi&oacute;n, trastorno de estr&eacute;s postraum&aacute;tico y otros trastornos de ansiedad, insomnio, trastornos alimentarios e intento de suicidio. Las mujeres que han sufrido violencia de pareja tienen casi el doble de probabilidades de padecer depresi&oacute;n y problemas con la bebida. El riesgo es a&uacute;n mayor en las que han sufrido violencia sexual por terceros.</p>\r\n<p>Entre los efectos en la salud f&iacute;sica se encuentran las cefaleas, lumbalgias, dolores abdominales, fibromialgia, trastornos gastrointestinales, limitaciones de la movilidad y mala salud general.</p>\r\n<p>La violencia sexual, sobre todo en la infancia, tambi&eacute;n puede incrementar el consumo de tabaco, alcohol y drogas, as&iacute; como las pr&aacute;cticas sexuales de riesgo en fases posteriores de la vida. Asimismo se asocia a la comisi&oacute;n (en el hombre) y el padecimiento (en la mujer) de actos de violencia.</p>\r\n<p>Repercusi&oacute;n en los ni&ntilde;os</p>\r\n<p>&nbsp;</p>\r\n<p>Los ni&ntilde;os que crecen en familias en las que hay violencia pueden sufrir diversos trastornos conductuales y emocionales. Estos trastornos pueden asociarse tambi&eacute;n a la comisi&oacute;n o el padecimiento de actos de violencia en fases posteriores de su vida.</p>\r\n<p>La violencia de pareja tambi&eacute;n se ha asociado a mayores tasas de mortalidad y morbilidad en los menores de 5 a&ntilde;os (por ejemplo, por enfermedades diarreicas y malnutrici&oacute;n).</p>\r\n<p>Costos sociales y econ&oacute;micos</p>\r\n<p>&nbsp;</p>\r\n<p>Los costos sociales y econ&oacute;micos de este problema son enormes y repercuten en toda la sociedad. Las mujeres pueden llegar a encontrarse aisladas e incapacitadas para trabajar, perder su sueldo, dejar de participar en actividades cotidianas y ver menguadas sus fuerzas para cuidar de s&iacute; mismas y de sus hijos.</p>\r\n<p>&nbsp;</p>\r\n<p>Prevenci&oacute;n y respuesta</p>\r\n<p>&nbsp;</p>\r\n<p>Hay cada vez m&aacute;s estudios bien dise&ntilde;ados sobre la eficacia de los programas de prevenci&oacute;n y respuesta. Son necesarios m&aacute;s recursos para reforzar la prevenci&oacute;n y la respuesta a la violencia de pareja y la violencia sexual, en particular la prevenci&oacute;n primaria, es decir, impedir que llegue a producirse.</p>\r\n<p>&nbsp;</p>\r\n<p>Respecto a la prevenci&oacute;n primaria, hay algunos datos correspondientes a pa&iacute;ses de ingresos altos que sugieren que los programas escolares de prevenci&oacute;n de la violencia en las relaciones de noviazgo son eficaces. No obstante, todav&iacute;a no se ha evaluado su posible eficacia en entornos con recursos escasos.</p>\r\n<p>&nbsp;</p>\r\n<p>Otras estrategias de prevenci&oacute;n primaria que se han revelado prometedoras pero deber&iacute;an ser evaluadas m&aacute;s a fondo son por ejemplo las que combinan la emancipaci&oacute;n econ&oacute;mica de la mujer con la formaci&oacute;n en materia de igualdad de g&eacute;nero, las que fomentan la comunicaci&oacute;n y las relaciones interpersonales dentro de la comunidad, las que reducen el acceso al alcohol y su uso nocivo, y las que tratan de cambiar las normas culturales en materia de g&eacute;nero.</p>\r\n<p>&nbsp;</p>\r\n<p>Para propiciar cambios duraderos, es importante que se promulguen leyes y se formulen pol&iacute;ticas que:</p>\r\n<p>&nbsp;</p>\r\n<p>protejan a la mujer;</p>\r\n<p>combatan la discriminaci&oacute;n de la mujer;</p>\r\n<p>fomenten la igualdad de g&eacute;nero; y</p>\r\n<p>ayuden a adoptar normas culturales m&aacute;s pac&iacute;ficas.</p>\r\n<p>Una respuesta adecuada del sector de la salud puede ser de gran ayuda para la prevenci&oacute;n de la violencia contra la mujer y la respuesta consiguiente. La sensibilizaci&oacute;n y la formaci&oacute;n de los prestadores de servicios de salud y de otro tipo constituyen por tanto otra estrategia importante. Para abordar de forma integral las consecuencias de la violencia y las necesidades de las v&iacute;ctimas y supervivientes se requiere una respuesta multisectorial.</p>', NULL, 'violencia_contra_las_mujeres_2.jpg', 'violencia_contra_las_mujeres_2.jpg', '0000-00-00', 4, 'violencia-contra-las-mujeres', 1, '2018-11-14 06:00:00', '2020-03-28 21:06:41', NULL, NULL, 0, 9),
(23, 4, '¿Qué es la Violencia Sexual?', '<p>&ldquo;Es todo acto sexual, la tentativa de consumar un acto sexual, los comentarios o insinuaciones sexuales no deseados o las acciones para comercializar o utilizar de cualquier otro modo la sexualidad de una persona mediante la coacci&oacute;n por otra persona, independientemente de la relaci&oacute;n de &eacute;sta con la v&iacute;ctima, en cualquier &aacute;mbito, incluidos el hogar y el lugar de trabajo.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p>La violencia sexual es la que permanece m&aacute;s oculta, particularmente la que ocurre en la familia contra las mujeres y ni&ntilde;os o ni&ntilde;as.</p>\r\n<p>&nbsp;</p>\r\n<p>La Norma Oficial Mexicana 046-SSA2-2005, define el maltrato sexual como &ldquo;la acci&oacute;n u omisi&oacute;n mediante la cual se induce o se impone la realizaci&oacute;n de pr&aacute;cticas sexuales no deseadas o respecto de las cuales se tiene la imposibilidad para consentir.&rdquo;</p>\r\n<p>Es decir, se refiere al acto que con fines lascivos cometa una persona de cualquier sexo contra otra para obligarla a realizar actos sexuales sin su consentimiento, con o sin fines de c&oacute;pula, vali&eacute;ndose de su posici&oacute;n jer&aacute;rquica, derivada de relaciones laborales, docentes, dom&eacute;sticas o cualquiera otra que implique subordinaci&oacute;n, as&iacute; como sometimiento por fuerza f&iacute;sica o moral.</p>\r\n<p>&nbsp;</p>\r\n<p>Este concepto incluye todas las formas de coerci&oacute;n sexual, por ejemplo: el hostigamiento, la imposici&oacute;n forzada de determinadas pr&aacute;cticas sexuales tales como el manoseo, exposici&oacute;n a la pornograf&iacute;a. Comprende acciones que obligan a una persona a participar en actos sexuales sin su consentimiento; incluye el sexo forzado incluso por razones econ&oacute;micas, la violaci&oacute;n durante una cita lo que puede incluir la administraci&oacute;n de alcohol y drogas; la violaci&oacute;n marital, la violaci&oacute;n por grupos de hombres (pandilleros); el incesto; el embarazo forzado; el tr&aacute;fico en la industria del sexo incluyendo las relaciones sexuales forzadas dentro del matrimonio.</p>\r\n<p>&nbsp;</p>\r\n<p>La violaci&oacute;n se concreta en el uso de la fuerza f&iacute;sica o coacci&oacute;n emocional, para penetrar en los orificios vaginal, oral o anal de una persona sin su consentimiento. Asimismo, el ataque sexual es un contacto sexual que no cuenta con el consentimiento de la mujer y no necesariamente incluye penetraci&oacute;n. En la mayor&iacute;a de los casos, el atacante es alguien que la mujer conoce y tanto la violaci&oacute;n como el ataque sexual pueden ocurrir por &uacute;nica vez o continuamente.</p>\r\n<p>&nbsp;</p>\r\n<p>Algunos indicadores de violencia sexual se mencionan a continuaci&oacute;n:</p>\r\n<p>&nbsp;</p>\r\n<p>F&iacute;sicos: lesiones o infecciones genitales, anales, del tracto urinario u oral.</p>\r\n<p>Psicol&oacute;gicos: baja autoestima, ideas y actos autodestructivos, trastornos sexuales, del estado de &aacute;nimo, de ansiedad, de la conducta alimenticia, por estr&eacute;s postraum&aacute;tico; abuso o dependencia a sustancias, entre otros.</p>\r\n<p>Alteraciones en el funcionamiento social e incapacidad para ejercer la autonom&iacute;a reproductiva y sexual.</p>', NULL, 'Qué_es_la_Violencia_Sexual.jpg', 'Qué_es_la_Violencia_Sexual.jpg', '0000-00-00', 4, 'que-es-la-violencia-sexual', 1, '2018-11-14 06:00:00', '2020-03-28 21:08:41', NULL, NULL, 1424, 9),
(24, 4, 'Hablemos de acoso escolar', '<p>&iquest;Qu&eacute; es el Acoso Escolar y c&oacute;mo podemos afrontarlo desde el hogar?</p>\r\n<p>En la actualidad es com&uacute;n que nuestros hijos/hijas est&eacute;n expuestos a situaciones violentas, a trav&eacute;s de los medios de comunicaci&oacute;n, las redes sociales, los videojuegos, etc. Vivimos en un mundo en el que pareciera que se normalizan los actos violentos, lo que se convierte en un riesgo para nuestros ni&ntilde;os y adolescentes si no cuentan con informaci&oacute;n y traducci&oacute;n de los hechos por parte de los padres.</p>\r\n<p>&nbsp;</p>\r\n<p>El acoso escolar es cualquier acto de intimidaci&oacute;n, comportamiento agresivo, hacia un par, es decir, hacia alg&uacute;n compa&ntilde;ero a trav&eacute;s de amenazas, insultos, burlas que ridiculizan o exponen y vulneran su integridad, agresiones f&iacute;sicas, verbales, o la exclusi&oacute;n social, con la finalidad de satisfacer una necesidad de control por parte del agresor.</p>\r\n<p>&nbsp;</p>\r\n<p>El acoso provoca una dolorosa herida en la autoestima y en la percepci&oacute;n de s&iacute; mismo ante los dem&aacute;s, llev&aacute;ndolo al sufrimiento en silencio en la mayor&iacute;a de los casos. Existen dificultades para hablar del problema por miedo a la venganza de su agresor, por verg&uuml;enza, por no saber c&oacute;mo reaccionar&aacute;n en casa, por lo que es importante que sepamos identificar los signos y s&iacute;ntomas del acoso escolar para poder orientarles y apoyarles.</p>\r\n<p>&nbsp;</p>\r\n<p>&iquest;C&oacute;mo puedo saber si mi hijo/hija est&aacute; siendo acosado en su escuela?</p>\r\n<p>&nbsp;</p>\r\n<p>Es importante observar cualquier cambio repentino en su comportamiento pues puede ser uno de los indicios de que algo no marcha bien, mantener una comunicaci&oacute;n asertiva, cercana y amorosa nos permitir&aacute; identificar con mayor facilidad dichos cambios.</p>\r\n<p>&nbsp;</p>\r\n<p>Signos y s&iacute;ntomas del acoso:</p>\r\n<p>&nbsp;</p>\r\n<p>Miedo de ir o volver caminando de la escuela</p>\r\n<p>Pide ser acompa&ntilde;ado hasta la escuela</p>\r\n<p>No desea ir a clases o se queja de sentirse enfermo</p>\r\n<p>Llega a casa con la ropa sucia o rota y le es dif&iacute;cil explicar lo sucedido</p>\r\n<p>Alteraciones en su apetito</p>\r\n<p>Se vuelve m&aacute;s solitario o retra&iacute;do</p>\r\n<p>Est&aacute; irritable, estresado, ansioso</p>\r\n<p>Se va a dormir llorando, tiene pesadillas</p>\r\n<p>Pierde constantemente sus pertenencias, &uacute;tiles, dinero</p>\r\n<p>Frecuentemente llega con moretones, rasgu&ntilde;os o lesiones</p>\r\n<p>Se niega a conversar sobre lo que est&aacute; ocurriendo</p>\r\n<p>Baja en su rendimiento acad&eacute;mico</p>\r\n<p>No existen signos &uacute;nicos para identificar el acoso, cada uno puede expresar de manera muy particular su angustia, por lo que es de vital importancia mantenernos cercanos y atentos a los cambios en su comportamiento y estado an&iacute;mico.</p>\r\n<p>&nbsp;</p>\r\n<p>&iquest;C&oacute;mo puedo ayudar a mi hijo/a?</p>\r\n<p>&nbsp;</p>\r\n<p>En ocasiones solemos recurrir a la pregunta &iquest;c&oacute;mo te fue hoy? Y nos acostumbramos a escuchar un &ldquo;bien&rdquo; &ldquo;normal&rdquo; como respuestas y continuamos absortos en la cotidianidad. Es un momento importante para reflexionar &iquest;qu&eacute; hacemos para acercarnos a nuestros hijos/hijas? &iquest;Realmente sabemos c&oacute;mo se sienten? &iquest;Qui&eacute;nes son sus amigos? &iquest;Cu&aacute;les son sus pasatiempos? Es preciso hacer una pausa y poner atenci&oacute;n especialmente en los detalles, su tono de voz, las expresiones faciales, corporales, sus gestos, de manera que se convierta en momento de comunicaci&oacute;n aut&eacute;ntico y no un simple intercambio de informaci&oacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p>&iquest;Qu&eacute; hacer si descubro que mi hijo/a est&aacute; siendo acosado?</p>\r\n<p>&nbsp;</p>\r\n<p>El estar preparados e informados nos ayudar&aacute; a reaccionar ante el acoso, brindarle una escucha respetuosa y comprensiva pues este tipo de violencia puede generar enojo, miedo verg&uuml;enza, culpa.</p>\r\n<p>Recuerda:</p>\r\n<p>&nbsp;</p>\r\n<p>Abordar el tema de manera que sepa que es escuchado, comprendido y apoyado.</p>\r\n<p>Recordarle que el acoso no es su culpa</p>\r\n<p>Sentirse mal no debe avergonzarle y que es un asunto que superar&aacute;n juntos.</p>\r\n<p>Impulsarle a decir NO al abuso como primer instancia</p>\r\n<p>Recordarle que el que haya confiado en contarle es importante y que la informaci&oacute;n que pueda revelar ser&aacute; para su beneficio, no sin antes coment&aacute;rselo para fomentar la confianza en la comunicaci&oacute;n.</p>\r\n<p>Buscar apoyo para terminar con el acoso a trav&eacute;s las autoridades escolares.</p>\r\n<p>&iquest;Qu&eacute; hacer si mi hijo/a es quien acosa?</p>\r\n<p>&nbsp;</p>\r\n<p>Si hemos detectado que nuestro hijo/a es quien est&aacute; agrediendo a sus compa&ntilde;eros es importante que no seamos c&oacute;mplices del abuso, es necesario actuar. Acosar puede ser la manera en la que ha aprendido a conseguir sus objetivos por lo que puede traerle dificultades para establecer relaciones positivas en el futuro.</p>\r\n<p>&nbsp;</p>\r\n<p>&iquest;C&oacute;mo puedo ayudarle?</p>\r\n<p>&nbsp;</p>\r\n<p>Mantener la calma y conversar el tema con &eacute;l</p>\r\n<p>Dejarle claro que no aprueban el acoso escolar</p>\r\n<p>Lograr la empat&iacute;a por la v&iacute;ctima, ponerse en sus zapatos (intentar que piense en c&oacute;mo puede sentirse la v&iacute;ctima)</p>\r\n<p>Apoyo para lograr que termine con el acoso</p>\r\n<p>Utilizar m&eacute;todos para controlar el enojo y lidiar con &eacute;l</p>\r\n<p>Mostrarle a trav&eacute;s del ejemplo relaciones saludables y respetuosas</p>\r\n<p>Dedicar tiempo de calidad para conocer sus sentimientos y alentarlo a expresarlos.</p>\r\n<p>Explicarle que el conflicto forma parte de nuestra vida cotidiana y que debemos buscar la resoluci&oacute;n positiva.</p>\r\n<p>Poner l&iacute;mites en la educaci&oacute;n de nuestros hijos/hijas es una forma de expresarles amor pues les ayuda a desarrollar la tolerancia a la frustraci&oacute;n y aceptaci&oacute;n de las diferencias.</p>\r\n<p>Inculcarles la importancia del compa&ntilde;erismo, del apoyo y la ayuda a los dem&aacute;s.</p>\r\n<p>Ense&ntilde;arles a ser asertivos sin ser agresivos en la defensa de sus ideas frente a una acci&oacute;n o conducta.</p>\r\n<p>Ninguna forma de violencia debe ser normalizada, es necesario que estemos atentos a lo que sucede en nuestros hogares y con nuestra familia, atender a sus cambios y peticiones de atenci&oacute;n y sobre todo buscar apoyo de profesionales en caso de requerir una intervenci&oacute;n especializada.</p>', 'Hablemos de acoso escolar', 'Hablemos_de_acoso_escolar.jpg', 'Hablemos_de_acoso_escolar.jpg', '0000-00-00', 4, 'hablemos-de-acoso-escolar-', 1, '2018-11-14 06:00:00', '2020-03-28 21:01:59', NULL, NULL, 323, 9),
(25, 1, 'Bebe responsablemente', '<p>El trago est&aacute;ndar es la unidad que mida la cantidad de alcohol puro que contiene una bebida. Equivale a 12 gramos de alcohol puro por copa y es aproximadamente lo que contiene un vaso peque&ntilde;o (caballito) de tequila, una copa de vino, un tarro de cerveza.</p>\r\n<p>Para beber responsablemente:</p>\r\n<ul>\r\n<li>MUJERES: no m&aacute;s de 1 copa por hora, no m&aacute;s de 3 copas por d&iacute;a y no m&aacute;s de 9 copas por semana.</li>\r\n<li>HOMBRES: no m&aacute;s de 2 copas por hora, no m&aacute;s de 4 copas por d&iacute;a y no m&aacute;s de 12 copas por semana.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&iquest;Qu&eacute; puedes hacer para consumir menos?</p>\r\n<ul>\r\n<li>Estar descansado, relajado y sin presiones</li>\r\n<li>Saciar tu sed antes de empezar a consumir</li>\r\n<li>Comer antes de consumir</li>\r\n<li>Botanear mientras consumes</li>\r\n<li>Tomar m&aacute;ximo 3 tragos est&aacute;ndar</li>\r\n<li>Tomar un trago est&aacute;ndar por hora</li>\r\n<li>Dejar pasar 20 minutos antes de consumir la siguiente copa.</li>\r\n<li>Poner el vaso lejos de mi alcance</li>\r\n<li>Estar en un lugar seguro</li>\r\n<li>Tomar solo cuando se quiera</li>\r\n</ul>', 'Bebe responsablemente', 'articulos\\March2020\\J5yBehsWzVOUhQvg2EsX.jpg', 'articulos\\March2020\\r6tR9N6uw1ZBWT3Kl13d.jpg', '0000-00-00', 4, 'bebe-responsablemente', 1, '2018-11-18 06:00:00', '2020-03-28 20:40:19', NULL, NULL, 3413, 9),
(26, 1, 'Efectos nocivos del consumo de alcohol', '<p><strong>Consecuencias a corto plazo</strong></p>\r\n<p>Las consecuencias a corto plazo son llamadas as&iacute; porque pueden ocurrir unos minutos u horas despu&eacute;s de haber consumido o incluso presentarse d&iacute;as posteriores a la ingesta de alcohol.</p>\r\n<p>Una vez que el alcohol llega al cerebro es cuando se originan las conocidas sensaciones de bienestar, euforia y desinhibici&oacute;n. Aunque en un primer momento estas sensaciones son positivas para la persona que se encuentra consumiendo, momentos despu&eacute;s se pueden presentar algunas alteraciones en el comportamiento que pueden provocar consecuencias que pongan en riesgo el bienestar y salud del individuo.</p>\r\n<p>Debido a la naturaleza depresora del alcohol se presentan los siguientes efectos:</p>\r\n<p>Se ven retardadas funciones mentales como el habla, la memoria y el raciocinio.</p>\r\n<p><strong>Conducta motora: </strong>El alcohol afecta los centros motores y cuando estas &aacute;reas quedan deprimidas, debido al efecto inhibitorio del alcohol, los movimientos son menos coordinados y los reflejos se vuelven m&aacute;s lentos.</p>\r\n<p><strong>Nervios craneales:</strong> Si el individuo contin&uacute;a consumiendo alcohol, se afectan los centros neurol&oacute;gicos de la parte media del cerebro, los cuales controlan los m&uacute;sculos del habla, los movimientos y la actividad de los ojos.</p>\r\n<p><strong>Accidentes:</strong> Los accidentes que pueden presentarse suelen ir de los m&aacute;s comunes como sufrir una ca&iacute;da, o presentar accidentes mayores, tales como ser atropellado, sufrir accidentes automovil&iacute;sticos con lesiones graves, entre otros. El com&uacute;n denominador de este tipo de consecuencias es la incapacidad de responder de manera efectiva a situaciones de peligro con respuestas motoras que eviten accidentes f&iacute;sicos.</p>\r\n<p><strong>Pleitos: </strong>Cuando los individuos est&aacute;n bajo el influjo del alcohol pueden experimentar con frecuencia irritabilidad, estallidos de c&oacute;lera, enfrentamientos con los dem&aacute;s, en los que la agresividad puede tener una manifestaci&oacute;n verbal o incluso f&iacute;sica. Por lo tanto, las discusiones y las ri&ntilde;as, suelen ser una constante y un problema social evidente.</p>\r\n<p><strong>Relaciones sexuales no deseadas:</strong> Cuando el consumo de alcohol influye en el &aacute;rea sexual del individuo, &eacute;ste puede tener encuentros sexuales de riesgo que dan como resultado embarazos no deseados o la adquisici&oacute;n de enfermedades de transmisi&oacute;n sexual.</p>\r\n<p><strong>Problemas legales:</strong> Los usuarios reportan con frecuencia ser detenidos por consumir en v&iacute;a p&uacute;blica, realizar actos inmorales en v&iacute;a p&uacute;blica o ser despojados de sus pertenencias a cambio de no ser detenidos.</p>\r\n<p><strong>Consecuencias a largo plazo</strong></p>\r\n<p>Las consecuencias a largo plazo se presentan a causa de un consumo severo y cr&oacute;nico de alcohol y dichas consecuencias, como su nombre lo indica, se presentan a&ntilde;os despu&eacute;s.</p>\r\n<p><strong>H&iacute;gado: </strong>Cuando se presenta un consumo excesivo de alcohol, la alcoholdeshidrogenasa (enzima) se ve obligada a metabolizar y eliminar el alcohol de forma constante, por lo tanto, con el tiempo se lesionan y se destruyen las c&eacute;lulas del h&iacute;gado a causa de esta eliminaci&oacute;n.</p>\r\n<p>El consumo excesivo de alcohol puede desembocar en enfermedades como:</p>\r\n<p><strong>La dilataci&oacute;n del h&iacute;gado (inflamaci&oacute;n):</strong> Es un signo caracter&iacute;stico que sugiere una ingesta de alcohol superior a la que el &oacute;rgano pude soportar.</p>\r\n<p><strong>La hepatitis alcoh&oacute;lica: </strong>Se trata de una inflamaci&oacute;n del h&iacute;gado, caracterizada por aumento de volumen, degeneraci&oacute;n y destrucci&oacute;n de las c&eacute;lulas hep&aacute;ticas. Con esta hepatitis se puede evolucionar hacia el fracaso total del &oacute;rgano.</p>\r\n<p><strong>La cirrosis: </strong>Es una severa lesi&oacute;n del h&iacute;gado producida por el alcohol. Si progresa esta lesi&oacute;n, se producir&aacute; la disfunci&oacute;n total del &oacute;rgano y por lo tanto la muerte del individuo.</p>\r\n<p><strong>Alucinaciones:</strong> Se producen por el consumo elevado de alcohol, son generalmente auditivas y pueden aparecer tras la privaci&oacute;n o reducci&oacute;n brusca de la ingesta de alcohol. Se trata de percepciones sensoriales imaginarias, que implican una p&eacute;rdida de la realidad. Las alucinaciones van casi siempre acompa&ntilde;adas de agitaci&oacute;n psicomotriz, temblores generalizados y tensi&oacute;n arterial alta. Tambi&eacute;n las alucinaciones suelen tener forma de voces, cuya intensidad y frecuencia aumenta por las noches y estas voces generan ideas persecutorias. Dichas alucinaciones auditivas sobrevienen como consecuencia de la irritaci&oacute;n de la corteza auditiva cerebral, inducida por la acci&oacute;n t&oacute;xica que el alcohol ejerce en &eacute;sta.</p>\r\n<p><strong>Atenci&oacute;n y Memoria:</strong> Estas facultades se ven disminuidas por el alcohol. La intoxicaci&oacute;n alcoh&oacute;lica puede originar importantes lesiones cerebrales, muchas veces irreversibles, como cuando se presenta p&eacute;rdida o disminuci&oacute;n de la memoria la cual dar&aacute; lugar a diversos tipos de amnesia, ya que se produce una alteraci&oacute;n en el registro, fijaci&oacute;n, conservaci&oacute;n, evocaci&oacute;n o recuerdo de vivencias y experiencias.</p>\r\n<p><strong>Convulsiones:</strong> Son contracciones bruscas, intensas e involuntarias de los m&uacute;sculos que rigen los movimientos involuntarios. Las convulsiones se producen por la alteraci&oacute;n de neuronas motoras localizadas en la corteza cerebral. Estas neuronas se lesionan a causa del consumo de alcohol.</p>\r\n<p><strong>Coraz&oacute;n:</strong> El alcohol et&iacute;lico al oxidarse en el h&iacute;gado, da lugar al &aacute;cido ac&eacute;tico que es un &aacute;cido graso precursor del colesterol, de ah&iacute; que la oxidaci&oacute;n del alcohol produzca un r&aacute;pido aumento de grasas en h&iacute;gado y sangre. Por lo tanto, el aumento de colesterol en la sangre obliga al coraz&oacute;n a aumentar la presi&oacute;n de la sangre. Por esto, cuanto m&aacute;s alcohol se ingiera, mayor ser&aacute; la tasa de colesterol que se registrar&aacute;. Tambi&eacute;n se pueden producir cardiopat&iacute;as que se originan por la incapacidad del m&uacute;sculo card&iacute;aco para impulsar la sangre hacia las arterias, la dilataci&oacute;n del coraz&oacute;n e insuficiencia card&iacute;aca.</p>\r\n<p><strong>Est&oacute;mago:</strong> Las &uacute;lceras en el tracto gastrointestinal constituyen una de las principales afecciones originadas por el consumo de alcohol. Esta afecci&oacute;n es causada por la acci&oacute;n irritante del alcohol, adem&aacute;s la producci&oacute;n de histamina que se presenta, estimula la secreci&oacute;n g&aacute;strica. Este proceso da por resultado la aparici&oacute;n de &uacute;lceras e inflamaci&oacute;n del est&oacute;mago. Otra de las complicaciones m&aacute;s frecuentes son las hemorragias que pueden desembocar en un posible cuadro cancer&iacute;geno.</p>\r\n<p><strong>P&aacute;ncreas: </strong>El abuso cr&oacute;nico del alcohol se asocia a la inflamaci&oacute;n del p&aacute;ncreas y este abuso puede interferir con la secreci&oacute;n de los jugos digestivos producidos por dicho &oacute;rgano.</p>\r\n<p><strong>Genitales: </strong>La intoxicaci&oacute;n alcoh&oacute;lica cr&oacute;nica altera la erecci&oacute;n y la eyaculaci&oacute;n en el hombre y con el paso del tiempo puede presentar atrofia testicular con disminuci&oacute;n del n&uacute;mero de espermatozoides; p&eacute;rdida de motilidad e impotencia. El individuo presenta deseo sexual pero no tiene fuerza f&iacute;sica suficiente para satisfacerlo. En la mujer, el consumo de alcohol puede ocasionar alteraciones en el ciclo sexual y frigidez.</p>\r\n<p><strong>Consecuencias psicol&oacute;gicas y sociales a largo plazo</strong></p>\r\n<p><strong>Problemas familiares:</strong> Los adolescentes comienzan desobedeciendo las reglas familiares y se retraen o dejan de comunicarse con la familia. Empieza a existir una clara distorsi&oacute;n de la realidad por parte del adolescente por lo que puede pensar que no es entendido y comprendido, esto puede explicar el aislamiento y el cambio en la forma de relacionarse con la familia. Los conflictos aumentan debido a las discusiones en torno a su consumo de alcohol lo que genera mayor distanciamiento y hostilidad.</p>\r\n<p><strong>Falta de estabilidad social y separaci&oacute;n de la familia:</strong> Cuando se tiene un consumo excesivo de alcohol, el car&aacute;cter y la forma en la que el individuo se comporta van experimentado profundas transformaciones. Estos cambios los perciben principalmente los familiares, ya que el propio individuo no suele ser consciente de ellos o los atribuye a causas ajenas al alcohol. La persona suele mostrarse nerviosa, malhumorada, irritable, reacciona con brusquedad ante cualquier peque&ntilde;a adversidad, acusa a sus familiares de incomprensi&oacute;n y falta de comunicaci&oacute;n. Presenta cierta hostilidad hacia quienes lo rodean y hacia quienes conviven con &eacute;l teniendo una reacci&oacute;n de ataque, y en su intento por reestablecer una posici&oacute;n en la familia, utiliza la agresividad, ya sea verbal o f&iacute;sica.</p>\r\n<p><strong>Ausencias escolares o laborales:</strong> El individuo presenta bajos niveles de motivaci&oacute;n e inter&eacute;s, una actitud negativa y faltas al deber, bajo rendimiento acad&eacute;mico, ausencias frecuentes y problemas de disciplina. Lo anterior puede provocar el abandono total ya sea de la escuela o del trabajo.</p>', NULL, '03.jpg', '03.jpg', '2018-11-15', 4, 'efectos-nocivos-del-consumo-de-alcohol', 1, '2018-11-15 06:00:00', '2020-03-28 20:58:11', NULL, NULL, 393, 9),
(27, 1, '¿Qué hacer si mi familia consume alcohol en altas cantidades?', '<p>Antes que nada hay que considerar que ya sea a corto o largo plazo, beber demasiado, siempre acaba por da&ntilde;ar al individuo, a su familia y a la sociedad.</p>\r\n<p>Ahora bien, se considera que una persona bebe en altas cantidades cuando:</p>\r\n<ol>\r\n<li>Bebe m&aacute;s de los l&iacute;mites de 12 tragos est&aacute;ndar por semana (hombres adultos).</li>\r\n<li>Bebe m&aacute;s de los l&iacute;mites de 9 tragos est&aacute;ndar por semana (mujeres adultas)</li>\r\n<li>Bebe m&aacute;s de 5 tragos est&aacute;ndar por ocasi&oacute;n.</li>\r\n</ol>\r\n<p>Y puede tratarse de una persona con consumo problem&aacute;tico de alcohol, si adem&aacute;s de lo anterior tambi&eacute;n:</p>\r\n<p>Puede haber desarrollado problemas f&iacute;sicos o sociales como resultado de su forma de beber.</p>\r\n<p>No presenta caracter&iacute;sticas cl&iacute;nicas de dependencia severa al alcohol, tal como preocupaci&oacute;n por el alcohol, s&iacute;ntomas del s&iacute;ndrome de abstinencia o consecuencias sociales o f&iacute;sicas severas por su patr&oacute;n de consumo.</p>\r\n<p>Cualquiera de ellos puede indicar que un problema de alcohol est&aacute; comenzando a desarrollarse.</p>\r\n<p>En t&eacute;rminos generales, el consumo excesivo de alcohol se puede tener en dos facetas: la primera corresponde a episodios agudos con grandes cantidades, y la segunda a un consumo excesivo cr&oacute;nico.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>RECOMENDACIONES</strong></p>\r\n<ul>\r\n<li>Reconoce el alcoholismo como una enfermedad y un problema social grave, contra el que todos debemos luchar.</li>\r\n<li>Trata de ayudar a quien lo necesite, pero nunca lo critiques, humilles ni averg&uuml;ences.</li>\r\n<li>Recuerda buscar atenci&oacute;n segura: el m&eacute;dico, el hospital, alcoh&oacute;licos an&oacute;nimos y recuerda que no hay curaciones m&aacute;gicas.</li>\r\n<li>Se humanitario y paciente con un enfermo de alcoholismo.</li>\r\n<li>Existe evidencia de que la enfermedad puede ser controlada mediante un adecuado tratamiento especializado y el apoyo familiar.</li>\r\n</ul>\r\n<p>En el Estado de Guanajuato contamos con Unidades M&eacute;dicas Especializadas (UNEME) como los Centros de Atenci&oacute;n Primaria a las Adicciones (CAPA) y el Centro de Atenci&oacute;n Integral de las Adicciones (CAIA) en el municipio de Le&oacute;n, Gto. Pregunta por ellas en tu unidad de salud m&aacute;s cercana, o bien a trav&eacute;s de nuestro chat.</p>', NULL, '031.jpg', '031.jpg', '0000-00-00', 4, 'que-hacer-si-mi-familia-consume-alcohol-en-altas-cantidades', 1, '2018-11-15 06:00:00', '2020-03-28 21:09:14', NULL, NULL, 384, 9),
(28, 1, 'Mitos y realidades del tabaco', '<p><strong>MITO:</strong> Fumar un cigarrillo relaja y alivia el estr&eacute;s.</p>\r\n<p><strong>REALIDAD:</strong> El tabaco no tiene propiedades relajantes puesto que es un estimulante. La aparente sensaci&oacute;n de &ldquo;alivio&rdquo; que se siente al fumar un cigarrillo se debe a la necesidad de disminuir los s&iacute;ntomas de abstinencia producidos por la falta de nicotina en el cerebro.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>MITO:</strong> Los cigarrillos bajos en nicotina no hacen da&ntilde;o, no son cancer&iacute;genos.</p>\r\n<p><strong>REALIDAD:</strong> Aunque los cigarrillos bajos en nicotina y alquitr&aacute;n son menos nocivos, se suelen fumar en mayor cantidad para conseguir la misma concentraci&oacute;n de nicotina en sangre, con lo cual se anulan sus ventajas y los riesgos se asemejan a los de los cigarrillos normales.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>MITO:</strong> El tabaco contamina, pero m&aacute;s los coches y las f&aacute;bricas, as&iacute; que si podemos ser v&iacute;ctimas de la contaminaci&oacute;n ambiental &iquest;por qu&eacute; preocuparnos?</p>\r\n<p><strong>REALIDAD: </strong>El tabaco es causante del 90% de los c&aacute;nceres de pulm&oacute;n y del 30 % de todos los c&aacute;nceres diagnosticados, frente al 2% producido por la contaminaci&oacute;n ambiental.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>MITO: </strong>Yo no dependo del tabaco, puedo dejar de fumar cuando quiera.</p>\r\n<p><strong>REALIDAD:</strong> La dependencia del tabaco es dif&iacute;cil de tratar, para dejar de fumar hay que tom&aacute;rselo muy en serio, y tener un tratamiento profesional.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>MITO:</strong> Cuando se deja de fumar se pasa muy mal, es peor el remedio que la enfermedad.</p>\r\n<p><strong>REALIDAD: </strong>Es cierto que al principio, cuando se deja el tabaco, la dependencia a la nicotina provoca malestar, pero se trata de una sensaci&oacute;n temporal. La dependencia f&iacute;sica de la nicotina solo dura alrededor de una semana, en cambio, los beneficios son muy evidentes e importantes y aparecen de manera progresiva en los pocos d&iacute;as de abandonar el consumo.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>MITO:</strong> Si se deja de fumar, se engorda siempre.</p>\r\n<p><strong>REALIDAD:</strong> Este mito es utilizado con frecuencia para no dejar de fumar. Es cierto que fumar conlleva un gasto cal&oacute;rico por s&iacute; mismo, y tras el abandono del tabaco puede producirse aumento de peso.</p>\r\n<p>&nbsp;</p>\r\n<p>La ansiedad por el s&iacute;ndrome de abstinencia, la mejora del gusto y del olfato al dejar de fumar contribuye al aumento de peso. Una alimentaci&oacute;n adecuada y ejercicio moderado pueden ser de ayuda y existen adem&aacute;s t&eacute;cnicas de tipo psicol&oacute;gico o farmacol&oacute;gico que son eficaces para este problema.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>MITO:</strong> Dejar de fumar es casi imposible.</p>\r\n<p><strong>REALIDAD:</strong> Dejar de fumar tiene sus dificultades, como ocurre con cualquier otra adicci&oacute;n, pero es posible. En la actualidad se dispone de una amplia gama de tratamientos farmacol&oacute;gicos y psicol&oacute;gicos que ayudan a dejar de fumar.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>MITO:</strong> Unos pocos cigarrillos al d&iacute;a no hacen mal.</p>\r\n<p><strong>REALIDAD:</strong> Muchos creen que solamente aquellas personas que fuman muchos cigarrillos al d&iacute;a est&aacute;n en peligro de sufrir problemas serios de salud. La enfermedad cardiovascular es la raz&oacute;n principal de muertes por causas relacionadas con el tabaco entre los fumadores y los no fumadores, y se puede encontrar esta enfermedad entre aquellos que tan s&oacute;lo fuman de tres a cinco cigarrillos diarios.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>MITO: </strong>Los cigarrillos Light o fumar con filtro es menos da&ntilde;ino.</p>\r\n<p><strong>REALIDAD:</strong> Estos cigarrillos son bajos en nicotina y alquitr&aacute;n pero tienen similares cantidades del resto de los componentes que los cigarrillos convencionales que tambi&eacute;n son cancer&iacute;genos. Adem&aacute;s, los consumidores, de forma inconsciente y para compensar los menores niveles de nicotina en sangre, fuman m&aacute;s cigarrillos e inhalan el humo m&aacute;s fuerte y profundamente, con lo cual los riesgos se asemejan a los de los cigarrillos normales.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>MITO: </strong>Conozco personas mayores que fuman mucho y nunca se enfermaron.</p>\r\n<p><strong>REALIDAD:</strong> Seguramente piensa en alg&uacute;n anciano que ha fumado toda la vida y est&eacute; bien. No olvidemos que vemos solo a los fumadores que llegan a vivir m&aacute;s. A los que han muerto a causa del tabaco no se los ve envejecer. Una de cada dos personas que fuma fallece por enfermedades relacionadas con el tabaco. Y la mitad de ellos lo hace en la edad media de la vida.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>MITO:</strong> El tabaco ambiental no mata.</p>\r\n<p><strong>REALIDAD:</strong> Treinta minutos de exposici&oacute;n pasiva al humo de tabaco son suficientes para que el sistema circulatorio del no fumador se comporte de manera similar al de un consumidor. Esta circunstancia aumenta el riesgo de sufrir, entre otras patolog&iacute;as, un infarto de miocardio. Los no fumadores que conviven o trabajan con fumadores tienen un mayor riesgo de contraer c&aacute;ncer de pulm&oacute;n que los que no viven ni trabajan con fumadores.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>MITO:</strong> Los medicamentos para dejar de fumar no funcionan.</p>\r\n<p><strong>REALIDAD:</strong> La terapia de reemplazo de nicotina y otros medicamentos, pueden duplicar las probabilidades de que una persona tenga &eacute;xito en dejar de fumar.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>MITO:</strong> No noto que me haga tanto da&ntilde;o como dicen.</p>\r\n<p><strong>REALIDAD: </strong>Aunque durante un tiempo el fumador no note los efectos nocivos del tabaco, el da&ntilde;o se va produciendo lenta y silenciosamente en el organismo.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>MITO:</strong> Por qu&eacute; voy a privarme de fumar si la poluci&oacute;n ambiental es mucho m&aacute;s contaminante que el humo del cigarrillo.</p>\r\n<p><strong>REALIDAD: </strong>El tabaco es causante del 90% de los c&aacute;nceres de pulm&oacute;n y del 30 % de todos los c&aacute;nceres diagnosticados, frente al 2% producido por la contaminaci&oacute;n ambiental.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>MITO</strong>: Una mujer embarazada que fuma de 3 a 5 cigarrillos por d&iacute;a no le causa da&ntilde;os al feto.</p>\r\n<p><strong>REALIDAD:</strong> Si una mujer embarazada fuma un cigarrillo, hay inmediatamente un aumento de la frecuencia cardiaca fetal de 130 a 180 latidos por minuto. Adem&aacute;s es m&aacute;s elevado el riesgo de aborto, placenta previa, bajo peso, desprendimiento prematuro de placenta y de parto prematuro.</p>\r\n<p>&nbsp;</p>\r\n<p>Siempre es un buen momento para tomar la decisi&oacute;n de dejar de fumar. Puede acudir a la unidad de salud m&aacute;s cercana para orientaci&oacute;n o bien comunicarte con nosotros a trav&eacute;s de nuestro chat.</p>', NULL, '04.jpg', '04.jpg', '0000-00-00', 4, 'mitos-y-realidades-del-tabaco', 1, '2018-11-15 06:00:00', '2020-03-28 21:03:34', NULL, NULL, 490, 9);
INSERT INTO `articulos` (`id`, `id_categoria`, `titulo`, `contenido`, `bullet`, `img`, `img_mobile`, `fecha`, `autor`, `slug`, `activo`, `created_at`, `updated_at`, `deleted_at`, `programacion`, `vistas`, `id_seccion`) VALUES
(29, 1, 'Consecuencias del consumo y  opciones de tratamiento', '<p>En la actualidad escuchamos en los diferentes medios de comunicaci&oacute;n e informaci&oacute;n que el tema de las adicciones se ha ido incrementando, que la adicci&oacute;n en los j&oacute;venes ya es un problema que se est&aacute; convirtiendo en un problema grave que puede generar una enfermedad mental; lamentablemente no son versiones alejadas de la realidad. Existen encuestas como la ENCODAT (Encuesta Nacional de Consumo de Drogas, alcohol y&nbsp; Tabaco&nbsp; 2016-2017) en donde se refleja que el consumo de drogas, legales (alcohol, tabaco) e ilegales (marihuana, cristal, etc), en los &uacute;ltimos a&ntilde;os, se ha convertido en nuestro pa&iacute;s en un problema de salud que ha cobrado especial importancia, que el consumo en sus diferentes niveles (uso, abuso o dependencia) est&aacute; dejando en nuestra sociedad y en quien la consume graves consecuencias.</p>\r\n<p>La adicci&oacute;n es parecida a otras enfermedades, como las enfermedades del coraz&oacute;n. Ambas interrumpen el funcionamiento normal y saludable del &oacute;rgano subyacente, tienen serias consecuencias da&ntilde;inas, son prevenibles, tratables y, si no se tratan, pueden durar toda la vida. Fuente:N. Volkow y H. Schelbert. Se caracteriza por una b&uacute;squeda constante e incontrolable del consumo de una sustancia quedando en segundo plano las consecuencias que le traiga a la persona; en este caso es una enfermedad que afecta directamente al cerebro y la conducta de las personas.</p>\r\n<p>Una de las principales consecuencias del consumo de drogas, sobre todo en las primeras etapas del consumo es una sensaci&oacute;n irreal de control del consumo de las mismas en las personas, &iquest;cu&aacute;ntas veces hemos escuchado decir a quien la consume: &ldquo;yo la dejo cuando quiera&rdquo;?, se menciona que es una sensaci&oacute;n irreal de control de la misma, ya que a nivel f&iacute;sico la persona que presenta el problema de tabaquismo, alcoholismo o de consumo de drogas, va generando un fen&oacute;meno f&iacute;sico que es la tolerancia, que se refiere a que la persona cada vez va necesitando mayor cantidad de sustancia para obtener el efecto que al inicio ten&iacute;a con una solo dosis, es decir, si antes con una dosis de alcohol, tabaco o drogas ilegales, se sent&iacute;a de cierta manera su cuerpo va a ir &ldquo;necesitando cada vez m&aacute;s&rdquo;.</p>\r\n<p>Otra de las consecuencias importantes es cuando ya se llega al punto de desarrollar una adicci&oacute;n, ya que presenta dependencia f&iacute;sica y psicol&oacute;gica, es decir, que sus actividades est&aacute;n girando en torno al consumo y que su cuerpo &ldquo;se la pide&rdquo; aun cuando la persona diga que no la desea.</p>\r\n<p>&iquest;C&oacute;mo saber qu&eacute; &aacute;rea va afectar m&aacute;s o menos en una persona? No se puede predecir, ya que como seres humanos somos diferentes, traemos una gen&eacute;tica que a algunas personas nos hace propensos a desarrollar una adici&oacute;n y a otros no, depender&aacute; mucho de c&oacute;mo fuimos educados, de nuestro estilo de vida y m&uacute;ltiples factores que pueden hacernos vulnerables a desarrollar una adicci&oacute;n.</p>\r\n<p>Existen consecuencias a corto y largo plazo del consumo de sustancias. Dentro de las consecuencias a corto plazo, son problemas familiares, dificultades en trabajo, ausentismo o bajo rendimiento laboral o escolar, la &ldquo;resaca&rdquo; o &ldquo;cruda&rdquo; por el consumo, emocionalmente sentimientos de culpa, frustraci&oacute;n, enojo, comportamiento agresivo, entre otras. Algunas consecuencias a largo plazo es presentar un da&ntilde;o importante a nivel cerebral en ocasiones irreversibles, que pueden traer como resultado alguna enfermedad mental secundaria al consumo, alteraci&oacute;n en la memoria, en la manera en que se perciben los est&iacute;mulos, alteraci&oacute;n en aprendizaje; ruptura familiar, p&eacute;rdida del trabajo, problemas legales, enfermedades f&iacute;sicas frecuentes, por ejemplo enfermedades pulmonares, de coraz&oacute;n, c&aacute;ncer, etc.</p>\r\n<p>Nuestro cerebro deja de desarrollarse hasta la vida adulta, por ello cuando se inicia con el consumo en edades tempranas (ni&ntilde;ez o adolescencia) mayor ser&aacute; el riesgo de desarrollar la adicci&oacute;n, ya que el cerebro no est&aacute; suficientemente maduro para recibir una sustancia como el alcohol, el tabaco u otras drogas.</p>\r\n<p>Es inevitable mencionar que dejar el consumo no es algo sencillo, muchas ocasiones escuchamos que es por cuestiones de voluntad o de &ldquo;ganas que le ponga la persona&rdquo; y no es as&iacute; y m&aacute;s cuando ya se desarroll&oacute; la adicci&oacute;n. Se requiere de una valoraci&oacute;n integral para as&iacute; determinar el tipo de tratamiento que la persona y su familia necesita. Dentro de los objetivos del tratamiento es que la persona vaya disminuyendo el da&ntilde;o generado por el consumo: da&ntilde;o f&iacute;sico, mental, familiar, social e individual.</p>\r\n<p>No existe un tratamiento exitoso universal para todos los que consumen drogas, la atenci&oacute;n deber&aacute; individualizarse, analizando todos los factores y necesidades personales. Para elegir entre las opciones de tratamiento, debemos poner atenci&oacute;n que no solo se atienda el consumo de la o las sustancias, ya que el dejar de consumir drogas o desintoxicaci&oacute;n es solo el primer paso para dar inicio a una rehabilitaci&oacute;n- por s&iacute; sola no representa un cambio a largo plazo de la enfermedad-, se deben atender las necesidades psicol&oacute;gicas y m&eacute;dicas, as&iacute; como las familiares, laborales o escolares. Se recomienda se acuda a una valoraci&oacute;n por instancias especializadas en esta problem&aacute;tica, depender&aacute; de la severidad del problema&nbsp; y la necesidad de cada persona el tipo de tratamiento.</p>\r\n<p>Existen alternativas de atenci&oacute;n: van desde una atenci&oacute;n individual, familiar, de pareja o grupal; atenci&oacute;n conductual, atenci&oacute;n con medicamentos que ayuden a tener un pron&oacute;stico m&aacute;s favorable;&nbsp; atenci&oacute;n de tipo ambulatorio (que el usuario acuda a atenci&oacute;n y contin&uacute;e con sus actividades diarias) de tipo residencial (internamiento para desintoxicar), cl&iacute;nicas de d&iacute;a, etc. &iquest;Cual es la mejor de ellas? Depender&aacute;, como se mencion&oacute;, de la gravedad del padecimiento, por ello es importante acudir con profesionales para que determinen el tipo y el tiempo de intervenci&oacute;n, es decir que se realice un diagn&oacute;stico adecuado.</p>\r\n<p>Una vez que se tenga el diagn&oacute;stico se procede al tratamiento, el cual deber&aacute; ser continuo y modificarse de acuerdo al avance de la persona y la evoluci&oacute;n f&iacute;sica, mental que tenga. Es importante resaltar que el tratamiento deber&aacute; adecuarse al tipo de droga y las caracter&iacute;sticas de cada persona.</p>\r\n<p>En Guanajuato existen opciones cercanas a tu domicilio, cuenta con una amplia red de atenci&oacute;n, en donde puedes encontrar ayuda psicol&oacute;gica, m&eacute;dica y de diferentes &aacute;reas de la salud mental, que pueden apoyar a salir de las adicciones, si sabes de alguien que tenga problemas de tabaquismo o alcoholismo, la informaci&oacute;n que se maneja es de manera confidencial y sobre todo respetando los principios de &eacute;tica y derechos de las personas; din&aacute;micamente es una opci&oacute;n en donde se puede orientar sobre las posibilidades de atenci&oacute;n.</p>\r\n<p>La &uacute;nica dosis que se puede evitar es la primera, una vez que uno se da permiso de &ldquo;una sola&rdquo; es m&aacute;s sencillo continuar con la que sigue&hellip;</p>', 'Consecuencias del consumo y  opciones de tratamiento', 'articulos\\March2020\\iAwxSgX4BdzdzjKljhJM.jpg', 'articulos\\March2020\\fNNzhQc8HILOE4uehFOd.jpg', '0000-00-00', 4, 'consecuencias-del-consumo-y-opciones-de-tratamiento', 1, '2018-11-15 06:00:00', '2020-03-28 20:50:07', NULL, NULL, 748, 9),
(30, 4, 'Conmemoración del día internacional de la eliminación de la violencia contra las mujeres', '<p><strong>&ldquo;UNETE GUANAJUATO, POR EL DERECHO DE LAS MUJERES A UNA VIDA LIBRE DE VIOLENCIA&rdquo;&nbsp;</strong></p>\r\n<p>Cada a&ntilde;o se conmemora el D&iacute;a Internacional de la Eliminaci&oacute;n de la violencia contra las mujeres en rememoraci&oacute;n del asesinato&nbsp; en 1960, de las tres hermanas Mirabal (Patria, Minerva y Mar&iacute;a Teresa, llamadas tambi&eacute;n Mariposas) activistas y defensoras de los derechos humanos de Rep&uacute;blica Dominicana. Por ello, en dicha conmemoraci&oacute;n se invita a gobiernos, organizaciones internacionales y organizaciones no gubernamentales a convocar actividades dirigidas a sensibilizar a la opini&oacute;n p&uacute;blica sobre el problema de la violencia contra la mujer.</p>\r\n<p>Las Naciones Unidas definen la violencia contra la mujer como &ldquo;todo acto de violencia de g&eacute;nero que resulte, o pueda tener como resultado un da&ntilde;o f&iacute;sico, sexual o psicol&oacute;gico para la mujer, inclusive las amenazas de tales actos, la coacci&oacute;n o la privaci&oacute;n arbitraria de libertad, tanto si se producen en la vida p&uacute;blica como en la privada&rdquo;.</p>\r\n<p>La violencia de pareja se refiere al comportamiento de la pareja o ex pareja que causa da&ntilde;o f&iacute;sico, sexual o psicol&oacute;gico, incluidas la agresi&oacute;n f&iacute;sica, la coacci&oacute;n sexual, el maltrato psicol&oacute;gico y las conductas de control.</p>\r\n<p>La violencia sexual es cualquier acto sexual, la tentativa de consumar un acto sexual u otro acto dirigido contra la sexualidad de una persona mediante coacci&oacute;n por otra persona, independientemente de su relaci&oacute;n con la v&iacute;ctima, en cualquier &aacute;mbito. Comprende la violaci&oacute;n, que se define como la penetraci&oacute;n, mediante coerci&oacute;n f&iacute;sica o de otra &iacute;ndole, de la vagina o el ano con el pene, otra parte del cuerpo o un objeto.</p>\r\n<p><strong>Datos y cifras</strong></p>\r\n<ul>\r\n<li>La violencia contra la mujer -especialmente la ejercida por su pareja y la violencia sexual- constituye un grave problema de salud p&uacute;blica y una violaci&oacute;n de los derechos humanos de las mujeres.</li>\r\n<li>Las estimaciones mundiales publicadas por la OMS indican que alrededor de una de cada tres (35%) mujeres en el mundo han sufrido violencia f&iacute;sica y/o sexual de pareja o violencia sexual por terceros en alg&uacute;n momento de su vida.</li>\r\n<li>La mayor&iacute;a de estos casos son violencia infligida por la pareja. En todo el mundo, casi un tercio (30%) de las mujeres que han tenido una relaci&oacute;n de pareja refieren haber sufrido alguna forma de violencia f&iacute;sica y/o sexual por parte de su pareja en alg&uacute;n momento de su vida.</li>\r\n<li>Un 38% de los asesinatos de mujeres que se producen en el mundo son cometidos por su pareja masculina.</li>\r\n<li>Estas formas de violencia pueden afectar negativamente a la salud f&iacute;sica, mental, sexual y reproductiva de las mujeres y aumentar la vulnerabilidad al VIH.</li>\r\n<li>Entre los factores asociados a un mayor riesgo de cometer actos violentos cabe citar un bajo nivel de instrucci&oacute;n, el maltrato infantil o haber estado expuesto a escenas de violencia en la familia, el uso nocivo del alcohol, actitudes de aceptaci&oacute;n de la violencia y las desigualdades de g&eacute;nero.</li>\r\n<li>En entornos de ingresos altos, hay datos que apuntan que los programas escolares de prevenci&oacute;n de la violencia de pareja (o violencia en el noviazgo) entre los j&oacute;venes pueden ser eficaces.</li>\r\n<li>En los entornos de ingresos bajos, las estrategias destinadas a aumentar la emancipaci&oacute;n econ&oacute;mica y social de la mujer, como la microfinanciaci&oacute;n unida a la formaci&oacute;n en igualdad de g&eacute;nero y las iniciativas comunitarias dirigidas contra la desigualdad de g&eacute;nero o tendentes a mejorar las aptitudes para las relaciones interpersonales, han demostrado una cierta eficacia para reducir la violencia de pareja.</li>\r\n<li>Las situaciones de conflicto, posconflicto y desplazamiento pueden agravar la violencia, como la violencia por parte de la pareja, y dar lugar a formas adicionales de violencia contra las mujeres.</li>\r\n</ul>\r\n<p><strong>Magnitud del problema</strong></p>\r\n<p>Las estimaciones m&aacute;s precisas de la prevalencia de la violencia de pareja y la violencia sexual en entornos sin conflictos son las proporcionadas por encuestas poblacionales basadas en el testimonio de las v&iacute;ctimas. En el Estudio multipa&iacute;s de la OMS sobre salud de la mujer y la violencia dom&eacute;stica, realizado en 2005 en 10 pa&iacute;ses, en su mayor&iacute;a de renta media y baja, se observ&oacute; que en las mujeres de 15 a 49 a&ntilde;os:</p>\r\n<ul>\r\n<li>entre el 15% de ellas en el Jap&oacute;n y el 71% en Etiop&iacute;a refer&iacute;an haber sufrido a lo largo de su vida violencia f&iacute;sica o sexual perpetrada por su pareja;</li>\r\n<li>entre un 0,3% y un 11,5% refer&iacute;an haber sufrido violencia sexual perpetrada por alguien que no era su pareja despu&eacute;s de cumplidos 15 a&ntilde;os;</li>\r\n<li>la primera experiencia sexual hab&iacute;a sido forzada en muchos casos (17% de las mujeres en la Tanzan&iacute;a rural, 24% en el Per&uacute; rural y 30% en zonas rurales de Bangladesh indicaron que su primera experiencia sexual hab&iacute;a sido forzada).</li>\r\n</ul>\r\n<p>En un an&aacute;lisis realizado en 2013 por la OMS, la Escuela de Higiene y Medicina Tropical de Londres y el Consejo de Investigaciones M&eacute;dicas, y basado en los datos de m&aacute;s de 80 pa&iacute;ses, se comprob&oacute; que casi una tercera parte (30%) de las mujeres que han mantenido una relaci&oacute;n de pareja han sufrido violencia f&iacute;sica o sexual por parte de su pareja.</p>\r\n<p>Las estimaciones de la prevalencia van del 23,2% en los pa&iacute;ses de ingresos elevados y el 24,6% en los pa&iacute;ses de la Regi&oacute;n del Pac&iacute;fico Occidental al 37% en la Regi&oacute;n del Mediterr&aacute;neo Oriental y el 37,7% en la Regi&oacute;n de Asia Sudoriental. Por otra parte, un 38% de los asesinatos de mujeres que se producen en el mundo son cometidos por su pareja. Adem&aacute;s de la violencia de pareja, el 7% de las mujeres refieren hacer sufrido agresiones sexuales por parte de personas distintas de su pareja, aunque los datos al respecto son m&aacute;s limitados.</p>\r\n<p>La violencia de pareja y la violencia sexual son perpetradas en su mayor&iacute;a por hombres contra mujeres y ni&ntilde;as. El abuso sexual infantil afecta a ni&ntilde;os y ni&ntilde;as. En los estudios internacionales realizados, aproximadamente el 20% de las mujeres y el 5%-10% de los hombres refieren haber sido v&iacute;ctimas de violencia sexual en la infancia. La violencia entre los j&oacute;venes, que incluye tambi&eacute;n la violencia de pareja, es otro gran problema.</p>\r\n<p>La Secretaria de Salud del Estado de Guanajuato durante el 2018 ha aplicado herramientas de detecci&oacute;n a m&aacute;s de 271 mil 496 mujeres de las cuales detecto que 70 mil 66 mujeres se encontraban viviendo actualmente alguna situaci&oacute;n de violencia, por lo que otorgo a m&aacute;s de 72 mil 369 mujeres atenci&oacute;n en unidades de salud y 27 mil 972 mujeres ingresaron a tratamiento integral logrando un total de 156 mil 151 consultas otorgadas.</p>\r\n<p>As&iacute; mismo, como parte de las Estrategias de Reeducaci&oacute;n para V&iacute;ctimas y Agresores de Violencia de Pareja se ha impactado en 1 mil 548 hombres en 100 grupos de reeducaci&oacute;n para agresores, as&iacute; mismo se han impactado en 2 mil 423 mujeres en grupos de reeducaci&oacute;n para v&iacute;ctimas. Por otra parte, se realizan grupos de prevenci&oacute;n de la violencia en el noviazgo y de violencia en la comunidad dirigida a poblaci&oacute;n adolescente, logrando m&aacute;s de 243 grupos formados impactando en 3 mil 242 adolescentes.</p>', 'Conmemoración del día internacional de la eliminación de la violencia contra las mujeres', 'articulos\\March2020\\Zr0ISOuitEchpIUkMALy.jpg', 'articulos\\March2020\\o7lxXbABwT0yj9JOOlJg.jpg', '0000-00-00', 4, 'conmemoracion-del-dia-internacional-de-la-eliminacion-de-la-violencia-contra-las-mujeres', 1, '2018-11-26 06:00:00', '2020-03-28 20:43:07', NULL, NULL, 1308, 9),
(31, 1, 'Adicciones en los jóvenes', '<p>En la actualidad escuchamos en los diferentes medios de comunicaci&oacute;n e informaci&oacute;n que el tema de las adicciones se ha ido incrementando, que la adicci&oacute;n en los j&oacute;venes ya es un problema que se est&aacute; convirtiendo en un problema tan grave que puede generar una enfermedad mental; lamentablemente no son versiones alejadas de la realidad.</p>\r\n<p>&nbsp;</p>\r\n<p>Existen encuestas como la ENCODE (Encuesta Nacional de Consumo de Drogas en Estudiantes 2014), con alumnos desde primaria hasta bachillerato y en ella los datos que se arrojan son preocupantes, ya que nos menciona que el alcohol es la droga legal mas consumida y que la edad en que est&aacute; iniciando los chicos con l consumo es desde los 10.6 a&ntilde;os, como promedio. Otra encuesta es la&nbsp; ENCODAT (Encuesta Nacional de Consumo de Drogas, alcohol y&nbsp; Tabaco&nbsp; 2016-2017) en donde se refleja que el consumo de drogas, legales (alcohol, tabaco) e ilegales ( marihuana, cristal, etc) , en los &uacute;ltimos a&ntilde;os, se ha convertido en nuestro pa&iacute;s en un problema de salud que ha cobrado especial importancia, que el consumo en sus diferentes niveles (uso, abuso o dependencia) est&aacute; dejando en nuestra sociedad y en quien la consume graves consecuencias.</p>\r\n<p>&nbsp;</p>\r\n<p>Uno pensar&iacute;a que el problema no es tan grave, sin embargo, es parte del fen&oacute;meno social comenzar a &ldquo;normalizar&rdquo; lo que vemos que se va presentando de manera m&aacute;s cotidiana. Pensemos &iquest;cu&aacute;ntos de nosotros no hemos escuchado la frase &ldquo;prefiero que tome aqu&iacute; conmigo a que tome all&aacute; afuera? Frase dicha por muchos padres y madres de familia, que si bien es cierto, la intenci&oacute;n es proveerles de un ambiente no tan riesgoso para que su hijo inicie con el consumo, pudiera terminar teniendo el efecto contrario.</p>\r\n<p>&nbsp;</p>\r\n<p>Cuando los padres de familia comienzan a tener una actitud relajada o permisiva ante el consumo el mensaje que queda en los hijos es &ldquo;entonces si est&aacute; permitido en lugares seguros&rdquo;, pero en la mente preadolescente o adolescente &iquest;se tendr&aacute; la capacidad para diferenciar qu&eacute; espacios son seguros y cu&aacute;les no? probablemente no, ya que para ellos un lugar seguro ser&iacute;a dentro de la casa con sus amigos, con sus primos, en un lugar cerrado, en la fiesta donde hay adultos acompa&ntilde;ando. No debemos de perder de vista que una de las caracter&iacute;sticas propias de la adolescencia es que los chicos no pueden medir riesgos, no como un defecto, sino como parte del proceso de madurez donde les permite comenzar a distinguir los l&iacute;mites.</p>\r\n<p>&nbsp;</p>\r\n<p>Todo lo anterior en base a la manera en que se maneja un chico, sin embargo, si volte&aacute;ramos a ver lo que sucede a nivel f&iacute;sico, la reflexi&oacute;n ser&iacute;a &iquest;el cerebro del chico est&aacute; lo suficientemente maduro para recibir esa sustancia? La respuesta es que no, biol&oacute;gicamente el cerebro de una persona en desarrollo no est&aacute; listo para asimilar el alcohol. De igual manera es muy com&uacute;n escuchar que no se considera al alcohol como una droga, incluso en la consulta cuando se le pregunta a la persona que acude a atenci&oacute;n por consumo de sustancias psicoactivas la mayor&iacute;a omiten el alcohol y el tabaco. Y a &iquest;Qu&eacute; se debe? Probablemente a su condici&oacute;n de &ldquo;legal&rdquo;, sin embargo son solo legales para los mayores de edad en nuestro pa&iacute;s, incluso se especifica en los envases o cajetillas.</p>\r\n<p>&nbsp;</p>\r\n<p>Debemos partir de la definici&oacute;n de la Organizaci&oacute;n Mundial de la Salud (OMS) sobre una droga: toda sustancia natural o sint&eacute;tica que, al ser introducida al organismo, act&uacute;a sobre el sistema nervioso central. Puede modificar una o varias de sus funciones f&iacute;sicas o ps&iacute;quicas; por ejemplo, la precepci&oacute;n, estado de &aacute;nimo, la cognici&oacute;n, conducta o las funciones motoras (OMS1999). Por lo tanto el alcohol es una droga depresora del sistema nervioso central y al consumirlo hace que las funciones del cerebro se hagan las lentas y cuando el consumo ya es m&aacute;s prolongado en tiempo y frecuencia va modificando su funcionamiento.</p>\r\n<p>&nbsp;</p>\r\n<p>La frase &ldquo;una no es ninguna&rdquo; es una de las justificaciones que se usan para poder ingerir bebidas alcoh&oacute;licas, sin embargo, una persona que consume alcohol al progresar en su consumo va generando adicci&oacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p>La adicci&oacute;n es parecida a otras enfermedades, como las enfermedades del coraz&oacute;n. Ambas interrumpen el funcionamiento normal y saludable del &oacute;rgano subyacente, tienen serias consecuencias da&ntilde;inas, son prevenibles, tratables y, si no se tratan, pueden durar toda la vida. Fuente:N. Volkow y H. Schelbert. Se caracteriza por una b&uacute;squeda constante e incontrolable del consumo de una sustancia quedando en segundo plano las consecuencias que le traiga a la persona; en este caso es una enfermedad que afecta directamente al cerebro y la conducta de las personas.</p>\r\n<p>&nbsp;</p>\r\n<p>Una de las principales consecuencias del consumo de drogas, sobre todo en las primeras etapas del consumo es una sensaci&oacute;n irreal de control del consumo de las mismas en las personas, &iquest;cu&aacute;ntas veces hemos escuchado decir a quien la consume: &ldquo;yo la dejo cuando quiera&rdquo;?, se menciona que es una sensaci&oacute;n irreal de control de la misma, ya que a nivel f&iacute;sico la persona que presenta el problema de tabaquismo, alcoholismo o de consumo de drogas, va generando un fen&oacute;meno f&iacute;sico que es la tolerancia, que se refiere a que la persona cada vez va necesitando mayor cantidad de sustancia para obtener el efecto que al inicio ten&iacute;a con una solo dosis, es decir, si antes con una dosis de alcohol, tabaco o drogas ilegales, se sent&iacute;a de cierta manera su cuerpo va a ir &ldquo;necesitando cada vez m&aacute;s&rdquo;.</p>\r\n<p>&nbsp;</p>\r\n<p>Otra de las consecuencias importantes es cuando ya se llega al punto de desarrollar una adicci&oacute;n, ya que presenta dependencia f&iacute;sica y psicol&oacute;gica, es decir, que sus actividades est&aacute;n girando en torno al consumo y que su cuerpo &ldquo;se la pide&rdquo; aun cuando la persona diga que no la desea.</p>\r\n<p>&nbsp;</p>\r\n<p>&iquest;C&oacute;mo saber qu&eacute; &aacute;rea va afectar m&aacute;s o menos en una persona? No se puede predecir, ya que como seres humanos somos diferentes, traemos una gen&eacute;tica que a algunas personas nos hace propensos a desarrollar una adici&oacute;n y a otros no, depender&aacute; mucho de c&oacute;mo fuimos educados, de nuestro estilo de vida y m&uacute;ltiples factores que pueden hacernos vulnerables a desarrollar una adicci&oacute;n.</p>\r\n<p>&nbsp;</p>\r\n<p>Es de suma importancia poder orientar a los j&oacute;venes acerca de los riegos que implica consumir bebidas alcoh&oacute;licas, ya que cada vez m&aacute;s nos topamos con bebidas que se ofertan como preparadas, en ocasiones combinadas con bebidas energizantes o azucares; en la actualidad hay embases que se ofertan como una bebida pero en realidad un preadolescente o un adolescente, sin m&iacute;nimas las ocasiones que se detiene para observar los grados de alcohol que contiene dicha bebida o si lo leen, asumiendo que son bebidas que al estar disponibles est&aacute;n listos para ingerirlas, sin embargo no es as&iacute;.</p>\r\n<p>&nbsp;</p>\r\n<p>Tenemos que concientizarnos que le consumo de alcohol puede afectar el rendimiento, la salud, educaci&oacute;n, familia y la libertad; como lo menciona el lema de la 24&ordf; Semana Nacional compartiendo esfuerzos, que se conmemora ese a&ntilde;o del 14 al 20 de Enero, que busca concientizar a la poblaci&oacute;n que el consumo de alcohol puede desarrollar la enfermedad del alcoholismo.</p>', NULL, 'articulos\\March2020\\049qP2mvQS7AVpq1tdgc.jpg', 'articulos\\March2020\\re5mgTgGgb78QBKEtvQ4.jpg', '0000-00-00', 4, 'adicciones-en-los-jovenes', 1, '2019-01-18 14:28:00', '2020-03-28 20:28:48', NULL, NULL, 2294, 9),
(32, 3, 'Factores protectores en salud mental que deben promoverse en niños y adolescentes', '<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\">La identificaci&oacute;n y tratamiento oportunos de los trastornos mentales representan una parte primordial de la atenci&oacute;n que la SSG brinda a la poblaci&oacute;n. Sin embargo, dichas acciones implican una respuesta ante la emergencia de s&iacute;ntomas y malestares emocionales que, a trav&eacute;s de diversas estrategias, se pueden retardar, atenuar o prevenir.</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 14px;\">Por lo anterior, la SSG invita a padres de familia a tomar en cuenta los factores que promueven la salud mental y el bienestar psicol&oacute;gico de sus hijos:</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 14px;\">&nbsp;</span></p>\r\n<ul>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Estar al pendiente de las actividades de sus hijos y brindarles apoyo cuando lo soliciten.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Ayudarlos a desarrollar habilidades sociales a trav&eacute;s de la convivencia con otros ni&ntilde;os.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Brindarles confianza para lograr sus objetivos.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Impulsar en ellos la b&uacute;squeda de ayuda cuando tengan problemas, y la b&uacute;squeda de consejo cuando lo requieran.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Ayudarlos a tener experiencias y conocimientos nuevos.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Fomentar la participaci&oacute;n en agrupaciones deportivas, religiosas o culturales.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Vigilar que la relaci&oacute;n de sus hijos con compa&ntilde;eros, profesores y adultos sea respetuosa y no violenta.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\"><span style=\"font-size: 14px;\">Facilitar la resoluci&oacute;n de conflictos con compa&ntilde;eros, profesores y/o adultos a trav&eacute;s del di&aacute;logo y la conciliaci&oacute;n.</span></li>\r\n</ul>\r\n<p style=\"margin-bottom: 0.0001pt; line-height: normal;\">Tomar en cuenta estos factores favorecer&aacute; el desarrollo saludable de ni&ntilde;os y adolescentes. As&iacute; mismo, ser&aacute; importante que los menores cuenten con v&iacute;nculos afectivos significativos, lo que permitir&aacute; que, en caso de presentarse alg&uacute;n trastorno mental, &eacute;ste pueda identificarse a tiempo y se pueda atender.</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 14px;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\">La SSG recomienda a los padres de familia estar alertas a cambios repentinos en el comportamiento de sus hijos, mismos que se pueden presentar bajo las siguientes formas:&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\">&nbsp;</p>\r\n<ul style=\"margin-bottom: 0px;\">\r\n<li style=\"margin-bottom: 0.0001pt; line-height: normal;\">Falta de inter&eacute;s en sus actividades cotidianas.</li>\r\n<li style=\"margin-bottom: 0.0001pt; line-height: normal;\">Cambio abrupto en el rendimiento escolar.</li>\r\n<li style=\"margin-bottom: 0.0001pt; line-height: normal;\">Disminuci&oacute;n del esfuerzo en su vida en general.</li>\r\n<li style=\"margin-bottom: 0.0001pt; line-height: normal;\">Comportamiento inadecuado en el hogar en su sal&oacute;n de clases.</li>\r\n<li style=\"margin-bottom: 0.0001pt; line-height: normal;\">Deserci&oacute;n escolar.</li>\r\n<li style=\"margin-bottom: 0.0001pt; line-height: normal;\">Conductas de riesgo como consumir alcohol, tabaco o drogas.</li>\r\n<li style=\"margin-bottom: 0.0001pt; line-height: normal;\">Conductas en las que el ni&ntilde;o se causa da&ntilde;o a s&iacute; mismo como mordidas, cortadas, quemaduras.</li>\r\n<li style=\"margin-bottom: 0.0001pt; line-height: normal;\">Irritabilidad, enojo, impulsividad, agresi&oacute;n.</li>\r\n<li style=\"margin-bottom: 0.0001pt; line-height: normal;\">Poca tolerancia a eventos que escapan a su control.</li>\r\n<li style=\"margin-bottom: 0.0001pt; line-height: normal;\">Participaci&oacute;n en incidentes violentos.&nbsp;</li>\r\n</ul>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal;\">Los s&iacute;ntomas antes descritos pueden ser consecuencia de distintas formas de malestar emocional, por lo que la SSG exhorta a que, en caso de identificar alguno de los s&iacute;ntomas descritos anteriormente, se busque ayuda profesional de psic&oacute;logos y/o psiquiatras, acuda al Centro de Salud m&aacute;s cercano o llame a la L&iacute;nea de Atenci&oacute;n Telef&oacute;nica para Crisis Psicol&oacute;gica al tel&eacute;fono 800 2900024, que atiende durante las 24 horas los 365 d&iacute;as del a&ntilde;o, para recibir asesor&iacute;a y referencia a los servicios de salud mental.</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, 'factores-proteccion-salud-mental-nino.png', 'factores-proteccion-salud-mental-nino.png', '0000-00-00', 4, 'factores-protectores-en-salud-mental-que-deben-promoverse-en-ninos-y-adolescentes', 1, '2019-08-26 05:00:00', '2020-03-28 20:59:37', NULL, NULL, 432, 9),
(33, 3, 'Factores que protegen tu salud mental', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">Las enfermedades mentales y los trastornos de la conducta son un problema cada vez mayor que seg&uacute;n se calcula afecta a una de cada cuatro personas a lo largo de su vida. No obstante, hay estrategias de prevenci&oacute;n que pueden evitar que estos padecimientos se presenten y que se pueden desarrollar no s&oacute;lo desde el sector salud, sino tambi&eacute;n desde otros sectores como el de atenci&oacute;n infantil, el sector educativo, laboral, etc.</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">Para prevenir los padecimientos mentales es importante tomar en cuenta los factores de riesgo y los factores protectores. Los factores de riesgo son aquellos que incrementen la probabilidad de que aparezcan enfermedades, mientras que los factores protectores son aquellos que mejoran la resistencia de las personas antes los factores de riesgo y los trastornos.</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">Aqu&iacute; te compartimos algunos factores que te proteger&aacute;n de padecer alguna enfermedad mental:</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">&nbsp;</p>\r\n<ol>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Capacidad para afrontar el estr&eacute;s.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Capacidad para afrontar la adversidad.&nbsp;</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Adaptabilidad.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Autonom&iacute;a.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Estimulaci&oacute;n cognitiva temprana.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Ejercicio</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Sentimientos de seguridad.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Sentimientos de dominio y control.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Buena crianza.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Alfabetizaci&oacute;n.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Apego positivo y lazos afectivos tempranos.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Interacci&oacute;n positiva entre padres e hijos.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Habilidades de resoluci&oacute;n de problemas.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Conducta pro-social.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Autoestima.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Destrezas vitales.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Destrezas sociales y de manejo de conflictos.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Crecimiento socio-emocional.</li>\r\n<li style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\">Apoyo social de la familia y amigos.&nbsp;</li>\r\n</ol>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">Dado que es muy dif&iacute;cil controlar los factores de riesgo relacionados con las posibilidades econ&oacute;micas, sociales y/o educativas, es importante desarrollar los factores protectores que tienen que ver con las habilidades personales. Entre mayor sea la capacidad para adaptarse, soportar las adversidades y el estr&eacute;s asociado a las mismas, mayor ser&aacute; la capacidad para mantener la salud mental.</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"font-size: 14px;\">Ac&eacute;rcate a tu Centro de Salud m&aacute;s cercano para desarrollar tus factores protectores en salud mental, o llama al tel&eacute;fono 800 2900024, que atiende durante las 24 horas, los 365 d&iacute;as del a&ntilde;o, para recibir asesor&iacute;a y referencia.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">&nbsp;</p>', NULL, 'factores-proteccion-salud-mental.png', 'factores-proteccion-salud-mental.png', '0000-00-00', 4, 'factores-que-protegen-tu-salud-mental', 1, '2019-08-26 05:00:00', '2020-03-28 21:00:56', NULL, NULL, 1605, 9),
(34, 17, 'Articulo de prueva covid', '<p>lKCSKDVJNSDVKSJN</p>', 'covid-prueba', 'articulos\\April2020\\MJ0rlVfG68VStLHTTBX8.jpg', 'articulos\\April2020\\KHg5qqg1MnqYA06NViWK.jpg', '2020-04-03', 4, 'prueba-de-covid', 1, '2020-04-03 12:32:09', '2020-04-04 03:04:57', NULL, NULL, 11, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo_categoria`
--

CREATE TABLE `articulo_categoria` (
  `id_articulo` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bannersinteriores`
--

CREATE TABLE `bannersinteriores` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_mob` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_seccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bannersinteriores`
--

INSERT INTO `bannersinteriores` (`id`, `img`, `img_mob`, `link`, `activo`, `created_at`, `updated_at`, `deleted_at`, `orden`, `titulo`, `subtitle`, `id_seccion`) VALUES
(2, 'bannersinteriores\\March2020\\U2VoQCPI25OsJ2lTnjlQ.png', NULL, NULL, 1, '2020-03-19 04:40:00', '2020-03-19 05:50:10', NULL, 1, 'Artículos de ayuda', 'Con temas que te ayudarán a aclarar tus dudas', 1),
(3, 'bannersinteriores\\March2020\\qDwMMvDzt2JBNJ7dfXay.png', NULL, NULL, 1, '2020-03-26 01:02:00', '2020-03-26 01:03:26', NULL, 1, 'Artículos de ayuda', 'Con temas que te ayudarán a aclarar tus dudas', 3),
(4, 'bannersinteriores\\March2020\\Zig7gtGMFawzg83yJRtL.png', NULL, NULL, 1, '2020-03-26 01:15:37', '2020-03-26 01:15:37', NULL, 1, NULL, NULL, 2),
(5, 'bannersinteriores\\March2020\\9byYCClCPEqI2ljqWZmx.png', NULL, NULL, 1, '2020-03-27 01:11:54', '2020-03-27 01:11:54', NULL, 1, 'Artículos de ayuda', 'Con temas que te ayudarán a aclarar tus dudas', 4),
(6, 'bannersinteriores\\March2020\\aXUQfhWUxTuy11CXapqO.jpg', 'bannersinteriores\\March2020\\Kf9AGsRigsNtsaDmXRFc.jpg', 'adicciones', 1, '2020-03-27 05:14:12', '2020-03-27 05:14:12', NULL, NULL, 'Adicciones', 'Existen varios tipos de adicciones, identifica la tuya', 5),
(7, 'bannersinteriores\\March2020\\rwzbFiT8GtVmi69LWiAH.jpg', 'bannersinteriores\\March2020\\ABLcaOp7NSroK5yfrwVg.jpg', NULL, 1, '2020-03-27 05:40:13', '2020-03-27 05:40:13', NULL, NULL, 'Suicidio', 'Esa no es la solución, encuentra tu motivación\r\n\r\n', 6),
(8, 'bannersinteriores\\March2020\\lJfZB09pCCKEFNildJqG.jpg', 'bannersinteriores\\March2020\\bxu1qo60TMZKHlhRWMoJ.jpg', NULL, 1, '2020-03-27 05:43:33', '2020-03-27 05:43:33', NULL, NULL, 'Salud mental', 'Te podemos escuchar, siempre que tú lo desees\r\n\r\n', 7),
(9, 'bannersinteriores\\March2020\\5i1n462tNH4KBdCgg6Hn.jpg', 'bannersinteriores\\March2020\\G9hAjG4PKYgaQkys7rF1.jpg', NULL, 1, '2020-03-27 05:45:50', '2020-03-27 05:45:50', NULL, NULL, 'Violencia', 'Eres el único dueño de tu cuerpo, no te dejes lastimar.\r\n\r\n', 8),
(10, 'bannersinteriores\\March2020\\rsPFJXiQvtrTIwkBiKCZ.jpg', 'bannersinteriores\\March2020\\aLbqKG3a1qlztFBKTYBf.jpg', NULL, 1, '2020-03-28 06:52:08', '2020-03-28 06:52:08', NULL, NULL, 'Articulos', 'Con temas que te ayudarán a aclarar tus dudas', 9),
(11, 'bannersinteriores\\March2020\\QRasJOhFwObKLPIlk7Ig.png', 'bannersinteriores\\March2020\\hLDu1da1H6danbEBZcbl.png', NULL, 1, '2020-03-28 07:21:48', '2020-03-28 07:21:48', NULL, NULL, 'Noticias', NULL, NULL),
(12, 'bannersinteriores\\March2020\\y5TIqtbevMDoyQ1hkcgi.png', 'bannersinteriores\\March2020\\NKmpOR1wV1OR6g6cFbI9.png', NULL, 1, '2020-03-28 07:22:02', '2020-03-28 07:22:02', NULL, NULL, 'Noticias', NULL, 10),
(13, 'bannersinteriores\\April2020\\ITBkjUMEc3dCjQIjZeF8.png', 'bannersinteriores\\April2020\\hGGYTTt8zdp9Hv1udw0O.png', NULL, 1, '2020-04-03 10:31:00', '2020-04-03 11:42:24', NULL, 1, 'Al cuidado de tu salud mental', NULL, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` tinyint(4) DEFAULT 1,
  `img` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `img_2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `juvenil` tinyint(4) DEFAULT NULL,
  `parental` tinyint(4) DEFAULT NULL,
  `infantil` tinyint(4) DEFAULT NULL,
  `emergencia` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `color`, `slug`, `activo`, `img`, `created_at`, `updated_at`, `deleted_at`, `img_2`, `banner`, `juvenil`, `parental`, `infantil`, `emergencia`) VALUES
(1, 'Adicciones', '<p>Existen varios tipos de adicciones. <br /><strong>Identifica la tuya</strong></p>', '#a2bd3a', 'adicciones', 1, 'categorias\\March2020\\X4i976Q1Es59Kda7mjdj.png', '2020-03-18 00:30:00', '2020-03-27 05:07:39', NULL, 'categorias\\March2020\\k6GVCLtXacI90SVNwUtJ.png', 'categorias\\March2020\\8xjZYliek4xauBS0Kq85.jpg', 1, 1, 0, NULL),
(2, 'Suicidio', '<p>Esa no es la soluci&oacute;n,&nbsp;&nbsp;<br /><strong>encuentra la motivaci&oacute;n.</strong></p>', '#c22d7e', 'suicidio', 1, 'categorias\\March2020\\COwTiU9JDa8Bpf51WSGB.png', '2020-03-18 00:33:00', '2020-03-27 00:46:57', NULL, 'categorias\\March2020\\qAW5Fj4feurLCYnhuzbu.png', NULL, 1, 1, 0, NULL),
(3, 'Salud mental', '<p>Te podemos escuchar, <strong>siempre </strong><br /><strong>que lo desees.</strong></p>', '#5997d2', 'salud-mental', 1, 'categorias\\March2020\\Pz8uj0D9s7Bvwut5Jpe8.png', '2020-03-18 00:36:00', '2020-03-27 00:46:24', NULL, 'categorias\\March2020\\SRvNXeKw5CffRsS6NL6f.png', NULL, 1, 1, 0, NULL),
(4, 'Violencia', '<p>Eres el &uacute;nico due&ntilde;o de <br />tu cuerpo,&nbsp;<strong>no te dejes</strong><br /><strong>lastimar.</strong></p>', '#ce6d20', 'violencia', 1, 'categorias\\March2020\\dTwTZQV3fMUidqG0zP1E.png', '2020-03-18 00:41:00', '2020-03-27 01:19:42', NULL, NULL, NULL, 0, 1, 0, NULL),
(6, 'Desórdenes alimenticios', '<p>Articulos de desordenes alimenticios para jovenes</p>', '#c22d7e', 'desordenes-alimenticios', 1, NULL, '2020-03-26 03:23:00', '2020-03-27 01:20:36', NULL, 'categorias\\March2020\\WtW3yA4EjEfctSeYasfE.png', NULL, 1, 0, 0, NULL),
(9, 'Juegos', NULL, '#00ffcc', 'juegos', 1, 'categorias\\April2020\\hDYoc56pWPyCODvhaj2e.png', '2020-04-01 21:35:00', '2020-04-01 21:39:02', NULL, 'categorias\\April2020\\O739WyNgHIn2LSRflohV.png', NULL, 0, 0, 1, NULL),
(10, 'Dibujos', NULL, '#bd30d7', 'dibujos', 1, 'categorias\\April2020\\EwsNkaB2SQwgjmoTPuXr.png', '2020-04-01 21:36:00', '2020-04-01 21:38:46', NULL, 'categorias\\April2020\\z9E4LJg7vatOXRfapcCW.png', NULL, 0, 0, 1, NULL),
(11, 'Pandilla', NULL, '#db2f3c', 'pandilla', 1, 'categorias\\April2020\\LtQTtpy5j3inparPOuus.png', '2020-04-01 21:38:00', '2020-04-01 21:39:18', NULL, 'categorias\\April2020\\Oru5OXQHLQ2VVr2JOvzd.png', NULL, 0, 0, 1, NULL),
(12, 'Videos', NULL, '#ffde00', 'videos', 1, 'categorias\\April2020\\jZSvGWfXYa3ntX9qpKmY.png', '2020-04-01 21:40:02', '2020-04-01 21:40:02', NULL, 'categorias\\April2020\\v5VIGWat1nacFn6w9IM8.png', NULL, 0, 0, 1, NULL),
(13, 'Decálogo', NULL, '#7298d9', 'decalogo', 1, NULL, '2020-04-03 10:41:14', '2020-04-03 10:41:14', NULL, 'categorias\\April2020\\NHTbQ6N3twstXy2GaKG9.png', NULL, 0, 0, 0, 1),
(14, 'Personal de salud', NULL, '#416ec3', 'personal-de-salud', 1, NULL, '2020-04-03 10:44:00', '2020-04-03 10:45:34', NULL, 'categorias\\April2020\\fcerwuelSFqUMZSqONA1.png', NULL, 0, 0, 0, 1),
(15, 'Afrontamiento Psicológico', NULL, '#d17e25', 'afrontamiento-psicologico', 1, NULL, '2020-04-03 10:47:11', '2020-04-03 10:47:11', NULL, 'categorias\\April2020\\P1Ut1SuyisBVbEbHLSvt.png', NULL, 0, 0, 0, 1),
(16, 'Parental', NULL, '#edc000', 'parental', 1, NULL, '2020-04-03 10:48:43', '2020-04-03 10:48:43', NULL, 'categorias\\April2020\\FU9VPCuvgq8geD5P0U0W.png', NULL, 0, 0, 0, 1),
(17, 'Juvenil', NULL, '#a81200', 'juvenil', 1, NULL, '2020-04-03 10:51:44', '2020-04-03 10:51:44', NULL, 'categorias\\April2020\\tanoMfDxIllLYWR0eWe2.png', NULL, 0, 0, 0, 1),
(18, 'Adultos Mayores', NULL, '#364e7a', 'adultos-mayores', 1, NULL, '2020-04-03 10:52:00', '2020-04-03 10:53:31', NULL, 'categorias\\April2020\\5qmquDhICAhFePx80AFu.png', NULL, 0, 0, 0, 1),
(19, 'Infantil', NULL, '#87ad3d', 'infantil', 1, NULL, '2020-04-03 10:54:42', '2020-04-03 10:54:42', NULL, 'categorias\\April2020\\kREv7x7bbkxmOTusuvvn.png', NULL, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_articulo` int(11) DEFAULT NULL,
  `nombre` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `denuncias` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mensaje` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_articulo`, `nombre`, `email`, `web`, `denuncias`, `fecha`, `activo`, `created_at`, `updated_at`, `deleted_at`, `mensaje`) VALUES
(1, 23, 'alma patricia ramirez almanza', 'namashte68@gmail.com', '', 1, '2019-01-09 00:00:00', 0, NULL, NULL, NULL, 'A qué instancias se puede acudir para recibir atencion medica y psicologica en caso de vivir violencia sexual?? y para asesoria legal??'),
(2, 18, 'yolanda Rea', 'y.basaldua19@yahoo.com', '', 1, '2019-01-20 00:00:00', 0, NULL, NULL, NULL, 'mi hija comenzo con depresion y tratamiento con paidopsiquiatra hace 4 años , y la verdad a evolucionado y aumentado sus diagnosticos'),
(3, 18, 'leticia contreras ', 'letycya1000@gmail.com', '', 0, '2019-01-23 00:00:00', 1, NULL, NULL, NULL, 'necesitov ayuda '),
(4, 29, 'Martha Treviño ', 'Marthapatrich@hotmail.com', '', 0, '2019-02-16 00:00:00', 1, NULL, NULL, NULL, 'Necesito información de direcciones de atención especializada en drogadiccion en Guanajuato '),
(5, 16, 'Mel', 'femmeresistelux@gmail.com', '', 0, '2019-02-28 00:00:00', 1, NULL, NULL, NULL, 'Seria muy bueno, que se ampliara la atencion a padres, por ejemplo de adultos con autismo,  que es una sociedad bastante olvidada, para todos los programas. Me incluyo realmente estamos solos. '),
(6, 19, 'Patricia Leal Zamora', 'lealzpatricia@gmail.com', '', 0, '2019-04-29 00:00:00', 1, NULL, NULL, NULL, 'Sería de mucha ayuda una buena y oportuna motivación, lo perjudicial es que muy tarde se da uno cuenta de sus intenciones suicidas y es muy poco probable que uno pueda ayudarles.'),
(7, 14, 'Emma Zamora Gómez', 'emmayzamgom@hotmail.com', '', 0, '2019-04-29 00:00:00', 1, NULL, NULL, NULL, 'La capacitación para los docentes sería de mucha ayuda, par así poder dar una motivacion oportuna a estas personas que están pensando en soluciones para su problema de peso, ya sea perdida o ganancia del mismo.'),
(8, 11, 'Itzel ', 'Zuly_blue89@hotmail.com', '', 0, '2019-08-28 00:00:00', 1, NULL, NULL, NULL, 'Hola mi ex novio se suicido pero nunca noté síntomas para mi a sido difícil superar todo esto a veces no sé ni cómo dirigirme , algunas veces me siento mal porque digo no lo pude ayudar a veces digo alguna vez me dio alguna señal ? Y tengo un gran to'),
(9, 18, 'Adrix estrada', 'au0384256@gmail.com', '', 1, '2019-11-10 00:00:00', 0, NULL, NULL, NULL, 'Buenas tardes tengo dias q siento me presionaran la garganta y palpltaciones aceleradas y siento no puedo resplrar o mas bien inhalar el aire completamente que puedo hacer ya que en febrero pase por un vertigo y tambien me diagnosticaron con ansiedad'),
(10, 11, 'lucy ', 'lucyrodriguezortiz25@gmail.com', '', 1, '2019-11-23 00:00:00', 0, NULL, NULL, NULL, 'A mi hija le diagnosticaron distimia y trastorno de la personalidad en septiembre a rais de la separacion de sus. Papas tubo 2 intentos de suicidio y el tercero en noviembre  fue con pastillas y en estos momentos ella dice que se siente triste y que '),
(11, 33, 'Alonso Giraldo ', 'edgiraldo14@gmail.com', '', 0, '2019-11-24 00:00:00', 1, NULL, NULL, NULL, 'Soy muy posesivo en mi relación, he atacado a mi pareja por intentar defender mis ideas y sentir que con ataques me respeto y no sentirme engañado por él, cuando lo veo hablando con otros hombre o recibiendo mensajes de su ex y otras personas de su v'),
(12, 31, 'sofia', 'sofiaimmproyectos@gmail.com', '', 0, '2019-12-11 00:00:00', 1, NULL, NULL, NULL, 'Es un tema de suma importancia, erradicarlo es complicarlo hacer conciencia en la familia y los adolecentes es una tarea titánica, las adicciones estan mal fundadas en los principios de la familia, rescatemos a nuestra niñez y juventud, ES NUESTRO FU'),
(13, 18, 'Veronica ', 'Verotiscareno@hotmail.com', '', 0, '2019-12-15 00:00:00', 1, NULL, NULL, NULL, 'Solo leerlo me produjo un ataque de asiedad.'),
(14, 18, 'Cristina', 'bertcris_05@hotmail.com', '', 0, '2019-12-29 00:00:00', 1, NULL, NULL, NULL, 'Necesito ayuda! Mi hijo habla continuamente de que ya quiere morirse que siente mucha angustia. Donde puedo acudir para que me ayuden a ayudarlo?'),
(15, 11, 'Ignacio Ibarra ', 'papeleriasammy2@gmail.com', '', 1, '2019-12-29 00:00:00', 0, NULL, NULL, NULL, 'Me siento solo ,acabado y no se cómo seguir adelante'),
(16, 18, 'Natalia', 'natalia.bval@gmail.com', '', 0, '2020-01-22 00:00:00', 1, NULL, NULL, NULL, 'Mi vida diaria siempre ha sido detenida por aquel obstáculo que yo me pongo por miedo,  fobia social, ansiedad, no estoy segura.'),
(17, 30, 'Luz Vargas ', 'pandafresaadri@hotmail.com', '', 0, '2020-01-27 00:00:00', 1, NULL, NULL, NULL, 'Quiero poner en la cárcel al tipo que me violó. Qué debo hacer? De esto ya pasaron 6 años, ya lo tengo localizado.'),
(18, 13, 'claudia berenice godinez alvarado', 'claualvarado877@gmail.com', 'dinamicamente', 0, '2020-02-13 00:00:00', 1, NULL, NULL, NULL, 'ola buedia tengo un hijo de 17 años  se junto con suprimer novia despues de año imedio ella lo dejo por un amigo de mi hijo . apartir de eso casi no duerme no come esta irritable o trizte en las redes publica que novale nada que ya no qiuire vivir y '),
(19, 28, 'Juan', 'jblmambero@gmail.com', 'facebook.com/huaynapicchu', 0, '2020-02-13 00:00:00', 1, NULL, NULL, NULL, 'Yo he probado con éxito la hipnoterapia de regresión y las personas dejan de fumar, pero antes de quitar el apego al cigarrillo me aseguro de activar usando su nombre para activar las semillas de anclaje que deje en su subconsciente, como por ejemplo'),
(20, 18, 'MAYA VILLAGÓMEZ', 'mayagicelavillagomez@hotmail.com', '', 0, '2020-02-18 00:00:00', 1, NULL, NULL, NULL, 'Considero que los comentarios en este espacio deben poder ponerse en modo privado o público a elección de la persona  y no todo público pues de esta manera es un obstáculo para poder compartir. De igual forma no es visible si las personas han recibid'),
(21, 18, 'Alicia Meza Huguet', 'aliciaros2006@gmail.com', 'Pinterest', 1, '2020-03-01 00:00:00', 0, NULL, NULL, NULL, 'Una hija joven cáncer avanzado, nieta cuatro años de padre obeso, depresivo sin pareja sexual desde embarazo asumido por ella pero no deseado. Pareja ocasional en ésa epoca. Hasta hace seis meses viviendo en mi casa por situación económica y reaparic'),
(22, 33, 'juan carlos fuentes espinosa', 'fuentesespinoza24@gmail.com', '', 0, '2020-03-03 00:00:00', 1, NULL, NULL, NULL, 'gracias por su apoyo.\r\ntuve una embolia el 07 de noviembre de 2012.\r\nestuve inconciente 30 dias\r\nno camino \r\npero estoy bien. gracias por su apoyo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(112, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(113, 19, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2),
(114, 19, 'apellido', 'text', 'Apellido', 1, 1, 1, 1, 1, 1, '{}', 3),
(115, 19, 'resena', 'rich_text_box', 'Reseña', 0, 1, 1, 1, 1, 1, '{}', 4),
(116, 19, 'foto', 'image', 'Foto', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"698\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 5),
(117, 19, 'miniatura', 'image', 'Miniatura (250 x 350)', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"250\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 6),
(118, 19, 'puesto', 'text', 'Puesto', 1, 1, 1, 1, 1, 1, '{}', 7),
(119, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 8),
(120, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(121, 19, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 0, 0, 0, '{}', 10),
(122, 19, 'sorpresa', 'checkbox', 'Sorpresa', 0, 1, 1, 1, 1, 1, '{}', 11),
(133, 19, 'sorpresa_date', 'timestamp', 'Sorpresa Date', 0, 1, 1, 1, 1, 1, '{}', 12),
(134, 19, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nombre\",\"forceUpdate\":true}}', 13),
(135, 19, 'placeholder_img', 'image', 'Placeholder Img', 0, 1, 1, 1, 1, 1, '{}', 14),
(136, 19, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{}', 15),
(138, 19, 'espaciado', 'checkbox', 'Espaciado (Para mover la card del ponente 50 pixeles)', 1, 1, 1, 1, 1, 1, '{}', 16),
(160, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(161, 23, 'titulo', 'text', 'Titulo', 0, 1, 1, 1, 1, 1, '{}', 2),
(162, 23, 'descripcion', 'text', 'Descripcion', 0, 1, 1, 1, 1, 1, '{}', 3),
(163, 23, 'fecha_inicio', 'timestamp', 'Fecha Inicio', 0, 1, 1, 1, 1, 1, '{}', 4),
(164, 23, 'fecha_final', 'timestamp', 'Fecha Final', 0, 1, 1, 1, 1, 1, '{}', 5),
(165, 23, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{}', 6),
(166, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(167, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(168, 23, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 9),
(169, 23, 'conferencia_belongstomany_ponente_relationship', 'relationship', 'ponentes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Ponente\",\"table\":\"ponentes\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"conferencia_ponente\",\"pivot\":\"1\",\"taggable\":\"0\"}', 10),
(170, 19, 'visible_ponente', 'checkbox', 'Visible Ponente', 0, 1, 1, 1, 1, 1, '{}', 17),
(182, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(183, 26, 'titulo', 'text', 'Titulo', 0, 1, 1, 1, 1, 1, '{}', 2),
(184, 26, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"450\",\"height\":\"450\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 3),
(185, 26, 'fogo_2020', 'checkbox', 'Fogo 2020', 0, 1, 1, 1, 1, 1, '{}', 4),
(186, 26, 'fogo_2019', 'checkbox', 'Fogo 2019', 0, 1, 1, 1, 1, 1, '{}', 5),
(187, 26, 'fogo_2018', 'checkbox', 'Fogo 2018', 0, 1, 1, 1, 1, 1, '{}', 6),
(188, 26, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{}', 7),
(189, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(190, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(191, 26, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 10),
(192, 26, 'link', 'text', 'Link a la nota', 0, 1, 1, 1, 1, 1, '{}', 11),
(193, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(194, 27, 'titulo', 'text', 'Titulo', 0, 1, 1, 1, 1, 1, '{}', 2),
(195, 27, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"450\",\"height\":\"450\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 3),
(196, 27, 'fogo_2020', 'checkbox', 'Fogo 2020', 0, 1, 1, 1, 1, 1, '{}', 4),
(197, 27, 'fogo_2019', 'checkbox', 'Fogo 2019', 0, 1, 1, 1, 1, 1, '{}', 5),
(198, 27, 'fogo_2018', 'checkbox', 'Fogo 2018', 0, 1, 1, 1, 1, 1, '{}', 6),
(199, 27, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{}', 7),
(200, 27, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(201, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(202, 27, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 10),
(203, 27, 'link', 'text', 'Link a la nota', 0, 1, 1, 1, 1, 1, '{}', 11),
(204, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(205, 28, 'nombre', 'text', 'Nombre', 0, 1, 1, 0, 0, 0, '{}', 2),
(206, 28, 'empresa', 'text', 'Empresa', 0, 1, 1, 0, 0, 0, '{}', 3),
(207, 28, 'giro_empresa', 'text', 'Giro Empresa', 0, 1, 1, 0, 0, 0, '{}', 4),
(208, 28, 'cargo', 'text', 'Cargo', 0, 1, 1, 0, 0, 0, '{}', 5),
(209, 28, 'email', 'text', 'Email', 0, 1, 1, 0, 0, 0, '{}', 6),
(210, 28, 'telefono', 'text', 'Telefono', 0, 1, 1, 0, 0, 0, '{}', 7),
(211, 28, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 8),
(212, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(213, 28, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 0, 0, 0, '{}', 10),
(214, 28, 'mensaje', 'text', 'Mensaje', 0, 1, 1, 0, 0, 0, '{}', 11),
(215, 26, 'subtitulo', 'text', 'Subtitulo', 0, 1, 1, 1, 1, 1, '{}', 12),
(216, 26, 'bullet', 'text', 'Bullet', 0, 1, 1, 1, 1, 1, '{}', 13),
(217, 19, 'orden', 'number', 'Orden de aparición', 0, 1, 1, 1, 1, 1, '{}', 18),
(218, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(219, 30, 'img', 'image', 'Banner', 0, 1, 1, 1, 1, 1, '{}', 2),
(220, 30, 'img_mob', 'image', 'Banner Movil', 0, 1, 1, 1, 1, 1, '{}', 3),
(221, 30, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 4),
(222, 30, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":\"true\"}', 5),
(223, 30, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(224, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(225, 30, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 8),
(226, 30, 'orden', 'number', 'Orden de aparición', 0, 1, 1, 1, 1, 1, '{\"step\":1,\"min\":1,\"max\":10}', 9),
(227, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(228, 31, 'nombre', 'text', 'Nombre de la categoría', 0, 1, 1, 1, 1, 1, '{}', 2),
(229, 31, 'descripcion', 'rich_text_box', 'Descripción', 0, 1, 1, 1, 1, 1, '{}', 3),
(230, 31, 'color', 'color', 'Color', 0, 1, 1, 1, 1, 1, '{}', 4),
(231, 31, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"nombre\",\"forceUpdate\":true}}', 5),
(232, 31, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}', 6),
(233, 31, 'img', 'image', 'Ícono', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"114\",\"height\":\"114\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(234, 31, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(235, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(236, 31, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 10),
(237, 35, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(238, 35, 'id_categoria', 'text', 'Id Categoria', 0, 1, 1, 1, 1, 1, '{}', 2),
(239, 35, 'titulo', 'text', 'Título', 0, 1, 1, 1, 1, 1, '{}', 3),
(240, 35, 'contenido', 'rich_text_box', 'Contenido', 0, 1, 1, 1, 1, 1, '{}', 4),
(241, 35, 'bullet', 'text', 'Bullet', 0, 1, 1, 1, 1, 1, '{}', 5),
(242, 35, 'img', 'image', 'Miniatura', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"null\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 6),
(243, 35, 'img_mobile', 'image', 'Miniatura móvil', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"null\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(244, 35, 'fecha', 'text', 'Fecha de publicación', 0, 0, 0, 0, 0, 0, '{}', 8),
(245, 35, 'autor', 'text', 'Autor', 0, 1, 1, 1, 1, 1, '{}', 9),
(246, 35, 'slug', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 10),
(247, 35, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}', 11),
(248, 35, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(249, 35, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(250, 35, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 14),
(251, 35, 'articulo_hasone_categoria_relationship', 'relationship', 'Categorías', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Categoria\",\"table\":\"categorias\",\"type\":\"belongsTo\",\"column\":\"id_categoria\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"articulo_categoria\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(252, 35, 'programacion', 'timestamp', 'Programar fecha de publicación', 0, 1, 1, 1, 1, 1, '{}', 15),
(253, 35, 'articulo_belongsto_user_relationship', 'relationship', 'Autor', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"autor\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"articulo_categoria\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(254, 30, 'titulo', 'text', 'Título', 0, 1, 1, 1, 1, 1, '{}', 10),
(255, 30, 'subtitle', 'text', 'Subtitulo', 0, 1, 1, 1, 1, 1, '{}', 11),
(256, 36, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(257, 36, 'lugar', 'text', 'Lugar', 0, 1, 1, 1, 1, 1, '{}', 2),
(258, 36, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{}', 3),
(259, 36, 'direccion', 'text', 'Dirección', 0, 1, 1, 1, 1, 1, '{}', 4),
(260, 36, 'telefono', 'text', 'Teléfono', 0, 1, 1, 1, 1, 1, '{}', 5),
(261, 36, 'whats', 'text', 'WhatsApp', 0, 1, 1, 1, 1, 1, '{}', 6),
(262, 36, 'email', 'text', 'Correo electrónico', 0, 1, 1, 1, 1, 1, '{}', 7),
(263, 36, 'coordenadas', 'text', 'Coordenadas para mapa', 0, 1, 1, 1, 1, 1, '{}', 8),
(264, 36, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}', 9),
(265, 36, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 10),
(266, 36, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(267, 36, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 1, 1, 1, '{}', 12),
(268, 37, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(269, 37, 'id_categoria', 'text', 'Id Categoria', 0, 1, 1, 1, 1, 1, '{}', 2),
(270, 37, 'titulo', 'text', 'Título', 0, 1, 1, 1, 1, 1, '{}', 3),
(271, 37, 'contenido', 'rich_text_box', 'Contenido', 0, 1, 1, 1, 1, 1, '{}', 4),
(272, 37, 'bullet', 'text', 'Bullet', 0, 1, 1, 1, 1, 1, '{}', 5),
(273, 37, 'img', 'image', 'Miniatura', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"567\",\"height\":\"392\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 6),
(274, 37, 'img_mobile', 'image', 'Miniatura móvil', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"null\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(275, 37, 'fecha', 'date', 'Fecha', 0, 1, 1, 1, 1, 1, '{}', 8),
(276, 37, 'autor', 'text', 'Autor', 0, 1, 1, 1, 1, 1, '{}', 9),
(277, 37, 'slug', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 10),
(278, 37, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}', 11),
(279, 37, 'programacion', 'timestamp', 'Programar fecha de publicación', 0, 1, 1, 1, 1, 1, '{}', 12),
(280, 37, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 13),
(281, 37, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(282, 37, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 15),
(283, 37, 'noticia_belongsto_categoria_relationship', 'relationship', 'Categorías', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Categoria\",\"table\":\"categorias\",\"type\":\"belongsTo\",\"column\":\"id_categoria\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"articulo_categoria\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(284, 37, 'noticia_belongsto_user_relationship', 'relationship', 'Usuario', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"autor\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"articulo_categoria\",\"pivot\":\"0\",\"taggable\":\"0\"}', 17),
(285, 38, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(286, 38, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{}', 2),
(287, 38, 'descripcion', 'text', 'Descripción', 0, 1, 1, 1, 1, 1, '{}', 3),
(288, 38, 'slug', 'text', 'Slug', 0, 0, 0, 1, 1, 1, '{\"slugify\":{\"origin\":\"nombre\",\"forceUpdate\":true}}', 4),
(289, 38, 'selector', 'image', 'Selector', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"10\",\"height\":\"10\"},\"quality\":\"70%\",\"upsize\":true}', 5),
(290, 38, 'color', 'color', 'Color', 0, 1, 1, 1, 1, 1, '{}', 6),
(291, 38, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}', 7),
(292, 38, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(293, 38, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(294, 38, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 10),
(295, 30, 'bannersinteriore_hasone_seccione_relationship', 'relationship', 'Sección', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Seccion\",\"table\":\"secciones\",\"type\":\"belongsTo\",\"column\":\"id_seccion\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"articulo_categoria\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(296, 30, 'id_seccion', 'text', 'Id Seccion', 0, 1, 1, 1, 1, 1, '{}', 12),
(297, 35, 'vistas', 'text', 'Vistas', 0, 0, 0, 0, 0, 0, '{}', 16),
(298, 37, 'vistas', 'text', 'Vistas', 0, 0, 0, 0, 0, 0, '{}', 16),
(299, 31, 'img_2', 'image', 'Miniatura', 0, 1, 1, 1, 1, 1, '{}', 11),
(302, 31, 'banner', 'image', 'Banner para la categoría', 0, 1, 1, 1, 1, 1, '{}', 13),
(303, 35, 'articulo_belongsto_seccione_relationship', 'relationship', 'Sección', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Seccion\",\"table\":\"secciones\",\"type\":\"belongsTo\",\"column\":\"id_seccion\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"articulo_categoria\",\"pivot\":\"0\",\"taggable\":\"0\"}', 17),
(304, 35, 'id_seccion', 'text', 'Id Seccion', 0, 1, 1, 1, 1, 1, '{}', 17),
(306, 37, 'id_seccion', 'text', 'Id Seccion', 0, 1, 1, 1, 1, 1, '{}', 17),
(307, 31, 'juvenil', 'checkbox', 'Juvenil', 0, 1, 1, 1, 1, 1, '{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}', 13),
(308, 31, 'parental', 'checkbox', 'Parental', 0, 1, 1, 1, 1, 1, '{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}', 14),
(309, 31, 'infantil', 'checkbox', 'Infantil', 0, 1, 1, 1, 1, 1, '{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}', 15),
(310, 39, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(311, 39, 'id_articulo', 'text', 'Articulo', 0, 1, 1, 1, 0, 0, '{}', 2),
(312, 39, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 0, 0, '{}', 3),
(313, 39, 'email', 'text', 'Email', 0, 1, 1, 1, 0, 0, '{}', 4),
(314, 39, 'web', 'text', 'Web', 0, 1, 1, 1, 0, 0, '{}', 5),
(315, 39, 'denuncias', 'text', 'Denuncias', 0, 1, 1, 1, 0, 0, '{}', 6),
(316, 39, 'fecha', 'text', 'Fecha', 0, 1, 1, 1, 0, 0, '{}', 7),
(317, 39, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}', 8),
(318, 39, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 0, '{}', 9),
(319, 39, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(320, 39, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 11),
(321, 39, 'comentario_belongsto_articulo_relationship', 'relationship', 'articulos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Articulo\",\"table\":\"articulos\",\"type\":\"belongsTo\",\"column\":\"id_articulo\",\"key\":\"id\",\"label\":\"titulo\",\"pivot_table\":\"articulo_categoria\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(322, 39, 'mensaje', 'text', 'Mensaje', 0, 1, 1, 1, 1, 1, '{}', 12),
(323, 37, 'noticia_belongsto_seccione_relationship', 'relationship', 'secciones', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Seccion\",\"table\":\"secciones\",\"type\":\"belongsTo\",\"column\":\"id_seccion\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"articulo_categoria\",\"pivot\":\"0\",\"taggable\":null}', 18),
(324, 40, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(325, 40, 'id_seccion', 'text', 'Id Seccion', 0, 1, 1, 1, 1, 1, '{}', 2),
(326, 40, 'titulo', 'text', 'Título', 0, 1, 1, 1, 1, 1, '{}', 3),
(327, 40, 'contenido', 'text', 'Contenido', 0, 1, 1, 1, 1, 1, '{}', 4),
(328, 40, 'activo', 'checkbox', 'Activo', 0, 1, 1, 1, 1, 1, '{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}', 5),
(329, 40, 'portada', 'image', 'Portada', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"336\",\"height\":\"188\"},\"quality\":\"70%\",\"upsize\":true}', 6),
(330, 40, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(331, 40, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(332, 40, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 9),
(333, 40, 'video_belongsto_seccione_relationship', 'relationship', 'Sección', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Seccion\",\"table\":\"secciones\",\"type\":\"belongsTo\",\"column\":\"id_seccion\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"articulo_categoria\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(334, 40, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 10),
(335, 31, 'emergencia', 'checkbox', 'Emergencia', 0, 1, 1, 1, 1, 1, '{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(28, 'mensajes', 'mensajes', 'Mensaje', 'Mensajes', NULL, 'App\\Models\\Mensaje', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-14 22:12:15', '2020-02-14 23:05:22'),
(30, 'bannersinteriores', 'bannersinteriores', 'Banner Interior', 'Banners Interiores', 'voyager-window-list', 'App\\Models\\BannersInteriore', NULL, NULL, 'Bread para los banners interiores', 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-14 03:41:09', '2020-03-19 04:18:03'),
(31, 'categorias', 'categorias', 'Categoría', 'Categorías', 'voyager-list', 'App\\Models\\Categoria', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"nombre\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-14 04:13:25', '2020-04-03 10:35:57'),
(35, 'articulos', 'articulos', 'Artículo', 'Artículos', 'voyager-window-list', 'App\\Models\\Articulo', NULL, NULL, 'Artículos para dinamicamente', 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"titulo\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-18 01:21:47', '2020-03-26 22:27:22'),
(36, 'locations', 'locations', 'Locación', 'Locaciones', 'voyager-logbook', 'App\\Models\\Location', NULL, NULL, 'Locaciones para directorio', 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"nombre\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-18 04:55:34', '2020-03-18 05:02:20'),
(37, 'noticias', 'noticias', 'Noticia', 'Noticias', 'voyager-news', 'App\\Models\\Noticia', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"titulo\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-18 05:20:40', '2020-03-28 07:09:03'),
(38, 'secciones', 'secciones', 'Seccion', 'Secciones', 'voyager-archive', 'App\\Models\\Seccion', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"nombre\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-18 05:55:15', '2020-03-19 03:52:07'),
(39, 'comentarios', 'comentarios', 'Comentario', 'Comentarios', 'voyager-bubble', 'App\\Models\\Comentario', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"nombre\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-03-28 00:04:35', '2020-03-28 00:24:40'),
(40, 'videos', 'videos', 'Video', 'Videos', NULL, 'App\\Models\\Video', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"titulo\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-04-02 02:15:20', '2020-04-02 02:38:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `lugar` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whats` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coordenadas` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `locations`
--

INSERT INTO `locations` (`id`, `lugar`, `nombre`, `direccion`, `telefono`, `whats`, `email`, `coordenadas`, `activo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(54, 'Caises abasolo', 'Psicóloga municipal', 'Morelos No.  224', '01 429 6930079', NULL, NULL, '20.4493767,-101.5311653', 1, '2020-03-31 07:36:31', '2020-03-31 07:36:31', NULL),
(55, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(56, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(57, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(58, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(59, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(60, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(61, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(62, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(63, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(64, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(65, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(66, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(67, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(68, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(69, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(70, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(71, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(72, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(73, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(74, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(75, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(76, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(77, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(78, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(79, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(80, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(81, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(82, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(83, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(84, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(85, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(86, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(87, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(88, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(89, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(90, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(91, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(92, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(93, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(94, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(95, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(96, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(97, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(98, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(99, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(100, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(101, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(102, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(103, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL),
(104, 'Calle Actino s/n / Fracc. La Esperanza', 'Calle Actino s/n / Fracc. La Esperanza', NULL, '4778651262', NULL, NULL, '20.677804,-101.366018', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empresa` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `giro_empresa` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mensaje` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-01-19 07:06:43', '2020-01-19 07:06:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-dashboard', '#000000', NULL, 1, '2020-01-19 07:06:43', '2020-03-14 02:54:32', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2020-01-19 07:06:43', '2020-03-18 05:56:37', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 2, '2020-01-19 07:06:43', '2020-03-14 03:48:53', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2020-01-19 07:06:43', '2020-03-14 03:49:11', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-01-19 07:06:43', '2020-03-18 05:56:37', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-01-19 07:06:43', '2020-02-28 09:36:34', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-01-19 07:06:43', '2020-02-28 09:36:34', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-01-19 07:06:43', '2020-02-28 09:36:34', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-01-19 07:06:43', '2020-02-28 09:36:34', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2020-01-19 07:06:43', '2020-03-18 05:56:37', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-01-19 07:06:43', '2020-02-28 09:36:34', 'voyager.hooks', NULL),
(32, 1, 'Mensajes', '', '_self', 'voyager-mail', '#000000', NULL, 7, '2020-02-14 22:12:16', '2020-03-18 05:56:37', 'voyager.mensajes.index', 'null'),
(33, 2, 'Ponentes', 'ponentes', '_self', 'voyager-star', '#ff0080', NULL, 1, '2020-02-20 09:18:28', '2020-02-20 09:20:07', NULL, ''),
(34, 2, 'Noticias', 'noticias', '_self', 'voyager-news', '#0000ff', NULL, 3, '2020-02-20 09:19:01', '2020-02-20 09:20:28', NULL, ''),
(35, 2, 'Mensajes', 'mensajes', '_self', NULL, '#800040', NULL, 4, '2020-02-20 09:19:58', '2020-02-20 09:20:28', NULL, ''),
(36, 2, 'Conferencias', 'conferencias', '_self', 'voyager-study', '#000000', NULL, 2, '2020-02-20 09:20:23', '2020-02-20 09:20:28', NULL, ''),
(37, 1, 'Banners Interiores', '', '_self', 'voyager-window-list', '#000000', 38, 1, '2020-03-14 03:41:09', '2020-03-14 03:46:55', 'voyager.bannersinteriores.index', 'null'),
(38, 1, 'Banners', '', '_self', 'voyager-photo', '#000000', NULL, 4, '2020-03-14 03:42:48', '2020-03-18 05:56:37', NULL, ''),
(39, 1, 'Artículos', '', '_self', 'voyager-treasure-open', '#000000', NULL, 5, '2020-03-14 04:09:37', '2020-03-18 05:56:37', NULL, ''),
(40, 1, 'Categorías', '', '_self', 'voyager-list', '#000000', 39, 3, '2020-03-14 04:13:25', '2020-03-18 05:41:36', 'voyager.categorias.index', 'null'),
(41, 1, 'Artículos', '', '_self', 'voyager-window-list', '#000000', 39, 1, '2020-03-18 01:21:48', '2020-03-18 02:03:07', 'voyager.articulos.index', 'null'),
(42, 1, 'Locaciones', '', '_self', 'voyager-logbook', '#000000', 43, 1, '2020-03-18 04:55:34', '2020-03-18 05:00:25', 'voyager.locations.index', 'null'),
(43, 1, 'Directorio', '', '_self', 'voyager-shop', '#000000', NULL, 6, '2020-03-18 04:56:13', '2020-03-18 05:56:37', NULL, ''),
(44, 1, 'Noticias', '', '_self', 'voyager-news', NULL, 39, 2, '2020-03-18 05:20:40', '2020-03-18 05:41:36', 'voyager.noticias.index', NULL),
(45, 1, 'Secciones', '', '_self', 'voyager-archive', '#000000', 38, 2, '2020-03-18 05:55:15', '2020-03-18 05:57:03', 'voyager.secciones.index', 'null'),
(46, 1, 'Comentarios', '', '_self', 'voyager-bubble', '#000000', NULL, 11, '2020-03-28 00:04:35', '2020-03-28 00:07:16', 'voyager.comentarios.index', 'null'),
(47, 1, 'Videos', '', '_self', 'voyager-video', '#000000', NULL, 12, '2020-04-02 02:15:20', '2020-04-02 02:16:54', 'voyager.videos.index', 'null');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenido` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bullet` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_mobile` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT current_timestamp(),
  `autor` int(11) DEFAULT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` tinyint(4) DEFAULT NULL,
  `programacion` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `vistas` int(11) DEFAULT 0,
  `id_seccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `id_categoria`, `titulo`, `contenido`, `bullet`, `img`, `img_mobile`, `fecha`, `autor`, `slug`, `activo`, `programacion`, `created_at`, `updated_at`, `deleted_at`, `vistas`, `id_seccion`) VALUES
(1, 1, 'Actividades de la semana', '<p><span style=\"font-size: 14px;\">Actividades de la semana compartiendo esfuerzos en Comonfort telesecundaria 216 con personal alcohólicos anónimos</span><br></p>', NULL, 'ed883a8c-20fa-4c47-8e8b-4fd314cc15c8.jpg', NULL, '2020-03-28', 4, 'actividades-de-la-semana', 1, NULL, '2019-01-10 06:00:00', NULL, NULL, 217, 10),
(2, 1, 'Foro para padres de familia', '<p><span style=\"font-size: 14px;\">Se realizó el foro&nbsp;en crianza y prevención de adicciones</span><br></p>', NULL, 'a0cdbb67-996e-4a86-9b31-17604f6bfe73.jpg', NULL, '2020-03-28', 4, 'foro-para-padres-de-familia', 1, NULL, '2019-01-10 06:00:00', NULL, NULL, 194, 10),
(3, 1, 'Prevención de adicciones', '<p>Actividades de la&nbsp;Semana Nacional de Alcohólicos Anónimos&nbsp;&nbsp;<a href=\"http://aamexico.org.mx/\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;url=http://aamexico.org.mx/&amp;ved=2ahUKEwij-J201vLfAhVLKa0KHYEmBwMQFjAAegQIDxAB\" original_target=\"http://aamexico.org.mx/\" saprocessedanchor=\"true\" style=\"background-color: rgb(255, 255, 255); color: rgb(102, 0, 153); cursor: pointer; text-decoration-line: underline; font-family: arial, sans-serif; font-size: small; display: inline-block;\"></a></p><p>&nbsp;compartiendo esfuerzos en escuela secundaria Dr. Mora</p>', NULL, 'cb02c246-2826-422f-b224-a7291e0cda0e.jpg', NULL, '2020-03-28', 4, 'prevencion-de-adicciones', 1, NULL, '2019-01-16 06:00:00', NULL, NULL, 183, 10),
(4, 1, 'Charlas de prevención de adicciones ', '<p>Impartiendo temas de prevención de alcoholismo en la comunidad de la moncada de Tarimoro. Ahí mismo con aplicación grupal de tamizajes&nbsp; de salud mental, suicidio y detección de alcohol, tabaco y otras drogas.<br></p>', NULL, 'b53cebe8-fcbb-4daf-91df-f4ae873d0417.jpg', NULL, '2020-03-28', 4, 'charlas-de-prevencion-de-adicciones-', 1, NULL, '2019-01-17 06:00:00', NULL, NULL, 186, 10),
(5, 1, 'Actividad del comité ', '<p>Actividad del Comité de Salud Mental Municipal de Tarimoro en Secundaria Emiliano Zapata de la Comunidad de Charco Largo en Tarimoro<br></p>', NULL, '25b2c906-91d6-42ec-a158-eb3f4e038de1.jpg', NULL, '2020-03-28', 4, 'actividad-del-comite-', 1, NULL, '2019-01-18 06:00:00', NULL, NULL, 208, 10),
(6, 1, 'Actividades del área de psicología', '<p>Escuela Firenze Celaya. Feria de la salud compartiendo esfuerzos<br></p>', NULL, 'b72f93af-19e3-41a4-bbe3-019dda2ca557.jpg', NULL, '2020-03-28', 4, 'actividades-del-area-de-psicologia', 1, NULL, '2019-01-18 06:00:00', NULL, NULL, 278, 10),
(7, 1, 'Sesión de comités 24012019 Villagrán', '<p>La primera sesión del año de los comités de de salud mental, prevención de accidentes y salud municipal.<br></p>', NULL, '21943cfd-104c-4b42-91e6-7f0fe8004f44.jpg', NULL, '2020-03-28', 4, 'sesion-de-comites-24012019-villagran', 1, NULL, '2019-01-24 06:00:00', NULL, NULL, 241, 10),
(8, 1, 'CAISES Acámbaro se une  a la conmemoración del día mundial de la lucha contra el cáncer ', '<p>El área de salud mental a través de la Psic. Susana Guerrero brinda pláticas en sala de espera a la población en general, enfocadas a la concientización y detección oportuna del cáncer cervicouterino, de mamá y en niños,  con el fin de sensibilizar y promover una cultura de autocuidado tanto físico como emocionalmente.<br></p>', NULL, 'd4282825-fd20-42e5-b76b-d5c4c0c51860.jpg', NULL, '2020-03-28', 4, 'caises-acambaro-se-une-a-la-conmemoracion-del-dia-mundial-de-la-lucha-contra-el-cancer-', 1, NULL, '2019-02-05 06:00:00', NULL, NULL, 286, 10),
(9, 1, 'Jurisdicción Sanitaria IV conmemora el día mundial de la lucha contra el cáncer', '<p>El área de Salud Mental en conjunto con la Coordinación de Salud Reproductiva realizan actividades de prevención y difusión para combatir dicha enfermedad generando impacto en la población Acambarense.<br></p>', NULL, '6c4ee35f-c282-4d04-8e51-22433cea8bf7.jpg', NULL, '2020-03-28', 4, 'jurisdiccion-sanitaria-iv-conmemora-el-dia-mundial-de-la-lucha-contra-el-cancer', 1, NULL, '2019-02-05 06:00:00', NULL, NULL, 441, 10),
(10, 1, 'Capacitación de Prevención de Suicidio', '<p>Se lleva a cabo la Capacitación de Prevención de Suicidio por parte del personal de Salud Mental de CAISES San Luis de la Paz, a personal de Protección Civil, Cruz Roja y SEMP.<br></p>', NULL, '78080605-ac0a-4007-b29f-62251ed8b78d.jpg', NULL, '2020-03-28', 4, 'capacitacion-de-prevencion-de-suicidio', 1, NULL, '2019-03-07 06:00:00', NULL, NULL, 389, 10),
(12, 1, 'Lanzan #YoMeComprometo en GIFF 2019', '<p>Por cuarto año consecutivo, el Festival Internacional de Cine Guanajuato (GIFF) promueve, en coordinación con la Secretaría de Salud del Estado de Guanajuato, la campaña <b>#YoMeComprometo</b>, con el fin de impulsar la prevención del suicidio entre los jóvenes.</p><p><span style=\"font-size: 14px;\">La campaña <b>#YoMeComprometo</b> se presentará el viernes 26 de julio en el Auditorio del Estado y contará con la presencia del actor y conductor Faisy.</span><br></p>', NULL, 'faisy-giff-2019.png', NULL, '2020-03-28', 4, 'lanzan-yomecomprometo-en-giff-2019', 1, NULL, '2019-07-19 05:00:00', NULL, NULL, 493, 10),
(13, 1, 'Brindan apoyo ante violencia de género en GIFF 2019', '<p>Por cuarta edición consecutiva, el Festival Internacional de Cine Guanajuato (GIFF) trabaja, en coordinación con la Secretaría de Salud del Estado de Guanajuato, contra la violencia de género.</p><p><span style=\"font-size: 14px;\">En esta ocasión, y en el marco de la 22da edición del festival, se lanza la campaña <b>“Cero Violencia Contra Las Mujeres”</b> y tiene como portavoz a la actriz nominada al Oscar, Yalitza Aparicio.</span><br></p><p><span style=\"font-size: 14px;\">Por otra parte, entre las acciones que se implementan&nbsp;</span><span style=\"font-size: 14px;\">este año&nbsp;contra la violencia de género se encuentra</span><span style=\"font-size: 14px;\">&nbsp;un Espacio Libre De Violencia, en el que, de manera privada, expertos escucharán los casos de mujeres y hombres, sobre violencia familiar, sexual y/o de género; así como ofrecer atención especializada y específica a las necesidades con el apoyo de un equipo interdisciplinario de expertos.&nbsp;</span><br></p><p><span style=\"font-size: 14px;\">El Festival Internacional de Cine Guanajuato (GIFF) también es un espacio para encontrar apoyo, asesoría y atención psicológica ante la violencia de género.</span><br></p><p><span style=\"font-size: 14px;\">La campaña <b>“Cero Violencia Contra Las Mujeres”</b> se presentará el sábado 20 de julio en el Teatro Ángela Peralta, en San Miguel de Allende y contará con la presencia de la actriz nominada al Oscar, Yalitza Aparicio.</span><br></p>', NULL, 'yalitza_aparicio_giff_2019.png', NULL, '2020-03-28', 4, 'brindan-apoyo-ante-violencia-de-genero-en-giff-2019', 1, NULL, '2019-07-19 05:00:00', '2020-03-28 21:36:13', NULL, 668, 10),
(14, 1, 'Informan sobre la prevención del suicidio en Secundaria #5 Emperador Cuauhtémoc', '<p>En el marco del Día Mundial para la Prevención del Suicidio,\r\n1200 alumnos de la Escuela Secundaria #5 Emperador Cuauhtémoc participaron en el evento “Dale like a tu vida”.</p><p><span style=\"font-size: 14px;\">Los alumnos tanto del turno matutino como vespertino fueron atendidos en 64 talleres. Por su parte, 200 padres de familia se informaron sobre la prevención del suicidio y presenciaron una obra de teatro del Colectivo Café\r\nSimbiosis así como una participación artística-cultural de los estudiantes.</span>\r\n\r\n\r\n</p><p class=\"MsoNormal\">En este evento se contó con la participación de instituciones\r\nparticipantes de la Red de Prevención y Atención a la Conducta Suicida del municipio\r\nde León, como Salud Municipal, Prevención del Delito, Centro de Integración\r\nJuvenil, UNIVA, Instituto Municipal de la Juventud, Cruz Roja, COMUDE, Instituto\r\nMunicipal de las Mujeres, Policía Municipal, Hospital General de León, CAPA La\r\nJoya, CAPA, Rodríguez Ajenjo, CAIA, el Colegio de Pediatras de León,\r\nUniversidad de Guanajuato, Protección civil y sectores de la Jurisdicción.</p><p class=\"MsoNormal\"><o:p></o:p></p>', NULL, 'dale-like-a-tu-vida-prevencion-suicidio-1.png', NULL, '2020-03-28', 4, 'informan-sobre-la-prevencion-del-suicidio-en-secundaria-5-emperador-cuauhtemoc', 1, NULL, '2019-09-11 05:00:00', NULL, NULL, 309, 10),
(15, 1, 'Mejores prácticas para centros especializados en adicciones.', '<p>El Estado de Guanajuato a través de la Comisión Estatal contra las Adicciones de la Secretaria de Salud del Estado, desarrolla de manera continua el proyecto de Regulación y Mejora de los Establecimientos Residenciales Especializados en el Tratamiento de Adicciones, con la finalidad de asesorar, capacitar, acompañar y supervisar a los establecimientos residenciales; por lo que se llevó a cabo el Encuentro Mejores Prácticas de Centros Residenciales el pasado 12 de Septiembre en la UNITEC.<br></p>', NULL, '1.png', NULL, '2020-03-28', 4, 'mejores-practicas-para-centros-especializados-en-adicciones', 1, NULL, '2019-09-19 05:00:00', NULL, NULL, 346, 10),
(16, 1, 'Jornadas de Salud Mental de la Jurisdicción Sanitaria VII', '<p>En el marco del día conmemorativo, llevamos a cabo las Jornadas de Salud Mental de la Jurisdicción Sanitaria VII.<br></p>', NULL, 'Sin-título-2.png', NULL, '2020-03-28', 4, 'jornadas-de-salud-mental-de-la-jurisdiccion-sanitaria-vii', 1, NULL, '2019-10-10 05:00:00', NULL, NULL, 359, 10),
(17, 1, '2do. Foro Estatal Prevención de Adicciones', '<p><span style=\"color: rgb(33, 25, 21); font-family: \"Proxima Nova\"; font-size: 16px; text-align: justify;\">El Gobierno del Estado de Guanajuato firmó el 27 de noviembre del 2019 el acuerdo de colaboración con el Centro Islandés de Investigaciones y Análisis Sociales, para implementar el proyecto Planeta Juventud. A este convenio se suman los Municipios de León, Guanajuato, Irapuato, Celaya y Silao.</span><br></p>', NULL, '2doforo.png', NULL, '2020-03-28', 4, '2do-foro-estatal-prevencion-de-adicciones', 1, NULL, '2019-11-30 06:00:00', '2020-03-28 23:08:50', NULL, 485, 10),
(22, 1, 'Red León Prevención de Conducta Suicida 2019', '<p>Red León Prevención de Conducta Suicida 2019<br></p>', NULL, 'prev.jpg', NULL, '2020-03-28', 4, 'red-leon-prevencion-de-conducta-suicida-2019', 1, NULL, '2019-12-07 06:00:00', NULL, NULL, 577, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(2, 'browse_bread', NULL, '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(3, 'browse_database', NULL, '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(4, 'browse_media', NULL, '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(5, 'browse_compass', NULL, '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(6, 'browse_menus', 'menus', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(7, 'read_menus', 'menus', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(8, 'edit_menus', 'menus', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(9, 'add_menus', 'menus', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(10, 'delete_menus', 'menus', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(11, 'browse_roles', 'roles', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(12, 'read_roles', 'roles', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(13, 'edit_roles', 'roles', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(14, 'add_roles', 'roles', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(15, 'delete_roles', 'roles', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(16, 'browse_users', 'users', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(17, 'read_users', 'users', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(18, 'edit_users', 'users', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(19, 'add_users', 'users', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(20, 'delete_users', 'users', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(21, 'browse_settings', 'settings', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(22, 'read_settings', 'settings', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(23, 'edit_settings', 'settings', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(24, 'add_settings', 'settings', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(25, 'delete_settings', 'settings', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(26, 'browse_hooks', NULL, '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(127, 'browse_mensajes', 'mensajes', '2020-02-14 22:12:16', '2020-02-14 22:12:16'),
(128, 'read_mensajes', 'mensajes', '2020-02-14 22:12:16', '2020-02-14 22:12:16'),
(129, 'edit_mensajes', 'mensajes', '2020-02-14 22:12:16', '2020-02-14 22:12:16'),
(130, 'add_mensajes', 'mensajes', '2020-02-14 22:12:16', '2020-02-14 22:12:16'),
(131, 'delete_mensajes', 'mensajes', '2020-02-14 22:12:16', '2020-02-14 22:12:16'),
(132, 'browse_bannersinteriores', 'bannersinteriores', '2020-03-14 03:41:09', '2020-03-14 03:41:09'),
(133, 'read_bannersinteriores', 'bannersinteriores', '2020-03-14 03:41:09', '2020-03-14 03:41:09'),
(134, 'edit_bannersinteriores', 'bannersinteriores', '2020-03-14 03:41:09', '2020-03-14 03:41:09'),
(135, 'add_bannersinteriores', 'bannersinteriores', '2020-03-14 03:41:09', '2020-03-14 03:41:09'),
(136, 'delete_bannersinteriores', 'bannersinteriores', '2020-03-14 03:41:09', '2020-03-14 03:41:09'),
(137, 'browse_categorias', 'categorias', '2020-03-14 04:13:25', '2020-03-14 04:13:25'),
(138, 'read_categorias', 'categorias', '2020-03-14 04:13:25', '2020-03-14 04:13:25'),
(139, 'edit_categorias', 'categorias', '2020-03-14 04:13:25', '2020-03-14 04:13:25'),
(140, 'add_categorias', 'categorias', '2020-03-14 04:13:25', '2020-03-14 04:13:25'),
(141, 'delete_categorias', 'categorias', '2020-03-14 04:13:25', '2020-03-14 04:13:25'),
(142, 'browse_articulos', 'articulos', '2020-03-18 01:21:48', '2020-03-18 01:21:48'),
(143, 'read_articulos', 'articulos', '2020-03-18 01:21:48', '2020-03-18 01:21:48'),
(144, 'edit_articulos', 'articulos', '2020-03-18 01:21:48', '2020-03-18 01:21:48'),
(145, 'add_articulos', 'articulos', '2020-03-18 01:21:48', '2020-03-18 01:21:48'),
(146, 'delete_articulos', 'articulos', '2020-03-18 01:21:48', '2020-03-18 01:21:48'),
(147, 'browse_locations', 'locations', '2020-03-18 04:55:34', '2020-03-18 04:55:34'),
(148, 'read_locations', 'locations', '2020-03-18 04:55:34', '2020-03-18 04:55:34'),
(149, 'edit_locations', 'locations', '2020-03-18 04:55:34', '2020-03-18 04:55:34'),
(150, 'add_locations', 'locations', '2020-03-18 04:55:34', '2020-03-18 04:55:34'),
(151, 'delete_locations', 'locations', '2020-03-18 04:55:34', '2020-03-18 04:55:34'),
(152, 'browse_noticias', 'noticias', '2020-03-18 05:20:40', '2020-03-18 05:20:40'),
(153, 'read_noticias', 'noticias', '2020-03-18 05:20:40', '2020-03-18 05:20:40'),
(154, 'edit_noticias', 'noticias', '2020-03-18 05:20:40', '2020-03-18 05:20:40'),
(155, 'add_noticias', 'noticias', '2020-03-18 05:20:40', '2020-03-18 05:20:40'),
(156, 'delete_noticias', 'noticias', '2020-03-18 05:20:40', '2020-03-18 05:20:40'),
(157, 'browse_secciones', 'secciones', '2020-03-18 05:55:15', '2020-03-18 05:55:15'),
(158, 'read_secciones', 'secciones', '2020-03-18 05:55:15', '2020-03-18 05:55:15'),
(159, 'edit_secciones', 'secciones', '2020-03-18 05:55:15', '2020-03-18 05:55:15'),
(160, 'add_secciones', 'secciones', '2020-03-18 05:55:15', '2020-03-18 05:55:15'),
(161, 'delete_secciones', 'secciones', '2020-03-18 05:55:15', '2020-03-18 05:55:15'),
(162, 'browse_comentarios', 'comentarios', '2020-03-28 00:04:35', '2020-03-28 00:04:35'),
(163, 'read_comentarios', 'comentarios', '2020-03-28 00:04:35', '2020-03-28 00:04:35'),
(164, 'edit_comentarios', 'comentarios', '2020-03-28 00:04:35', '2020-03-28 00:04:35'),
(165, 'add_comentarios', 'comentarios', '2020-03-28 00:04:35', '2020-03-28 00:04:35'),
(166, 'delete_comentarios', 'comentarios', '2020-03-28 00:04:35', '2020-03-28 00:04:35'),
(167, 'browse_videos', 'videos', '2020-04-02 02:15:20', '2020-04-02 02:15:20'),
(168, 'read_videos', 'videos', '2020-04-02 02:15:20', '2020-04-02 02:15:20'),
(169, 'edit_videos', 'videos', '2020-04-02 02:15:20', '2020-04-02 02:15:20'),
(170, 'add_videos', 'videos', '2020-04-02 02:15:20', '2020-04-02 02:15:20'),
(171, 'delete_videos', 'videos', '2020-04-02 02:15:20', '2020-04-02 02:15:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(97, 3),
(98, 3),
(99, 3),
(100, 3),
(101, 3),
(117, 3),
(118, 3),
(119, 3),
(120, 3),
(121, 3),
(122, 3),
(123, 3),
(124, 3),
(125, 3),
(126, 3),
(127, 3),
(128, 3),
(129, 3),
(130, 3),
(131, 3),
(1, 4),
(97, 4),
(98, 4),
(99, 4),
(100, 4),
(101, 4),
(117, 4),
(118, 4),
(119, 4),
(120, 4),
(121, 4),
(122, 4),
(123, 4),
(124, 4),
(125, 4),
(126, 4),
(127, 4),
(128, 4),
(129, 4),
(130, 4),
(131, 4),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-01-19 07:06:43', '2020-01-19 07:06:43'),
(2, 'user', 'Normal User', '2020-01-19 07:06:43', '2020-01-19 07:06:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selector` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`id`, `nombre`, `descripcion`, `slug`, `selector`, `color`, `activo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Home', 'Página de inicio', 'home', 'secciones\\March2020\\DAWsCLiOuGzBcZYsjmpN.png', '#c22d7e', 1, '2020-03-19 03:58:28', '2020-03-19 03:58:28', NULL),
(2, 'Kids', 'Sección de kids', 'kids', 'secciones\\March2020\\7ZuGPsaXF6yuJdvOXYGA.png', '#ffa800', 1, '2020-03-19 04:02:14', '2020-03-19 04:02:14', NULL),
(3, 'Juvenil', 'Seccion de juvenil', 'juvenil', 'secciones\\March2020\\j0HRk7tZ25CALjP3GZ41.png', '#d06f21', 1, '2020-03-26 00:44:07', '2020-03-26 00:44:07', NULL),
(4, 'Parental', 'seccion para padres', 'parental', 'secciones\\March2020\\mxF0M4OwqFRwFqLF4M1z.png', '#94e8a2', 1, '2020-03-27 01:08:38', '2020-04-03 10:29:33', NULL),
(5, 'Adicciones', 'Interior de adicciones', 'adicciones', 'secciones\\March2020\\cjuYKJQx1vaWR3WFqLbp.png', '#ff00ff', 1, '2020-03-27 05:13:12', '2020-03-27 05:13:12', NULL),
(6, 'Suicidio', 'interior de suicidio', 'suicidio', 'secciones\\March2020\\VQRQ3vvzz3OCVTd6UcRM.png', '#ff0080', 1, '2020-03-27 05:39:21', '2020-03-27 05:39:21', NULL),
(7, 'Salud mental', NULL, 'salud-mental', 'secciones\\March2020\\Uk4eoQB7Ec3yk7TV6Ac4.png', '#ff00ff', 1, '2020-03-27 05:42:23', '2020-03-27 05:42:23', NULL),
(8, 'Violencia', 'Interior de violencia', 'violencia', 'secciones\\March2020\\VSIWQpkZLyBHnL7nGmHg.png', '#ff0080', 1, '2020-03-27 05:45:04', '2020-03-27 05:45:04', NULL),
(9, 'Articulos', 'Articulos de ayuda', 'articulos', 'secciones\\March2020\\8M9ZGj1GA9jkcvQTsx5K.png', '#ff00ff', 1, '2020-03-28 06:50:29', '2020-03-28 06:50:29', NULL),
(10, 'Noticias', 'Seccion de noticias', 'noticias', 'secciones\\March2020\\hJhFmYwVugNSgPXglkO0.png', '#ff80c0', 1, '2020-03-28 06:59:51', '2020-03-28 06:59:51', NULL),
(11, 'Covid', 'Sección especial para contingencia sanitaria', 'covid', 'secciones\\April2020\\4ziJS9TOrlN7pOoY8N9z.png', '#99f1a6', 1, '2020-04-03 10:28:30', '2020-04-03 11:24:31', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Dinamicamente', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', NULL, '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\March2020\\HSMUimJHkB4yKUEFzvhc.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\March2020\\aG0J6h8DEgQTahGhZBxs.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'DINAMICAMENTE', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'http://difraxion.com', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\March2020\\TeDfQ3I9KdaQqbwOLeDy.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\March2020\\ViUQ6pWOl76YV3AE1Puq.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.facebook', 'Facebook', 'https://www.facebook.com/dinamicamentemx/', NULL, 'text', 6, 'Site'),
(12, 'site.instagram', 'Instagram', 'https://www.instagram.com/dinamicamentemx', NULL, 'text', 7, 'Site'),
(14, 'site.twitter', 'Twitter', 'https://twitter.com/dinamicamentemx', NULL, 'text', 8, 'Site'),
(15, 'site.linkedin', 'linkedin', NULL, NULL, 'text', 9, 'Site'),
(16, 'site.youtube', 'YouTube', NULL, NULL, 'text', 10, 'Site'),
(18, 'site.whatsapp', 'Whatsapp', NULL, NULL, 'text', 11, 'Site'),
(19, 'site.facebookid', 'Identificador de Facebook (Chat)', NULL, NULL, 'text', 12, 'Site'),
(20, 'site.recaptcha', 'Recaptcha', NULL, NULL, 'text', 13, 'Site'),
(21, 'site.correo', 'Correo de contacto', 'salud@guanajuato.gob.mx', NULL, 'text', 14, 'Site'),
(22, 'site.telefono', 'Teléfono de contacto', '(473)7 35 27 00', NULL, 'text', 15, 'Site'),
(23, 'site.principal', 'Dirección principal', 'Tamazuca #4, Zona Centro,Guanajuato, Gto. C.P. 36000', NULL, 'text', 16, 'Site');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(22, 'menu_items', 'title', 13, 'pt', 'Publicações', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(24, 'menu_items', 'title', 12, 'pt', 'Categorias', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(25, 'menu_items', 'title', 14, 'pt', 'Páginas', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-01-19 07:10:38', '2020-01-19 07:10:38'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-01-19 07:10:39', '2020-01-19 07:10:39'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-01-19 07:10:39', '2020-01-19 07:10:39'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-01-19 07:10:39', '2020-01-19 07:10:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'DFX Admin', 'alejandro@difraxion.com', 'users\\March2020\\Pj4IuQbJqbtZ5hqolfLH.png', NULL, '$2y$10$mvl4r9eRwm9WUKBxcLPOpuKUeNd/YAzVpE00o65/V9hHKgPg0W3.S', 'wQuMCaFyFNtznaYC3oytMWbDTTwFryjGRKVQGLp44DGcteiSp2Ozfz5jENCH', '{\"locale\":\"es\"}', '2020-01-19 07:10:38', '2020-03-14 02:28:28'),
(4, 1, 'Dinamicamente', 'salud@guanajuato.gob.mx', 'users\\March2020\\ylUa7PR2suuO1fMEwZtE.png', NULL, '$2y$10$ZX5Oaq/hd3NmmWmfuRAwuuIp3zmtGBRm9gY3us0ZdNB8hKDFnIyoq', NULL, '{\"locale\":\"es\"}', '2020-03-28 19:36:42', '2020-03-28 19:37:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_seccion` int(11) DEFAULT NULL,
  `titulo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenido` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activo` tinyint(4) DEFAULT 1,
  `portada` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `link` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `videos`
--

INSERT INTO `videos` (`id`, `id_seccion`, `titulo`, `contenido`, `activo`, `portada`, `created_at`, `updated_at`, `deleted_at`, `link`) VALUES
(1, 2, '¡Quererte es protegerte!', '#QueremosEscucharte #AquíEstamos #CómoPuedoAyudar', 1, 'videos\\April2020\\wWM8F09yrYIhap1hErTw.png', '2020-04-02 02:35:00', '2020-04-02 02:39:05', NULL, 'https://www.youtube.com/watch?v=oAAlreSY7pY'),
(2, NULL, 'Gracias Mamá y Papá.', '#YoMeComprometo', 1, 'videos\\April2020\\6p6IW7xahe7XiFQNQs1H.png', '2020-04-02 02:42:20', '2020-04-02 02:42:20', NULL, 'https://www.youtube.com/watch?v=QvU1QuW2Sqs'),
(3, 2, 'Tenemos un mensaje para ti.', '#YoMeComprometo', 1, 'videos\\April2020\\1xUYmf6Urn5djJWzkNIU.png', '2020-04-02 02:45:39', '2020-04-02 02:45:39', NULL, 'https://www.youtube.com/watch?v=dm92qkqVZcA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voyager_themes`
--

CREATE TABLE `voyager_themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voyager_theme_options`
--

CREATE TABLE `voyager_theme_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `voyager_theme_id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bannersinteriores`
--
ALTER TABLE `bannersinteriores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `voyager_themes`
--
ALTER TABLE `voyager_themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `voyager_themes_folder_unique` (`folder`);

--
-- Indices de la tabla `voyager_theme_options`
--
ALTER TABLE `voyager_theme_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voyager_theme_options_voyager_theme_id_index` (`voyager_theme_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `bannersinteriores`
--
ALTER TABLE `bannersinteriores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `voyager_themes`
--
ALTER TABLE `voyager_themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `voyager_theme_options`
--
ALTER TABLE `voyager_theme_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `voyager_theme_options`
--
ALTER TABLE `voyager_theme_options`
  ADD CONSTRAINT `voyager_theme_options_voyager_theme_id_foreign` FOREIGN KEY (`voyager_theme_id`) REFERENCES `voyager_themes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
