local ANNOUNCE = STRINGS.CHARACTERS.WATHGRITHR
local DESCRIBE = STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE

--	Announcements
	
	--	Actions
	ANNOUNCE.BATTLECRY.PENGUIN  = "'Это удары клювов о сталь!"
	ANNOUNCE.BATTLECRY.POLARBEAR = "Оставь мне хороший шрам, хорошо?"
	ANNOUNCE.BATTLECRY.WALRUS = "Твой путь обрывается здесь и сейчас!"
	
	--	World, Events
	ANNOUNCE.ANNOUNCE_ARCTIC_FOOL_FISH_REMOVED = "Аргх! Не отмечай меня, юморист."
	ANNOUNCE.ANNOUNCE_POLAR_SLOW = {
		"'Это... ничто...!",
		"Я бросаю тебе вызов... снег!",
		"...Мгрмм...",
	}
	ANNOUNCE.ANNOUNCE_EMPEROR_ESCAPE = "Убегай в свой фьорд, мерзкая птица!"
	ANNOUNCE.ANNOUNCE_POLARGLOBE = "Проклятье! Фимбульветр только начался"
	ANNOUNCE.ANNOUNCE_POLARFLEA_LATCHED = "Кто-нибудь! Убейте чудовище!"
	ANNOUNCE.ANNOUNCE_POLARICE_PLOW_BAD = "Это было ошибкой."
	ANNOUNCE.ANNOUNCE_THRONE_GIFT_TAKEN = "Что это было?"
	
	--	Buffs
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_HUNTMOAR = "Я чувствую тягу к славной добыче!"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_HUNTMOAR = "Охота угасает, но я это перенесу."
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_POLARWETNESS = "Улльр наложил на меня проклятие!"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_POLARWETNESS = "Пусть ложа избавит меня от этого водного кошмара!"
	
--	Worldgen
	
	--	Plants
	DESCRIBE.ANTLER_TREE = {
		BURNING = "Нам будет не хватать твоих ветвей, дерево.",
		BURNT = "Увы, он был уничтожен огнём Хеля.",
		CHOPPED = "Он пал в честной битве.",
		GENERIC = "Из твоих веток вышло бы отличное оружие.",
	}
	DESCRIBE.ANTLER_TREE_SAPLING = "Они вырастут упругими и высокими, а затем будут срезаны."
	DESCRIBE.FLOWER_POLAR = "Оно приносит радость в момент."
	DESCRIBE.ICELETTUCE_SEEDS = "Это горсть семечек, вместо мяса."
	
	--	Rocks and stones
	DESCRIBE.POLAR_ICICLE = "Смерть свыше!"
	DESCRIBE.POLAR_ICICLE_ROCK = "Хаха! Трюк Локи на меня не подействует!"
	DESCRIBE.ROCK_POLAR = "Лёд поставлял груз из-под земли."
	
	--	Misc
	ANNOUNCE.DESCRIBE_IN_POLARSNOW = "Друг или мороз?"
	DESCRIBE.CAVE_ENTRANCE_POLAR = "Увы, оно ещё не законченно." -- TEMP QUOTE
	DESCRIBE.TOWER_POLAR = {
		GENERIC = "Ветер поёт свои дифирамбы этим стенам.",
		PENGUIN = "Слякоть? Скрестим оружие!",
	}
	DESCRIBE.TUMBLEWEED_POLAR = "Вихрящийся вестник зимнего могущества."
	
--	Mobs
	
	DESCRIBE.EMPEROR_PENGUIN = {
		GENERIC = "Что тут эти морские птицы замышляют?",
		HOSTILE = "Сдавайся, пока можешь!",
	}
	DESCRIBE.EMPEROR_PENGUIN_GUARD = "Что больнее между клеванием и вонзанием?"
	DESCRIBE.FROSTY_SIMPLE = "Frosty"
	DESCRIBE.GIRL_WALRUS = "Ха! Пусть трубки прославляют меня, пока бушует битва!"
	DESCRIBE.MOOSE_POLAR = {
		ANTLER_LOST = "Бах! Ты обезоружил сам себя!",
		GENERIC = "Благодать Фрейи касается даже этих замёрзших земель.",
	}
	DESCRIBE.MOOSE_SPECTER = "Существо, скрытое за завесой владений Скади."
	DESCRIBE.OCEANFISH_MEDIUM_POLAR1 = "Его сияние предвещает прекрасный пир."
	DESCRIBE.POLARBEAR = {
		DEAD = "Пусть твоя душа вознесётся в Валгаллу.",
		ENRAGED = "Сражайся со мной изо всех сил!",
		FOLLOWER = "Спутник из морозной страны.",
		GENERIC = "Отважные скандинавские воины, которых боялись во всём рыбьем царстве.",
	}
	DESCRIBE.POLARBEARKING = "В сказаниях говорится, что гром не гремел, пока он не показал, как это делать!"
	DESCRIBE.POLARFLEA = {
		GENERIC = "О, чёрт побери, нет!",
		HELD_INV = "Это может быть удалено ценой моей кожи.",
		HELD_BACKPACK = "Жуки жаждут присоединиться ко мне в битве.",
	}
	DESCRIBE.POLARFLEA_MOTHER = "Мерзкая метательница-отпрысков! Я разрублю тебя на куски!"
	DESCRIBE.POLARFOX = {
		FOLLOWER = "Это всё забавы и игры, пока ты не заманишь меня в ловушку.",
		FRIEND = "Наши дороги вновь пересеклись.",
		GENERIC = "У тебя было не единого шанса сбежать от меня!",
	}
	DESCRIBE.POLARWARG = "Славная битва ждёт меня на этой замёрзшей земле."
	
--	Buildings
	
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_FRUITY = "Какая сага заканчивается подобным образом?"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_JUGGLE = "Пусть он жонглирует клинками, тогда мы и поговорим."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_MAGESTIC = "Какая похвальная поза! Но за какие заслуги?"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_SPIN = "Сражаешься ли ты так же изящно, как танцуешь?"
	DESCRIBE.POLAR_BRAZIER = {
		GENERIC = "Утесистая корзина для поддержания пламени.",
		ON = "Я призываю тебя, о ревущее пламя!",
	}
	DESCRIBE.POLAR_BRAZIER_ITEM = "Охраняемый костёр, ожидающий своего часа."
	DESCRIBE.POLAR_THRONE = "Обиталище ледяного гиганта."
	DESCRIBE.POLAR_THRONE_GIFTS = "Попахивает ловушкой."
	DESCRIBE.POLARAMULET_STATION = {
		GENERIC = "Самый интригующий торговый вестибюль.",
		OPEN = "Эти товары сверкают, обещая помощь в битве.",
	}
	DESCRIBE.POLARBEAR_RUG = "Айе! Это отличный трофей."
	DESCRIBE.POLARBEARHEAD = "Ты был благородным воином, но не самым сильным."
	DESCRIBE.POLARBEARHOUSE = {
		BURNT = "Домашняя рыба превратилась в дым.",
		GENERIC = "Это было бы впечатляюще, если бы это был настоящий улов!",
	}
	DESCRIBE.POLARHEADSTICK = "Монумент ещё не родился."
	DESCRIBE.POLARICE_PLOW = "Мы совершим набег!"
	DESCRIBE.POLARICE_PLOW_ITEM = "Что-нибудь, что могло бы пробить рыбные бастионы."
	DESCRIBE.POLARWALRUSHEAD = "Здесь, на этой палке, заканчивается сага об охотнике."
	DESCRIBE.TOWER_POLAR_FLAG = "Зачем использовать этот несуществующий символ?"
	DESCRIBE.TOWER_POLAR_FLAG_ITEM = "Боевое знамя поверженного врага."
	DESCRIBE.RAINOMETER.POLARSTORM = "Фимбульветр уже близко!"
	DESCRIBE.WINTEROMETER.POLARSTORM = "Ветер вот-вот переменится к худшему."
	
--	Items
	
	--	Food
	DESCRIBE.DRYICECREAM = "Домашний аромат!"
	DESCRIBE.FILET_O_FLEA = "Кто проглотит это в качестве испытания своей мощи?"
	DESCRIBE.HERMITCRABTEA_PETALS_POLAR = "Я не поддамся искушению!"
	DESCRIBE.ICELETTUCE = "Безбелковое блюдо из льда."
	DESCRIBE.ICELETTUCE_OVERSIZED = "Ты хорошо боролся, цветок, но мы выстояли!"
	DESCRIBE.ICEBURRITO = "Рыба, лежащая в замёрзшем спальном мешке!"
	DESCRIBE.KOALEFRIED_TRUNK_SUMMER = "Копчённые охотничье трофеи."
	DESCRIBE.KOALEFRIED_TRUNK_WINTER = "Копчённые охотничье трофеи."
	DESCRIBE.POLARCRABLEGS = "Зверь возносится в валгаллу... и в мой живот!"
	DESCRIBE.POLARFLEAEGGSACK = "Богатая белком слизь."
	
	--	Crafting
	DESCRIBE.BLUEGEM_OVERCHARGED = "Усилённый предсмертным грохотом ледяного гиганта."
	DESCRIBE.BLUEGEM_SHARDS = "Драгоценный камень потерпел поражение."
	DESCRIBE.EMPEROR_EGG = "Трусливая птица покинула его."
	DESCRIBE.MOOSE_POLAR_ANTLER = "Прощай, всего хорошего..."
	DESCRIBE.PETALS_POLAR = "Я представляю листья Иггдрасиля такими же нежными."
	DESCRIBE.PETALS_POLAR_DRIED = "Это было бы самым достойным подношением богам!"
	DESCRIBE.POLAR_DRYICE = "Куски ледяного гиганта!"
	DESCRIBE.POLARBEARFUR = "Такую шкуру могут заполучить только самые свирепые воины."
	DESCRIBE.POLARWARGSTOOTH = "Владеть этим оружием - значит укротить мороз."
	
	--	Equipments
	DESCRIBE.ANTLER_TREE_STICK = "Уступи дорогу, снег, ибо у меня в руках палка!"
	DESCRIBE.ARMORPOLAR = "Достойный Валькирии."
	DESCRIBE.COMPASS_POLAR = "Оно слышит шёпот северного сияния."
	DESCRIBE.EMPEROR_PENGUINHAT = "От него разит былым высокомерием... и рыбой."
	DESCRIBE.FROSTWALKERAMULET = "Путешествие по морям превращается в сущий пустяк!"
	DESCRIBE.ICICLESTAFF = "Вызывает дождь из ледяных копий."
	DESCRIBE.POLAR_SPEAR = "Мощь этого оружия недолговечна."
	DESCRIBE.POLARAMULET = "Бодрящий кулон, сделанный из павших."
	DESCRIBE.POLARBEARHAT = "Пасть, которая защитит меня от бури."
	DESCRIBE.POLARCROWNHAT = "Чтобы заморозить моих врагов, как Драугры в древности!"
	DESCRIBE.POLARFLEA_SACK = "Полный моих крошечных воинов, готовых к битве!"
	DESCRIBE.POLARICESTAFF = "Держитесь подальше или оставайтесь на месте."
	DESCRIBE.POLARMOOSEHAT = "Рогатый шлем для защиты от холода."
	DESCRIBE.WALRUS_BAGPIPE = "Хотя это и отвратительно, но даёт мне новых союзников."
	DESCRIBE.WALRUS_BEARTRAP = "Ловушка для зверя и беспечных."
	DESCRIBE.WINTERS_FISTS = "Не самое моё любимое оружие, но оно хорошо работает на поле боя."
	
	--	Others
	DESCRIBE.ARCTIC_FOOL_FISH = "Остерегайтесь проклятого символа..."
	DESCRIBE.BOAT_ICE_ITEM = "Хороша только, чтобы перепрыгнуть через пруд."
	DESCRIBE.POCKETWATCH_POLAR = {
		GENERIC = "Воин-викинг может определить время по положению солнца.",
		RECHARGING = "Он просто выжидает своего часа.",
	}
	DESCRIBE.POLARGLOBE = {
		GENERIC = "В нём заключена сила, способная развязать зиму!",
		INUSE = "Эта мощная встряска вызвала неудовольствие богов",
		REFUEL = "Он должен быть наполнен самым сухим льдом.",
	}
	DESCRIBE.OCEANFISH_IN_ICE = "Бронированная рыба?"
	DESCRIBE.POLARICEPACK = "Наш долгожданный праздник продлится ещё немного."
	DESCRIBE.POLARTRINKET_1 = "Маленький, странный человечек."
	DESCRIBE.POLARTRINKET_2 = "Маленькая, странная женщина."
	DESCRIBE.TRAP_POLARTEETH = "Под снегом таятся опасности."
	DESCRIBE.TURF_POLAR_CAVES = "Кусочек поля боя."
	DESCRIBE.TURF_POLAR_DRYICE = "Эта дорога ведёт меня домой."
	DESCRIBE.TURF_POLAR_GRASS = "Кусочек поля боя."
	DESCRIBE.WALL_POLAR = "Холодная и непреклонная, как и моя решимость!"
	DESCRIBE.WALL_POLAR_ITEM = "Укрепления из ледяного гиганта."
	DESCRIBE.WINTER_ORNAMENTPOLAR = "Холодный символ, достойный зала Валгаллы."
	DESCRIBE.WX78MODULE_NAUGHTY = "Эти дары придадут сил нашему металлическому воину."
