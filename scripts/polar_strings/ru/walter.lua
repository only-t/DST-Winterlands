local ANNOUNCE = STRINGS.CHARACTERS.WALTER
local DESCRIBE = STRINGS.CHARACTERS.WALTER.DESCRIBE

--	Announcements
	
	--	Actions
	ANNOUNCE.BATTLECRY.PENGUIN  = "Со мной всё будет хорошо, они птицы незадиристые."
	ANNOUNCE.BATTLECRY.POLARBEAR = "Смотри, Воби! Я сражаюсь с большим, грозным медведем!"
	ANNOUNCE.BATTLECRY.WALRUS = "Ха! Ты попался в мою ловушку!"
	
	--	World, Events
	ANNOUNCE.ANNOUNCE_ARCTIC_FOOL_FISH_REMOVED = "Чёрт возьми... они не могут и дальше оставаться безнаказанными!"
	ANNOUNCE.ANNOUNCE_POLAR_SLOW = {
		"Вобс! Где-а, вот ты где!",
		"Нам следует направится на север... нет, на юг!",
		"Бррр...",
	}
	ANNOUNCE.ANNOUNCE_EMPEROR_ESCAPE = "Думаю, это теперь мой ледяной замок!"
	ANNOUNCE.ANNOUNCE_POLARGLOBE = "Это было... круто! Даже прохладно!"
	ANNOUNCE.ANNOUNCE_POLARFLEA_LATCHED = "Подожди! Жуки тоже могут хватать людей?"
	ANNOUNCE.ANNOUNCE_POLARICE_PLOW_BAD = "Давай попробуем найти, что-нибудь более прочное."
	ANNOUNCE.ANNOUNCE_THRONE_GIFT_TAKEN = "Классно! Почти то, что я хотел."
	
	--	Buffs
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_HUNTMOAR = "нюх, нюх... ты это чувствуешь, Воби? Ибо я да!"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_HUNTMOAR = "Ты знаешь. Я немного скучаю по старой школьной охоте."
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_POLARWETNESS = "Э-это требует н-нормальной одежды...!"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_POLARWETNESS = "По крайней мере, мои волосы оттаяли."
	
--	Worldgen
	
	--	Plants
	DESCRIBE.ANTLER_TREE = {
		BURNING = "Дерево в огне? Здесь? Из всех мест?",
		BURNT = "Хах. Что же, мне интересно как это произошло.",
		CHOPPED = "Топор победил в этой схватке.",
		GENERIC = "Призрачный ло-- а! Это дерево. Но всё хорошо.",
	}
	DESCRIBE.ANTLER_TREE_SAPLING = "Ооо, ты такой маленький!"
	DESCRIBE.FLOWER_POLAR = "Природа всегда находит способы!"
	DESCRIBE.ICELETTUCE_SEEDS = "Где мы должных посадить их, Воби?"
	
	--	Rocks and stones
	DESCRIBE.POLAR_ICICLE = "Интересно, когда же она упадёт."
	DESCRIBE.POLAR_ICICLE_ROCK = "Воу! Ты видел как она падает?"
	DESCRIBE.ROCK_POLAR = "Посмотри как много Воби в нём!"
	
	--	Misc
	ANNOUNCE.DESCRIBE_IN_POLARSNOW = "Хах? Воби... что здесь?"
	DESCRIBE.CAVE_ENTRANCE_POLAR = "Что это...? \"работа... в прогрессе\"-- Хаха, этот подчерк ужасен!" -- TEMP QUOTE
	DESCRIBE.TOWER_POLAR = {
		GENERIC = "Позволят ли они нам подняться на вершину, если мы попросим?",
		PENGUIN = "Вашему величеству не помешало бы попрактиковаться в стрельбе по мишеням!",
	}
	DESCRIBE.TUMBLEWEED_POLAR = "Ужасная снежинка! Я наконец-то нашёл её!"
	
--	Mobs
	
	DESCRIBE.EMPEROR_PENGUIN = {
		GENERIC = "Мне кажется, он просто большой хвастун.",
		HOSTILE = "О оу... Я думаю, мы начали войну, Воби.",
	}
	DESCRIBE.EMPEROR_PENGUIN_GUARD = "Думаешь, что целый полк смог бы справиться с Циклопом Оленем?"
	DESCRIBE.FROSTY_SIMPLE = "Frosty"
	DESCRIBE.GIRL_WALRUS = "Эй, не мусорить!"
	DESCRIBE.MOOSE_POLAR = {
		ANTLER_LOST = "Как он потерял свои рога? Ну, это трагическая история, серьёзно.",
		GENERIC = "Хм. Не очень таинственный на вид! Но, может быть, если бы он был белым и прятался в метель...",
	}
	DESCRIBE.MOOSE_SPECTER = "Я-я знаю! Я знал его... всё это время! Хаха!"
	DESCRIBE.OCEANFISH_MEDIUM_POLAR1 = "Хей, посмотри на эти жуткие глаза!"
	DESCRIBE.POLARBEAR = {
		DEAD = "Сэр? Сэр, Я думаю вам нужна наша помощь!",
		ENRAGED = "Вот это у тебя большие клыки!",
		FOLLOWER = "Тебя легче приручить, чем говорили в том радио шоу.",
		GENERIC = "Я был прав. Этими тремя тёмными точками оказались белыми медведями."
	}
	DESCRIBE.POLARBEARKING = "Говорят, он продавал медвежий мех, прежде чем охотиться на него. Воу... ты можешь в это поверить?!"
	DESCRIBE.POLARFLEA = {
		GENERIC = "Посмотри на этот-- ах, на ЭТИХ крутых жуков!",
		HELD_INV = "В моём руководстве написано... что уже слишком поздно удалять его.",
		HELD_BACKPACK = "Ничего не может остановить меня и моих жуков!",
	}
	DESCRIBE.POLARFLEA_MOTHER = "Святые Вобиры! Напомни мне почистить тебя после этого."
	DESCRIBE.POLARFOX = {
		FOLLOWER = "Я думаю ему мы нравимся!",
		FRIEND = "Ему бы не помешало ещё что-нибудь перекусить.",
		GENERIC = "Поймай их, девочка!",
	}
	DESCRIBE.POLARWARG = "Бедняжка, должно быть, потерялась."
	
--	Buildings
	
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_FRUITY = "Так вот что они называют искусством? Хах."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_JUGGLE = "Что не так, Wobers? Она не может оторвать от него взгляда!"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_MAGESTIC = "Хорошо, хорошо. Но сколько значков у тебя за это будет?"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_SPIN = "Я надеюсь, что это ещё послужит ещё и флюгером."
	DESCRIBE.POLAR_BRAZIER = {
		GENERIC = "Переносимая яма для огня.",
		ON = "Ух... кто-нибудь принёс переносной пакет с маршмэллоу?",
	}
	DESCRIBE.POLAR_BRAZIER_ITEM = "Однажды, Воби, ты перенесёшь целую базу!"
	DESCRIBE.POLAR_THRONE = "Разве это не становится со временем скучно, мистер Максвелл ?"
	DESCRIBE.POLAR_THRONE_GIFTS = "Возможно они потерялись."
	DESCRIBE.POLARAMULET_STATION = {
		GENERIC = "Оооуу, это, должно быть, тот самый стамотологический музей, о котором я слышал!",
		OPEN = "Привет! Вы открыты для посетителей?",
	}
	DESCRIBE.POLARBEAR_RUG = "Добро пожаловать всем и каждому в мой салон жутких историй.\nПожайлуста, присядьте!"
	DESCRIBE.POLARBEARHEAD = "Ещё не поздно вернуть его владельцу?"
	DESCRIBE.POLARBEARHOUSE = {
		BURNT = "Это самый сильный ожог от обморожения, который я когда-либо видел. Хех.",
		GENERIC = "Ты думаешь, они делают мебель из снега?",
	}
	DESCRIBE.POLARHEADSTICK = "Это хорошая палка."
	DESCRIBE.POLARICE_PLOW = "Не волнуйся, я знаю, что к чему."
	DESCRIBE.POLARICE_PLOW_ITEM = "Может быть, Воби сможет почуять рыбу с помощью запаха?"
	DESCRIBE.POLARWALRUSHEAD = "Чёрт возьми! Я снова потерял монокль!"
	DESCRIBE.TOWER_POLAR_FLAG = "На этой базе, мы отдадим честь флагу!"
	DESCRIBE.TOWER_POLAR_FLAG_ITEM = "Я не могу сказать, что слышал об этой стране раньше."
	DESCRIBE.RAINOMETER.POLARSTORM = "Должно быть, что-то витает в воздухе."
	DESCRIBE.WINTEROMETER.POLARSTORM = "Ха! Оно всё ещё трясётся из-за вчерашней истории."
	
--	Items
	
	--	Food
	DESCRIBE.DRYICECREAM = "Мороженное, газированный вариант."
	DESCRIBE.FILET_O_FLEA = "Это не заставит меня отказаться от готовки на открытом воздухе, но боже!"
	DESCRIBE.HERMITCRABTEA_PETALS_POLAR = "Возможно яд магически исчерпал себя."
	DESCRIBE.ICELETTUCE = "Может ли Латук заморозить? Понял? Потому что... забудь об этом..."
	DESCRIBE.ICELETTUCE_OVERSIZED = "Я знал, что из этого семени салат не выра- ладно, я остановлюсь."
	DESCRIBE.ICEBURRITO = "Всё это ни на йоту не развалится."
	DESCRIBE.KOALEFRIED_TRUNK_SUMMER = "Воу, у Варли есть серьёзная конкуренция с МакБивнем!"
	DESCRIBE.KOALEFRIED_TRUNK_WINTER = "Воу, у Варли есть серьёзная конкуренция с МакБивнем!"
	DESCRIBE.POLARCRABLEGS = "Мммм! Хей, кто-нибудь хочет послушать мои крабовые страшные истории?"
	DESCRIBE.POLARFLEAEGGSACK = "Оно полно желе и бобов."
	
	--	Crafting
	DESCRIBE.BLUEGEM_OVERCHARGED = "От волшебного синего самоцвета до... я не знаю... проклятого синего самоцвета, конечно?"
	DESCRIBE.BLUEGEM_SHARDS = "Держу пари, я смогу собрать эту мистику воедино."
	DESCRIBE.EMPEROR_EGG = "Эта штука прочная! Не уверен, что цыплёнок смог бы вылупится из него."
	DESCRIBE.MOOSE_POLAR_ANTLER = "До этого не должно было дойти."
	DESCRIBE.PETALS_POLAR = "Мм... мои инстинкты подсказывают, что стоит сначала дать их дикому животному на попробовать."
	DESCRIBE.PETALS_POLAR_DRIED = "Высохли отлично!"
	DESCRIBE.POLAR_DRYICE = "Давай построим снежного голема!"
	DESCRIBE.POLARBEARFUR = "Воу, посмотри только на всех этих блох в нём!"
	DESCRIBE.POLARWARGSTOOTH = "Напомнило мне, что Я скоро почищу твои зубы, девочка."
	
	--	Equipments
	DESCRIBE.ANTLER_TREE_STICK = "Хорошая палка, чтобы поиграть в \"Хватайка\" и... ещё кое-что."
	DESCRIBE.ARMORPOLAR = "Броня могла бы так же защищать и от других вещей, Э?"
	DESCRIBE.COMPASS_POLAR = "Эээ... дай мне секунду, Мне просто нужно вычаслить среднее значение, куда он показывает."
	DESCRIBE.EMPEROR_PENGUINHAT = "...Действительно ли необходимо это, чтобы быть королём? Ну что ж."
	DESCRIBE.FROSTWALKERAMULET = "Оу, ух... Я должен сделать из этого собачий ошейник."
	DESCRIBE.ICICLESTAFF = "Как на счёт пальнуть на удачу? Хех. Хорошо, Уолтер."
	DESCRIBE.POLAR_SPEAR = "Прости Воберс, ты не можешь взять эту палку."
	DESCRIBE.POLARCROWNHAT = "Что ж, когда мы построим мой ледяной замок?"
	DESCRIBE.POLARFLEA_SACK = "Лучше будь осторожен, пока ты находишься в зоне досягаемости моих жучков."
	DESCRIBE.POLARAMULET = "Маленькая штучка из магазина сувениров."
	DESCRIBE.POLARBEARHAT = "Воби не перестаёт рычать из-за этого..."
	DESCRIBE.POLARICESTAFF = "Мне жаль всех жуков вокруг, которые просто занимались своими делами."
	DESCRIBE.POLARMOOSEHAT = "Лосиный мех, без сомнения. Ты это нюхал?"
	DESCRIBE.WALRUS_BAGPIPE = "Моржи бы последовали за этой штукой куда угодно."
	DESCRIBE.WALRUS_BEARTRAP = "Лучше забрать это, пока никто не пострадал!"
	DESCRIBE.WINTERS_FISTS = "Я лучше целюсь из своей рогатки, чем... своими собственными руками."
	
	--	Others
	DESCRIBE.ARCTIC_FOOL_FISH = "Я не знал, что рыба прилипает! Хех, понял?"
	DESCRIBE.BOAT_ICE_ITEM = "Только не соскользни за борт. Ха ха. Это было очень плохо..."
	DESCRIBE.POCKETWATCH_POLAR = {
		GENERIC = "У мисс Ванды наверняка много часов!",
		RECHARGING = "Эти часы что, тикают в обратном направлении?",
	}
	DESCRIBE.POLARGLOBE = {
		GENERIC = "Хей, встряхни это!",
		INUSE = "Это значит... наконец-то Я заполучил в свои руки безделушку с приведениями!",
		REFUEL = "Где снег... призрачный снег?",
	}
	DESCRIBE.OCEANFISH_IN_ICE = "Возможно там есть маленький мамонтёнок?"
	DESCRIBE.POLARICEPACK = "Это не сделает моё вяленое мясо вечным, но сделает его на шаг ближе."
	DESCRIBE.POLARTRINKET_1 = "Кажется, он готов поиграть в снежки. И я тоже!"
	DESCRIBE.POLARTRINKET_2 = "Погоди... Я знаю тебя."
	DESCRIBE.TRAP_POLARTEETH = "Если это не поймает бобра оборотня, то с меня всё!"
	DESCRIBE.TURF_POLAR_CAVES = "Клочок земли."
	DESCRIBE.TURF_POLAR_DRYICE = "Какая-то дорога, от которой у меня мурашки бегут по ногам."
	DESCRIBE.TURF_POLAR_GRASS = "Клочок земли."
	DESCRIBE.WALL_POLAR = "Этот туман создаёт прекрасную жутковатую атмосферу."
	DESCRIBE.WALL_POLAR_ITEM = "Не смей лизать это, Воби!"
	DESCRIBE.WINTER_ORNAMENTPOLAR = "Что же, оно соответствует сезону."
	DESCRIBE.WX78MODULE_NAUGHTY = "Роботические потроха! Классно!"
