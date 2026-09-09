local ANNOUNCE = STRINGS.CHARACTERS.WORTOX
local DESCRIBE = STRINGS.CHARACTERS.WORTOX.DESCRIBE

--	Announcements
	
	--	Actions
	ANNOUNCE.BATTLECRY.PENGUIN  = "Танцуй со мной на льду, маленькая пташка!"
	ANNOUNCE.BATTLECRY.POLARBEAR = "Тедди или нет, я иду!"
	ANNOUNCE.BATTLECRY.WALRUS = "Ты принял меня за лёгкую добычу? Ху-ху!"
	
	--	World, Events
	ANNOUNCE.ANNOUNCE_ARCTIC_FOOL_FISH_REMOVED = "Розыгрыш шутника? Этого быть не может!"
	ANNOUNCE.ANNOUNCE_POLAR_SLOW = {
		"Хоп... хоп мы идём...!",
		"Хюу... юу... бррррр!",
		"Двигайтесь... упрямые копыты...",
	}
	ANNOUNCE.ANNOUNCE_EMPEROR_ESCAPE = "Хи-хи! смотрите, королевский огузок убегает!"
	ANNOUNCE.ANNOUNCE_POLARGLOBE = "И ты это называешь шуткой? Это было просто грубо!"
	ANNOUNCE.ANNOUNCE_POLARFLEA_LATCHED = "Хууу-- ууф!"
	ANNOUNCE.ANNOUNCE_POLARICE_PLOW_BAD = "Там так много льда, чтобы уничтожить, но не здесь!"
	ANNOUNCE.ANNOUNCE_THRONE_GIFT_TAKEN = "Видишь? Ты иногда должен мне доверять-"
	
	--	Buffs
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_HUNTMOAR = "Мой нюхатель трепещет от озорства!"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_HUNTMOAR = "Иду ли я по своим собственным следам?"
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_POLARWETNESS = "Б-боже о боже, Я должен оставаться в тепле и суше..."
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_POLARWETNESS = "Больше никакого снега! Почти готов идти!"
	
--	Worldgen
	
	--	Plants
	DESCRIBE.ANTLER_TREE = {
		BURNING = "Ты предвидел это? Держу пари нет!",
		BURNT = "Оно приобрело жутковатый и хрустящий вид.",
		CHOPPED = "Он опустился вниз.",
		GENERIC = "У тебя может быть длинные рога, а у меня топор.",
	}
	DESCRIBE.ANTLER_TREE_SAPLING = "Пока ещё маленький, но скоро он станет старым и чёрствым."
	DESCRIBE.FLOWER_POLAR = "Такое наслаждение для глаз."
	DESCRIBE.ICELETTUCE_SEEDS = "Давай подкинем им немного почвы, пока они не испортились."
	
	--	Rocks and stones
	DESCRIBE.POLAR_ICICLE = "Клянусь, он вздрогнул! Или меня обманули?"
	DESCRIBE.POLAR_ICICLE_ROCK = "Тебе следовало воспользоваться своим шансом раньше или поздно."
	DESCRIBE.ROCK_POLAR = "Это те драгоценные камни, которые я вижу под холодным туманом?"
	
	--	Misc
	ANNOUNCE.DESCRIBE_IN_POLARSNOW = "Ху-ху! Что это может быть?"
	DESCRIBE.CAVE_ENTRANCE_POLAR = "В любом случае, в данный момент здесь, внизу, ничего нет!" -- TEMP QUOTE
	DESCRIBE.TOWER_POLAR = {
		GENERIC = "Выгодная позиция для вандалов.",
		PENGUIN = "Как грубо! Ну что за подход!",
	}
	DESCRIBE.TUMBLEWEED_POLAR = "Морозные хлопья с привкусом веселья!"
	
--	Mobs
	
	DESCRIBE.EMPEROR_PENGUIN = {
		GENERIC = "Авторитетная фигура? Ооо, я бы не был так уверен.",
		HOSTILE = "Попробуй и поймай меня!",
	}
	DESCRIBE.EMPEROR_PENGUIN_GUARD = "Не клюй меня, пожалуйста!"
	DESCRIBE.FROSTY_SIMPLE = "Frosty"
	DESCRIBE.GIRL_WALRUS = "Когда её трубы зазвучат, весь клан развернётся."
	DESCRIBE.MOOSE_POLAR = {
		ANTLER_LOST = "Не волнуйся, мой дорогой, они снова вырастут.",
		GENERIC = "Откудо у тебя такие большие рога! У меня такие будут?",
	}
	DESCRIBE.MOOSE_SPECTER = "Большинству смертных тоже не доводится видеть бесов, я хочу, чтобы ты запомнил это."
	DESCRIBE.OCEANFISH_MEDIUM_POLAR1 = "Призматический пловец из глубокой ледяной воды."
	DESCRIBE.POLARBEAR = {
		DEAD = "Обратно в прах! Или в снег, если хочешь.",
		ENRAGED = "Они не любят приколов на один укус!",
		FOLLOWER = "Мы оба едва ли можем быть приятными собеседниками, ху-ху!",
		GENERIC = "Они кажется достаточно добры к моему виду.",
	}
	DESCRIBE.POLARBEARKING = "Смертные говорят, что он мог бы выдавить мою душу прямо из меня, ху-ху...! Я-я не собираюсь это выяснять."
	DESCRIBE.POLARFLEA = {
		GENERIC = "Ох нет! Нет нет нет!",
		HELD_INV = "Всё хорошо. Скоро я поглощу тебя в ответ.",
		HELD_BACKPACK = "Это один из способов накапливать души.",
	}
	DESCRIBE.POLARFLEA_MOTHER = "Я не имею к этому никакого отношения...! Верно?"
	DESCRIBE.POLARFOX = {
		FOLLOWER = "Хитрый маленький ком-лап-ньон.",
		FRIEND = "Ты не помнишь меня? Оу, но ты выглядишь таким голодным...",
		GENERIC = "Поймай его, пока он не зарылся шестью копытами под землю!",
	}
	DESCRIBE.POLARWARG = "Это был леденящий вой, от которого леденела душа!"
	
--	Buildings
	
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_FRUITY = "Я мог бы сделать это ещё хуже за счёт простого трюка."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_JUGGLE = "Я прибыл на церемонию коронации шута?"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_MAGESTIC = "Ху-ху, Я тоже могу выпятить грудь!"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_SPIN = "Скромность? Не слышал о ней!"
	DESCRIBE.POLAR_BRAZIER = {
		GENERIC = "Смертным стоило подумать об этом раньше! Ху-ху!",
		ON = "Отгони холод, дорогое пламя.",
	}
	DESCRIBE.POLAR_BRAZIER_ITEM = "Это должно согреть меня, где бы я не бродил."
	DESCRIBE.POLAR_THRONE = "Он уже особо этим не пользуется в последние дни."
	DESCRIBE.POLAR_THRONE_GIFTS = "Да, да, это бесплатные подарки!"
	DESCRIBE.POLARAMULET_STATION = {
		GENERIC = "Полон озорства, разумеется!",
		OPEN = "О боженьки, друг, какая у тебя хитрая улыбка!",
	}
	DESCRIBE.POLARBEAR_RUG = "Когда-то бродил свободно, а теперь подо мной."
	DESCRIBE.POLARBEARHEAD = "Как противно!"
	DESCRIBE.POLARBEARHOUSE = {
		BURNT = "Даже это ледяное логово не смогло избежать пламенного конца.",
		GENERIC = "Скрытое место, чтобы согреть душу.",
	}
	DESCRIBE.POLARHEADSTICK = "Надеюсь, этот не для меня!"
	DESCRIBE.POLARICE_PLOW = "Осторожно! Портал в рыбное измерение скоро откроется!"
	DESCRIBE.POLARICE_PLOW_ITEM = "Менее увлекательно, но более незаметно, чем взрывы."
	DESCRIBE.POLARWALRUSHEAD = "Тогда охотник, теперь добыча."
	DESCRIBE.TOWER_POLAR_FLAG = "Я не разделяю любви смертных к флагам. Это всё чушь собачья!"
	DESCRIBE.TOWER_POLAR_FLAG_ITEM = "Ранее это было помпезно, а теперь стоит ничего."
	DESCRIBE.RAINOMETER.POLARSTORM = "Мне лучше спрятаться, если даже эта машина не может определиться."
	DESCRIBE.WINTEROMETER.POLARSTORM = "Только ты пытаешься напугать меня! Так ведь?"
	
--	Items
	
	--	Food
	DESCRIBE.DRYICECREAM = "Я узнаю розыгрыш, как только вижу его!"
	DESCRIBE.FILET_O_FLEA = "О нет! Я не имею к этому никакого отношения, честное слово!"
	DESCRIBE.HERMITCRABTEA_PETALS_POLAR = "У него вкус смертного чая."
	DESCRIBE.ICELETTUCE = "Смертные будут выращивать растения, какие бы они не были."
	DESCRIBE.ICELETTUCE_OVERSIZED = "Боль была не выносимой, выращивать такой овощ."
	DESCRIBE.ICEBURRITO = "Думаю, я мог бы откусить. Обморозившись, ху-ху!"
	DESCRIBE.KOALEFRIED_TRUNK_SUMMER = "Люди должны делать заметки... Я просто говорю!"
	DESCRIBE.KOALEFRIED_TRUNK_WINTER = "Люди должны делать заметки... Я просто говорю!"
	DESCRIBE.POLARCRABLEGS = "Хорошо, хорошо, Я возьму от этого краба немного."
	DESCRIBE.POLARFLEAEGGSACK = "Ооо, это дало мне идею!"
	
	--	Crafting
	DESCRIBE.BLUEGEM_OVERCHARGED = "В воздухе или в самоцвете, твоя душа всё равно будет моей."
	DESCRIBE.BLUEGEM_SHARDS = "Уууупси! Я вновь это разбил."
	DESCRIBE.EMPEROR_EGG = "Вернутся ли они за этим? Ммм. Лучше схватить это!"
	DESCRIBE.MOOSE_POLAR_ANTLER = "Ну, это слишком плохо, для тебя!"
	DESCRIBE.PETALS_POLAR = "Я нахожу их более приятными в земле."
	DESCRIBE.PETALS_POLAR_DRIED = "Я видел, что оно высохло."
	DESCRIBE.POLAR_DRYICE = "Как бы холодно ни было, для меня это идеал."
	DESCRIBE.POLARBEARFUR = "Густой мех для игры в снегу."
	DESCRIBE.POLARWARGSTOOTH = "Я признаю, что этот человек мог бы стать достойным соперником."
	
	--	Equipments
	DESCRIBE.ANTLER_TREE_STICK = "Этой палкой можно оттолкнуться."
	DESCRIBE.ARMORPOLAR = "Если повреждение проблема, то добавь больше меха!"
	DESCRIBE.EMPEROR_PENGUINHAT = "Да здравствует рыба!"
	DESCRIBE.COMPASS_POLAR = "У меня нет сочувствия к этой поломанной штуке!"
	DESCRIBE.FROSTWALKERAMULET = "Когда вода остывает, открываются новые пути."
	DESCRIBE.ICICLESTAFF = "Смотрите в оба! Шипы могут оставить неприятный след."
	DESCRIBE.POLAR_SPEAR = "Лёд и палки были созданы друг для друга."
	DESCRIBE.POLARAMULET = "Важно то, что вы верите в это, ху-ху!"
	DESCRIBE.POLARBEARHAT = "Это странно удобно для того, что есть на самом деле."
	DESCRIBE.POLARCROWNHAT = "Холодный снаружи, замёрзший внутри."
	DESCRIBE.POLARFLEA_SACK = "Что внутри? Это сюрприз!"
	DESCRIBE.POLARICESTAFF = "Нехорошо оставлять наших гостей в ледяной ловушке!"
	DESCRIBE.POLARMOOSEHAT = "Пушистая корона, скрывающая чью-то ледяную хмурость."
	DESCRIBE.WALRUS_BAGPIPE = "Мои уши скручиваются в агонии!"
	DESCRIBE.WALRUS_BEARTRAP = "Следите за своими пальцами! Ловушки под ногами!"
	DESCRIBE.WINTERS_FISTS = "Разница между розыгрышем и хладнокровным убийством иногда так мало."
	
	--	Others
	DESCRIBE.ARCTIC_FOOL_FISH = "Ооо, Вес! Тебе следовало раньше рассказать мне об этих розыгрышах!"
	DESCRIBE.BOAT_ICE_ITEM = "Бедные бездна-прыгающие смертные..."
	DESCRIBE.POCKETWATCH_POLAR = {
		GENERIC = "Смертные продолжают придумывать такие забавные трюки!",
		RECHARGING = "ВЫ увидите, что этим часам нужно некоторое время, чтобы раскрутиться.",
	}
	DESCRIBE.POLARGLOBE = {
		GENERIC = "Замёрзшая царство, моё, чтобы трясти его! Ху-ху!",
		INUSE = "Какая соблазнительная, проклятая безделушка!",
		REFUEL = "Там пусто... не то, чтобы это меня огорчало.",
	}
	DESCRIBE.OCEANFISH_IN_ICE = "Ты думаешь, я тебя защищаю, рыбка?"
	DESCRIBE.POLARICEPACK = "Должен ли я жертвовать пространством ради простой смертной пищи?"
	DESCRIBE.POLARTRINKET_1 = "Я не вижу внутри ни души, нет нет."
	DESCRIBE.POLARTRINKET_2 = "Я не вижу внутри ни души, нет нет."
	DESCRIBE.TRAP_POLARTEETH = "Жестоко? Возможно. Весело? Разумеется!"
	DESCRIBE.TURF_POLAR_CAVES = "Пол или потолок, в зависимости от вашей точки зрения."
	DESCRIBE.TURF_POLAR_DRYICE = "Пол или потолок, в зависимости от вашей точки зрения."
	DESCRIBE.TURF_POLAR_GRASS = "Пол или потолок, в зависимости от вашей точки зрения."
	DESCRIBE.WALL_POLAR = "Защищает ли это от холода снаружи или внутри?"
	DESCRIBE.WALL_POLAR_ITEM = "Здесь, на земле, это бесполезно."
	DESCRIBE.WINTER_ORNAMENTPOLAR = "Отчаянные сегодня, так ведь?"
	DESCRIBE.WX78MODULE_NAUGHTY = "Ты самая яркая лампочка в этой куче?"
