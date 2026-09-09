local ANNOUNCE = STRINGS.CHARACTERS.WOODIE
local DESCRIBE = STRINGS.CHARACTERS.WOODIE.DESCRIBE

--	Announcements
	
	--	Actions
	ANNOUNCE.BATTLECRY.PENGUIN  = "Ты получил то, что заслужил!"
	ANNOUNCE.BATTLECRY.POLARBEAR = "Ррррааааргх!"
	ANNOUNCE.BATTLECRY.WALRUS = "Сезон охоты окончен, для тебя!"
	
	--	World, Events
	ANNOUNCE.ANNOUNCE_ARCTIC_FOOL_FISH_REMOVED = "Ээ? Оу, да ладно Люси... ты могла бы мне сказать."
	ANNOUNCE.ANNOUNCE_POLAR_SLOW = {
		"Я привык... к этому...",
		"Гррмммфф...",
		"Это просто немного снега...",
	}
	ANNOUNCE.ANNOUNCE_EMPEROR_ESCAPE = "Вот так! И больше не возвращайся, эх!"
	ANNOUNCE.ANNOUNCE_POLARGLOBE = "Думаю, нам понадобится больше дров, эх?"
	ANNOUNCE.ANNOUNCE_POLARFLEA_LATCHED = "Хнфф! У него есть язык!"
	ANNOUNCE.ANNOUNCE_POLARICE_PLOW_BAD = "Я знаю местечко получше."
	ANNOUNCE.ANNOUNCE_THRONE_GIFT_TAKEN = "Хоо! Люси, этого того не стоило-"
	
	--	Buffs
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_HUNTMOAR = "Такое чувство, будто мой нос перешёл на звериный вой."
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_HUNTMOAR = "Опять мой нос заложен."
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_POLARWETNESS = "Мне бы не помешал большой тёплый мех."
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_POLARWETNESS = "Так лучше."
	
--	Worldgen
	
	--	Plants
	DESCRIBE.ANTLER_TREE = {
		BURNING = "Нет! Ты не уйдёшь без бея, приятель.",
		BURNT = "Трус.",
		CHOPPED = "Это им покажет.",
		GENERIC = "Не сейас, Люси, я разберусь с этим лично!",
	}
	DESCRIBE.ANTLER_TREE_SAPLING = "Кажется у нас скоро будет полено!"
	DESCRIBE.FLOWER_POLAR = "Маленькое чудо тундры."
	DESCRIBE.ICELETTUCE_SEEDS = "Возможно я мог бы их посадить?"
	
	--	Rocks and stones
	DESCRIBE.POLAR_ICICLE = "Здесь они даже больше, чем в старой хижине."
	DESCRIBE.POLAR_ICICLE_ROCK = "Оно не станет ниже, ээ?"
	DESCRIBE.ROCK_POLAR = "Оближи это, и застрянешь на долго."
	
	--	Misc
	ANNOUNCE.DESCRIBE_IN_POLARSNOW = "Я узнаю {name}, когда смотрю сюда."
	DESCRIBE.CAVE_ENTRANCE_POLAR = "Думаю, у нас есть немного времени, прежде чем это откроется, эх?" -- TEMP QUOTE
	DESCRIBE.TOWER_POLAR = {
		GENERIC = "Отсюда не плохой вид, э?",
		PENGUIN = "На секунду мне показалось, что это не снег.",
	}
	DESCRIBE.TUMBLEWEED_POLAR = "К счастью, это не град, эх?"
	
--	Mobs
	
	DESCRIBE.EMPEROR_PENGUIN = {
		GENERIC = "А неплохой у вас там каток.",
		HOSTILE = "Долой монархию!",
	}
	DESCRIBE.EMPEROR_PENGUIN_GUARD = "Эти птицы, что-то замышляют..."
	DESCRIBE.FROSTY_SIMPLE = "Frosty"
	DESCRIBE.GIRL_WALRUS = "Мне не нравится, как это звучит..."
	DESCRIBE.MOOSE_POLAR = {
		ANTLER_LOST = "Хмф, любитель. Давай я тебе покажу, как это делается.",
		GENERIC = "Большой, смелый и гордящийся своим лесом, как и я!",
	}
	DESCRIBE.MOOSE_SPECTER = "Могу ли я тоже это сделать?"
	DESCRIBE.OCEANFISH_MEDIUM_POLAR1 = "Тебе кто-нибудь говорил, что у тебя красивые глаза, а?"
	DESCRIBE.POLARBEAR = {
		DEAD = "Из тебя бы получился отличный коврик.",
		ENRAGED = "Теперь мы сражаемся!",
		FOLLOWER = "Всегда готов отправиться на рыбалку, а?",
		GENERIC = "Похоже, кто-то немного простудился.",
	}
	DESCRIBE.POLARBEARKING = "Говорят, деревья падают, когда он смотрит в их сторону. А. Конечно."
	DESCRIBE.POLARFLEA = {
		GENERIC = "Ай!",
		HELD_INV = "Убирайся с моих волос и перьев!",
		HELD_BACKPACK = "Они не так уж и плохи, когда узнаёшь их вблизи.",
	}
	DESCRIBE.POLARFLEA_MOTHER = "Я говорю, что мы уложим это чудище, а?"
	DESCRIBE.POLARFOX = {
		FOLLOWER = "Поймай ко птиц!",
		FRIEND = "Это мой старый приятель.",
		GENERIC = "Редкое зрелище даже на севере.",
	}
	DESCRIBE.POLARWARG = "Он мог бы тащить сани самолично."
	
--	Buildings
	
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_FRUITY = "Что значит \"исследовать\"? Я это отсюда могу увидеть!"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_JUGGLE = "У меня нет коулрофобии, но... эх. Ты понимаешь?"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_MAGESTIC = "От всех этих статуй у меня мурашки по коже."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_SPIN = "У меня такое чувство, будто он движется, когда я не смотрю..."
	DESCRIBE.POLAR_BRAZIER = {
		GENERIC = "Требуется немного растопки.",
		ON = "Steady now...",
	}
	DESCRIBE.POLAR_BRAZIER_ITEM = "Неплохой, а?"
	DESCRIBE.POLAR_THRONE = "Оно сделано из... угля?"
	DESCRIBE.POLAR_THRONE_GIFTS = "Кажется, мы вели себя вполне прилично."
	DESCRIBE.POLARAMULET_STATION = {
		GENERIC = "Я очень оскорблён.",
		OPEN = "Мне не нужны твои заклятия.",
	}
	DESCRIBE.POLARBEAR_RUG = "Ааа, Чувствую себя как дома."
	DESCRIBE.POLARBEARHEAD = "страшно, но всё же впечатляюще, не так ли?"
	DESCRIBE.POLARBEARHOUSE = {
		BURNT = "Думаю, он был построен только для того, чтобы выдерживать холод.",
		GENERIC = "Я должен сказать: ты живёшь тем, что ешь, а?",
	}
	DESCRIBE.POLARHEADSTICK = "Конечно, хотелось бы, чтобы он оставался пустым."
	DESCRIBE.POLARICE_PLOW = "Должно быть хорошее место!"
	DESCRIBE.POLARICE_PLOW_ITEM = "Меньше времени на копание - больше времени на рыбалку."
	DESCRIBE.POLARWALRUSHEAD = "На этом дорога оборвалась."
	DESCRIBE.TOWER_POLAR_FLAG = "Хороший ловец ветерка."
	DESCRIBE.TOWER_POLAR_FLAG_ITEM = "Долой империю пернатых."
	DESCRIBE.RAINOMETER.POLARSTORM = "Это может быть серьёзно..."
	DESCRIBE.WINTEROMETER.POLARSTORM = "Оу, не будь таким ребёнком."
	
--	Items
	
	--	Food
	DESCRIBE.DRYICECREAM = "Вообще-то я предпочитаю мороженное зимой, да."
	DESCRIBE.FILET_O_FLEA = "Это научит тебя соваться туда, куда не следует, хе."
	DESCRIBE.HERMITCRABTEA_PETALS_POLAR = "На вкус хорошо, но это не так."
	DESCRIBE.ICELETTUCE = "Всё равно, что класть кубики льда в напиток."
	DESCRIBE.ICELETTUCE_OVERSIZED = "Не думал, что ты способен на это, приятель."
	DESCRIBE.ICEBURRITO = "Лучше есть это свежим."
	DESCRIBE.KOALEFRIED_TRUNK_SUMMER = "После этого я стану добычей для охоты."
	DESCRIBE.KOALEFRIED_TRUNK_WINTER = "После этого я стану добычей для охоты."
	DESCRIBE.POLARCRABLEGS = "Ты отлично справляешься с ними, Люси."
	DESCRIBE.POLARFLEAEGGSACK = "...выглядит аппетитно. А? Кто это сказал?"
	
	--	Crafting
	DESCRIBE.BLUEGEM_OVERCHARGED = "Это невозможно холодно."
	DESCRIBE.BLUEGEM_SHARDS = "Люси больше подходит для решения головоломок, чем я."
	DESCRIBE.EMPEROR_EGG = "И что мне с этим делать?"
	DESCRIBE.MOOSE_POLAR_ANTLER = "Это хорошо бы смотрелось бы над камином."
	DESCRIBE.PETALS_POLAR = "Можно было бы составить из них букет, это любимые цветы Люси."
	DESCRIBE.PETALS_POLAR_DRIED = "Пахнет хорошо."
	DESCRIBE.POLAR_DRYICE = "Строительные блоки для крутых ребятишек."
	DESCRIBE.POLARBEARFUR = "Мне следовало бы набить им свой плед."
	DESCRIBE.POLARWARGSTOOTH = "У меня сводит челюсть от одного взгляда на это..."
	
	--	Equipments
	DESCRIBE.ANTLER_TREE_STICK = "Я просто возьму это, э!"
	DESCRIBE.ARMORPOLAR = "Ага. Я хорош в этом."
	DESCRIBE.COMPASS_POLAR = "Думаю стоит того, чтобы последовать этому, а?"
	DESCRIBE.EMPEROR_PENGUINHAT = "Я не хочу править птицами. Я хочу, чтобы они исчезли."
	DESCRIBE.FROSTWALKERAMULET = "Превратить океан в одно гигантское хоккейное поле."
	DESCRIBE.ICICLESTAFF = "Это повредит тебе больше, чем упавшее дерево."
	DESCRIBE.POLAR_SPEAR = "Лёд, полагаю, должен немного таки быть больным."
	DESCRIBE.POLARAMULET = "Насколько дико я выгляжу с этим, а?"
	DESCRIBE.POLARBEARHAT = "На данный момент, этого достаточно."
	DESCRIBE.POLARCROWNHAT = "На самом деле, я уже вижу себя в этой короне."
	DESCRIBE.POLARFLEA_SACK = "Теперь эти жучки мои."
	DESCRIBE.POLARICESTAFF = "Даёт мне чувство, будто я дома, эх."
	DESCRIBE.POLARMOOSEHAT = "Это больше подходит на мой головной убор!"
	DESCRIBE.WALRUS_BAGPIPE = "Я дам ей шанс."
	DESCRIBE.WALRUS_BEARTRAP = "Осторожнее с этим. Можно начисто оторвать палец!"
	DESCRIBE.WINTERS_FISTS = "Меня устраивает держать под рукой снег."
	
	--	Others
	DESCRIBE.ARCTIC_FOOL_FISH = "Мне нужно найти идеальную спину..."
	DESCRIBE.BOAT_ICE_ITEM = "Я просто помню, что пошутил, я не был серьёзен."
	DESCRIBE.POCKETWATCH_POLAR = {
		GENERIC = "Это довольно причудливо выглядящие часы.",
		RECHARGING = "Не похоже, что сейчас это сильно помогает.",
	}
	DESCRIBE.POLARGLOBE = {
		GENERIC = "Я вроде как хочу сюда зайти, эх.",
		INUSE = "Да ладно, я не имел в виду это всерьёз.",
		REFUEL = "Не единого снега на горизонте.",
	}
	DESCRIBE.OCEANFISH_IN_ICE = "Не так приятно, как сматывать его самому..."
	DESCRIBE.POLARICEPACK = "Кому нужна такая морозильная камера, когда у вас есть такая?"
	DESCRIBE.POLARTRINKET_1 = "Варли бы понравился этот шарф."
	DESCRIBE.POLARTRINKET_2 = "Эх? Оу, это так выглядит, будто она член семьи, слегка."
	DESCRIBE.TRAP_POLARTEETH = "Это ещё один шаг вперёд в мошенничестве."
	DESCRIBE.TURF_POLAR_CAVES = "Просто больше земли, а?"
	DESCRIBE.TURF_POLAR_DRYICE = "Теперь, надо бы найти коньки здесь..."
	DESCRIBE.TURF_POLAR_GRASS = "Просто больше земли, а?"
	DESCRIBE.WALL_POLAR = "Кто-нибудь чувствует то, как лёд трескается?"
	DESCRIBE.WALL_POLAR_ITEM = "Как насчёт того, чтобы построить какую-нибудь иглу, а, Люси?"
	DESCRIBE.WINTER_ORNAMENTPOLAR = "Этот великолепен."
	DESCRIBE.WX78MODULE_NAUGHTY = "Немного причудливых роботических деталей."
