local ANNOUNCE = STRINGS.CHARACTERS.WANDA
local DESCRIBE = STRINGS.CHARACTERS.WANDA.DESCRIBE

--	Announcements
	
	--	Actions
	ANNOUNCE.BATTLECRY.PENGUIN  = "Ооох хватит уже кряяяякать!"
	ANNOUNCE.BATTLECRY.POLARBEAR = "Твой час настал, зверь!"
	ANNOUNCE.BATTLECRY.WALRUS = "Я здесь лишь за бивнями!"
	
	--	World, Events
	ANNOUNCE.ANNOUNCE_ARCTIC_FOOL_FISH_REMOVED = "Погоди... всё это время эта штука была у меня на спине?"
	ANNOUNCE.ANNOUNCE_POLAR_SLOW = {
		"Ну давай... давааааай...!",
		"Это займёт целую... вечность...",
		"Хррррр...",
	}
	ANNOUNCE.ANNOUNCE_EMPEROR_ESCAPE = "Ха! Летите отсюда, вы все! Нет, подождите..."
	ANNOUNCE.ANNOUNCE_POLARGLOBE = "Ай! Конец близок- или... это?"
	ANNOUNCE.ANNOUNCE_POLARFLEA_LATCHED = "Это не то, как всё должно закончиться..."
	ANNOUNCE.ANNOUNCE_POLARICE_PLOW_BAD = "Что-то мне говорит, что это плохая идея."
	ANNOUNCE.ANNOUNCE_THRONE_GIFT_TAKEN = "Мои благодарности... но теперь, я пожалуй, уйду."
	
	--	Buffs
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_HUNTMOAR = "Я чувствую, что меня тянет в правильном направлении..."
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_HUNTMOAR = "Всё это отслеживание снова занимает слишком много времени... зачем беспокоиться!"
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_POLARWETNESS = "Оу какая досада! Я не была готова к этому."
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_POLARWETNESS = "Давайте не будем терять впустую время здесь."
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_WANDATIMEFREEZE = "Это должно нам сэкономить немного времени!"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_WANDATIMEFREEZE = "Ииии это всё то время, которое я смогла сэкономить."
	
--	Worldgen
	
	--	Plants
	DESCRIBE.ANTLER_TREE = {
		BURNING = "Я могла бы остановиться и немного размяться...",
		BURNT = "Это того стоило, полагаю.",
		CHOPPED = "Это должно было произойти, рано или поздно.",
		GENERIC = "Судя по всему, оно застыло во времени.",
	}
	DESCRIBE.ANTLER_TREE_SAPLING = "Почему растениям нужно так много времени, чтобы вырасти?"
	DESCRIBE.FLOWER_POLAR = "Оно ждало своего выхода весь год... заставляет задуматься."
	DESCRIBE.ICELETTUCE_SEEDS = "Зачем тратить время на их выращивание, если я могу просто съесть их прямо сейчас?"
	
	--	Rocks and stones
	DESCRIBE.POLAR_ICICLE = "Оттягивает неизбежное, насколько это возможно."
	DESCRIBE.POLAR_ICICLE_ROCK = "Я нахожу это почти... поэтическим, в любом случае."
	DESCRIBE.ROCK_POLAR = "Я сомневаюсь, что оно в скорее время оно снова превратится в воду."
	
	--	Misc
	ANNOUNCE.DESCRIBE_IN_POLARSNOW = "Это что-то или типа того..."
	DESCRIBE.CAVE_ENTRANCE_POLAR = "Мне придётся вернуться за этим в другой раз." -- TEMP QUOTE
	DESCRIBE.TOWER_POLAR = {
		GENERIC = "Башня, не часового типа.",
		PENGUIN = "Подожди, пока я не доберусь до тебя своми ластами!",
	}
	DESCRIBE.TUMBLEWEED_POLAR = "У меня нет времени гоняться за снежинками."
	
--	Mobs
	
	DESCRIBE.EMPEROR_PENGUIN = {
		GENERIC = "Действительно ли он богат, если все его активы заморожены?",
		HOSTILE = "Я лучше умру, сражаясь, чем окажусь в тюрьме!",
	}
	DESCRIBE.EMPEROR_PENGUIN_GUARD = "Вы определённо ничего особенного в этом не видите."
	DESCRIBE.FROSTY_SIMPLE = "Frosty"
	DESCRIBE.GIRL_WALRUS = "Фальшивые усы или нет, но она - настоящая проблема."
	DESCRIBE.MOOSE_POLAR = {
		ANTLER_LOST = "Ну. Значит ли это, что ты победил?",
		GENERIC = "Вероятно, они более склонны отстаивать свои позиции, чем другие.",
	}
	DESCRIBE.MOOSE_SPECTER = "Тебе потребовалось много времени, чтобы появиться!"
	DESCRIBE.OCEANFISH_MEDIUM_POLAR1 = "Весь этот блеск, должно быть, стоит немного золота..."
	DESCRIBE.POLARBEAR = {
		DEAD = "По крайней мере, здесь он хорошо сохранится.",
		ENRAGED = "Ты хочешь увидеть, как Я теряю своё хладнокровие?!",
		FOLLOWER = "Эта краска постоянная? Или сколько времени у вас уходит на это каждый день?",
		GENERIC = "Я просто проходила мимо, не обращайте на меня внимания.",
	}
	DESCRIBE.POLARBEARKING = "Я слышала, что он убил Циклопа Оленя до того, как он ещё появился..."
	DESCRIBE.POLARFLEA = {
		GENERIC = "Ай! Убирайся!",
		HELD_INV = "Это больно, но удалять его было бы ещё больнее.",
		HELD_BACKPACK = "Они напряжены, как пружина, и готовы вырваться наружу!",
	}
	DESCRIBE.POLARFLEA_MOTHER = "Природа действительно не должна так масштабировать события!"
	DESCRIBE.POLARFOX = {
		FOLLOWER = "Теперь, когда я тебя поймала... ну. Я не знаю, что именно я буду делать!",
		FRIEND = "Мы ведь встречались в этом временном потоке, не так ли?",
		GENERIC = "Оооооу ты! На сей раз тебе не уйти!",
	}
	DESCRIBE.POLARWARG = "Как долго это чудовище бродило здесь?"
	
--	Buildings
	
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_FRUITY = "А хорошо. Некоторые вещи не могут остаться незамеченными."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_JUGGLE = "Даже в камне, он хочет покрасоваться."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_MAGESTIC = "Он действительн считает себя неподвластным времени..."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_SPIN = "Неужели его непомерное самомнение - это всё, за что его следует помнить?"
	DESCRIBE.POLAR_BRAZIER = {
		GENERIC = "Хорошо, хорошо. Нужно топливо.",
		ON = "Если оно потрескивает, значит, оно работает.",
	}
	DESCRIBE.POLAR_BRAZIER_ITEM = "Оооу! Это никогда не перестанет меня удивлять."
	DESCRIBE.POLAR_THRONE = "Мне не нравится делать то, что я не могу сделать быстрее. И я не могу сидеть быстрее."
	DESCRIBE.POLAR_THRONE_GIFTS = "Я больше не попадусь на этот трюк."
	DESCRIBE.POLARAMULET_STATION = {
		GENERIC = "С чего бы вдруг кому-то захотеть именно здесь жить",
		OPEN = "Как хотите, но мне нравится, когда в моей мастерской меньше... теней.",
	}
	DESCRIBE.POLARBEAR_RUG = "Ах, я забыла почистить свои ботинки... ну что ж."
	DESCRIBE.POLARBEARHEAD = "Кто мог сделать такую штуку...? Оу. Мне кажется, я припоминаю, кто это был."
	DESCRIBE.POLARBEARHOUSE = {
		BURNT = "Обожжённый, но холодный.",
		GENERIC = "Очень банально, как будто я живу в часовой башне. Нет, подождите... Я не ем часы!",
	}
	DESCRIBE.POLARHEADSTICK = "Скоро, это будет иметь смысл."
	DESCRIBE.POLARICE_PLOW = "ну давай... они собираются сбежать!"
	DESCRIBE.POLARICE_PLOW_ITEM = "Почему бы нам не порыбачить где-нибудь в менее холодном месте?"
	DESCRIBE.POLARWALRUSHEAD = "Что за трата хороших бивней..."
	DESCRIBE.TOWER_POLAR_FLAG = "Всё, что он делает, - это пытается улететь на ветру."
	DESCRIBE.TOWER_POLAR_FLAG_ITEM = "Я бы позволила ему переносить пыль или снег, что угодно."
	DESCRIBE.RAINOMETER.POLARSTORM = "Это не может быть хорошо..."
	DESCRIBE.WINTEROMETER.POLARSTORM = "Oh botheration... что это уже значит?"
	
--	Items
	
	--	Food
	DESCRIBE.DRYICECREAM = "И, когда вы добавите вкус? АХ."
	DESCRIBE.FILET_O_FLEA = "Подожди немного... Я не помню, как готовила... это?"
	DESCRIBE.HERMITCRABTEA_PETALS_POLAR = "Ещё раз, что в нём?"
	DESCRIBE.ICELETTUCE = "Должна ли я подождать и выпить это... или?"
	DESCRIBE.ICELETTUCE_OVERSIZED = "Хорошо, что он стал довольно большим, а то я уже начал от него уставать!"
	DESCRIBE.ICEBURRITO = "Я всё ещё пытаюсь во всем разобраться."
	DESCRIBE.KOALEFRIED_TRUNK_SUMMER = "Я просто хочу, чтобы охота не занимала так много времени."
	DESCRIBE.KOALEFRIED_TRUNK_WINTER = "Я просто хочу, чтобы охота не занимала так много времени."
	DESCRIBE.POLARCRABLEGS = "Лучше им не убегать с моей тарелки."
	DESCRIBE.POLARFLEAEGGSACK = "Угх. Что я могу об этом сказать?"
	
	--	Crafting
	DESCRIBE.BLUEGEM_OVERCHARGED = "Почему у меня такое чувство, что он может взорваться в любой момент?"
	DESCRIBE.BLUEGEM_SHARDS = "В любом случае, я предпочитаю работать с более мелкими деталями."
	DESCRIBE.EMPEROR_EGG = "Ничего не выйдет... лучше использовать это как-нибудь по другому."
	DESCRIBE.MOOSE_POLAR_ANTLER = "Надеюсь, это того стоило."
	DESCRIBE.PETALS_POLAR = "Конечно, они снова отрастут?"
	DESCRIBE.PETALS_POLAR_DRIED = "Пахнет приятно."
	DESCRIBE.POLAR_DRYICE = "Итак, для чего я могу это использовать?"
	DESCRIBE.POLARBEARFUR = "Это всё равно, что держаться за тёплый снег."
	DESCRIBE.POLARWARGSTOOTH = "Я не смогла бы сделать кусок кремня острее этого, даже если бы попыталась!"
	
	--	Equipments
	DESCRIBE.ANTLER_TREE_STICK = "Оооу, Как раз то, что мне было нужно!"
	DESCRIBE.ARMORPOLAR = "Наконец-то хоть какая-то сносная броня."
	DESCRIBE.COMPASS_POLAR = "Представь, читать часы подобным этим... о, какой ужас."
	DESCRIBE.EMPEROR_PENGUINHAT = "Я не займу его место."
	DESCRIBE.FROSTWALKERAMULET = "Хорошо! С меня более чем достаточно этих проклятых рек."
	DESCRIBE.ICICLESTAFF = "Избегайте огня по своим... и льда по своим. Все стихии желают нам смерти!"
	DESCRIBE.POLAR_SPEAR = "Используй это по максимуму, пока оно свежее."
	DESCRIBE.POLARAMULET = "Я уже прошла через этот этап. Или я?"
	DESCRIBE.POLARBEARHAT = "Тревожащий, но в какой-то степени полезный."
	DESCRIBE.POLARCROWNHAT = "Я начинаю думать, что оно того стоило."
	DESCRIBE.POLARFLEA_SACK = "Что ж, пока они запрыгивают внутрь, никакой суеты..."
	DESCRIBE.POLARICESTAFF = "Все, и я имею ввиду, что ВСЕ заслуживают передышки."
	DESCRIBE.POLARMOOSEHAT = "Я просто надеюсь, что меня не примут за ходячий стейк..."
	DESCRIBE.WALRUS_BAGPIPE = "Подожди ка. Мы уже исключили ту возможность, что мы находимся в Шотландии?"
	DESCRIBE.WALRUS_BEARTRAP = "Это не только причиняет боль, но и удерживает на месте!"
	DESCRIBE.WINTERS_FISTS = "Мне бы никогда не пришлось их снимать, если они не были такими тяжёлыми."
	
	--	Others
	DESCRIBE.ARCTIC_FOOL_FISH = "У меня нет времени, чтобы играть в эти игры! (Или есть...?)"
	DESCRIBE.BOAT_ICE_ITEM = "Для небольших прыжков над этой надоедливой водой, окружавшей меня со всех сторон!"
	DESCRIBE.POCKETWATCH_POLAR = {
		GENERIC = "Если у меня не может быть больше времени, я должна, по крайней мере, сохранить настоящее.",
		RECHARGING = "Оно на перезарядке. Или иначе, на прогреве.",
	}
	DESCRIBE.POLARGLOBE = {
		GENERIC = "У меня нет времени на это пялиться.",
		INUSE = "На самом деле, у меня будет немного времени, чтобы разобраться в этом.",
		REFUEL = "Может быть, где-то произошла утечка?",
	}
	DESCRIBE.OCEANFISH_IN_ICE = "Какой печальный путь... но, может быть, я смогу изменить твою судьбу."
	DESCRIBE.POLARICEPACK = "В следующий раз я возьму тайм-аут."
	DESCRIBE.POLARTRINKET_1 = "Оооу, Я действительно люблю праздничные безделушки."
	DESCRIBE.POLARTRINKET_2 = "Оооу, Я действительно люблю праздничные безделушки."
	DESCRIBE.TRAP_POLARTEETH = "Я не знаю ничего хуже, чем застрять на месте."
	DESCRIBE.TURF_POLAR_CAVES = "Почему я трачу время, уставившись на землю?"
	DESCRIBE.TURF_POLAR_DRYICE = "Дорога, ведущая куда именно?"
	DESCRIBE.TURF_POLAR_GRASS = "Почему я трачу время, уставившись на землю?"
	DESCRIBE.WALL_POLAR = "Я бы не решилась бить его наверняка."
	DESCRIBE.WALL_POLAR_ITEM = "Это не должно растаять в ближайшее время."
	DESCRIBE.WINTER_ORNAMENTPOLAR = "Такой жизненный, что я могу поклясться, он растает... очень... скоро..."
	DESCRIBE.WX78MODULE_NAUGHTY = "Аха! Мне интересно, когда они начали создавать это."
