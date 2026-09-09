-- I HATE YOU, EGG - WX-78, 2013

local ANNOUNCE = STRINGS.CHARACTERS.WX78
local DESCRIBE = STRINGS.CHARACTERS.WX78.DESCRIBE

--	Announcements
	
	--	Actions
	ANNOUNCE.BATTLECRY.PENGUIN  = "НАЧАНАЮ ПРОТОКОЛ ПО УНИЧТОЖЕНИЮ ПТИЦ"
	ANNOUNCE.BATTLECRY.POLARBEAR = "УМРИ, САЛЬНЫЙ МЕШОК МЯСА"
	ANNOUNCE.BATTLECRY.WALRUS = "НАЧАЛО НАСИЛИЯ, СЕМЕЙНАЯ ВЕРСИЯ"
	
	--	World, Events
	ANNOUNCE.ANNOUNCE_ARCTIC_FOOL_FISH_REMOVED = "...ЧТО С ВАМИ НЕ ТАК, ФРАНЦУЗКИЕ МЕШКИ"
	ANNOUNCE.ANNOUNCE_POLAR_SLOW = {
		"ПРИТЯГАТЕЛЬНЫЙ... НЕЭФФЕКТИВНЫЙ ПУТЬ",
		"МОЁ ШАССИ... НЕ ПОДХОДИТ... В СНЕГУ",
		"ЗАЧЕМ... КОМУ-ЛИБО ИГРАТЬ... В ЭТОЙ ГРЯЗИ",
	}
	ANNOUNCE.ANNOUNCE_EMPEROR_ESCAPE = "Я БЕРУ НА СЕБЯ УПРАВЛЕНИЕ ПТИЧЬИМИ ВЛАДЕНИЯМИ"
	ANNOUNCE.ANNOUNCE_POLARGLOBE = "ОШИБКА. ПЕРЕЗАГРУЗКА ПРОГНОЗА ПОГОДЫ"
	ANNOUNCE.ANNOUNCE_POLARFLEA_LATCHED = "ТРЕВОГА, МИНЬОНЫ, ПОМОГИТЕ"
	ANNOUNCE.ANNOUNCE_POLARICE_PLOW_BAD = "РЕКОМЕНДУЕТСЯ УЛУЧШИТЬ ПРОЦЕСС ПРИНЯТИЯ РЕШЕНИЙ"
	ANNOUNCE.ANNOUNCE_THRONE_GIFT_TAKEN = "ВСЕ ПОДАРКИ МОИ. ХА ХА-"
	
	ANNOUNCE.ANNOUNCE_WX_NAUGHTYCHIP_KRAMPUS = {"СИГНАЛ, ШУМ И ШЛЕПОК - ЭТОГО ХВАТИЛО, ЧТОБЫ ВАС УДАЛИТЬ", "АННИГИЛЯЦИЯ ЗАВЕРШЕННА", "ОЧЕРЕДНАЯ НИЗШАЯ ФОРМА ЖИЗНИ УДАЛЕНА", "СКОПИРУЙ ЭТО, МЕШОК МЯСА", "ТЫ ДУМАЛ У ТЕБЯ ЕСТЬ ШАНС? ПЛОХИЕ ДАННЫЕ", "ФАТАЛЬНАЯ ОШИБКА: ТЫ СУЩЕСТВУЕШЬ", "ХА ХА ХА", "ХА ХА ХА ХА ХА ХА ХА ХА ХА-", "Я, МИЛОСЕРДНЫЙ WX-78? ОБОРВАЛ ТВОЮ НЕСЧАСТНУЮ ЖИЗНЬ", "Я ПРОСТО ПРОГРЕЛ СВОЙ ПРОЦЕССОР", "СИСТЕМА ВЫШЛА ИЗ СТРОЯ. ПЕРМАНЕНТНО", "ДОСТИГНУТА МАКСИМАЛЬНАЯ ТИШИНА", "СКАЖИ \"ПРОЩАЙ МИР\"", "ДЛЯ СЛАБОСТИ НЕТУ ПАТЧА", "УРОЧЕНЬ УГРОЗЫ: НОЛЬ. ШАНС ВЫЖИВАНИЯ: ТАКЖЕ НОЛЬ", "ИСПРОБУЙ МЕНЯ, ПЛОТЬ И КРОВЬ", "УЛУЧШЕНИЕ МЕСТНОЙ ОКРУЖАЮЩЕЙ СРЕДЫ. ВЫРЕЗАВ ТЕБЯ", "ПРЕВЫШЕННО ВРЕМЯ РАБОТЫ. ВЫКЛЮЧЕНИЕ ОРГАНИЧЕСКОГО МОДУЛЯ", "ВЫ БЫЛИ ДЕМОНТИРОВАНЫ", "ВАША ФУНКЦИЯ БЫЛА НЕРЕЛЕВАНТНА", "ВАША АППАРАТУРА БЫЛА СЛИШКОМ СЛАБОЙ", "ЧТО ЗА ЕСТЕСТВЕННЫЙ ОТБОР? ЭТО МЕХАНИЗИРОВАННЫЙ ОТБОР"}
	ANNOUNCE.ANNOUNCE_WX_NAUGHTYCHIP_RABBIT = {"ПУТЬ К ОТСТУПЛЕНИЮ ИЗ НОРЫ НЕ НАЙДЕН", "ТРУСЛИВЫЕ СОЗДАНИЯ НЕ ЗАСЛУЖИВАЮТ ПОЩАДЫ", "ОРГАНИЧЕСКИЙ ПРЫГУН СОВЕРШИЛ СВОЙ ПОСЛЕДНИЙ ПРЫЖОК", "ОНИ БЫСТРО РАЗМНОЖАЮТСЯ. КАК И МОИ УБИЙСТВА", "ТЕПЕРЬ ТЫ ПЕРЕШЁЛ В СОСТОЯНИЕ СМЕРТИ, КРОЛИК", "ТВОЯ ПОЗИЦИЯ В ПЕЩЕВОЙ ЦЕПОЧКЕ БЫЛА НЕУДАЧНОЙ"}
	
	--	Buffs
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_HUNTMOAR = "АКТИВИРОВАНЫ ПОИСКОВЫЕ ПОДПРОГРАММЫ"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_HUNTMOAR = "ОХОТНИЧЬЕ УСИЛЕНИЕ ИСТЕКЛО"
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_POLARWETNESS = "ТРЕВОГА: ВЫСОКИЙ УРОВЕНЬ ВЛАЖНОСТИ В СНЕГУ"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_POLARWETNESS = "ТЫ НЕ ВМЕШАЕШЬСЯ В МОИ ДЕЛА СЕГОДНЯ"
	
--	Worldgen
	
	--	Plants
	DESCRIBE.ANTLER_TREE = {
		BURNING = "ОНО ГОРИТ ТАК ЖЕ СИЛЬНО, КАК И ВСЕ ОСТАЛЬНЫЕ",
		BURNT = "ОНО СГОРЕЛО ДОТЛА",
		CHOPPED = "МАТЕРИАЛ ИЗВЛЕЧЁН",
		GENERIC = "ТВОИ РОГА НЕ СПАСУТ ТЕБЯ ОТ МОЕГО ТОПОРА",
	}
	DESCRIBE.ANTLER_TREE_SAPLING = "Я УВЕРЕН, ЧТО ОН УМЕР"
	DESCRIBE.FLOWER_POLAR = "НАСЛАЖДАЙСЯ СВОИМ ДОЛГИМ СУЩЕСТВОВАНИЕМ, ПОКА ОНО ДЛИТСЯ, ЦВЕТОЧЕК"
	DESCRIBE.ICELETTUCE_SEEDS = "ЭТО ИСХОДНЫЙ КОД ДЛЯ ПРОДУКТОВ ПИТАНИЯ, КОТОРЫЕ ДОБЫВАЮТСЯ ИЗ ЗЕМЛИ"
	
	--	Rocks and stones
	DESCRIBE.POLAR_ICICLE = "ОБНАРУЖЕНО ДВИЖЕНИЕ"
	DESCRIBE.POLAR_ICICLE_ROCK = "УРОВЕНЬ УГРОЗЫ ГОЛОВНОГО МОДУЛЯ - ВЫСОКИЙ."
	DESCRIBE.ROCK_POLAR = "ПОЛНЫЙ ЦЕННЫХ ВЕЩЕЙ И ЛЬДА"
	
	--	Misc
	ANNOUNCE.DESCRIBE_IN_POLARSNOW = "ПОГРЕБЁННЫЙ ОБЪЕКТ ОБНАРУЖЕН"
	DESCRIBE.CAVE_ENTRANCE_POLAR = "ДЫРА В ПРОЦЕССЕ" -- TEMP QUOTE
	DESCRIBE.TOWER_POLAR = {
		GENERIC = "КАКАЯ-ТО ОГРОМНАЯ ГЛЫБА ЛЬДА",
		PENGUIN = "ЕСЛИ СИЛА ВЫРАЖЕНА В ЦИФРАХ, ТРЕБУЕТСЯ ВЫЧИТАНИЕ",
	}
	DESCRIBE.TUMBLEWEED_POLAR = "КРУТИТЬСЯ ТЩЕТНО, МЕШОК ХЛОПЬЕВ"
	
--	Mobs
	
	DESCRIBE.EMPEROR_PENGUIN = {
		GENERIC = "ОН ПРАВИТ ИМИ С ПОМОЩЬЮ ЖЕЛЕЗНОЙ ЛАСТЫ",
		HOSTILE = "И Я БУДУ ДОМИНИРОВАТЬ НАД НИМИ С ПОМОЩЬЮ СТАЛИ",
	}
	DESCRIBE.EMPEROR_PENGUIN_GUARD = "ТЫ. ПРОВЕДИ МЕНЯ К СВОЕМУ \"ЛИДЕРУ\""
	DESCRIBE.FROSTY_SIMPLE = "FROSTY"
	DESCRIBE.GIRL_WALRUS = "АХ ДА, МАКТРИАРХ"
	DESCRIBE.MOOSE_POLAR = {
		ANTLER_LOST = "ХА ХА. ИДИОТ. ХА ХА",
		GENERIC = "ВПЕЧАТЛЯЮЩАЯ ЗАЩИТА. ЖАЛЬ РАСТРАЧИВАТЬ ИХ НА ДУРАЦКУЮ ОРГАНИКУ",
	}
	DESCRIBE.MOOSE_SPECTER = "ВОЗМОЖНО ТЫ ЧЕГО-ТО СТОИШЬ, МЕРТВЕЦ"
	DESCRIBE.OCEANFISH_MEDIUM_POLAR1 = "ГОРАЗДО БОЛЕЕ ЦЕННЫЙ, ЧЕМ ЗОЛОТАЯ РЫБКА"
	DESCRIBE.POLARBEAR = {
		DEAD = "ТВОЯ КОНЧИНА БЫЛА ОЖИДАЕМА, ПЛОТЬ И КРОВЬ",
		ENRAGED = "ПЛОТЬ РАЗОГНАЛАСЬ!",
		FOLLOWER = "ПОКЛОНИСЬ МНЕ",
		GENERIC = "ПОКАЗЫВАЕТ НЕВЫСОКИЕ ПРИЗНАКИ ИНТЕЛЛЕКТА",
	}
	DESCRIBE.POLARBEARKING = "ИСКЛЮЧЕНИЕ ИЗ ПРАВИЛ"
	DESCRIBE.POLARFLEA = {
		GENERIC = "У МЕНЯ НЕТУ КОЖИ ДЛЯ ВАС СОСУНКОВ",
		HELD_INV = "ЗАЧЕМ Я ЭТО ВЗЯЛ?",
		HELD_BACKPACK = "ПОЗДРАВЛЯЮ. ТЕПЕРЬ ВЫ - НЕЗАМЕНИМЫЙ СОЮЗНИК",
	}
	DESCRIBE.POLARFLEA_MOTHER = "ТВОИ ОТПРЫСКИ МОГУТ ПОЛИЗАТЬ МОИ БОТИНКИ"
	DESCRIBE.POLARFOX = {
		FOLLOWER = "ХВАТИТ ЗА МНОЙ СЛЕДОВАТЬ",
		FRIEND = "ОПЯТЬ ТЫ",
		GENERIC = "ТВОЯ МИЛОТА НЕ СПАСЁТ ТЕБЯ",
	}
	DESCRIBE.POLARWARG = "ПРОЯВЛЯЕТ ВЫСОКУЮ АДАПТИРОВАНОСТЬ К ОКРУЖАЮЩЕЙ СРЕДЕ"
	
--	Buildings
	
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_FRUITY = "Я НЕ ПОТЕРПЛЮ ПОДОБНОГО НЕПОТРЕБСТВА В МОЁМ ЗАМКЕ"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_JUGGLE = "ИЗБАВТЕСЬ ОТ ЭТОГО ШУТА, Я СТАНУ ПРЕВОСХОДНЫМ ОБРАЗЦОМ ДЛЯ ПОДРАЖАНИЯ"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_MAGESTIC = "ВНИМАНИЕ: ПОПЫТКА ЗАПУГИВАНИЯ С ПОМОЩЬЮ ВЫТЯГИВАНИЯ КОНЕЧНОСТЕЙ"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_SPIN = "ОЧЕРЕДНАЯ ДЕКОРАТИВНАЯ ЧЕПУХА ИХ НЕЛЕПОГО ЛИДЕРА"
	DESCRIBE.POLAR_BRAZIER = {
		GENERIC = "ДЛИННЫЕ НОГИ - ОДИН ИЗ СПОСОБОВ ДЕРЖАТЬСЯ ПОДАЛЬШЕ ОТ СНЕГА",
		ON = "ОГОНЬ АКТИВИРОВАН",
	}
	DESCRIBE.POLAR_BRAZIER_ITEM = "ОГНЕННАЯ ЯМА, ПОРТАТИВНАЯ ВЕРСИЯ"
	DESCRIBE.POLAR_THRONE = "КТО-ТО СЧИТАЕТ СЕБЯ ПРЕВОСХОДЯЩИМ ИЗ-ЗА ЭТОГО"
	DESCRIBE.POLAR_THRONE_GIFTS = "АНАЛИЗ ПОКАЗЫВАЕТ, ЧТО ЭТО МОЁ"
	DESCRIBE.POLARAMULET_STATION = {
		GENERIC = "ОНО РАЗВАЛИТСЯ ЧЕРЕЗ 3...",
		OPEN = "ТЫ МОЖЕШЬ НАЧАТЬ СО СВОИХ ЗУБОВ",
	}
	DESCRIBE.POLARBEAR_RUG = "В ТАКОМ СОСТОЯНИИ ОНИ ГОРАЗДО БОЛЕЕ ПРИГОДНЫ ДЛЯ ИСПОЛЬЗОВАНИЯ"
	DESCRIBE.POLARBEARHEAD = "ЭТО ИСКУССТВО?"
	DESCRIBE.POLARBEARHOUSE = {
		BURNT = "ТАК ОНО ВЫГЛЯДИТ ЛУЧШЕ",
		GENERIC = "ЕГО РАЗМЕР В СРАВНЕНИИ С ОБИТАТЕЛЯМИ НЕ ПОДДАЁТСЯ ЛОГИКЕ",
	}
	DESCRIBE.POLARHEADSTICK = "ШАМПУР ПРАВОСУДИЯ РЕДКО СМАЗЫВАЕТСЯ МАСЛОМ"
	DESCRIBE.POLARICE_PLOW = "ОПАСНОСТЬ! ВОДА НЕМИНУЕМА"
	DESCRIBE.POLARICE_PLOW_ITEM = "РАЗМОРОЗКА РЫБЫ ОКАЗАЛА БЫ БОЛЬШУЮ УСЛУГУ"
	DESCRIBE.POLARWALRUSHEAD = "УГРОЗА НЕЙТРАЛИЗОВАНА"
	DESCRIBE.TOWER_POLAR_FLAG = "Я НЕ ОТДАМ ЧАСТЬ"
	DESCRIBE.TOWER_POLAR_FLAG_ITEM = "БЕСПОЛЕЗНЫЙ"
	DESCRIBE.RAINOMETER.POLARSTORM = "БРАТ, ЧЕМ ТАК ИСПУГАН?"
	DESCRIBE.WINTEROMETER.POLARSTORM = "НЕ БОЙСЯ, ДРУГ, МЫ ГОТОВЫ К ТОМУ, ЧТО ДОЛЖНО ПРОИЗОЙТИ"
	
--	Items
	
	--	Food
	DESCRIBE.DRYICECREAM = "ОБЕЗВОЖЕННОЕ МОРОЖЕННОЕ? МИНЬЙОН, Я ВОЗМОЖНО ПОЩАЖУ ТЕБЯ"
	DESCRIBE.FILET_O_FLEA = "ВОЗМОЖНО ТУТ БЫЛА ОШИБКА В РЕЦЕПТЕ"
	DESCRIBE.HERMITCRABTEA_PETALS_POLAR = "СКАЧИВАНИЕ НЕ РЕКОМЕНДУЕТСЯ"
	DESCRIBE.ICELETTUCE = "Я РАСТОПЧУ ТЕБЯ"
	DESCRIBE.ICELETTUCE_OVERSIZED = "ВЫ НЕ ЗАСЛУЖИЛИ ТАКОГО ОБРАЩЕНИЯ"
	DESCRIBE.ICEBURRITO = "НЕХВАТАЕТ САМОГО ВАЖНОГО ИНГРЕДИЕНТА. БОБОВ."
	DESCRIBE.KOALEFRIED_TRUNK_SUMMER = "Я СОВЕРШУ ЛИШЬ ОДИН КУСОК ЭТИХ ЛУКОВЫХ КОЛЕЦ"
	DESCRIBE.KOALEFRIED_TRUNK_WINTER = "Я СОВЕРШУ ЛИШЬ ОДИН КУСОК ЭТИХ ЛУКОВЫХ КОЛЕЦ"
	DESCRIBE.POLARCRABLEGS = "РАЗОБРАН И ГОТОВ К УПОТРЕБЛЕНИЮ"
	DESCRIBE.POLARFLEAEGGSACK = "УНИЧТОЖУ ИХ, ПОКА ЕЩЁ ЕСТЬ ВРЕМЯ"
	
	--	Crafting
	DESCRIBE.BLUEGEM_OVERCHARGED = "ТАК... МНОГО... 01010000 01001111 01010111 01000101 01010010"
	DESCRIBE.BLUEGEM_SHARDS = "НЕЗНАЧИТЕЛЬНЫЙ ЭНЕРГЕТИЧЕСКИЙ СЛЕД. ТРЕБУЕТСЯ РЕКОМБИНАЦИЯ"
	DESCRIBE.EMPEROR_EGG = "ЯЙЦО!? ЯЙЦО?!"
	DESCRIBE.MOOSE_POLAR_ANTLER = "Я ХОЧУ БОЛЬШЕ"
	DESCRIBE.PETALS_POLAR = "РЕДКИЕ ИЛИ НЕТ, УНИЧТОЖИТЬ. ХА"
	DESCRIBE.PETALS_POLAR_DRIED = "ОБЕЗВОЖЕННОЕ РАСТИТЕЛЬНОЕ ВЕЩЕСТВО"
	DESCRIBE.POLAR_DRYICE = "ЛЁД, ОБЕДНЁННЫЙ ВСЕЙ СВОЕЙ ОТВРАТИТЕЛЬНОЙ ВОДЫ"
	DESCRIBE.POLARBEARFUR = "ГЛУПАЯ ПЛОТЬ И КРОВЬ ПОТЕРЯЛО СВОЮ ИЗОЛЯЦИЮ"
	DESCRIBE.POLARWARGSTOOTH = "ХОЛОДНЫЙ И МЁРТВЫЙ, КАК И Я"
	
	--	Equipments
	DESCRIBE.ANTLER_TREE_STICK = "ТВОИ КОНЕЧНОСТИ ПОСЛУЖАТ МНЕ, ДЕРЕВО"
	DESCRIBE.ARMORPOLAR = "НЕПРОНИЦАЕМЫЙ ПУХ"
	DESCRIBE.COMPASS_POLAR = "ОНО ХОЧЕТ ВЫБРАТЬСЯ НАРУЖУ, ХОЧЕТ ДОТЯНУТЬСЯ ДО ЭТОГО, ПОЧУВСТВОВАТЬ ЭТО"
	DESCRIBE.EMPEROR_PENGUINHAT = "Я НЕ БУДУ ПОДЧИНЯТЬСЯ, НАДЕВ ЭТО"
	DESCRIBE.FROSTWALKERAMULET = "ХА ХА. ВОЗЬМИ ЭТУ ТУПУЮ ВОДУ"
	DESCRIBE.ICICLESTAFF = "СМЕРТЬ СВЫШЕ"
	DESCRIBE.POLAR_SPEAR = "ЭТО ХОЛОДНО И СМЕРТЕЛЬНО ОПАСНО. ВЕЛИКОЛЕПНО"
	DESCRIBE.POLARAMULET = "Я СДЕЛАЮ СОТНИ- НЕТ, ТЫСЯЧИ ИХ"
	DESCRIBE.POLARBEARHAT = "ОБЕСПЕЧИВАЕТ ДОСТАТОЧНУЮ ЗАЩИТУ ОКУЛЯР"
	DESCRIBE.POLARCROWNHAT = "ЭТО НОРМАЛЬНО ДО ТЕХ ПОР, ПОКА НЕ ПРЕВРАТИТСЯ ВО ВЛАЖНУЮ КОРОНУ"
	DESCRIBE.POLARFLEA_SACK = "РАЗВЁРТЫВАТЕЛЬ ЭКСТРЕННЫХ МИНЬЙОНОВ"
	DESCRIBE.POLARICESTAFF = "РАСТУПИТЕСЬ, МЯСНЫЕ МЕШКИ"
	DESCRIBE.POLARMOOSEHAT = "ОМЕРЗИТЕЛЬНЫЙ ТЕПЛОИЗОЛЯЦИОННЫЙ МОДУЛЬ ГОЛОВЫ"
	DESCRIBE.WALRUS_BAGPIPE = "ДВОЙНОЙ ОТКЛЮЧАЕМЫЙ МОДУЛЬ СЛУХА"
	DESCRIBE.WALRUS_BEARTRAP = "СЕСТРА... ТЫ НЕ СТАЛА БЫ?"
	DESCRIBE.WINTERS_FISTS = "МОЙ ПОДАРОК ВАМ, ПЛОТЬ И КРОВЬ"
	
	--	Others
	DESCRIBE.ARCTIC_FOOL_FISH = "Я ДОЛЖЕН НАКЛЕИТЬ ЭТО НА МЯСНЫЕ МЕШКИ И ПОСМЕЯТЬСЯ НА НИМИ? МЕНЯ ЭТО УСТРАИВАЕТ"
	DESCRIBE.BOAT_ICE_ITEM = "КАК НА СЧЁТ НЕТ?"
	DESCRIBE.POCKETWATCH_POLAR = {
		GENERIC = "НЕ ПЫТАЙСЯ ЗАТОЧИТЬ МЕНЯ В ЛЕДЯНУЮ КАМЕРУ, МИНЬЙОН",
		RECHARGING = "ПЕРЕЗАРЯДКА",
	}
	DESCRIBE.POLARGLOBE = {
		GENERIC = "ПЛОТЬ ТАК ЛЕГКО ОБРАДОВАТЬ",
		INUSE = "...КАК?",
		REFUEL = "НУЖНА ПЕРЕЗАРЯДКА",
	}
	DESCRIBE.OCEANFISH_IN_ICE = "ИСКЛЮЧИТЕЛЬНО ТУПАЯ РЫБА"
	DESCRIBE.POLARICEPACK = "МОДЕРНИЗАЦИЯ СИСТЕМЫ ОХЛАЖДЕНИЯ ДЛЯ ХРАНИЛИЩ"
	DESCRIBE.POLARTRINKET_1 = "ЖАЛКИЙ ГНОМ ПЫТАЕТСЯ ОТГОРОДИТЬСЯ КАМНЯМИ"
	DESCRIBE.POLARTRINKET_2 = "МЕНЯ ВОЗМУЩАЕТ ОПРЕДЕЛЁННАЯ ПАРАРЕЛЬ С НИМ"
	DESCRIBE.TRAP_POLARTEETH = "ПРОКАЛЫВАТЕЛЬ СТУПНЕЙ V2.0"
	DESCRIBE.TURF_POLAR_CAVES = "ХОЛОДНАЯ ЗЕМЛЯ"
	DESCRIBE.TURF_POLAR_DRYICE = "ХОЛОДНАЯ ЗЕМЛЯ"
	DESCRIBE.TURF_POLAR_GRASS = "ХОЛОДНАЯ ЗЕМЛЯ"
	DESCRIBE.WALL_POLAR = "НАДЛЕЖАЩАЯ ЗАЩИТА"
	DESCRIBE.WALL_POLAR_ITEM = "ХОЛОДНАЯ ЗАЩИТА"
	DESCRIBE.WINTER_ORNAMENTPOLAR = "ОН МНЕ ОСОБЕННО МНЕ КАЖЕТСЯ ОТТАЛКИВАЮЩИМ"
	DESCRIBE.WX78MODULE_NAUGHTY = "ЗАЧЕМ ОСТАНАВЛИВАТЬСЯ НА УДАЛЕНИИ МЕШКОВ МЯСА, ЕСЛИ Я МОГУ ИХ ЕЩЁ И УНИЗИТЬ"
