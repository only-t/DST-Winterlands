local ANNOUNCE = STRINGS.CHARACTERS.WENDY
local DESCRIBE = STRINGS.CHARACTERS.WENDY.DESCRIBE

--	Announcements
	
	--	Actions
	ANNOUNCE.BATTLECRY.PENGUIN  = "Ты не можешь убежать от неизбежного!"
	ANNOUNCE.BATTLECRY.POLARBEAR = "Давай уложим тебя спать."
	ANNOUNCE.BATTLECRY.WALRUS = "Приготовьтесь умереть! Вы все!"
	
	--	World, Events
	ANNOUNCE.ANNOUNCE_ARCTIC_FOOL_FISH_REMOVED = "Всё прошло. Но стыд всё ещё терзает меня."
	ANNOUNCE.ANNOUNCE_POLAR_SLOW = {
		"Холодные цепи... тянут меня вниз...",
		"Каждый шаг медленней предыдущего...",
		"Я не нахожу это смешным... Эбби...",
	}
	ANNOUNCE.ANNOUNCE_EMPEROR_ESCAPE = "Он проживёт ещё один день, но теперь в вечном позоре."
	ANNOUNCE.ANNOUNCE_POLARGLOBE = "Это ещё не конец?"
	ANNOUNCE.ANNOUNCE_POLARFLEA_LATCHED = "Отпусти меня!"
	ANNOUNCE.ANNOUNCE_POLARICE_PLOW_BAD = "Один из способов утонуть."
	ANNOUNCE.ANNOUNCE_THRONE_GIFT_TAKEN = "...Я надеялась на что-то другое."
	
	--	Buffs
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_HUNTMOAR = "Пусть продолжится охота. Я голодна."
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_HUNTMOAR = "Мои чувства вновь тускнеют..."
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_POLARWETNESS = "Холод проникает в самую мою душу."
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_POLARWETNESS = "Холодный снег истекал кровью."
	
--	Worldgen
	
	--	Plants
	DESCRIBE.ANTLER_TREE = {
		BURNING = "Даже охваченный пламенем, он стоит с достоинством.",
		BURNT = "Не осыпайся, позволь мне прикончить тебя.",
		CHOPPED = "Он встретил свой конец от наших рук.",
		GENERIC = "Я думаю он такой... хорошенький.",
	}
	DESCRIBE.ANTLER_TREE_SAPLING = "Я могу полностью замёрзнуть ещё до того, как он полностью вырастет."
	DESCRIBE.FLOWER_POLAR = "Я скоро буду заживо погребена под снегом. Как поэтично."
	DESCRIBE.ICELETTUCE_SEEDS = "Растение, что ждёт своего рождения."
	
	--	Rocks and stones
	DESCRIBE.POLAR_ICICLE = "В своём падении он попытается отнять ещё одну жизнь."
	DESCRIBE.POLAR_ICICLE_ROCK = "Оу. Я пришла слишком поздно."
	DESCRIBE.ROCK_POLAR = "Некоторые кусочки холоднее, чем другие."
	
	--	Misc
	ANNOUNCE.DESCRIBE_IN_POLARSNOW = "Выходи."
	DESCRIBE.CAVE_ENTRANCE_POLAR = "Дыра закрыта... странно, не так ли?" -- TEMP QUOTE
	DESCRIBE.TOWER_POLAR = {
		GENERIC = "Есть ли в этих стенах место для ещё одной холодной души?",
		PENGUIN = "Хорошо. Другие погибнут вместо тебя.",
	}
	DESCRIBE.TUMBLEWEED_POLAR = "Я хочу разбить это!"
	
--	Mobs
	
	DESCRIBE.EMPEROR_PENGUIN = {
		GENERIC = "Планируют ли они захватить власть на материке?",
		HOSTILE = "Достоин ли ты этого, правитель?",
	}
	DESCRIBE.EMPEROR_PENGUIN_GUARD = "Быть заклёванным звуком кремния... неприятно."
	DESCRIBE.FROSTY_SIMPLE = "Frosty"
	DESCRIBE.GIRL_WALRUS = "Её песня завораживает... но, о, она так фальшиво звучит!"
	DESCRIBE.MOOSE_POLAR = {
		ANTLER_LOST = "ХииХии...",
		GENERIC = "Эти рога кажутся такими дорогими тебе, хм?",
	}
	DESCRIBE.MOOSE_SPECTER = "Нет Эбигейл, Я не думаю, что мы можем оставить его."
	DESCRIBE.OCEANFISH_MEDIUM_POLAR1 = "Какие красивые глаза у тебя в глазницах."
	DESCRIBE.POLARBEAR = {
		DEAD = "Возможно, нам тебя будет не хватать.",
		ENRAGED = "Я знала, что всё было слишком просто.",
		FOLLOWER = "Теперь это моя плюшка.",
		GENERIC = "Хищник, рождённый во льдах.",
	}
	DESCRIBE.POLARBEARKING = "Легенды гласят, что он перехитрил смерть, следуя правилам."
	DESCRIBE.POLARFLEA = {
		GENERIC = "Разве мы не должны бежать?",
		HELD_INV = "Ум, прошу прощения?",
		HELD_BACKPACK = "Хоть раз, я могу сохранить в живых себе домашнее животное.",
	}
	DESCRIBE.POLARFLEA_MOTHER = "Должно пролится ещё больше жучиной крови."
	DESCRIBE.POLARFOX = {
		FOLLOWER = "Ты хочешь меня куда то отвезти?",
		FRIEND = "Оу. Я оставила тебя голодать?",
		GENERIC = "Озорная тень на снегу.",
	}
	DESCRIBE.POLARWARG = "Чемпион тундры."
	
--	Buildings
	
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_FRUITY = "Это кричит об отчаянной потребности в восхищении."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_JUGGLE = "Он похож на того, кто может жонглировать жизнями других."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_MAGESTIC = "Что он сделал такого, что заслуживает такой оценки?"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_SPIN = "Мир - это сцена. Пока всё не растает."
	DESCRIBE.POLAR_BRAZIER = {
		GENERIC = "Пламя уже давно погасло.",
		ON = "Огонь в корзине.",
	}
	DESCRIBE.POLAR_BRAZIER_ITEM = "В таком состоянии, это не даст мне особо тепла."
	DESCRIBE.POLAR_THRONE = "Я могла бы здесь сидеть и замёрзнуть до смерти."
	DESCRIBE.POLAR_THRONE_GIFTS = "Как заманчиво. Может быть, открою один только."
	DESCRIBE.POLARAMULET_STATION = {
		GENERIC = "Это место вдали от других не просто так находится.",
		OPEN = "Можешь научить меня своему искусству?",
	}
	DESCRIBE.POLARBEAR_RUG = "Мне нравится."
	DESCRIBE.POLARBEARHEAD = "Обещаю, Я лучше о нём позабочусь в следующий раз."
	DESCRIBE.POLARBEARHOUSE = {
		BURNT = "Больше не является убежищем от пронизывающего холода.",
		GENERIC = "Они создали здесь свои могилы.",
	}
	DESCRIBE.POLARHEADSTICK = "Важно только предвкушение."
	DESCRIBE.POLARICE_PLOW = "Как бы не утонуть в глубокой ледяной воде сейчас."
	DESCRIBE.POLARICE_PLOW_ITEM = "Чтобы найти рыбы, а может и больше, если нам не повезёт."
	DESCRIBE.POLARWALRUSHEAD = "Где-то плачет ребёнок."
	DESCRIBE.TOWER_POLAR_FLAG = "Он плывёт в тишине, всеми забытый."
	DESCRIBE.TOWER_POLAR_FLAG_ITEM = "Оу, Я наступила на этот несчастный флаг. Я сделаю это снова."
	DESCRIBE.RAINOMETER.POLARSTORM = "Мы сейчас умрём?"
	DESCRIBE.WINTEROMETER.POLARSTORM = "Мир замёрз."
	
--	Items
	
	--	Food
	DESCRIBE.DRYICECREAM = "Полный рот снежной бури."
	DESCRIBE.FILET_O_FLEA = "Я хочу угощения, а не угрозы."
	DESCRIBE.HERMITCRABTEA_PETALS_POLAR = "Это для того, чтобы умереть."
	DESCRIBE.ICELETTUCE = "Урожай этого года был самым разочаровывающим."
	DESCRIBE.ICELETTUCE_OVERSIZED = "Что сделала эта культура, чтобы заслужить такую любовь и заботу?"
	DESCRIBE.ICEBURRITO = "Моё стужённое сердце не чувствует каких-либо изменений."
	DESCRIBE.KOALEFRIED_TRUNK_SUMMER = "Восхитительная судьба. Как можно больше Коалослонов должны познакомиться с ней"
	DESCRIBE.KOALEFRIED_TRUNK_WINTER = "Восхитительная судьба. Как можно больше Коалослонов должны познакомиться с ней."
	DESCRIBE.POLARCRABLEGS = "Мы отрезали ему ножки одну за другой!"
	DESCRIBE.POLARFLEAEGGSACK = "Внутри выжидается жизнь."
	
	--	Crafting
	DESCRIBE.BLUEGEM_OVERCHARGED = "Это слишком маленький сосуд для такой энергии."
	DESCRIBE.BLUEGEM_SHARDS = "Разбился как, хм... многие другие вещи."
	DESCRIBE.EMPEROR_EGG = "Если что-то и есть внутри, то оно давно умерло."
	DESCRIBE.MOOSE_POLAR_ANTLER = "Но ты можешь взять это, если хочешь."
	DESCRIBE.PETALS_POLAR = "Живу... не живу, живу... оу что же."
	DESCRIBE.PETALS_POLAR_DRIED = "Мне нравится, как они пахнут."
	DESCRIBE.POLAR_DRYICE = "Призрачный."
	DESCRIBE.POLARBEARFUR = "Оно несёт на себе тяжесть своей утраты, и паразитов."
	DESCRIBE.POLARWARGSTOOTH = "Каково это - иметь кинжалы вместо зубов?"
	
	--	Equipments
	DESCRIBE.ANTLER_TREE_STICK = "Очередная кость дерева."
	DESCRIBE.ARMORPOLAR = "Для того, чтобы задушить себя теплом."
	DESCRIBE.COMPASS_POLAR = "Куда бы это ни указывало, оно очень этого боится."
	DESCRIBE.EMPEROR_PENGUINHAT = "Корона пала, и больше не взойдёт."
	DESCRIBE.FROSTWALKERAMULET = "Даже вода не может вырваться из холодных объятий смерти."
	DESCRIBE.ICICLESTAFF = "Будь осторожна с этим, Эбигейл."
	DESCRIBE.POLAR_SPEAR = "Рано или поздно всё это развалится."
	DESCRIBE.POLARAMULET = "Жуткий, но вполне заслуженно."
	DESCRIBE.POLARBEARHAT = "Это... забавно."
	DESCRIBE.POLARCROWNHAT = "Я раскрою объятия зимы."
	DESCRIBE.POLARFLEA_SACK = "Хранилище для маленьких паразитов."
	DESCRIBE.POLARICESTAFF = "Напряжённый порывом холода. Как и в моём сердце."
	DESCRIBE.POLARMOOSEHAT = "Даже я не знаю, из кого он сделан."
	DESCRIBE.WALRUS_BAGPIPE = "Эта песня отзывается печальным эхом."
	DESCRIBE.WALRUS_BEARTRAP = "Как могила, ожидающая, когда её засыплют..."
	DESCRIBE.WINTERS_FISTS = "Как на счёт армрестлинга, мистер Вольфганг?"
	
	--	Others
	DESCRIBE.ARCTIC_FOOL_FISH = "Должна ли я что-нибудь здесь написать? Например: \"Подойди и зарежь меня\"."
	DESCRIBE.BOAT_ICE_ITEM = "Это будет ужасно неправильно. Я пойду."
	DESCRIBE.POCKETWATCH_POLAR = {
		GENERIC = "Приятно наблюдать за тем, как секунды уходят.",
		RECHARGING = "Его энергия израсходована.",
	}
	DESCRIBE.POLARGLOBE = {
		GENERIC = "Выглядит так хрупко...",
		INUSE = "Я понял. Сломав это - привело бы к длительным последствиям.",
		REFUEL = "Я не могу больше его потрясти. Какая жалость.",
	}
	DESCRIBE.OCEANFISH_IN_ICE = "Внутри тебе безопаснее, рыба, не вырывайся на свободу."
	DESCRIBE.POLARICEPACK = "В холодильнике вас ожидает длительное существование в холоде и тьме."
	DESCRIBE.POLARTRINKET_1 = "Я бы пронесла это с собой на край света."
	DESCRIBE.POLARTRINKET_2 = "Я бы пронесла это с собой на край света."
	DESCRIBE.TRAP_POLARTEETH = "Можешь дать мне прикончить их? Ну пожалуйста?"
	DESCRIBE.TURF_POLAR_CAVES = "Немного холодная земля."
	DESCRIBE.TURF_POLAR_DRYICE = "Холодный камень под моими ногами."
	DESCRIBE.TURF_POLAR_GRASS = "Немного холодная земля."
	DESCRIBE.WALL_POLAR = "Увы, они не так уж просто растают."
	DESCRIBE.WALL_POLAR_ITEM = "Части ледяной тюрьмы, в которой я сам себя запираю."
	DESCRIBE.WINTER_ORNAMENTPOLAR = "Некоторые побрякушки согревают душу, в то время как другие..."
	DESCRIBE.WX78MODULE_NAUGHTY = "Выглядит так хрупко... надеюсь, никаких трагических происшествий не произойдёт с ним."
