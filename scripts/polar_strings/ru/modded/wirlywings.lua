if not STRINGS.CHARACTERS.WIRLYWINGS then
	return
end

local ANNOUNCE = STRINGS.CHARACTERS.WIRLYWINGS
local DESCRIBE = STRINGS.CHARACTERS.WIRLYWINGS.DESCRIBE

--	Announcements
	
	--	Actions
	ANNOUNCE.BATTLECRY.PENGUIN  = "Вааак!"
	ANNOUNCE.BATTLECRY.POLARBEAR = "Какие большие у тебя зубы!"
	ANNOUNCE.BATTLECRY.WALRUS = "УИИК! Пошёл прочь! Я не еда!"
	
	--	World, Events
	ANNOUNCE.ANNOUNCE_ARCTIC_FOOL_FISH_REMOVED = "Оу, хорошо... это объясняет немного деталей."
	ANNOUNCE.ANNOUNCE_POLAR_SLOW = {
		"...Мы уже приехали...?",
		"Можем остановиться, чтобы поделать снежных ангелов?",
		"Мммммм-мм...!",
	}
	ANNOUNCE.ANNOUNCE_EMPEROR_ESCAPE = "Пффю... и не ковыляй сюда!"
	ANNOUNCE.ANNOUNCE_POLARGLOBE = "Уиик! Что произошло?"
	ANNOUNCE.ANNOUNCE_POLARFLEA_LATCHED = "УИИК! ОНА ПОЙМАЛА МЕНЯ!"
	ANNOUNCE.ANNOUNCE_POLARICE_PLOW_BAD = "Разве здесь не должно быть опасно?"
	ANNOUNCE.ANNOUNCE_THRONE_GIFT_TAKEN = "Большое спасибо, кто бы ты не был!"
	
	--	Buffs
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_HUNTMOAR = "Хочешь поиграть с лесными зверями в прятки?"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_HUNTMOAR = "Где они...? Оу ну, ты победил!"
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_POLARWETNESS = "Ииип! Немного снега попало мне в капюшон!"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_POLARWETNESS = "Брр... Мне просто нужно немного больше одежды."
	
--	Worldgen
	
	--	Plants
	DESCRIBE.ANTLER_TREE = {
		BURNING = "Эй, хотя бы мы можем согреться!",
		BURNT = "Когда-то он был белым, как сам снег.",
		CHOPPED = "Теперь это точно не то.",
		GENERIC = "Это дерево выглядит так, словно оно никогда не было живым.",
	}
	DESCRIBE.ANTLER_TREE_SAPLING = "Воу! Мёртвое дерево! Оно снова растёт!"
	DESCRIBE.FLOWER_POLAR = "Я понятия не имела, что здесь могут расти цветы!"
	DESCRIBE.ICELETTUCE_SEEDS = "Семя латука."
	
	--	Rocks and stones
	DESCRIBE.POLAR_ICICLE = "УИИК...! Это меня напугало!"
	DESCRIBE.POLAR_ICICLE_ROCK = "Это было там, наверху, некоторое время."
	DESCRIBE.ROCK_POLAR = "Либо это зеркало, либо моя сестра-близнец застряла внутри. Хехе!"
	
	--	Misc
	ANNOUNCE.DESCRIBE_IN_POLARSNOW = "Это снег. Или это? Ммм."
	DESCRIBE.CAVE_ENTRANCE_POLAR = "Нет спасибо, в любом случае." -- TEMP QUOTE
	DESCRIBE.TOWER_POLAR = {
		GENERIC = "Воу. Ваау даже.",
		PENGUIN = "Как нечестно! Возвращайся вниз!",
	}
	DESCRIBE.TUMBLEWEED_POLAR = "Да ладно! Кто-нибудь! Поймайте это!"
	
--	Mobs
	
	DESCRIBE.EMPEROR_PENGUIN = {
		GENERIC = "Привет. Ммм. Ваа?",
		HOSTILE = "Не бросай меня в темницу!",
	}
	DESCRIBE.EMPEROR_PENGUIN_GUARD = "Рада встрече, птица в шлеме."
	DESCRIBE.FROSTY_SIMPLE = "Frosty"
	DESCRIBE.GIRL_WALRUS = "Кто будет следующим? Дедушка? Золотая рыбка?"
	DESCRIBE.MOOSE_POLAR = {
		ANTLER_LOST = "Урок усвоен, мм?",
		GENERIC = "Они больше, чем я думала...",
	}
	DESCRIBE.MOOSE_SPECTER = "Воу. Сказочный лось!"
	DESCRIBE.OCEANFISH_MEDIUM_POLAR1 = "Что за милая рыбка! Мы можем положить её в аквариум?"
	DESCRIBE.POLARBEAR = {
		DEAD = "Ну давай, просыпайся...",
		ENRAGED = "Уиик! Осторожно!",
		FOLLOWER = "Мы пойдём рыбачить, если ты пообещаешь не кусать меня. Хорошо?",
		GENERIC = "Они выглядят необычайно дружелюбными.",
	}
	DESCRIBE.POLARBEARKING = "Отсутствие врагов не является оправданием для отсутствия хороших друзей."
	DESCRIBE.POLARFLEA = {
		GENERIC = "Форма друга. Но не друг.",
		HELD_INV = "Уиик! Я не поделюсь своей кровью!",
		HELD_BACKPACK = "Здесь лучше, чем у меня под капюшоном.",
	}
	DESCRIBE.POLARFLEA_MOTHER = "Лучше закрыть все свои карманы... на всякий случай."
	DESCRIBE.POLARFOX = {
		FOLLOWER = "Хехе! Что ты найдешь следующим?",
		FRIEND = "Мм! Приветики! Я скучал по тебе!",
		GENERIC = "Привет- нет! не убегай, мы можем стать друзьями!",
	}
	DESCRIBE.POLARWARG = "Это одна большая ледяная бомба!"
	
--	Buildings
	
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_FRUITY = "Мм. Неважно."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_JUGGLE = "Мне стоит попрактиковаться в жонглировании, когда Вэс будет рядом."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_MAGESTIC = "Я тоже хочу позировать для ледяной статуи!"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_SPIN = "Могу ли я получить в следующий раз статую себя?"
	DESCRIBE.POLAR_BRAZIER = {
		GENERIC = "Это что, подгоревший мех в миске?",
		ON = "Как раз то тепло, в котором я нуждалась.",
	}
	DESCRIBE.POLAR_BRAZIER_ITEM = "Пууф! Теперь я могу его понести!"
	DESCRIBE.POLAR_THRONE = "Я здесь не сижу!"
	DESCRIBE.POLAR_THRONE_GIFTS = "Так много подарков! Здесь есть один для меня, мм?"
	DESCRIBE.POLARAMULET_STATION = {
		GENERIC = "Здесь, должно быть, становится одиноко.",
		OPEN = "Что же ждёт нас сегодня, Мистер-y?",
	}
	DESCRIBE.POLARBEAR_RUG = "Другим медведям, вероятно, это очень не понравится..."
	DESCRIBE.POLARBEARHEAD = "Как грубо!"
	DESCRIBE.POLARBEARHOUSE = {
		BURNT = "Этот дом знавал лучшие времена.",
		GENERIC = "Эта дверь знавала лучшие времена.",
	}
	DESCRIBE.POLARHEADSTICK = "Почему бы вместо этого не установить знак приветствия?"
	DESCRIBE.POLARICE_PLOW = "Осторожно, земля раскалывается!"
	DESCRIBE.POLARICE_PLOW_ITEM = "Что может скрываться подо льдом?"
	DESCRIBE.POLARWALRUSHEAD = "Мне не так уж и плохо из-за этого, любопытно."
	DESCRIBE.TOWER_POLAR_FLAG = "Хехе, оно машет мне!"
	DESCRIBE.TOWER_POLAR_FLAG_ITEM = "Я заберу тебя с собой, прежде чем это сделает ветер."
	DESCRIBE.RAINOMETER.POLARSTORM = "Мистер Уилсон, ваше лекарство вновь странно действует!"
	DESCRIBE.WINTEROMETER.POLARSTORM = "Прекрати это! Ты заставляешь меня дрожать!"
	
--	Items
	
	--	Food
	DESCRIBE.DRYICECREAM = "Оно такое холодное, что даже обжигает..."
	DESCRIBE.FILET_O_FLEA = "Так вот к чему это привело. Оу хорошо!"
	DESCRIBE.HERMITCRABTEA_PETALS_POLAR = "Лучше всего поделиться со злым монстром."
	DESCRIBE.ICELETTUCE = "Злейший враг моего бумажного кораблика."
	DESCRIBE.ICELETTUCE_OVERSIZED = "Пожалуйста..."
	DESCRIBE.ICEBURRITO = "Следующий раз я попробую вишнёвый буррито."
	DESCRIBE.KOALEFRIED_TRUNK_SUMMER = "Уткнулся носом в тарелку."
	DESCRIBE.KOALEFRIED_TRUNK_WINTER = "Уткнулся носом в тарелку."
	DESCRIBE.POLARCRABLEGS = "Ммм... хрустящие... погоди, нет. Это панцирь!"
	DESCRIBE.POLARFLEAEGGSACK = "Это могло бы быть полезно."
	
	--	Crafting
	DESCRIBE.BLUEGEM_OVERCHARGED = "ОЧЕНЬ красивый кубик льда!"
	DESCRIBE.BLUEGEM_SHARDS = "Я думала, что эти кусочки будут сочетаться друг с другом. Но этот..."
	DESCRIBE.EMPEROR_EGG = "Будь осторожен, не урони ребёнка."
	DESCRIBE.MOOSE_POLAR_ANTLER = "И что вы прикажите мне с этим делать?"
	DESCRIBE.PETALS_POLAR = "Некоторые из них росли у нас дома."
	DESCRIBE.PETALS_POLAR_DRIED = "Крошечный специи."
	DESCRIBE.POLAR_DRYICE = "Это похоже на каменный блок, но сделанный из воздуха?"
	DESCRIBE.POLARBEARFUR = "Оно сделано из уюта."
	DESCRIBE.POLARWARGSTOOTH = "Кусочек пасти этого большого чудовища."
	
	--	Equipments
	DESCRIBE.ANTLER_TREE_STICK = "С хорошей палкой можно многое сделать."
	DESCRIBE.ARMORPOLAR = "Теперь я себя чувствую в полной безопасности!"
	DESCRIBE.COMPASS_POLAR = "Оно не указывает на дом."
	DESCRIBE.EMPEROR_PENGUINHAT = "Чтобы одеться как императрица."
	DESCRIBE.FROSTWALKERAMULET = "Надеюсь, этого мне хватит ещё на одну-две прогулки."
	DESCRIBE.ICICLESTAFF = "Я не пойду играть под дождём..."
	DESCRIBE.POLAR_SPEAR = "Не фруктовый лёд с вишнёвым вкусом. На этом кровь."
	DESCRIBE.POLARAMULET = "Не могли бы вы рассказать мне, что он делает, Мистер-y?"
	DESCRIBE.POLARBEARHAT = "Быть у кого-то во рту для меня не в новинку."
	DESCRIBE.POLARCROWNHAT = "Не лопай мой личный пузырь."
	DESCRIBE.POLARFLEA_SACK = "Я предпочту предоставить им их личное пространство, а не занимать моё собственное."
	DESCRIBE.POLARICESTAFF = "Моя палочка получила улучшение!"
	DESCRIBE.POLARMOOSEHAT = "Многое ли ты видишь с этим капюшонным лицом?"
	DESCRIBE.WALRUS_BAGPIPE = "Один, два, и один два три! (Вдох)"
	DESCRIBE.WALRUS_BEARTRAP = "Злые металлические штучки."
	DESCRIBE.WINTERS_FISTS = "Теперь я слышу, как завывает ветер, когда я машу рукой..."
	
	--	Others
	DESCRIBE.ARCTIC_FOOL_FISH = "Злая шутка, которую можно сыграть с друзьями."
	DESCRIBE.BOAT_ICE_ITEM = "Это должно быть безопасно, на несколько секунд."
	DESCRIBE.POCKETWATCH_POLAR = {
		GENERIC = "Что за красивые часики! Очень хорошие, Мисс Ванда.",
		RECHARGING = "Может быть, сейчас не подходящее время?",
	}
	DESCRIBE.POLARGLOBE = {
		GENERIC = "Мне даже не надо трясти это.",
		INUSE = "Почему мы потрясли это?",
		REFUEL = "Теперь ничего плохого не должно произойти, если потрясти.",
	}
	DESCRIBE.OCEANFISH_IN_ICE = "Можем ли мы помочь этому?"
	DESCRIBE.POLARICEPACK = "Я желаю, чтобы это вошло в мой ланч бокс."
	DESCRIBE.POLARTRINKET_1 = "Ты выглядишь по-домашнему в этом шарфе!"
	DESCRIBE.POLARTRINKET_2 = "Ты выглядишь по-домашнему в этом капюшоне!"
	DESCRIBE.TRAP_POLARTEETH = "Не место для снежных ангелов."
	DESCRIBE.TURF_POLAR_CAVES = "Корм для кроточервей."
	DESCRIBE.TURF_POLAR_DRYICE = "Не похоже на дорогу к школе."
	DESCRIBE.TURF_POLAR_GRASS = "Еда для растений и червей."
	DESCRIBE.WALL_POLAR = "У этого может и есть шанс в сказке о трёх поросятах."
	DESCRIBE.WALL_POLAR_ITEM = "Мы могли бы соорудить какую-нибудь иглу, но без крыши."
	DESCRIBE.WINTER_ORNAMENTPOLAR = "Это идеальное украшение, не... оооу!"
	DESCRIBE.WX78MODULE_NAUGHTY = "Роботические конфеты для моего металлического друга."
