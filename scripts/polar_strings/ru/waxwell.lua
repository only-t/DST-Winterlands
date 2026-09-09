local ANNOUNCE = STRINGS.CHARACTERS.WAXWELL
local DESCRIBE = STRINGS.CHARACTERS.WAXWELL.DESCRIBE

--	Announcements
	
	--	Actions
	ANNOUNCE.BATTLECRY.PENGUIN  = "Ты ходишь по тонкому льду, приятель."
	ANNOUNCE.BATTLECRY.POLARBEAR = "Лапы вместо мозгов!"
	ANNOUNCE.BATTLECRY.WALRUS = "Мои соболезнования!"
	
	--	World, Events
	ANNOUNCE.ANNOUNCE_ARCTIC_FOOL_FISH_REMOVED = "Ха-ха. Очень смешно. Смейтесь дальше... итак, кто это сделал?"
	ANNOUNCE.ANNOUNCE_POLAR_SLOW = {
		"Не истолкуй это превратно... но мне бы не помешало пальто... и трость...",
		"Мои слуги могли бы сделать это намного проще...",
		"Снег... лёд... всё портит костюм...",
	}
	ANNOUNCE.ANNOUNCE_EMPEROR_ESCAPE = "Правитель? Пожалуйста. Он жонглировал, как шут в перьях."
	ANNOUNCE.ANNOUNCE_POLARGLOBE = "Кто опять играется с этой проклятой штукой?"
	ANNOUNCE.ANNOUNCE_POLARFLEA_LATCHED = "Отпусти меня, паразит!"
	ANNOUNCE.ANNOUNCE_POLARICE_PLOW_BAD = "Я бы предпочёл не ломать этот лёд."
	ANNOUNCE.ANNOUNCE_THRONE_GIFT_TAKEN = "Такое чувство, словно к этому привязана ниточка."
	
	--	Buffs
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_HUNTMOAR = "Мой нос становится... больше, или?"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_HUNTMOAR = "И вот так просто, снова обыденность."
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_POLARWETNESS = "Я неподходяще одет для этого."
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_POLARWETNESS = "(Вздох) Урок усвоен."
	
--	Worldgen
	
	--	Plants
	DESCRIBE.ANTLER_TREE = {
		BURNING = "Оно пожертвовало собой ради моего комфорта.",
		BURNT = "От этого больше пользы не будет, хотя...",
		CHOPPED = "Тебе придётся придумать что-нибудь получше, дерево.",
		GENERIC = "Хмф. Потрёпанная вещица... она едва держится на месте.",
	}
	DESCRIBE.ANTLER_TREE_SAPLING = "Оно продолжает расти не смотря не холод."
	DESCRIBE.FLOWER_POLAR = "О, привет."
	DESCRIBE.ICELETTUCE_SEEDS = "Я должен это посадить?"
	
	--	Rocks and stones
	DESCRIBE.POLAR_ICICLE = "Просто, но гениально."
	DESCRIBE.POLAR_ICICLE_ROCK = "У тебя не будет и шанса."
	DESCRIBE.ROCK_POLAR = "Только что от поставщика."
	
	--	Misc
	ANNOUNCE.DESCRIBE_IN_POLARSNOW = "Это... что-то в снегу."
	DESCRIBE.CAVE_ENTRANCE_POLAR = "Они ещё не закончили работать над этим." -- TEMP QUOTE
	DESCRIBE.TOWER_POLAR = {
		GENERIC = "Величественный, холодный и мимолётный. Прямо как... вздох.",
		PENGUIN = "Построить целую сцену для столь горестного представления.",
	}
	DESCRIBE.TUMBLEWEED_POLAR = "Причудливое зрелище, но совершенно неважное."
	
--	Mobs
	
	DESCRIBE.EMPEROR_PENGUIN = {
		GENERIC = "В чём сходство? Дело в костюме - нет, в классе!",
		HOSTILE = "Определённо, это было не из-за его крутого нрава.",
	}
	DESCRIBE.EMPEROR_PENGUIN_GUARD = "Я назвал их \"Пингпешки\"."
	DESCRIBE.FROSTY_SIMPLE = "Frosty"
	DESCRIBE.GIRL_WALRUS = "Удачи ему... удачи ему."
	DESCRIBE.MOOSE_POLAR = {
		ANTLER_LOST = "Сейчас это уже не так пугающе.",
		GENERIC = "Большие рога, высокий настрой.",
	}
	DESCRIBE.MOOSE_SPECTER = "Хмф. Как... величественно."
	DESCRIBE.OCEANFISH_MEDIUM_POLAR1 = "Один мой знакомый аквариумист заплатил бы за это целое состояние."
	DESCRIBE.POLARBEAR = {
		DEAD = "Природа позаботится обо всём остальном.",
		ENRAGED = "О, отлично. Они вырывают зубы.",
		FOLLOWER = "В последний раз. Мы НЕ пойдём на рыбалку!",
		GENERIC = "Они представляют собой интригующую компанию.",
	}
	DESCRIBE.POLARBEARKING = "Никогда не слышал об этом парне."
	DESCRIBE.POLARFLEA = {
		GENERIC = "Нет! Нет!",
		HELD_INV = "Это будет больно, но я же не собираюсь держать его в качестве питомца.",
		HELD_BACKPACK = "Ты не заставишь меня держать эту штуку у себя.",
	}
	DESCRIBE.POLARFLEA_MOTHER = "Это существо - топливо для кошмаров... выражаясь фигурально."
	DESCRIBE.POLARFOX = {
		FOLLOWER = "Теперь мы вместе здесь.",
		FRIEND = "Давно не виделись, приятель.",
		GENERIC = "Продолжай свой путь.",
	}
	DESCRIBE.POLARWARG = "Что за великолепная адаптация."
	
--	Buildings
	
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_FRUITY = "Будь уверен, здесь нету статуй меня. Я так думаю."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_JUGGLE = "Возможно, это имеет метафорическое значение"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_MAGESTIC = "Я бы не стал предполагать, что он черпал вдохновение в моих работах..."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_SPIN = "Лучше наслаждайся своими прекрасными днями, пока они у тебя есть."
	DESCRIBE.POLAR_BRAZIER = {
		GENERIC = "Не буду врать, мне нравятся очаги.",
		ON = "Племенной. Однако это работает хорошо.",
	}
	DESCRIBE.POLAR_BRAZIER_ITEM = "Я начинаю себя чувствовать себя здесь вьючным мулом."
	DESCRIBE.POLAR_THRONE = "Чтож, это такой вид снизу?"
	DESCRIBE.POLAR_THRONE_GIFTS = "В какую игру он играет в этот раз?"
	DESCRIBE.POLARAMULET_STATION = {
		GENERIC = "Ну, ну. Поговорим об гостеприимном жилище.",
		OPEN = "...Я сделаю вид, что не видел, что там внутри.",
	}
	DESCRIBE.POLARBEAR_RUG = "Очень... изящное... украшение."
	DESCRIBE.POLARBEARHEAD = "Кто-то назвал бы это трофеем."
	DESCRIBE.POLARBEARHOUSE = {
		BURNT = "Если бы только палящее солнце пощадило это место.",
		GENERIC = "Я чувствую какой-то гнилой запах внутри. Угх.",
	}
	DESCRIBE.POLARHEADSTICK = "Потенциал может быть таким пугающим."
	DESCRIBE.POLARICE_PLOW = "Лучше отойди, или станешь кормом для рыб."
	DESCRIBE.POLARICE_PLOW_ITEM = "Отчаянные времена требуют разрушительных мер."
	DESCRIBE.POLARWALRUSHEAD = "В свою защиту могу сказать, что он меня не узнал."
	DESCRIBE.TOWER_POLAR_FLAG = "Издалека это выглядело лучше."
	DESCRIBE.TOWER_POLAR_FLAG_ITEM = "Хорошая ткань. Он знает своё дело."
	DESCRIBE.RAINOMETER.POLARSTORM = "Вот оно и началось."
	DESCRIBE.WINTEROMETER.POLARSTORM = "О боже..."
	
--	Items
	
	--	Food
	DESCRIBE.DRYICECREAM = "Этой штукой можно проломить череп."
	DESCRIBE.FILET_O_FLEA = "Не голодай, говоришь? Думаю, я бы предпочёл."
	DESCRIBE.HERMITCRABTEA_PETALS_POLAR = "Это усвоенный вкус."
	DESCRIBE.ICELETTUCE = "Итак, теперь мы едим хрустящую воду?"
	DESCRIBE.ICELETTUCE_OVERSIZED = "И эта штука даже не хотела, чтобы мы о ней заботились."
	DESCRIBE.ICEBURRITO = "Я не думаю, что это плохо на вкус, но..."
	DESCRIBE.KOALEFRIED_TRUNK_SUMMER = "В нём много жира. Но я всё равно буду есть это."
	DESCRIBE.KOALEFRIED_TRUNK_WINTER = "В нём много жира. Но я всё равно буду есть это."
	DESCRIBE.POLARCRABLEGS = "Идеально сочетается с растопленным сливочным маслом."
	DESCRIBE.POLARFLEAEGGSACK = "Я никогда уже не буду чистым..."
	
	--	Crafting
	DESCRIBE.BLUEGEM_OVERCHARGED = "Я возвращаю то, что принадлежит мне по праву, даже если это немного изменилось."
	DESCRIBE.BLUEGEM_SHARDS = "Блестит."
	DESCRIBE.EMPEROR_EGG = "Не приготовишь омлет, не разбив пару яиц."
	DESCRIBE.MOOSE_POLAR_ANTLER = "Я должен извлечь магию изнутри."
	DESCRIBE.PETALS_POLAR = "Кто-нибудь хочет чаю?"
	DESCRIBE.PETALS_POLAR_DRIED = "Они все высохшие."
	DESCRIBE.POLAR_DRYICE = "Я вспоминаю... у меня ещё не было статуи меня из льда, пока."
	DESCRIBE.POLARBEARFUR = "Вот это -Агх! Столько блох!"
	DESCRIBE.POLARWARGSTOOTH = "Я скажу, это выглядит довольно модно."
	
	--	Equipments
	DESCRIBE.ANTLER_TREE_STICK = "Ах, это может оказаться полезным."
	DESCRIBE.ARMORPOLAR = "Удобный, и несколько утончённый."
	DESCRIBE.COMPASS_POLAR = "Это обещает мне нечто большее, чем север."
	DESCRIBE.EMPEROR_PENGUINHAT = "Как по-птичьи."
	DESCRIBE.FROSTWALKERAMULET = "Жаль, что рыба осталась у меня на пути. Ну да ладно."
	DESCRIBE.ICICLESTAFF = "судьба похуже гнилых помидоров."
	DESCRIBE.POLAR_SPEAR = "Я признаю, что оно может порвать мой костюм. В лучшем случае."
	DESCRIBE.POLARAMULET = "Они сотворили какое-то волшебство со шнурком. Какое именно, я не уверен."
	DESCRIBE.POLARBEARHAT = "Я серьёзно возмущён."
	DESCRIBE.POLARCROWNHAT = "Мощный и элегантный, но в то же время неудобный."
	DESCRIBE.POLARFLEA_SACK = "Едва ли это предпочтительнее, чем замёрзнуть насмерть."
	DESCRIBE.POLARICESTAFF = "Хорошее заклинание, попавшее не в те руки."
	DESCRIBE.POLARMOOSEHAT = "Хм. Очень... по деревенски."
	DESCRIBE.WALRUS_BAGPIPE = "Они могут и не вспомнить меня, но они будут повиноваться мне."
	DESCRIBE.WALRUS_BEARTRAP = "Портит ногу и хорошие брюки."
	DESCRIBE.WINTERS_FISTS = "Только лакомый кусочек слишком жёсткий... на самом деле."
	
	--	Others
	DESCRIBE.ARCTIC_FOOL_FISH = "Заклинание от смущения."
	DESCRIBE.BOAT_ICE_ITEM = "Мне не нравится, как это звучит, особенно этот треск."
	DESCRIBE.POCKETWATCH_POLAR = {
		GENERIC = "Осторожнее, мадам. Я знаю, куда в конечном счёте приведёт этот след.",
		RECHARGING = "Похоже, в кои-то веки ей придётся подождать.",
	}
	DESCRIBE.POLARGLOBE = {
		GENERIC = "Не. Тронь. Это.",
		INUSE = "Я знаю, что это было плохой идеей.",
		REFUEL = "Я должен выбросить тебя в море.",
	}
	DESCRIBE.OCEANFISH_IN_ICE = "Тебе не стыдно, рыбка?"
	DESCRIBE.POLARICEPACK = "Это позволит дольше удерживать бактерии на расстоянии."
	DESCRIBE.POLARTRINKET_1 = "От этих парней действительно некуда деться."
	DESCRIBE.POLARTRINKET_2 = "От этих девчонок действительно некуда деться."
	DESCRIBE.TRAP_POLARTEETH = "Злонамеренный. Мне это нравится!"
	DESCRIBE.TURF_POLAR_CAVES = "Дёрн."
	DESCRIBE.TURF_POLAR_DRYICE = "По крайней мере, это полезно."
	DESCRIBE.TURF_POLAR_GRASS = "Колючая."
	DESCRIBE.WALL_POLAR = "Мне они нравятся за их атмосферность."
	DESCRIBE.WALL_POLAR_ITEM = "Кубики льда размером со стенку. Ага."
	DESCRIBE.WINTER_ORNAMENTPOLAR = "Это тонко, но необычно."
	DESCRIBE.WX78MODULE_NAUGHTY = "Этому роботу нужно взять себя в руки."
