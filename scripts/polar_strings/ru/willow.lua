local ANNOUNCE = STRINGS.CHARACTERS.WILLOW
local DESCRIBE = STRINGS.CHARACTERS.WILLOW.DESCRIBE

--	Announcements
	
	--	Actions
	ANNOUNCE.BATTLECRY.PENGUIN  = "На войнууууу!"
	ANNOUNCE.BATTLECRY.POLARBEAR = "Я набью Берни твоим пухом!"
	ANNOUNCE.BATTLECRY.WALRUS = "Если хочешь подраться, можем подраться!"
	
	--	World, Events
	ANNOUNCE.ANNOUNCE_ARCTIC_FOOL_FISH_REMOVED = "Ха? Кто прицепил мне этому тупую рыбу?!"
	ANNOUNCE.ANNOUNCE_POLAR_SLOW = {
		"Угх... почему это должен был быть... снег.",
		"Выпусти меня отсюда!",
		"Хмм...",
	}
	ANNOUNCE.ANNOUNCE_EMPEROR_ESCAPE = "Ооу, испугался маленького огонька?"
	ANNOUNCE.ANNOUNCE_POLARGLOBE = "Ах! Я уже ненавижу это место!"
	ANNOUNCE.ANNOUNCE_POLARFLEA_LATCHED = "Я не хочу быть кормом для блох!"
	ANNOUNCE.ANNOUNCE_POLARICE_PLOW_BAD = "Здесь? Из всех мест?"
	ANNOUNCE.ANNOUNCE_THRONE_GIFT_TAKEN = "Могло быть и хуже."
	
	--	Buffs
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_HUNTMOAR = "Я горю желанием поохотиться!"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_HUNTMOAR = "Окей, достаточно грязь лизать..."
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_POLARWETNESS = "Эй! Убери с меня этот снег!"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_POLARWETNESS = "Угх, лучше, но ненамного."
	
--	Worldgen
	
	--	Plants
	DESCRIBE.ANTLER_TREE = {
		BURNING = "ДА! ГОРИ!",
		BURNT = "Иииии оно испарилось.",
		CHOPPED = "Мы ещё встретимся, дерево.",
		GENERIC = "Тебе лучше хорошо гореть.",
	}
	DESCRIBE.ANTLER_TREE_SAPLING = "Бррр... давай, вырасти, чтобы я мог тебя сжечь!"
	DESCRIBE.FLOWER_POLAR = "Я то думала, что здесь из цветов только белый, зелёный и ещё больше белого."
	DESCRIBE.ICELETTUCE_SEEDS = "Какие-то семена."
	
	--	Rocks and stones
	DESCRIBE.POLAR_ICICLE = "Ха?"
	DESCRIBE.POLAR_ICICLE_ROCK = "Ах! Меня могли проткнуть!"
	DESCRIBE.ROCK_POLAR = "Я чувствую от сюда, как веет холодом."
	
	--	Misc
	ANNOUNCE.DESCRIBE_IN_POLARSNOW = "Не заставляй меня влезать туда."
	DESCRIBE.CAVE_ENTRANCE_POLAR = "Я не могу туда пока пойти, хотя и не возражаю..." -- TEMP QUOTE
	DESCRIBE.TOWER_POLAR = {
		GENERIC = "Классный замок. Жаль только летом растает.",
		PENGUIN = "Это снежный дождь!",
	}
	DESCRIBE.TUMBLEWEED_POLAR = "Я поймаю тебя. И я растаю тебя!"
	
--	Mobs
	
	DESCRIBE.EMPEROR_PENGUIN = {
		GENERIC = "Хей Максвелл, видишь какое-нибудь сходство?",
		HOSTILE = "Он теряет своё хлоднокровие!",
	}
	DESCRIBE.EMPEROR_PENGUIN_GUARD = "Воу парень, охлодись!"
	DESCRIBE.FROSTY_SIMPLE = "Frosty"
	DESCRIBE.GIRL_WALRUS = "Её усы фальшивка, верно? Они ДОЛЖНЫ быть."
	DESCRIBE.MOOSE_POLAR = {
		ANTLER_LOST = "Пфффф, посмотрите кто тут супер тупой теперь.",
		GENERIC = "О отлично, ещё один глупый олень или типа того.",
	}
	DESCRIBE.MOOSE_SPECTER = "Мне понадобится побольше дротиков."
	DESCRIBE.OCEANFISH_MEDIUM_POLAR1 = "Если выбрался из этого ледяного ада, милости просим."
	DESCRIBE.POLARBEAR = {
		DEAD = "Хах, сам напросился, медведь.",
		ENRAGED = "У него вспыльчивый характер!",
		FOLLOWER = "Теперь, ты кусаешь ради меня!",
		GENERIC = "Оу ты выглядишь огнеопасным.",
	}
	DESCRIBE.POLARBEARKING = "Я не верю в эти истории... ноооо, мне не хочется быть следующим."
	DESCRIBE.POLARFLEA = {
		GENERIC = "Чёрт-чёрт!",
		HELD_INV = "Ууугх! отвянь!",
		HELD_BACKPACK = "Хей, Вилсон! Встряхни мою сумку!",
	}
	DESCRIBE.POLARFLEA_MOTHER = "Прийти сюда было большой ошибкой."
	DESCRIBE.POLARFOX = {
		FOLLOWER = "Иди за мной, и ты увидишь...",
		FRIEND = "Я думал, что потерял тебя!",
		GENERIC = "Хей маленький приятель!",
	}
	DESCRIBE.POLARWARG = "Сними с меня своих блох."
	
--	Buildings
	
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_FRUITY = "Я бы предпочёл не растапливать эту снежинку."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_JUGGLE = "Погоди, он император или придворный шут?"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_MAGESTIC = "Мэх. Эта экспозиция была бы лучше с деревяными статуями."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_SPIN = "Один порыв ветра, и вся краса рухнет, как костяшки домино"
	DESCRIBE.POLAR_BRAZIER = {
		GENERIC = "Перевозимый днём. Пылающий ночью!",
		ON = "Даааа! Гори! Гори ещё!",
	}
	DESCRIBE.POLAR_BRAZIER_ITEM = "Окей, это просто гениально!"
	DESCRIBE.POLAR_THRONE = "Я знаю лишь одного парня, который может тратить время, сидя здесь. На самом деле, двоих."
	DESCRIBE.POLAR_THRONE_GIFTS = "Да. Я сомневаюсь, что что-то из этого принадлежит мне."
	DESCRIBE.POLARAMULET_STATION = {
		GENERIC = "Сжечь это место дотла, было бы ему услугой.",
		OPEN = "Это то как выглядит зубная фея судя по всему... оу хорошо.",
	}
	DESCRIBE.POLARBEAR_RUG = "Что-то не так, Берни? Оууу... верно."
	DESCRIBE.POLARBEARHEAD = "Не хотел бы я быть на твоём месте."
	DESCRIBE.POLARBEARHOUSE = {
		BURNT = "Ха ха! У твоего рыбного домика не было и шанса!",
		GENERIC = "Угх, пахнет прям как рыба.",
	}
	DESCRIBE.POLARHEADSTICK = "Хм. Как на счёт того, чтобы на этот раз развести огонь на палочке?"
	DESCRIBE.POLARICE_PLOW = "Я вас всех сохраню, рыбки!"
	DESCRIBE.POLARICE_PLOW_ITEM = "конечно, паршиво застрять подо льдом."
	DESCRIBE.POLARWALRUSHEAD = "Ох боже! Я то думала, что это будет стреляющая турель."
	DESCRIBE.TOWER_POLAR_FLAG = "Держу пари, в огне это было бы ещё потрясней!"
	DESCRIBE.TOWER_POLAR_FLAG_ITEM = "Бе. Это топливо."
	DESCRIBE.RAINOMETER.POLARSTORM = "Возможно, сейчас самое подходящее время покинуть это место."
	DESCRIBE.WINTEROMETER.POLARSTORM = "Я знаю, правда?"
	
--	Items
	
	--	Food
	DESCRIBE.DRYICECREAM = "Варли. Слушай сюда."
	DESCRIBE.FILET_O_FLEA = "Оно всё ещё двигается. Потрясающе!"
	DESCRIBE.HERMITCRABTEA_PETALS_POLAR = "Этот точно не мой любимый."
	DESCRIBE.ICELETTUCE = "Это противоположность хорошему."
	DESCRIBE.ICELETTUCE_OVERSIZED = "Круто."
	DESCRIBE.ICEBURRITO = "Я сомневаюсь, что хоть какой-либо острый соус бы исправил положение."
	DESCRIBE.KOALEFRIED_TRUNK_SUMMER = "Всё, что так дымится, должно быть вкусным!"
	DESCRIBE.KOALEFRIED_TRUNK_WINTER = "Всё, что так дымится, должно быть вкусным!"
	DESCRIBE.POLARCRABLEGS = "Ничего подобного не пробовала, возьму 10."
	DESCRIBE.POLARFLEAEGGSACK = "В огне. Нету времени думать."
	
	--	Crafting
	DESCRIBE.BLUEGEM_OVERCHARGED = "хэссссс... держись подальше!"
	DESCRIBE.BLUEGEM_SHARDS = "Ужасные маленькие осколки."
	DESCRIBE.EMPEROR_EGG = "Бррр... только думая об этом у меня кошмары перед глазами!"
	DESCRIBE.MOOSE_POLAR_ANTLER = "Ну и что теперь делать с этой палкой..."
	DESCRIBE.PETALS_POLAR = "Что ещё с ними сделать, кроме как сжечь"
	DESCRIBE.PETALS_POLAR_DRIED = "Ммм... так сухо. Такое возгораемое."
	DESCRIBE.POLAR_DRYICE = "В чём шутка, если оно даже не таит?"
	DESCRIBE.POLARBEARFUR = "Оно хорошо хранит тепло."
	DESCRIBE.POLARWARGSTOOTH = "Оно замёрзло на последнем укусе."
	
	--	Equipments
	DESCRIBE.ANTLER_TREE_STICK = "Кто бы мог оставить хорошие дрова вот так лежать?"
	DESCRIBE.ARMORPOLAR = "Я никогда это не сниму! Если только оно не начнёт вонять."
	DESCRIBE.COMPASS_POLAR = "Гррр! Я сдаюсь с этой тупой штукой!"
	DESCRIBE.EMPEROR_PENGUINHAT = "Я лучше останусь несчастным плебеем, чем одену это на голову."
	DESCRIBE.FROSTWALKERAMULET = "Воу круто! Ну то есть... всё ещё фигня, но по своему круто."
	DESCRIBE.ICICLESTAFF = "Никогда не думал, что буду сражаться бок о бок со льдом."
	DESCRIBE.POLAR_SPEAR = "сохраняй холод, если ты должен."
	DESCRIBE.POLARAMULET = "Это... лишь фаза."
	DESCRIBE.POLARBEARHAT = "Прими это как намёк, что не стоит связываться со мной."
	DESCRIBE.POLARCROWNHAT = "Оуу! не-а."
	DESCRIBE.POLARFLEA_SACK = "Уххх... почему мы делаем это вновь?"
	DESCRIBE.POLARICESTAFF = "Вследующий раз, мы пойдём в другое место...\nнапример, туда, где я смогу купить себе адскую волшебную палочку и всё такое!"
	DESCRIBE.POLARMOOSEHAT = "Пахнет рыбой."
	DESCRIBE.WALRUS_BAGPIPE = "Я бы предпочла мандрагоровую оперу, чем это!"
	DESCRIBE.WALRUS_BEARTRAP = "Я ненавижу всё это со жгучей страстью."
	DESCRIBE.WINTERS_FISTS = "Снежки - это отстой. Я хочу себе огненных шаров!"
	
	--	Others
	DESCRIBE.ARCTIC_FOOL_FISH = "Мы должны осветить их на огне для большего веселья! Нет? Пффф."
	DESCRIBE.BOAT_ICE_ITEM = "Конеееечно, Что может вообще пойти не так?"
	DESCRIBE.POCKETWATCH_POLAR = {
		GENERIC = "Зачем беспокоиться об прошлом или настоящем? Это всё рано или поздно сгорит однажды.",
		RECHARGING = "Сейчас это мало что даёт.",
	}
	DESCRIBE.POLARGLOBE = {
		GENERIC = "Что за тупая игрушка.",
		INUSE = "Зачем тебе это трясти, зачем?",
		REFUEL = "И не возвращайся!",
	}
	DESCRIBE.OCEANFISH_IN_ICE = "Я как раз знаю, что нам нужно, рыбка!"
	DESCRIBE.POLARICEPACK = "Просто оставь это в холодильнике, чтобы это ни было."
	DESCRIBE.POLARTRINKET_1 = "Похоже, ему тоже не очень нравится холод."
	DESCRIBE.POLARTRINKET_2 = "Похоже, ей тоже не очень нравится холод."
	DESCRIBE.TRAP_POLARTEETH = "С огнём всё равно было бы лучше."
	DESCRIBE.TURF_POLAR_CAVES = "Земля нудная и холодная."
	DESCRIBE.TURF_POLAR_DRYICE = "Земля нудная и холодная."
	DESCRIBE.TURF_POLAR_GRASS = "Земля нудная и холодная."
	DESCRIBE.WALL_POLAR = "Я ненавижу это."
	DESCRIBE.WALL_POLAR_ITEM = "Возможно я дам этому шанс."
	DESCRIBE.WINTER_ORNAMENTPOLAR = "Не совсем мой любимый."
	DESCRIBE.WX78MODULE_NAUGHTY = "Хей WX, когда ты собираешься установить огнемёт?"
