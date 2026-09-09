local ANNOUNCE = STRINGS.CHARACTERS.WEBBER
local DESCRIBE = STRINGS.CHARACTERS.WEBBER.DESCRIBE

--	Announcements
	
	--	Actions
	ANNOUNCE.BATTLECRY.PENGUIN  = "Хей! Не клеваться!"
	ANNOUNCE.BATTLECRY.POLARBEAR = "Для тебя зимняя спячка давно закончилась!"
	ANNOUNCE.BATTLECRY.WALRUS = "Эта наша дорога!"
	
	--	World, Events
	ANNOUNCE.ANNOUNCE_ARCTIC_FOOL_FISH_REMOVED = "Что? Как? КАК?"
	ANNOUNCE.ANNOUNCE_POLAR_SLOW = {
		"Мы что... ходим кругами?",
		"Привет...? Кто-нибудь есть?",
		"Мы не хотим потерять в снегу наших друзей...",
	}
	ANNOUNCE.ANNOUNCE_EMPEROR_ESCAPE = "Это говорит о том, что птицы нам не ровня!"
	ANNOUNCE.ANNOUNCE_POLARGLOBE = "Земля закачалась, как желе!"
	ANNOUNCE.ANNOUNCE_POLARFLEA_LATCHED = "Хорошо, хорошо, ты победил!"
	ANNOUNCE.ANNOUNCE_POLARICE_PLOW_BAD = "Тут много рисков."
	ANNOUNCE.ANNOUNCE_THRONE_GIFT_TAKEN = "Чтож, это довольно мило-"
	
	--	Buffs
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_HUNTMOAR = "Мы теперь можем чувствовать всё! И фу..."
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_HUNTMOAR = "Оу. Воздух больше не воняет какашками."
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_POLARWETNESS = "Мама бы расстроилась, если бы увидела меня такой..."
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_POLARWETNESS = "Мы можем поиграть снова в снегу... но в пальто?"
	
--	Worldgen
	
	--	Plants
	DESCRIBE.ANTLER_TREE = {
		BURNING = "Очень пугающий!",
		BURNT = "Вероятно, это скоро произойдёт.",
		CHOPPED = "О оу, он проиграл битву.",
		GENERIC = "Лоси их не любят. Но мы считаем, что они милые.",
	}
	DESCRIBE.ANTLER_TREE_SAPLING = "Мы чуть не потеряли его из-за снегопада..."
	DESCRIBE.FLOWER_POLAR = "Они хорошенько вздремнули под снегом."
	DESCRIBE.ICELETTUCE_SEEDS = "Мы могли бы что-нибудь вырастить из них."
	
	--	Rocks and stones
	DESCRIBE.POLAR_ICICLE = "Нам лучше быть начеку."
	DESCRIBE.POLAR_ICICLE_ROCK = "Подлый маленький ледыш."
	DESCRIBE.ROCK_POLAR = "Что за леденящая находка!"
	
	--	Misc
	ANNOUNCE.DESCRIBE_IN_POLARSNOW = "Мы что-то видели! Но что?"
	DESCRIBE.CAVE_ENTRANCE_POLAR = "Мы пока не можем погрузиться, может быть, позже?" -- TEMP QUOTE
	DESCRIBE.TOWER_POLAR = {
		GENERIC = "Мы были бы осторожны, чтобы не поскользнуться, находясь там, наверху.",
		PENGUIN = "Хей! Только не в лицо!",
	}
	DESCRIBE.TUMBLEWEED_POLAR = "Сомневаюсь, что это слово растаяло бы у нас на языке."
	
--	Mobs
	
	DESCRIBE.EMPEROR_PENGUIN = {
		GENERIC = "У нас тоже большая армия! Но замок пока в работе...",
		HOSTILE = "Давай посмотрим кто лучше, хорошо?",
	}
	DESCRIBE.EMPEROR_PENGUIN_GUARD = "Мы не крали никакого яйца! Правда!"
	DESCRIBE.FROSTY_SIMPLE = "Frosty"
	DESCRIBE.GIRL_WALRUS = "Она, кажется, в полном порядке со своими ластами."
	DESCRIBE.MOOSE_POLAR = {
		GENERIC = "Он ударился головой! Бедный лосёнок...",
		ANTLER_LOST = "Они намного больше, чем мы себе представляли!",
	}
	DESCRIBE.MOOSE_SPECTER = "Выглядит немного жутковато..."
	DESCRIBE.OCEANFISH_MEDIUM_POLAR1 = "Мы выловили сокровище из глубин!"
	DESCRIBE.POLARBEAR = {
		DEAD = "Эу... он весь в блохах.",
		ENRAGED = "Прости! Прости!",
		FOLLOWER = "У нас есть большой Тедди!",
		GENERIC = "Нам рады в твоём маленьком городке?",
	}
	DESCRIBE.POLARBEARKING = "Другие нам говорили, что он превратил лето в ковёр."
	DESCRIBE.POLARFLEA = {
		GENERIC = "АйЯй!",
		HELD_INV = "Следующий раз, мы будем держать наши карманы закрытыми!",
		HELD_BACKPACK = "Мама всегда говорила, что в портфелях не должно быть жуков...",
	}
	DESCRIBE.POLARFLEA_MOTHER = "ААААААААА! Оу-- должно быть, именно так другие и относятся к нашей королеве!"
	DESCRIBE.POLARFOX = {
		FOLLOWER = "Хочешь поделать ангелов на снегу?",
		FRIEND = "Оно вспомнит нас!",
		GENERIC = "Держу пари, он голоден.",
	}
	DESCRIBE.POLARWARG = "Кто бы знал, что у Ети есть щенок?"
	
--	Buildings
	
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_FRUITY = "Оу. Мы должны отвести взгляд. Верно?"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_JUGGLE = "Кто жонглирует лучше всех между императором, Весом и Вольфгангом?"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_MAGESTIC = "Он так же король показухи."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_SPIN = "Слишком плохие статуи не могут танцевать!"
	DESCRIBE.POLAR_BRAZIER = {
		GENERIC = "Оно работает? Отсюда мы ничего не видим!",
		ON = "Аааа, нам это нужно",
	}
	DESCRIBE.POLAR_BRAZIER_ITEM = "Где угодно может быть дом."
	DESCRIBE.POLAR_THRONE = "Туда довольно трудно взобраться."
	DESCRIBE.POLAR_THRONE_GIFTS = "Для... -В. Это должно быть для нас!"
	DESCRIBE.POLARAMULET_STATION = {
		GENERIC = "Похоже на хижину, которую Волтер описывал у костра!",
		OPEN = "Ты можешь прекратить смотреть на наши клыки?",
	}
	DESCRIBE.POLARBEAR_RUG = "Из неё бы получилась отличная кровать, если бы она была чуть мягче."
	DESCRIBE.POLARBEARHEAD = "Что он сделал, чтобы такое заслужить?"
	DESCRIBE.POLARBEARHOUSE = {
		BURNT = "Покойся с миром... для паука на пауке.",
		GENERIC = "Нам было бы лучше внутри, чем снаружи.",
	}
	DESCRIBE.POLARHEADSTICK = "Оно ещё жутче пустой."
	DESCRIBE.POLARICE_PLOW = "Мы должны отойти назад, не хотим видеть рыбу СЛИШКОМ близко."
	DESCRIBE.POLARICE_PLOW_ITEM = "Машина, освобождающая рыбу ото льда."
	DESCRIBE.POLARWALRUSHEAD = "В каком-то смысле это было заслуженно."
	DESCRIBE.TOWER_POLAR_FLAG = "Давай помашем ему в ответ!"
	DESCRIBE.TOWER_POLAR_FLAG_ITEM = "Что же... теперь это наша империя?"
	DESCRIBE.RAINOMETER.POLARSTORM = "Разве мы не должны рассказать об этом остальным?"
	DESCRIBE.WINTEROMETER.POLARSTORM = "Что-то не так, мистер теплоизмеритель?"
	
--	Items
	
	--	Food
	DESCRIBE.DRYICECREAM = "Оно не упадёт, даже если мы будем держать это вверх ногами!"
	DESCRIBE.FILET_O_FLEA = "Неплохо... правда, немного ворсистый."
	DESCRIBE.HERMITCRABTEA_PETALS_POLAR = "Не говори, что тебе это не нравится, прежде чем попробовать, такое правило."
	DESCRIBE.ICELETTUCE = "Поесть нашей зелени? Но она вся синяя."
	DESCRIBE.ICELETTUCE_OVERSIZED = "Урааа! Погоди. Мы будем есть салад всю неделлю? Не ура."
	DESCRIBE.ICEBURRITO = "Легенда гласит, что этот буррито никогда не развалится!"
	DESCRIBE.KOALEFRIED_TRUNK_SUMMER = "Не удивительно, что все моржи такие пухлые."
	DESCRIBE.KOALEFRIED_TRUNK_WINTER = "Не удивительно, что все моржи такие пухлые."
	DESCRIBE.POLARCRABLEGS = "У него больше ног, чем у нас на двоих!"
	DESCRIBE.POLARFLEAEGGSACK = "Это полезнее его конфет, Я думаю."
	
	--	Crafting
	DESCRIBE.BLUEGEM_OVERCHARGED = "Блестящий и прохладный!"
	DESCRIBE.BLUEGEM_SHARDS = "Может быть, мы могли бы быть более осторожными."
	DESCRIBE.EMPEROR_EGG = "Значит, они оставили детей? Вот так вот?"
	DESCRIBE.MOOSE_POLAR_ANTLER = "Мы взяли твои рога! И... жизнь, так же."
	DESCRIBE.PETALS_POLAR = "Ему нравится вкус, а мне просто нравится, как они выглядят."
	DESCRIBE.PETALS_POLAR_DRIED = "Мы это подобрали?"
	DESCRIBE.POLAR_DRYICE = "При игре в снежки это исключительно."
	DESCRIBE.POLARBEARFUR = "У нас есть подушка."
	DESCRIBE.POLARWARGSTOOTH = "Оно определённо острее нашего."
	
	--	Equipments
	DESCRIBE.ANTLER_TREE_STICK = "После всех этих лет... идеальная палка!"
	DESCRIBE.ARMORPOLAR = "Мы хотели бы это носить вечно."
	DESCRIBE.COMPASS_POLAR = "Будет трудно выяснить этот путь."
	DESCRIBE.EMPEROR_PENGUINHAT = "Это значит, что мы победили?"
	DESCRIBE.FROSTWALKERAMULET = "Лучше иметь холодные ноги, чем промокшие."
	DESCRIBE.ICICLESTAFF = "Айяй! Выглядит остро!"
	DESCRIBE.POLAR_SPEAR = "Выглядит как гигантская сосулька на палочке!"
	DESCRIBE.POLARAMULET = "Ни один из пауков не пострадал."
	DESCRIBE.POLARBEARHAT = "РААААВР!! Мы напугали тебя?"
	DESCRIBE.POLARCROWNHAT = "Пауки не слишком любят холод."
	DESCRIBE.POLARFLEA_SACK = "Тащить на нашей спине целый отряд."
	DESCRIBE.POLARICESTAFF = "Аварийная ледяная паутина."
	DESCRIBE.POLARMOOSEHAT = "Шляпа сделанная в стиле друзей мистера Вуди."
	DESCRIBE.WALRUS_BAGPIPE = "Мы хотим протрубить в него!"
	DESCRIBE.WALRUS_BEARTRAP = "Кто будет тыкать в него пальцем?"
	DESCRIBE.WINTERS_FISTS = "Это не так уж неудобно, когда у тебя пушистые руки."
	
	--	Others
	DESCRIBE.ARCTIC_FOOL_FISH = "Это всё глупости и игры, пока они не окажутся у тебя на спине!"
	DESCRIBE.BOAT_ICE_ITEM = "Мы могли бы переплыть весь океан с достатком этого."
	DESCRIBE.POCKETWATCH_POLAR = {
		GENERIC = "Изменили бы мы что-нибудь, если бы могли вернуться в прошлое?",
		RECHARGING = "Оно отдыхает.",
	}
	DESCRIBE.POLARGLOBE = {
		GENERIC = "Снег идёт медленно. Слишком медленно...",
		INUSE = "Это внесёт меня в список самых непослушных?",
		REFUEL = "Этому нужно особого снега.",
	}
	DESCRIBE.OCEANFISH_IN_ICE = "Давайте освободим Вилли!"
	DESCRIBE.POLARICEPACK = "Это забавно держать в руках... по крайней мере, на какое-то время."
	DESCRIBE.POLARTRINKET_1 = "Мы тоже хотим столь большую одежду!"
	DESCRIBE.POLARTRINKET_2 = "Мы тоже хотим столь большую одежду!"
	DESCRIBE.TRAP_POLARTEETH = "Наша замёрзшая паутина становится больше."
	DESCRIBE.TURF_POLAR_CAVES = "Земля, которую мы можем выкопать."
	DESCRIBE.TURF_POLAR_DRYICE = "Не наступай на трещины!"
	DESCRIBE.TURF_POLAR_GRASS = "Земля, которую мы можем выкопать."
	DESCRIBE.WALL_POLAR = "Стены нашей морозной крепости!"
	DESCRIBE.WALL_POLAR_ITEM = "Первое правило морозного форта: не облизывай стены."
	DESCRIBE.WINTER_ORNAMENTPOLAR = "Нам нравится сохранять всё (немного) простым."
	DESCRIBE.WX78MODULE_NAUGHTY = "Хах. Это то как выглядят внутренности робота?"
