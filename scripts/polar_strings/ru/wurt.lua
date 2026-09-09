local ANNOUNCE = STRINGS.CHARACTERS.WURT
local DESCRIBE = STRINGS.CHARACTERS.WURT.DESCRIBE

--	Announcements
	
	--	Actions
	ANNOUNCE.BATTLECRY.PENGUIN  = "Это не твой дом! Грррр!"
	ANNOUNCE.BATTLECRY.POLARBEAR = "Бульк, не съешь меня!!"
	ANNOUNCE.BATTLECRY.WALRUS = "Бульк! Порыбачьте где-нибудь в другом месте!"
	
	--	World, Events
	ANNOUNCE.ANNOUNCE_ARCTIC_FOOL_FISH_REMOVED = "Бульк?! Гррр, ты меня следующий раз не достанешь..."
	ANNOUNCE.ANNOUNCE_POLAR_SLOW = {
		"Не могу бежать... не могу плавать... ничего не могу...",
		"Гррр... дурацкое большое море снега!",
		"Это совсем не похоже на воду!",
	}
	ANNOUNCE.ANNOUNCE_EMPEROR_ESCAPE = "Болото {wins}, Снег 0!"
	ANNOUNCE.ANNOUNCE_POLARGLOBE = "Буль-грр, оставь землю в покое!"
	ANNOUNCE.ANNOUNCE_POLARFLEA_LATCHED = "Ов! ОВ! Оу! Могу посмотреть, что внутри!"
	ANNOUNCE.ANNOUNCE_POLARICE_PLOW_BAD = "Возможно не здесь."
	ANNOUNCE.ANNOUNCE_THRONE_GIFT_TAKEN = "Самый лучший день в моей жизни, хлёрп!"
	
	--	Buffs
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_HUNTMOAR = "Подожди. Что? Когда?"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_HUNTMOAR = "Это было странно, хлёрп..."
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_POLARWETNESS = "Глорх! Большое море снега мокрое И холодное!"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_POLARWETNESS = "Аааах... оно вновь стало влажным."
	
--	Worldgen
	
	--	Plants
	DESCRIBE.ANTLER_TREE = {
		BURNING = "Мило и уютно, хлёрп.",
		BURNT = "Не будет гореть вновь.",
		CHOPPED = "Он тонет в большом море снега.",
		GENERIC = "Хм, ты далёкий друг болотного дерева?",
	}
	DESCRIBE.ANTLER_TREE_SAPLING = "Глорх! Чуть не споткнулся об дерево."
	DESCRIBE.FLOWER_POLAR = "Выглядит хорошо, вроде."
	DESCRIBE.ICELETTUCE_SEEDS = "Посадить на землю!"
	
	--	Rocks and stones
	DESCRIBE.POLAR_ICICLE = "Бульк...? Это был просто ветер."
	DESCRIBE.POLAR_ICICLE_ROCK = "Это большая капля, хлёрп!"
	DESCRIBE.ROCK_POLAR = "Оооу, блестящие кусочки внутри!"
	
	--	Misc
	ANNOUNCE.DESCRIBE_IN_POLARSNOW = "Что это за штука, хлёрп?"
	DESCRIBE.CAVE_ENTRANCE_POLAR = "Я не могу ещё войти в пещеру под пещерой." -- TEMP QUOTE
	DESCRIBE.TOWER_POLAR = {
		GENERIC = "Ооууу большой замок, как в книжках с рассказами!",
		PENGUIN = "Гррр! Возвращайся вниз!",
	}
	DESCRIBE.TUMBLEWEED_POLAR = "Хи-хи, поймаю тебя!"
	
--	Mobs
	
	DESCRIBE.EMPEROR_PENGUIN = {
		GENERIC = "Стоит объединить усилия и победить свинский народ!",
		HOSTILE = "Почему не можем поладить?",
	}
	DESCRIBE.GIRL_WALRUS = "Хи-хи. Странная семейка становится ещё странней."
	DESCRIBE.EMPEROR_PENGUIN_GUARD = "Защищает снежный народ, хлёрп!"
	DESCRIBE.FROSTY_SIMPLE = "Frosty"
	DESCRIBE.MOOSE_POLAR = {
		ANTLER_LOST = "Я тоже хочу, чтобы рог немного отрос, хлёрп.",
		GENERIC = "Хотел бы иметь такие большие рога, как этот...",
	}
	DESCRIBE.MOOSE_SPECTER = "Ооооу! Это как в книге о нереальных вещах!"
	DESCRIBE.OCEANFISH_MEDIUM_POLAR1 = "Это ооооочень симпоооотненько!"
	DESCRIBE.POLARBEAR = {
		DEAD = "Хорошо. Я не буду есть рыбку.",
		ENRAGED = "БУЛЬК! БЕГИ!!",
		FOLLOWER = "Я н-не боюсь тебя!",
		GENERIC = "Бульк...! Пожиратель моего народа...",
	}
	DESCRIBE.POLARBEARKING = "Мой народ говорит, он одновременно монстр под краватью и в шкафу. Б-бульк."
	DESCRIBE.POLARFLEA = {
		GENERIC = "Глорх, оно везде!",
		HELD_INV = "Пошёл прочь! Прооооочь!",
		HELD_BACKPACK = "У меня на тебя большие планы.",
	}
	DESCRIBE.POLARFLEA_MOTHER = "Хлёп! Сквышь! Оу. Н-не делай это!"
	DESCRIBE.POLARFOX = {
		FOLLOWER = "Ауу, это очень мило!",
		FRIEND = "Это всё равно что плавать в большом снежном море, хлёрп.",
	}
	DESCRIBE.POLARWARG = "Хочешь помочь убить медвежий народ?"
	
--	Buildings
	
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_FRUITY = "Почему смачная, хлёрп? Где тут смак"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_JUGGLE = "Парень клоун может это сделать на много лучше!"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_MAGESTIC = "Сделал с тобой то же, что ты сделал с рыбками."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_SPIN = "Хмм. Может быть, мне стоит сделать статуи  с Королём Мэрмов..."
	DESCRIBE.POLAR_BRAZIER = {
		GENERIC = "Подбросьте в него дров.",
		ON = "Она немного высоковата, но всё равно кажется тёплой.",
	}
	DESCRIBE.POLAR_BRAZIER_ITEM = "Украдём у медвежьего народа!"
	DESCRIBE.POLAR_THRONE = "Могу сделать лучше своими двумя когтями."
	DESCRIBE.POLAR_THRONE_GIFTS = "Моё! Это всё моё!!"
	DESCRIBE.POLARAMULET_STATION = {
		GENERIC = "Возможно... безопасно.",
		OPEN = "Привет? Ты не из медведий?",
	}
	DESCRIBE.POLARBEAR_RUG = "Всё дело в отправке сообщения, хлёрп."
	DESCRIBE.POLARBEARHEAD = "Ха ха!"
	DESCRIBE.POLARBEARHOUSE = {
		BURNT = "Дааааа, одним меньше!",
		GENERIC = "Не хочу видеть, что здесь...",
	}
	DESCRIBE.POLARHEADSTICK = "Ха-- оу. Ещё нет, хлёрп."
	DESCRIBE.POLARICE_PLOW = "Не могу ждать! Серьёзно, хлёрп."
	DESCRIBE.POLARICE_PLOW_ITEM = "Хочу увидеть глубинных рыб!"
	DESCRIBE.POLARWALRUSHEAD = "Ха ха!"
	DESCRIBE.TOWER_POLAR_FLAG = "Хи-хи, маленькая летающая рыбка."
	DESCRIBE.TOWER_POLAR_FLAG_ITEM = "Теперь это эмблема Короля моего народа, хлёрп."
	DESCRIBE.RAINOMETER.POLARSTORM = "Что-то надвигается, но это не дождь..."
	DESCRIBE.WINTEROMETER.POLARSTORM = "Глоп! Что это значит?"
	
--	Items
	
	--	Food
	DESCRIBE.DRYICECREAM = "Бульгрр- язык-- застряяяял!"
	DESCRIBE.FILET_O_FLEA = "Блэех!! Как оно сюда попало?"
	DESCRIBE.HERMITCRABTEA_PETALS_POLAR = "Блэех, хочу другого!"
	DESCRIBE.ICELETTUCE = "Мороженное растёт на земле?!"
	DESCRIBE.ICELETTUCE_OVERSIZED = "Я сделала это! Я это наконец сделала!"
	DESCRIBE.ICEBURRITO = "Хах? Буууульгрррр... в нём бедная рыбка."
	DESCRIBE.KOALEFRIED_TRUNK_SUMMER = "Вздох... Ничего хорошо не может быть."
	DESCRIBE.KOALEFRIED_TRUNK_WINTER = "Вздох... Ничего хорошо не может быть."
	DESCRIBE.POLARCRABLEGS = "Хочу съесть все дольки лимона!"
	DESCRIBE.POLARFLEAEGGSACK = "Нравится засовывать руки внутрь. Хи-хи-хи!"
	
	--	Crafting
	DESCRIBE.BLUEGEM_OVERCHARGED = "Оооооооооооооооо!"
	DESCRIBE.BLUEGEM_SHARDS = "Бульк, могу соединить их воедино?"
	DESCRIBE.EMPEROR_EGG = "Оставили блестяшку позади!"
	DESCRIBE.MOOSE_POLAR_ANTLER = "Я сделала это. Прости."
	DESCRIBE.PETALS_POLAR = "Должна спросить у Викер-леди, это ли не Эдди-блах, хлёрп."
	DESCRIBE.PETALS_POLAR_DRIED = "Сушёные кусочки не очень вкусные."
	DESCRIBE.POLAR_DRYICE = "Почему этот лёд не Эдди-блах?"
	DESCRIBE.POLARBEARFUR = "Я мог бы съесть это в отместку... но не буду."
	DESCRIBE.POLARWARGSTOOTH = "Тоже хочешу что-нибудь подобное, хлёрп!"
	
	--	Equipments
	DESCRIBE.ANTLER_TREE_STICK = "Дерево уронило это, но я сохраню."
	DESCRIBE.ARMORPOLAR = "Превращает врагов народа Мэрмов в рубашки!"
	DESCRIBE.COMPASS_POLAR = "Металлическая рыбка хочет, чтобы я пошла этим путём."
	DESCRIBE.EMPEROR_PENGUINHAT = "Бульк... стоит опустить бедных рыбёшек в воду."
	DESCRIBE.FROSTWALKERAMULET = "Достаточно близко от места купания, хлёрп."
	DESCRIBE.ICICLESTAFF = "Создаёт очень сильные дождевые капли."
	DESCRIBE.POLAR_SPEAR = "Но, Викер-леди же сказала не играть с едой?"
	DESCRIBE.POLARAMULET = "Еееей! Мёртвый народ сделал меня красивой!"
	DESCRIBE.POLARBEARHAT = "Не смешно."
	DESCRIBE.POLARCROWNHAT = "Вурт правит всем снежным морем!!"
	DESCRIBE.POLARFLEA_SACK = "Думаю, они теперь друзья, хлёрп."
	DESCRIBE.POLARICESTAFF = "У меня вся зима в запасе, хлёрп."
	DESCRIBE.POLARMOOSEHAT = "Хи-хи, схватила твою шапку ппфффф!"
	DESCRIBE.WALRUS_BAGPIPE = "ГРОМКО! ОЧЕНЬ ГРОМКО!"
	DESCRIBE.WALRUS_BEARTRAP = "Не уверена, что это за штука."
	DESCRIBE.WINTERS_FISTS = "Снег оружие? Я всё это время ела оружия!"
	
	--	Others
	DESCRIBE.ARCTIC_FOOL_FISH = "Ооооуу, рыбка! У парня клоуна весёлые игры!"
	DESCRIBE.BOAT_ICE_ITEM = "Множество крошечных лодок."
	DESCRIBE.POCKETWATCH_POLAR = {
		GENERIC = "Только немного пожевала! Но Ванди-леди разозлилась...",
		RECHARGING = "Wandy-lady say it \"ree-plin-ishing tem-pooral\"... glurgh. Forget rest.",
	}
	DESCRIBE.POLARGLOBE = {
		GENERIC = "Хаха! Зима застряла внутри!",
		INUSE = "Б-бульк! Не делай этого!",
		REFUEL = "А оу. Зима сбежала?",
	}
	DESCRIBE.OCEANFISH_IN_ICE = "Освобожу тебя, не двигайся!"
	DESCRIBE.POLARICEPACK = "Тада! Сделала друга для прохладной коробки."
	DESCRIBE.POLARTRINKET_1 = "Ещё более странный маленький человечек."
	DESCRIBE.POLARTRINKET_2 = "Ещё более странная маленькая леди."
	DESCRIBE.TRAP_POLARTEETH = "Теперь я лишь наблюдаю. Хи-хи!"
	DESCRIBE.TURF_POLAR_CAVES = "Немножко земли."
	DESCRIBE.TURF_POLAR_DRYICE = "Сделаем наземного ходока!"
	DESCRIBE.TURF_POLAR_GRASS = "Немножко земли."
	DESCRIBE.WALL_POLAR = "Бррр... не хочу жить в ледяном замке!"
	DESCRIBE.WALL_POLAR_ITEM = "Сделает большой ледяной замок, хлёрп."
	DESCRIBE.WINTER_ORNAMENTPOLAR = "Хочу сохранить это!"
	DESCRIBE.WX78MODULE_NAUGHTY = "Хрустящий."
