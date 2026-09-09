local ANNOUNCE = STRINGS.CHARACTERS.WINONA
local DESCRIBE = STRINGS.CHARACTERS.WINONA.DESCRIBE

--	Announcements
	
	--	Actions
	ANNOUNCE.BATTLECRY.PENGUIN  = "Вещи становятся на перистыми!"
	ANNOUNCE.BATTLECRY.POLARBEAR = "Подойди и пусти в ход лапы!"
	ANNOUNCE.BATTLECRY.WALRUS = "Охотник становится добычей, хей?"
	
	--	World, Events
	ANNOUNCE.ANNOUNCE_ARCTIC_FOOL_FISH_REMOVED = "Хах! Должно быть, я выглядела как настоящая дура, разгуливая с этим!"
	ANNOUNCE.ANNOUNCE_POLAR_SLOW = {
		"Не могу остановится... не остановлюсь... ладно, остановлюсь.",
		"Я не замедляюсь... лишь прихожу в себя...",
		"Фуух... мне бы не помешала передышка!",
	}
	ANNOUNCE.ANNOUNCE_EMPEROR_ESCAPE = "Так много пуха и так мало костяка!"
	ANNOUNCE.ANNOUNCE_POLARGLOBE = "Пфю! Всё окончено. И идёт... снег?"
	ANNOUNCE.ANNOUNCE_POLARFLEA_LATCHED = "Уууу, Отсюда, сверху, открывается не самый лучший вид..."
	ANNOUNCE.ANNOUNCE_POLARICE_PLOW_BAD = "Неа. Плохая идея."
	ANNOUNCE.ANNOUNCE_THRONE_GIFT_TAKEN = "Ну хотя бы боссы иногда оставляют подарки."
	
	--	Buffs
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_HUNTMOAR = "Хах.  Я чувствую этот запах, как никогда раньше."
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_HUNTMOAR = "Этот запах ушёл. Наконец то."
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_POLARWETNESS = "Йииш! Я недостаточно хорошо одета!"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_POLARWETNESS = "А теперь пропустим через мясорубку..."
	
--	Worldgen
	
	--	Plants
	DESCRIBE.ANTLER_TREE = {
		BURNING = "Гори, древесная детка, гори!",
		BURNT = "Рассыпает пепел по снегу.",
		CHOPPED = "Это была скорее корка, чем... ну ты понимаешь.",
		GENERIC = "Выглядит остро, но у меня есть более острые.",
	}
	DESCRIBE.ANTLER_TREE_SAPLING = "Оно будет быстрее расти под солнцем?"
	DESCRIBE.FLOWER_POLAR = "Должны быть, во круге становится теплей."
	DESCRIBE.ICELETTUCE_SEEDS = "Я беспонятия во что они вырастят."
	
	--	Rocks and stones
	DESCRIBE.POLAR_ICICLE = "Верно. Моя каска!"
	DESCRIBE.POLAR_ICICLE_ROCK = "Очень надеюсь, что, занимаюсь всем этим, я получу свои сверхурочные."
	DESCRIBE.ROCK_POLAR = "Не возражаешь, если я это сделаю."
	
	--	Misc
	ANNOUNCE.DESCRIBE_IN_POLARSNOW = "Что там под ним, можно только догадываться."
	DESCRIBE.CAVE_ENTRANCE_POLAR = "Вот чёрт, Я не могу пока погрузится." -- TEMP QUOTE
	DESCRIBE.TOWER_POLAR = {
		GENERIC = "Высокие башни и скользкие полы так себе сочетаются друг с другом.",
		PENGUIN = "Продолжай жонглировать, пока я разбираюсь с твоими головорезами.",
	}
	DESCRIBE.TUMBLEWEED_POLAR = "Говорят, что каждый из них уникален. Снаружи и внутри."
	
--	Mobs
	
	DESCRIBE.EMPEROR_PENGUIN = {
		GENERIC = "Я вижу, ты просто пользуешься своим богатством.",
		HOSTILE = "Йоу, у него есть приёмчики!",
	}
	DESCRIBE.EMPEROR_PENGUIN_GUARD = "Оно клюёт, оно колет. Но хуже всего то, что его перо щекочет!"
	DESCRIBE.FROSTY_SIMPLE = "Frosty"
	DESCRIBE.GIRL_WALRUS = "Она смотрит на меня так, будто я сегодняшний ужин."
	DESCRIBE.MOOSE_POLAR = {
		ANTLER_LOST = "По уши вляпался в неприятности, ха?",
		GENERIC = "Выглядит крутым. Пришло время выяснить, так ли это на самом деле.",
	}
	DESCRIBE.MOOSE_SPECTER = "Я как бы хочу просто понаблюдать за этим сейчас."
	DESCRIBE.OCEANFISH_MEDIUM_POLAR1 = "На мой вкус, слишком броский, но он всё ещё есть в меню."
	DESCRIBE.POLARBEAR = {
		DEAD = "Готов к отсчёту!",
		ENRAGED = "Йииш, у нас медвежьи проблемы!",
		FOLLOWER = "Ну, ух, какая твоя любимая рыба?",
		GENERIC = "Не смотри на меня так холодно.",
	}
	DESCRIBE.POLARBEARKING = "Говорят, он сам вырыл всю эту ледяную пещеру. Но я на это не куплюсь."
	DESCRIBE.POLARFLEA = {
		GENERIC = "Я знаю, что лучше не приближаться к этим вещам.",
		HELD_INV = "Йиииш! Пошли прочь!",
		HELD_BACKPACK = "Я тут главная. Ты кусаешься, когда я так говорю.",
	}
	DESCRIBE.POLARFLEA_MOTHER = "Что за уродливый кусок работы!"
	DESCRIBE.POLARFOX = {
		FOLLOWER = "Ты приносишь мне кроликов, а я готовлю тебе ужин, всё просто.",
		FRIEND = "Неужели я забыла свою часть нашего маленького сотрудничества?",
		GENERIC = "Иди сюда, ты, маленький негодяй!",
	}
	DESCRIBE.POLARWARG = "У меня нет никаких сомнений насчёт его мятного запаха изо рта."
	
--	Buildings
	
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_FRUITY = "Кажется, кто-то забыл свой пояс в такой важный день."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_JUGGLE = "Этот парень бы полюбил себя в моём освещении."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_MAGESTIC = "Оу. Прости. Не слишком громко я закатывала глаза?"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_SPIN = "Я надеюсь, что она надёжно закреплена."
	DESCRIBE.POLAR_BRAZIER = {
		GENERIC = "Зажжём огонь!",
		ON = "Этот дизайн выглядит знакомо... должно быть моё воображение.",
	}
	DESCRIBE.POLAR_BRAZIER_ITEM = "Удобный источник света."
	DESCRIBE.POLAR_THRONE = "Демонстрация силы и лени."
	DESCRIBE.POLAR_THRONE_GIFTS = "Маленькие помощники поддерживали их в чистоте."
	DESCRIBE.POLARAMULET_STATION = {
		GENERIC = "На улице мне лучше, чем в этой убогой лачуге.",
		OPEN = "Приятель, ты вообще слышал о нормальном освещении? Здесь жутковато.",
	}
	DESCRIBE.POLARBEAR_RUG = "У нас там какой-то большой коврик для двери."
	DESCRIBE.POLARBEARHEAD = "Говоря о чём-то жутком. Йиииш!"
	DESCRIBE.POLARBEARHOUSE = {
		BURNT = "Хм. Вероятно, ещё один лесной пожар.",
		GENERIC = "В этом есть что-то подозрительное.",
	}
	DESCRIBE.POLARHEADSTICK = "Я видела, кто-то планирует отрубить голову."
	DESCRIBE.POLARICE_PLOW = "Мне следует отойти немного в сторону."
	DESCRIBE.POLARICE_PLOW_ITEM = "Хватит прятаться от меня, рыбки."
	DESCRIBE.POLARWALRUSHEAD = "Это решит нашу проблему с моржами? Или нам нужно больше?"
	DESCRIBE.TOWER_POLAR_FLAG = "Посмотри на это!"
	DESCRIBE.TOWER_POLAR_FLAG_ITEM = "От тебя не так уж много проку, маленький флаг."
	DESCRIBE.RAINOMETER.POLARSTORM = "Боже, что с этим не так?"
	DESCRIBE.WINTEROMETER.POLARSTORM = "Не ТАК УЖ и холодно, не так ли?"
	
--	Items
	
	--	Food
	DESCRIBE.DRYICECREAM = "Снег, конечно, ничего не значит после того, как ты съешь эту гадость."
	DESCRIBE.FILET_O_FLEA = "Надо было дважды заглянуть в кастрюлю."
	DESCRIBE.HERMITCRABTEA_PETALS_POLAR = "Я с этим завязала!"
	DESCRIBE.ICELETTUCE = "В идеальном состоянии? Это практически криоконсервированный продукт!"
	DESCRIBE.ICELETTUCE_OVERSIZED = "Надеюсь, вы все любите салад!"
	DESCRIBE.ICEBURRITO = "Как раз то, что мне было нужно, чтобы завершить этот день."
	DESCRIBE.KOALEFRIED_TRUNK_SUMMER = "И эти моржи делают их всего лишь двумя ластами?!"
	DESCRIBE.KOALEFRIED_TRUNK_WINTER = "И эти моржи делают их всего лишь двумя ластами?!"
	DESCRIBE.POLARCRABLEGS = "Меня устраивает лишь небольшая толика роскоши."
	DESCRIBE.POLARFLEAEGGSACK = "Эти маленькие штучки скользят сильнее, чем мокрое мыло."
	
	--	Crafting
	DESCRIBE.BLUEGEM_OVERCHARGED = "Я не возьму это в руки без перчаток."
	DESCRIBE.BLUEGEM_SHARDS = "Почти уверен, что холод сам смог бы приклеить их обратно."
	DESCRIBE.EMPEROR_EGG = "(Тук тук) Первоклассный материал прямо здесь."
	DESCRIBE.MOOSE_POLAR_ANTLER = "Ты хорошо сражался, парень."
	DESCRIBE.PETALS_POLAR = "Ничем не пахнет..."
	DESCRIBE.PETALS_POLAR_DRIED = "Эти хороши и сухи."
	DESCRIBE.POLAR_DRYICE = "Спустить его по линии ледяных эмблем."
	DESCRIBE.POLARBEARFUR = "Здесь тепло, и, что более важно, это моё."
	DESCRIBE.POLARWARGSTOOTH = "Я не думаю, что он использовал их для того, чтобы питаться растениями."
	
	--	Equipments
	DESCRIBE.ANTLER_TREE_STICK = "Это может оказаться полезным."
	DESCRIBE.ARMORPOLAR = "Это самое прочное, что может быть у шкуры."
	DESCRIBE.COMPASS_POLAR = "сшииии, как я должна понять то, что ты так дрожишь?!"
	DESCRIBE.EMPEROR_PENGUINHAT = "Я выгляжу круто. Буквально."
	DESCRIBE.FROSTWALKERAMULET = "Это не даст мне сорваться с работы. Ха!"
	DESCRIBE.ICICLESTAFF = "Я бы не устала упускать из виду ветровые условия, связанные с этой штукой."
	DESCRIBE.POLAR_SPEAR = "Пфф. Хорошо. Предполагаю, что ты живёшь в морозильнике  ..."
	DESCRIBE.POLARAMULET = "Оно говорит, что все уникальны или типа того."
	DESCRIBE.POLARBEARHAT = "Думаю, две головы лучше, чем одна."
	DESCRIBE.POLARCROWNHAT = "Ты не можешь вспотеть, если вообще не можешь вспотеть."
	DESCRIBE.POLARFLEA_SACK = "Если ты будешь приставать ко мне, то ты свяжешься с жуками на моей спине."
	DESCRIBE.POLARICESTAFF = "Ты должен замереть, чтобы угодить мне."
	DESCRIBE.POLARMOOSEHAT = "Хей, Вуди. У тебя всё ещё есть твоя другая сторона?"
	DESCRIBE.WALRUS_BAGPIPE = "У меня всё ещё звенит в ушах от этой штуки."
	DESCRIBE.WALRUS_BEARTRAP = "Это хорошенько тебя зажмёт."
	DESCRIBE.WINTERS_FISTS = "Инструмент для лепки снежков... которые бьются, как шлакоблоки."
	
	--	Others
	DESCRIBE.ARCTIC_FOOL_FISH = "Насмешливый удар наносится тогда, когда мы меньше всего этого ожидаем."
	DESCRIBE.BOAT_ICE_ITEM = "Я уделяю этому в лучшем случае тридцать секунд."
	DESCRIBE.POCKETWATCH_POLAR = {
		GENERIC = "Я бы не была против взглянуть на его внутреннюю работу.",
		RECHARGING = "Не похоже, что он сейчас находится в рабочем состоянии.",
	}
	DESCRIBE.POLARGLOBE = {
		GENERIC = "Ха! Чарли любит эти мелкие штучки.",
		INUSE = "Оу ты...",
		REFUEL = "Не уверен, как это просочилось. Но так будет лучше.",
	}
	DESCRIBE.OCEANFISH_IN_ICE = "Хах. Бесплатная рыба!"
	DESCRIBE.POLARICEPACK = "Этот маленький кусочек льда проделал долгий путь."
	DESCRIBE.POLARTRINKET_1 = "У тебя красивый шарф. Конечно, мне бы тоже хотелось иметь такой."
	DESCRIBE.POLARTRINKET_2 = "Э, похоже, у них произошла путаница с двумя производственными линиями."
	DESCRIBE.TRAP_POLARTEETH = "Жестоко, но умно."
	DESCRIBE.TURF_POLAR_CAVES = "Это просто кусок земли."
	DESCRIBE.TURF_POLAR_DRYICE = "Это просто кусок земли."
	DESCRIBE.TURF_POLAR_GRASS = "Это просто кусок травяной земли."
	DESCRIBE.WALL_POLAR = "Да, это весьма по морозному хорошо."
	DESCRIBE.WALL_POLAR_ITEM = "Время сборки."
	DESCRIBE.WINTER_ORNAMENTPOLAR = "Ничто так не предвещает зиму, как это."
	DESCRIBE.WX78MODULE_NAUGHTY = "WX, ты должен прекратить разбрасывать всё это барахло по округе!"
