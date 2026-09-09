local ANNOUNCE = STRINGS.CHARACTERS.WICKERBOTTOM
local DESCRIBE = STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE

--	Announcements
	
	--	Actions
	ANNOUNCE.BATTLECRY.PENGUIN  = "Возвращайся в свою естественную среду обитания"
	ANNOUNCE.BATTLECRY.POLARBEAR = "Я одержу верх над грубой силой!"
	ANNOUNCE.BATTLECRY.WALRUS = "Конец пути."
	
	--	World, Events
	ANNOUNCE.ANNOUNCE_ARCTIC_FOOL_FISH_REMOVED = "Чтож. Хорошо видеть всех вокруг смеющимися, как минимум."
	ANNOUNCE.ANNOUNCE_POLAR_SLOW = {
		"Обход был бы предпочтительней такой битвы!",
		"Моё передвижение сильно затруднено...",
		"Почему я лучше не подготовилась к снежной ходьбе?",
	}
	ANNOUNCE.ANNOUNCE_EMPEROR_ESCAPE = "Стратегическое отступление? Тсц."
	ANNOUNCE.ANNOUNCE_POLARGLOBE = "Это беспокойство кажется организованным, не естественным."
	ANNOUNCE.ANNOUNCE_POLARFLEA_LATCHED = "О небеса!!"
	ANNOUNCE.ANNOUNCE_POLARICE_PLOW_BAD = "Делать здесь дыру было бы опрометчиво."
	ANNOUNCE.ANNOUNCE_THRONE_GIFT_TAKEN = "Ооо. Какой полезный подарок!"
	
	--	Buffs
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_HUNTMOAR = "Острота моих чувств будто бы внезапно обострилась."
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_HUNTMOAR = "Пахнет так, словно эффект исчерпал себя."
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_POLARWETNESS = "Я плохо приспособлена к таким условиям."
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_POLARWETNESS = "Я вся промокла после оттепели."
	
--	Worldgen
	
	--	Plants
	DESCRIBE.ANTLER_TREE = {
		BURNING = "Оно горит от корней до макушки.",
		BURNT = "Обугленный остаток его прежнего \"Я\".",
		CHOPPED = "Он приспособился пугать животных, а не терпеть.",
		GENERIC = "Это дерево, по-видимому, своими ветвями имитирует защиту лосей.", -- THE MIMIC!!!
	}
	DESCRIBE.ANTLER_TREE_SAPLING = "Это дерево, по-видимому, своими ветвями имитирует защиту лосей?"
	DESCRIBE.FLOWER_POLAR = "Симпатичный и очень похож на представителя рода Безвременник."
	DESCRIBE.ICELETTUCE_SEEDS = "Оно не может начать расти, пока не будет посажено, дорогой."
	
	--	Rocks and stones
	DESCRIBE.POLAR_ICICLE = "будь осторожен, дорогой."
	DESCRIBE.POLAR_ICICLE_ROCK = "Каждый из них скоро станет жертвой своих собственных интриг."
	DESCRIBE.ROCK_POLAR = "Врезанные самоцветы ждут раскопок!"
	
	--	Misc
	ANNOUNCE.DESCRIBE_IN_POLARSNOW = "Это требует более тщательного изучения."
	DESCRIBE.CAVE_ENTRANCE_POLAR = "Не сейчас дорогуша. Чтобы там ни было, оно ещё не готово." -- TEMP QUOTE
	DESCRIBE.TOWER_POLAR = {
		GENERIC = "Социальные птицы, да - но это совсем другое!",
		PENGUIN = "В осаде нет необходимости в хороших манерах.",
	}
	DESCRIBE.TUMBLEWEED_POLAR = "Я хотела бы рассмотреть его структуру поближе."
	
--	Mobs
	
	DESCRIBE.EMPEROR_PENGUIN = {
		GENERIC = "Боже, этот император-Aptenodytes определённо воображает себя.",
		HOSTILE = "Твоё царствование заканчивается здесь и сейчас!",
	}
	DESCRIBE.EMPEROR_PENGUIN_GUARD = "Я могла бы воспользоваться этим пёрышком..."
	DESCRIBE.FROSTY_SIMPLE = "Frosty"
	DESCRIBE.GIRL_WALRUS = "Ох боже, на сей раз они оказывают поддержку."
	DESCRIBE.MOOSE_POLAR = {
		ANTLER_LOST = "Не сомневайся, он всё ещё может выдержать бой.",
		GENERIC = "Прекрасный экземпляр с защитой, пригодной для дикой природы.",
	}
	DESCRIBE.MOOSE_SPECTER = "Этот образец стоит того, чтобы изучить его!"
	DESCRIBE.OCEANFISH_MEDIUM_POLAR1 = "Интересно, как бы выглядел мир через жемчужные очки."
	DESCRIBE.POLARBEAR = {
		DEAD = "Замечательный, но без жизненный.",
		ENRAGED = "Вот это уже \"сила природы\". Тсц!",
		FOLLOWER = "Приручить медведя - это абсурд, но, похоже, я ему понравился.",
		GENERIC = "Впечатляющий охотник, преуспевающий в таких экстремальных условиях .",
	}
	DESCRIBE.POLARBEARKING = "Его легенда хранится одновременно в разделе Мифологии и личных мемуарах. Я сбита с толку."
	DESCRIBE.POLARFLEA = {
		GENERIC = "Ох боже...",
		HELD_INV = "Какие невоспитанные, отвратительные вредители!",
		HELD_BACKPACK = "Я не потерплю, чтобы кто-то из вас приблизился к моим книгам.",
	}
	DESCRIBE.POLARFLEA_MOTHER = "Я заметила, какие они плодовитые.\nНо только сейчас я поняла, почему."
	DESCRIBE.POLARFOX = {
		FOLLOWER = "Немного еды имеет большое значение, так ведь?",
		FRIEND = "Эту мордачку, я не скоро ещё забуду.",
		GENERIC = "Vulpes lagopus, счастливо резвящийся в снегу!",
	}
	DESCRIBE.POLARWARG = "Его будет трудно победить, имея преимущество на поле."
	
--	Buildings
	
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_FRUITY = "Только половина приверженности искусству..."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_JUGGLE = "Это яйца? Это пожалуй ужасная картина!"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_MAGESTIC = "Как величаво. Я имею виду, что дворяне любят подражать самим себе, не так ли?"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_SPIN = "Возможно, художник находится во внутреннем дворе, я выясню это."
	DESCRIBE.POLAR_BRAZIER = {
		GENERIC = "Требуется топливо.",
		ON = "Тёплое, надёжное пламя.",
	}
	DESCRIBE.POLAR_BRAZIER_ITEM = "Довольно простой переносной огненный контейнер. Хотя я не подумал об этом первым ."
	DESCRIBE.POLAR_THRONE = "Тот, кто сидит здесь, уже давно отсутствует."
	DESCRIBE.POLAR_THRONE_GIFTS = "Я удивлена, что они ещё не покрыты снегом."
	DESCRIBE.POLARAMULET_STATION = {
		GENERIC = "Интересное место для торговли... или кто знает, что ещё.",
		OPEN = "У меня всё ещё целые зубы, дорогой, и я намерена их сохранить.",
	}
	DESCRIBE.POLARBEAR_RUG = "Немного жутковато, но, безусловно, уютно."
	DESCRIBE.POLARBEARHEAD = "Это следует воспринимать как предупреждение."
	DESCRIBE.POLARBEARHOUSE = {
		BURNT = "Оно пало жертвой пламени.",
		GENERIC = "Логово, хотя и едва ли теплоизолированное.",
	}
	DESCRIBE.POLARHEADSTICK = "Это, по-видимому, ждёт своего... образца."
	DESCRIBE.POLARICE_PLOW = "Несколько секунд, чтобы выяснить..."
	DESCRIBE.POLARICE_PLOW_ITEM = "Холодное океанское дно более оживленно."
	DESCRIBE.POLARWALRUSHEAD = "Мрачный пример несбывшейся самоуверенности."
	DESCRIBE.TOWER_POLAR_FLAG = "Что за притягательное движение!"
	DESCRIBE.TOWER_POLAR_FLAG_ITEM = "К сожалению, слишком большой для закладки."
	DESCRIBE.RAINOMETER.POLARSTORM = "Ох боже... это будет не хорошо."
	DESCRIBE.WINTEROMETER.POLARSTORM = "Я надеюсь, у нас хватит дров."
	
--	Items
	
	--	Food
	DESCRIBE.DRYICECREAM = "Его секретные рецепты иногда не такие уж и секретные."
	DESCRIBE.FILET_O_FLEA = "Я чувствую вкус энтомологии."
	DESCRIBE.HERMITCRABTEA_PETALS_POLAR = "Это яд."
	DESCRIBE.ICELETTUCE = "Frigidaria brassica. По сравнению с мятой её листья могут посрамить."
	DESCRIBE.ICELETTUCE_OVERSIZED = "Результат настойчивости, грубой силы и, возможно, упрямства."
	DESCRIBE.ICEBURRITO = "Свежая пища, за которой следует заморозка мозгов."
	DESCRIBE.KOALEFRIED_TRUNK_SUMMER = "Удивительно приятный на вкус."
	DESCRIBE.KOALEFRIED_TRUNK_WINTER = "Удивительно приятный на вкус."
	DESCRIBE.POLARCRABLEGS = "Детям очень не захочется их пробовать. Для меня это многое значит!"
	DESCRIBE.POLARFLEAEGGSACK = "Яйцекладущий мешок, действительно неприятный."
	
	--	Crafting
	DESCRIBE.BLUEGEM_OVERCHARGED = "Замороженный за рамки дозволенного."
	DESCRIBE.BLUEGEM_SHARDS = "Материя не создаётся и не разрушается, а только разбивается."
	DESCRIBE.EMPEROR_EGG = "Бедняжка не вылупится, но всё ещё может найти своё предназначение."
	DESCRIBE.MOOSE_POLAR_ANTLER = "Не совсем то, что я подразумевала под \"изучить это\"... но это может сработать."
	DESCRIBE.PETALS_POLAR = "В каждой частичке этого растения содержится колхицин... это значит, что я не советую употреблять его внутрь."
	DESCRIBE.PETALS_POLAR_DRIED = "Процесс сушки усиливает аромат."
	DESCRIBE.POLAR_DRYICE = "Твёрдый диоксид углерода."
	DESCRIBE.POLARBEARFUR = "Надо бы его постирать... с блохами никогда нельзя быть слишком предусмотрительным."
	DESCRIBE.POLARWARGSTOOTH = "Ни единой царапины, надо отдать ему должное."
	
	--	Equipments
	DESCRIBE.ANTLER_TREE_STICK = "Это подходящая форма для нескольких применений."
	DESCRIBE.ARMORPOLAR = "Комфорт и защита!"
	DESCRIBE.COMPASS_POLAR = "Кажется, что он совпадает с каким-то другим местом, отличным от других компасов."
	DESCRIBE.EMPEROR_PENGUINHAT = "Я действительно полагаю, что правителю лучше всего быть хладнокровным."
	DESCRIBE.FROSTWALKERAMULET = "Очаровательно. Он отверждает воду за счёт быстрой терморегуляции."
	DESCRIBE.ICICLESTAFF = "Точный бросок стоит двух неверных."
	DESCRIBE.POLAR_SPEAR = "Сырой, но очень прочный на морозе."
	DESCRIBE.POLARAMULET = "В обычное время я бы назвал эти курьёзы абсурдными."
	DESCRIBE.POLARBEARHAT = "Достаточно окутывающее, чтобы снежная буря не попала мне в лицо."
	DESCRIBE.POLARCROWNHAT = "Оно использует градиенты холода для защиты и атаки по мере сжатия частиц."
	DESCRIBE.POLARFLEA_SACK = "Я не уверен насчёт этого... одомашнивания насекомых."
	DESCRIBE.POLARICESTAFF = "Хороший щелчок возвращает всех к хорошим манерам."
	DESCRIBE.POLARMOOSEHAT = "Чтобы сохранить своё тепло, пока свирепствует холод."
	DESCRIBE.WALRUS_BAGPIPE = "Инструмент лидерства, по крайней мере, так кажется."
	DESCRIBE.WALRUS_BEARTRAP = "Смертоносный пружинный механизм."
	DESCRIBE.WINTERS_FISTS = "Нет дорогуша, я имела в виду \"пироги\". Ну то есть... ах, неважно."
	
	--	Others
	DESCRIBE.ARCTIC_FOOL_FISH = "Знак социального обычая, которым дорожат как урсиды, так и французы."
	DESCRIBE.BOAT_ICE_ITEM = "Я должна поаплодировать самому опасному транспортному средству, которое я когда-либо видел."
	DESCRIBE.POCKETWATCH_POLAR = {
		GENERIC = "Часовое дело, смешанное с магией, по настоящему завораживает.",
		RECHARGING = "По-видимому, ему требуется некоторое время, чтобы восстановить свою силу между использованиями.",
	}
	DESCRIBE.POLARGLOBE = {
		GENERIC = "Как странно. Кто-нибудь прикасался к нему в последнее время?",
		INUSE = "Ох божечки... все ли были готовы к этому?",
		REFUEL = "Было бы разумно запереть эту... штуку подальше.",
	}
	DESCRIBE.OCEANFISH_IN_ICE = "Скорее всего, он всё ещё жив."
	DESCRIBE.POLARICEPACK = "Творит чудеса, когда находится в герметичном пространстве."
	DESCRIBE.POLARTRINKET_1 = "Довольно уютный чудаковатый малыш."
	DESCRIBE.POLARTRINKET_2 = "Довольно уютный чудаковатый малышка."
	DESCRIBE.TRAP_POLARTEETH = "Интересное применение криогеники."
	DESCRIBE.TURF_POLAR_CAVES = "Земля. Ты наступил на неё."
	DESCRIBE.TURF_POLAR_DRYICE = "Земля. Ты наступил на неё."
	DESCRIBE.TURF_POLAR_GRASS = "Земля. Ты наступил на неё."
	DESCRIBE.WALL_POLAR = "Ледяные барьеры, холодные и грозные."
	DESCRIBE.WALL_POLAR_ITEM = "Конструкционные элементы для ледниковых барьеров."
	DESCRIBE.WINTER_ORNAMENTPOLAR = "Нельзя забывать и о классике."
	DESCRIBE.WX78MODULE_NAUGHTY = "Это плохо влияет на детей."
