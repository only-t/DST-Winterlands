local ANNOUNCE = STRINGS.CHARACTERS.WOLFGANG
local DESCRIBE = STRINGS.CHARACTERS.WOLFGANG.DESCRIBE

--	Announcements
	
	--	Actions
	ANNOUNCE.BATTLECRY.PENGUIN  = "Ваа-ха-ха!"
	ANNOUNCE.BATTLECRY.POLARBEAR = "Настало время для хорошей драки!"
	ANNOUNCE.BATTLECRY.WALRUS = "Большая ошибка. Теперь Вольфганг охотиться за тобой!"
	
	--	World, Events
	ANNOUNCE.ANNOUNCE_ARCTIC_FOOL_FISH_REMOVED = "Хмм? Ха! Ты хорошо обдурил Вольфганга."
	ANNOUNCE.ANNOUNCE_POLAR_SLOW = {
		"Теперь ногам холодно!",
		"Д-должен... побороть снег.",
		"Бррр...",
	}
	ANNOUNCE.ANNOUNCE_EMPEROR_ESCAPE = "Корона была слишком велика для хилых птичьих плеч."
	ANNOUNCE.ANNOUNCE_POLARGLOBE = "Небо всегда было таким голубым?"
	ANNOUNCE.ANNOUNCE_POLARFLEA_LATCHED = "Ооп! У языка бицепсы!"
	ANNOUNCE.ANNOUNCE_POLARICE_PLOW_BAD = "Лёд уже слишком слаб."
	ANNOUNCE.ANNOUNCE_THRONE_GIFT_TAKEN = "Мне нравятся подарки!"
	
	--	Buffs
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_HUNTMOAR = "Игра близка. Я могу это почувствовать!"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_HUNTMOAR = "Неужели нос отвалился?"
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_POLARWETNESS = "Вольфганг не любит, когда в обувь попадает снег."
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_POLARWETNESS = "Ха! Санта не остановит меня."
	
--	Worldgen
	
	--	Plants
	DESCRIBE.ANTLER_TREE = {
		BURNING = "Рога горят!",
		BURNT = "Дерево теперь выглядит ещё более устрашающе.",
		CHOPPED = "Вольфгангу нужны соперники получше.",
		GENERIC = "Деревья с рогами? Дерево хочет драться?",
	}
	DESCRIBE.ANTLER_TREE_SAPLING = "Вырастет могучим и холодным."
	DESCRIBE.FLOWER_POLAR = "Хорошее, когда не прячется."
	DESCRIBE.ICELETTUCE_SEEDS = "Это маленькие, крошечные семена для посадки."
	
	--	Rocks and stones
	DESCRIBE.POLAR_ICICLE = "Ммм? Должно быть это ветер."
	DESCRIBE.POLAR_ICICLE_ROCK = "Оу, ледяной камень хочет казать привет?"
	DESCRIBE.ROCK_POLAR = "Слишком холодно для лифтинга."
	
	--	Misc
	ANNOUNCE.DESCRIBE_IN_POLARSNOW = "Что-то прячется?"
	DESCRIBE.CAVE_ENTRANCE_POLAR = "Хм... дыра ещё не закончена." -- TEMP QUOTE
	DESCRIBE.TOWER_POLAR = {
		GENERIC = "Замок крепок, как Вольфганг, но тает, не так, как Вольфганг.",
		PENGUIN = "Остановись, друг! Мы можем устроить цирковое шоу вместе.",
	}
	DESCRIBE.TUMBLEWEED_POLAR = "Можно было бы легко его раздавить."
	
--	Mobs
	
	DESCRIBE.EMPEROR_PENGUIN = {
		GENERIC = "Он здесь главный на ринге.",
		HOSTILE = "Мышцы против ласт!",
	}
	DESCRIBE.EMPEROR_PENGUIN_GUARD = "Кто-то должен защищать слабых."
	DESCRIBE.FROSTY_SIMPLE = "Frosty"
	DESCRIBE.GIRL_WALRUS = "У хозяйки тоже усы? Вольфгангу нужно время подумать..."
	DESCRIBE.MOOSE_POLAR = {
		ANTLER_LOST = "Is sobbing little ice cubes.",
		GENERIC = "Забавный зверь, с которым можно сразиться.",
	}
	DESCRIBE.MOOSE_SPECTER = "АААА! Вольфганг сожалеет!"
	DESCRIBE.OCEANFISH_MEDIUM_POLAR1 = "У тебя жуткое лицо."
	DESCRIBE.POLARBEAR = {
		DEAD = "Медвежий парень был сильным. Но Вольфганг сильней!",
		ENRAGED = "Это... немного устрашающе.",
		FOLLOWER = "Вольфганг довольствуется армрестлингом со своим другом.",
		GENERIC = "Я уважаю медвежьего парня!",
	}
	DESCRIBE.POLARBEARKING = "Это правда, что медвежий парень боролся сразу с двумя варгами... одной рукой?"
	DESCRIBE.POLARFLEA = {
		GENERIC = "Ауч!",
		HELD_INV = "Без боя не отпустит.",
		HELD_BACKPACK = "Вольфганг не раздавит жучка, если жучок будет хорошо себя вести.",
	}
	DESCRIBE.POLARFLEA_MOTHER = "Ой мама..."
	DESCRIBE.POLARFOX = {
		FOLLOWER = "Щуплый, но милый.",
		FRIEND = "Ооу, слишком голоден, чтобы идти за мной.",
		GENERIC = "Ха! Слабое создание!",
	}
	DESCRIBE.POLARWARG = "У щенка новое пальто?"
	
--	Buildings
	
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_FRUITY = "Это очень негодно."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_JUGGLE = "Вольфганг может тоже самое. С этими статуями!"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_MAGESTIC = "Кто-нибудь хочет вылепить флексующего Вольфганга?"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_SPIN = "Лучше не опираться на него плечом."
	DESCRIBE.POLAR_BRAZIER = {
		GENERIC = "Это чаша, которую нужно наполнить огнём.",
		ON = "Чаша света и тепла.",
	}
	DESCRIBE.POLAR_BRAZIER_ITEM = "Сделай это маленьким!"
	DESCRIBE.POLAR_THRONE = "Это сидение для большой задницы."
	DESCRIBE.POLAR_THRONE_GIFTS = "Если Вольфганг может поднять, то Вольфганг может и взять!"
	DESCRIBE.POLARAMULET_STATION = {
		GENERIC = "У меня плохие чувства на счёт этого.",
		OPEN = "Здесь немного темновато...",
	}
	DESCRIBE.POLARBEAR_RUG = "Ха. Я помню его."
	DESCRIBE.POLARBEARHEAD = "У него были и счастливее дни."
	DESCRIBE.POLARBEARHOUSE = {
		BURNT = "У большой рыбы была тяжкая жизнь.",
		GENERIC = "Медвежий парень поборол большую рыбу.",
	}
	DESCRIBE.POLARHEADSTICK = "Что-то сильное здесь присутствует, не Вольфганг."
	DESCRIBE.POLARICE_PLOW = "Тут действительно так глубоко...?"
	DESCRIBE.POLARICE_PLOW_ITEM = "Выкопать глубокие ямы."
	DESCRIBE.POLARWALRUSHEAD = "Ха! Толстяк слёг на трубках. Это любимая вещь толстяка!"
	DESCRIBE.TOWER_POLAR_FLAG = "Вольфганг думает, что это хорошо."
	DESCRIBE.TOWER_POLAR_FLAG_ITEM = "Всё хорошо, мы найдём тебе новый дом."
	DESCRIBE.RAINOMETER.POLARSTORM = "Это весь мир так трясётся?"
	DESCRIBE.WINTEROMETER.POLARSTORM = "Почему всё дрожит? Это я?"
	
--	Items
	
	--	Food
	DESCRIBE.DRYICECREAM = "Оно не тает, но превращается в пщщщ в воздухе!"
	DESCRIBE.FILET_O_FLEA = "Протеин - это протеин. Да?"
	DESCRIBE.HERMITCRABTEA_PETALS_POLAR = "Запах хороший, значит на вкус хороший?"
	DESCRIBE.ICELETTUCE = "Листья очень хрустящие..."
	DESCRIBE.ICELETTUCE_OVERSIZED = "Отнесу ка это в кастрюлю! Но только в перчатках."
	DESCRIBE.ICEBURRITO = "Это первый буррито, который выдержал хватку Вольфганга."
	DESCRIBE.KOALEFRIED_TRUNK_SUMMER = "Ммм. Вольфганг должен намного чаще охотиться!"
	DESCRIBE.KOALEFRIED_TRUNK_WINTER = "Ммм. Вольфганг должен намного чаще охотиться!"
	DESCRIBE.POLARCRABLEGS = "От пугающего длинноногого жука, до вкусного длинноногого жука."
	DESCRIBE.POLARFLEAEGGSACK = "Я не готов быть мамой!"
	
	--	Crafting
	DESCRIBE.BLUEGEM_OVERCHARGED = "Оно щекочет руку!"
	DESCRIBE.BLUEGEM_SHARDS = "Слишком маленькие. Нужно сделать один большой!"
	DESCRIBE.EMPEROR_EGG = "О нет, они оставили замёрзшего ребёнка позади!"
	DESCRIBE.MOOSE_POLAR_ANTLER = "Очень сожалею."
	DESCRIBE.PETALS_POLAR = "По-прежнему хороши в руках, но менее."
	DESCRIBE.PETALS_POLAR_DRIED = "Вольфганг ценит нежный аромат."
	DESCRIBE.POLAR_DRYICE = "Сильнее льда."
	DESCRIBE.POLARBEARFUR = "Ха-ха! Теперь я сделаю ковёр."
	DESCRIBE.POLARWARGSTOOTH = "Зуб большого щенка."
	
	--	Equipments
	DESCRIBE.ANTLER_TREE_STICK = "Хорошая палка для ходьбы и ударов."
	DESCRIBE.ARMORPOLAR = "Не расслабляйтесь шибко сильно, мускулы."
	DESCRIBE.COMPASS_POLAR = "И читать не удобно, и держать в руках. Брррр!"
	DESCRIBE.EMPEROR_PENGUINHAT = "Король забавно ходящих птиц? Это большая ответственность для Вольфганга!"
	DESCRIBE.FROSTWALKERAMULET = "Льду лучше не крошится под мощными шагами Вольфганга."
	DESCRIBE.ICICLESTAFF = "Не так весело, как наносить удары."
	DESCRIBE.POLAR_SPEAR = "Это лёд, но колючий!"
	DESCRIBE.POLARAMULET = "Вольфганг носит его лучше всех!"
	DESCRIBE.POLARBEARHAT = "Не беспокойся, я не медвежий парень, лишь Вольфганг парень."
	DESCRIBE.POLARCROWNHAT = "Отгоняет плохой ветер, а хороший - внутри."
	DESCRIBE.POLARFLEA_SACK = "Передвижной блошиный цирк."
	DESCRIBE.POLARICESTAFF = "Вернёт зиму к существованию."
	DESCRIBE.POLARMOOSEHAT = "Медвежий парень потерял шапку?"
	DESCRIBE.WALRUS_BAGPIPE = "Вольфганг дунет, и вся Шотландия последует за мной!"
	DESCRIBE.WALRUS_BEARTRAP = "Это не остановит Вольфганга... но Вольфгангу стоит избежать этого."
	DESCRIBE.WINTERS_FISTS = "Я всегда готов бросаться руками, и снежками."
	
	--	Others
	DESCRIBE.ARCTIC_FOOL_FISH = "Парень-клоун может и силён в своей игре, но Вольфганг будет стараться изо всех сил!"
	DESCRIBE.BOAT_ICE_ITEM = "Вольфганг не боится, просто у него замёрзли ноги..."
	DESCRIBE.POCKETWATCH_POLAR = {
		GENERIC = "Это просто маленькие часики.",
		RECHARGING = "Маленькие часики теперь спят.",
	}
	DESCRIBE.POLARGLOBE = {
		GENERIC = "Вольфгангу нравится красивый снежный шар.",
		INUSE = "Вольфганг слишком сильно потряс?",
		REFUEL = "Это только странный шар.",
	}
	DESCRIBE.OCEANFISH_IN_ICE = "Я думал, ледяная рыбалка будет сложней."
	DESCRIBE.POLARICEPACK = "Это дольше позволяет сохранять свежесть продуктов."
	DESCRIBE.POLARTRINKET_1 = "Слишком горд своими усами, чтобы прятать их от холода!"
	DESCRIBE.POLARTRINKET_2 = "Крошечная снежная женщина не боится холода."
	DESCRIBE.TRAP_POLARTEETH = "Превратить монстра в боксёрскую грушу."
	DESCRIBE.TURF_POLAR_CAVES = "Холодные ступенчатые камни."
	DESCRIBE.TURF_POLAR_DRYICE = "Холодные ступенчатые камни."
	DESCRIBE.TURF_POLAR_GRASS = "Холодные ступенчатые камни."
	DESCRIBE.WALL_POLAR = "Я вижу статного мужчину, пойманного в ловушку внутри!"
	DESCRIBE.WALL_POLAR_ITEM = "Большой кусок льда!"
	DESCRIBE.WINTER_ORNAMENTPOLAR = "Это хорошо. Хорошо хрупкое."
	DESCRIBE.WX78MODULE_NAUGHTY = "Это роботические закуски, да?"
