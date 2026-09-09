local ANNOUNCE = STRINGS.CHARACTERS.WORMWOOD
local DESCRIBE = STRINGS.CHARACTERS.WORMWOOD.DESCRIBE

--	Announcements
	
	--	Actions
	ANNOUNCE.BATTLECRY.PENGUIN  = "Атакуем!"
	ANNOUNCE.BATTLECRY.POLARBEAR = "Атакуем!"
	ANNOUNCE.BATTLECRY.WALRUS = "Атакуем!"
	
	--	World, Events
	ANNOUNCE.ANNOUNCE_ARCTIC_FOOL_FISH_REMOVED = "Ооу. Привет глуб глуб"
	ANNOUNCE.ANNOUNCE_POLAR_SLOW = {
		"Не люблю это место...",
		"Холод! Холод!",
		"Не люблю холод!",
	}
	ANNOUNCE.ANNOUNCE_EMPEROR_ESCAPE = "Большая птица, пока, пока!"
	ANNOUNCE.ANNOUNCE_POLARGLOBE = "Уф ууф уф!"
	ANNOUNCE.ANNOUNCE_POLARFLEA_LATCHED = "(Сглотнул)"
	ANNOUNCE.ANNOUNCE_POLARICE_PLOW_BAD = "Не здесь?"
	ANNOUNCE.ANNOUNCE_THRONE_GIFT_TAKEN = "Ура!"
	
	--	Buffs
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_HUNTMOAR = "Ммм, тут пахнет хорошо"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_HUNTMOAR = "Утерял запах"
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_POLARWETNESS = "Неет! Холод!"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_POLARWETNESS = "Ааах. Веснь снег сошёл"
	
--	Worldgen
	
	--	Plants
	DESCRIBE.ANTLER_TREE = {
		BURNING = "Огонь! Нееееет!",
		BURNT = "Снега недостаточно?",
		CHOPPED = "(вздох) Зачем драться?",
		GENERIC = "Для чего растут рога?",
	}
	DESCRIBE.ANTLER_TREE_SAPLING = "Слишком холодно?"
	DESCRIBE.FLOWER_POLAR = "Снова проспал весь год?"
	DESCRIBE.ICELETTUCE_SEEDS = "Замёрзшие детишки"
	
	--	Rocks and stones
	DESCRIBE.POLAR_ICICLE = "Растёт?"
	DESCRIBE.POLAR_ICICLE_ROCK = "Большое падение"
	DESCRIBE.ROCK_POLAR = "Холодный блеск застрял в льде? Как?"
	
	--	Misc
	ANNOUNCE.DESCRIBE_IN_POLARSNOW = "Mmm?"
	DESCRIBE.CAVE_ENTRANCE_POLAR = "Заблокирован? Возможно позже" -- TEMP QUOTE
	DESCRIBE.TOWER_POLAR = {
		GENERIC = "Для крутых парней Шлёп-Шлёп",
		PENGUIN = "Ауви! Стой!",
	}
	DESCRIBE.TUMBLEWEED_POLAR = "Замедлись!"
	
--	Mobs
	
	DESCRIBE.EMPEROR_PENGUIN = {
		GENERIC = "У него приятная вонючая штука на голове",
		HOSTILE = "Зол? Да",
	}
	DESCRIBE.EMPEROR_PENGUIN_GUARD = "Схватил за нос?"
	DESCRIBE.FROSTY_SIMPLE = "Frosty"
	DESCRIBE.GIRL_WALRUS = "Ветки издают странный шум"
	DESCRIBE.MOOSE_POLAR = {
		ANTLER_LOST = "Урок усвоен. Не стоит ссорится с другом",
		GENERIC = "Взял большие ветки!",
	}
	DESCRIBE.MOOSE_SPECTER = "Веткам холодно?"
	DESCRIBE.OCEANFISH_MEDIUM_POLAR1 = "Блестящая глуб глуб!"
	DESCRIBE.POLARBEAR = {
		DEAD = "О оу...",
		ENRAGED = "Нужно охлаждение!",
		FOLLOWER = "Холодный пушистый хороший друг",
		GENERIC = "Оу. Холодный пушистый!",
	}
	DESCRIBE.POLARBEARKING = "Друзья говорят, что весь снег - это большие пушистые какашки"
	DESCRIBE.POLARFLEA = {
		GENERIC = "Больше так не делай!",
		HELD_INV = "Будет очень много ауч",
		HELD_BACKPACK = "Завёл нового друга",
	}
	DESCRIBE.POLARFLEA_MOTHER = "О оу. Проснулась взбешенная мамочка Бжуков"
	DESCRIBE.POLARFOX = {
		FOLLOWER = "Сшшш... всё хорошо",
		FRIEND = "Привет друг! Помнишь?",
		GENERIC = "Оооув! Иди, иди",
	}
	DESCRIBE.POLARWARG = "Большая холодная вуф-вуф"
	
--	Buildings
	
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_FRUITY = "Почему снежная штуковина маленькая?"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_JUGGLE = "Хлоп, хлоп, хлоп"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_MAGESTIC = "Что Шлёп-Шлёп делает?"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_SPIN = "Устал от танцев"
	DESCRIBE.POLAR_BRAZIER = {
		GENERIC = "Холод?",
		ON = "Горячо!",
	}
	DESCRIBE.POLAR_BRAZIER_ITEM = "Пожар на потом"
	DESCRIBE.POLAR_THRONE = "Не могу добраться до сидушки"
	DESCRIBE.POLAR_THRONE_GIFTS = "Для меня?"
	DESCRIBE.POLARAMULET_STATION = {
		GENERIC = "Кто-нибудь дома?",
		OPEN = "Привет...! Привет?",
	}
	DESCRIBE.POLARBEAR_RUG = "Создаёт крепкий сон"
	DESCRIBE.POLARBEARHEAD = "Почему Большой Пушистик такой тихий?"
	DESCRIBE.POLARBEARHOUSE = {
		BURNT = "Пахнет рыбой",
		GENERIC = "Дом Глуб Глуб",
	}
	DESCRIBE.POLARHEADSTICK = "Хмм. Скучаю по другу"
	DESCRIBE.POLARICE_PLOW = "Скоро вода!"
	DESCRIBE.POLARICE_PLOW_ITEM = "Дыра дыра в земле?"
	DESCRIBE.POLARWALRUSHEAD = "Растёт и на ветках?"
	DESCRIBE.TOWER_POLAR_FLAG = "Оуу. Глуб Глуб плавает в воздухе?"
	DESCRIBE.TOWER_POLAR_FLAG_ITEM = "Классно!"
	DESCRIBE.RAINOMETER.POLARSTORM = "Страшно"
	DESCRIBE.WINTEROMETER.POLARSTORM = "Страшно?"
	
--	Items
	
	--	Food
	DESCRIBE.DRYICECREAM = "(лизнул) Бррр! (лизнул) Бррр-"
	DESCRIBE.FILET_O_FLEA = "Нашёл, куда делся Бжука"
	DESCRIBE.HERMITCRABTEA_PETALS_POLAR = "Ям!"
	DESCRIBE.ICELETTUCE = "Друг хочет большого тёплого объятия?"
	DESCRIBE.ICELETTUCE_OVERSIZED = "Фью!"
	DESCRIBE.ICEBURRITO = "Глуб Глуб спит калачиком"
	DESCRIBE.KOALEFRIED_TRUNK_SUMMER = "Делает живот большим"
	DESCRIBE.KOALEFRIED_TRUNK_WINTER = "Делает живот большим"
	DESCRIBE.POLARCRABLEGS = "Не позволю ножкам сбежать"
	DESCRIBE.POLARFLEAEGGSACK = "Сироты"
	
	--	Crafting
	DESCRIBE.BLUEGEM_OVERCHARGED = "Делает меня холодным"
	DESCRIBE.BLUEGEM_SHARDS = "Делает немного холода"
	DESCRIBE.EMPEROR_EGG = "Любит или боится огня?"
	DESCRIBE.MOOSE_POLAR_ANTLER = "Сломал это"
	DESCRIBE.PETALS_POLAR = "Нет запаха?"
	DESCRIBE.PETALS_POLAR_DRIED = "Сухие вещи"
	DESCRIBE.POLAR_DRYICE = "Для свежей закуски"
	DESCRIBE.POLARBEARFUR = "Тепло"
	DESCRIBE.POLARWARGSTOOTH = "Холодно! Брр!"
	
	--	Equipments
	DESCRIBE.ANTLER_TREE_STICK = "Что-то уронил?"
	DESCRIBE.ARMORPOLAR = "Хорошая пушистая одежда"
	DESCRIBE.COMPASS_POLAR = "Следить за указательной рыбкой?"
	DESCRIBE.EMPEROR_PENGUINHAT = "Вонючая головная штука моя?"
	DESCRIBE.FROSTWALKERAMULET = "ни воды, ни камней?"
	DESCRIBE.ICICLESTAFF = "Создаёт Аучи-аучь-аучь дождь"
	DESCRIBE.POLAR_SPEAR = "Шипастый"
	DESCRIBE.POLARAMULET = "Шейная аучи штука"
	DESCRIBE.POLARBEARHAT = "Не хочу быть съеденным!"
	DESCRIBE.POLARCROWNHAT = "Головная штука хочет больше тепла?"
	DESCRIBE.POLARFLEA_SACK = "Тепло! Это хорошо"
	DESCRIBE.POLARICESTAFF = "Всё становится бррр"
	DESCRIBE.POLARMOOSEHAT = "Друг топор?"
	DESCRIBE.WALRUS_BAGPIPE = "TOOOOOOOOOOOOT!"
	DESCRIBE.WALRUS_BEARTRAP = "О нет, зубчатые ветви потеряли штучку!"
	DESCRIBE.WINTERS_FISTS = "Ручная штука для игры в мяч"
	
	--	Others
	DESCRIBE.ARCTIC_FOOL_FISH = "Повесить на спину"
	DESCRIBE.BOAT_ICE_ITEM = "Наконец. Плавучие, не состоящие из друзей"
	DESCRIBE.POCKETWATCH_POLAR = {
		GENERIC = "Тик так тик так",
		RECHARGING = "так тик так тик",
	}
	DESCRIBE.POLARGLOBE = {
		GENERIC = "Хмм... Кто-то прикоснулся?",
		INUSE = "Нет нет нет. Возвращайтесь внутрь!",
		REFUEL = "Наконец спит?",
	}
	DESCRIBE.OCEANFISH_IN_ICE = "Нужно немного огня"
	DESCRIBE.POLARICEPACK = "Позволяет сохранить больше вещей для желудка?"
	DESCRIBE.POLARTRINKET_1 = "Приятный маленький человек"
	DESCRIBE.POLARTRINKET_2 = "Девушке в остроконечной шляпе нужна помощь?"
	DESCRIBE.TRAP_POLARTEETH = "Охлаждающие шипы"
	DESCRIBE.TURF_POLAR_CAVES = "Лёд"
	DESCRIBE.TURF_POLAR_DRYICE = "Лёд"
	DESCRIBE.TURF_POLAR_GRASS = "Хорошо!"
	DESCRIBE.WALL_POLAR = "Скользкий"
	DESCRIBE.WALL_POLAR_ITEM = "Хлебать"
	DESCRIBE.WINTER_ORNAMENTPOLAR = "Не хочу делать друга холодным... оу. Не холодный"
	DESCRIBE.WX78MODULE_NAUGHTY = "Биип буупс"
