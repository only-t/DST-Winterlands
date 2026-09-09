local ANNOUNCE = STRINGS.CHARACTERS.GENERIC
local DESCRIBE = STRINGS.CHARACTERS.GENERIC.DESCRIBE

--	Announcements
	
	--	Actions
	ANNOUNCE.BATTLECRY.PENGUIN  = "Ситуация нахохливается!"
	ANNOUNCE.BATTLECRY.POLARBEAR = "У этого могут быть медвежьи последствия."
	ANNOUNCE.BATTLECRY.WALRUS = "Ты совершил жирную ошибку придя сюда!"
	
	--	World, Events
	ANNOUNCE.ANNOUNCE_ARCTIC_FOOL_FISH_REMOVED = "Я знал, что что-то здесь не так... даже рыбно."
	ANNOUNCE.ANNOUNCE_POLAR_SLOW = {
		"Поверь мне... это... кратчайший путь.",
		"Гэх...",
		"Фух...",
	}
	ANNOUNCE.ANNOUNCE_EMPEROR_ESCAPE = "Сим провозглашаю о начале новой эры хладнокровного правления!"
	ANNOUNCE.ANNOUNCE_POLARGLOBE = "Дрожь пробирает - что только что произошло?!"
	ANNOUNCE.ANNOUNCE_POLARFLEA_LATCHED = "ААААА-- Помогите!"
	ANNOUNCE.ANNOUNCE_POLARICE_PLOW_BAD = "Льду стоит попробовать в другом месте."
	ANNOUNCE.ANNOUNCE_THRONE_GIFT_TAKEN = "Хах. Это было не так уж плохо."
	
	ANNOUNCE.ANNOUNCE_WX_NAUGHTYCHIP_KRAMPUS = {"используется_только_wx78"}
	ANNOUNCE.ANNOUNCE_WX_NAUGHTYCHIP_RABBIT = {"используется_только_wx78"}
	
	--	Buffs
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_HUNTMOAR = "Мои чувства слежения кажутся... необычайно точными."
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_HUNTMOAR = "Вернёмся к обыкновенному наблюдению."
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_POLARWETNESS = "Бррр...! Это снежная шутка!"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_POLARWETNESS = "У сух. Но только в плане снега."
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_WANDATIMEFREEZE = "используется_только_вандой"
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_WANDATIMEFREEZE = "используется_только_вандой"
	
--	Worldgen
	
	--	Plants
	DESCRIBE.ANTLER_TREE = {
		BURNING = "Я не откажусь от огня.",
		BURNT = "Это контрастирует со всем остальным местом.",
		CHOPPED = "Лучше убраться восвояси, пока другие деревья этого не заметили.",
		GENERIC = "Это дерево готовится к бою.",
	}
	DESCRIBE.ANTLER_TREE_SAPLING = "Замёрзшее маленькое деревце."
	DESCRIBE.FLOWER_POLAR = "Я уверен, что это приятно пахнет, но у меня нос сопливит."
	DESCRIBE.ICELETTUCE_SEEDS = "Какие-то семена."
	
	--	Rocks and stones
	DESCRIBE.POLAR_ICICLE = "Оно тронулось только что?"
	DESCRIBE.POLAR_ICICLE_ROCK = "Да, оно определённо тронулось."
	DESCRIBE.ROCK_POLAR = "Драгоценные камни, свежие для сбора урожая."
	
	--	Misc
	ANNOUNCE.DESCRIBE_IN_POLARSNOW = "Мне кажется, я что-то здесь увидел."
	DESCRIBE.CAVE_ENTRANCE_POLAR = "I've got the sinking feeling this hole isn't finished yet." -- TEMP QUOTE
	DESCRIBE.TOWER_POLAR = {
		GENERIC = "Нюансов явно не было в их чертежах.",
		PENGUIN = "Чёрт! Снежная баллиста!",
	}
	DESCRIBE.TUMBLEWEED_POLAR = "Это бросает вызов всей известной науке."
	
--	Mobs
	
	DESCRIBE.EMPEROR_PENGUIN = {
		GENERIC = "Не могли бы мы договорится о встрече в суде?",
		HOSTILE = "У него преимущество на своём льду!",
	}
	DESCRIBE.EMPEROR_PENGUIN_GUARD = "Выглядит крепким."
	DESCRIBE.FROSTY_SIMPLE = "Frosty"
	DESCRIBE.GIRL_WALRUS = "Тут веселье для всей семьи."
	DESCRIBE.MOOSE_POLAR = {
		ANTLER_LOST = "Лосю нелегко справиться с потерей рогов.",
		GENERIC = "Я бы предпочёл держаться подальше от этой трапы.",
	}
	DESCRIBE.MOOSE_SPECTER = "Похоже местные легенды были правдой."
	DESCRIBE.OCEANFISH_MEDIUM_POLAR1 = "Эти глаза стоили бы целого состояния!"
	DESCRIBE.POLARBEAR = {
		DEAD = "Кучка снега... нет, погоди.",
		ENRAGED = "Он умеет не только кусаться, но и лаять!",
		FOLLOWER = "Это мой медвежий приятель.",
		GENERIC = "Устрашающий, приятный на вид парень.",
	}
	DESCRIBE.POLARBEARKING = "Наука утверждает, что о нём идут слухи."
	DESCRIBE.POLARFLEA = {
		GENERIC = "Время блоховать!",
		HELD_INV = "Жвалы уже довольно глубоко проникли мне под кожу.",
		HELD_BACKPACK = "Я уверен, что эта идея будет безупречной.",
	}
	DESCRIBE.POLARFLEA_MOTHER = "Она выглядит как то грустно! Мне интересно почему."
	DESCRIBE.POLARFOX = {
		FOLLOWER = "Давай сыграем в маленькую игру.",
		FRIEND = "У него знакомое лицо. Судя по всему я тоже так думаю.",
		GENERIC = "Ага! Иди сюда!",
	}
	DESCRIBE.POLARWARG = "С таким мехом, как у него, холод, судя по всему, пустяковый."
	
--	Buildings
	
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_FRUITY = "Эта анатомическая модель не так уж и проницательна."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_JUGGLE = "Впечатляющая координация, для того, у кого ласты!"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_MAGESTIC = "Полагаю, искусство можно использовать для того, чтобы утвердить своё господство."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_SPIN = "Я почти уверен, что видел подобную статую Максвелла..."
	DESCRIBE.POLAR_BRAZIER = {
		GENERIC = "Костёр карманного размера.",
		ON = "Слишком горячо, чтобы класть в карманы. Если только я не погашу пламя.",
	}
	DESCRIBE.POLAR_BRAZIER_ITEM = "Наука утверждает, что всё становится лучше, когда оно портативное."
	DESCRIBE.POLAR_THRONE = "Выглядит комфортно."
	DESCRIBE.POLAR_THRONE_GIFTS = "Это моё имя? Я не могу разобрать писанину когтями."
	DESCRIBE.POLARAMULET_STATION = {
		GENERIC = "Остаётся загадкой, как эта лачуга держится на плаву.",
		OPEN = "Ээ, моя ошибка. Не тот адрес.",
	}
	DESCRIBE.POLARBEAR_RUG = "Теперь он просто большой слабак."
	DESCRIBE.POLARBEARHEAD = "Я бы не стал связываться ни с медведем, ни с тем, кто его убил."
	DESCRIBE.POLARBEARHOUSE = {
		BURNT = "Святая макрель!",
		GENERIC = "Я сомневаюсь, что там теплее.",
	}
	DESCRIBE.POLARHEADSTICK = "Я надеюсь, что не забегаю вперёд..."
	DESCRIBE.POLARICE_PLOW = "Я глубоко заинтригован тем, что происходит под этим."
	DESCRIBE.POLARICE_PLOW_ITEM = "Лучшая рыба та, что всегда прячется."
	DESCRIBE.POLARWALRUSHEAD = "Ничего личного, конечно. (Ахем!)"
	DESCRIBE.TOWER_POLAR_FLAG = "Должен ли я знать, куда дует ветер?"
	DESCRIBE.TOWER_POLAR_FLAG_ITEM = "Как раз вовремя, мне понадобилась салфетка!"
	DESCRIBE.RAINOMETER.POLARSTORM = "Должно быть, всё дело в изменении климата, о котором я слышал."
	DESCRIBE.WINTEROMETER.POLARSTORM = "Он пытается меня о чём то предупредить"
	
--	Items
	
	--	Food
	DESCRIBE.DRYICECREAM = "Вкус диоксида углерода трудно хорошо передать."
	DESCRIBE.FILET_O_FLEA = "Хмм. Кто-нибудь заказывал жук-ер?"
	DESCRIBE.HERMITCRABTEA_PETALS_POLAR = "С научной точки зрения, они вкуснее."
	DESCRIBE.ICELETTUCE = "В нём слишком много приправы."
	DESCRIBE.ICELETTUCE_OVERSIZED = "Он знает, как одеваться, чтобы произвести впечатление!"
	DESCRIBE.ICEBURRITO = "Я реально выкопал это имя."
	DESCRIBE.KOALEFRIED_TRUNK_SUMMER = "Копчёные и жаренные блюда - это химия в лучшем её проявлении."
	DESCRIBE.KOALEFRIED_TRUNK_WINTER = "Копчёные и жаренные блюда - это химия в лучшем её проявлении."
	DESCRIBE.POLARCRABLEGS = "Самое лучшее в десяти ногах - это то, что их хватит для всех."
	DESCRIBE.POLARFLEAEGGSACK = "Похоже на мармеладные бобы."
	
	--	Crafting
	DESCRIBE.BLUEGEM_OVERCHARGED = "Беру свои слова обратно. ОНО искрится холодной энергией!"
	DESCRIBE.BLUEGEM_SHARDS = "Загадка минералогической интриги."
	DESCRIBE.EMPEROR_EGG = "Я не думаю, что оно вылупится. Скорее растает."
	DESCRIBE.MOOSE_POLAR_ANTLER = "Эти штуки тяжёлые!"
	DESCRIBE.PETALS_POLAR = "Ботаники предполагают, что они могут иметь медицинское применение."
	DESCRIBE.PETALS_POLAR_DRIED = "Хорошая сушка."
	DESCRIBE.POLAR_DRYICE = "Я мог бы создать что-то реаааально крутое из этого."
	DESCRIBE.POLARBEARFUR = "Уютный. Натуральный мех!"
	DESCRIBE.POLARWARGSTOOTH = "Это остриё!"
	
	--	Equipments
	DESCRIBE.ANTLER_TREE_STICK = "Наука утверждает, что эта палочка идеальна."
	DESCRIBE.ARMORPOLAR = "Вот это дело!"
	DESCRIBE.COMPASS_POLAR = "Я становлюсь теплей?"
	DESCRIBE.EMPEROR_PENGUINHAT = "Царский холодильник."
	DESCRIBE.FROSTWALKERAMULET = "Наука может объяснить этот феномен... но я не буду."
	DESCRIBE.ICICLESTAFF = "Всегда полезен. Если мы забудем об \"инциденте\"."
	DESCRIBE.POLAR_SPEAR = "Это одно большое мороженое на палочке!"
	DESCRIBE.POLARAMULET = "Это безусловно... делает, что-то."
	DESCRIBE.POLARBEARHAT = "В том, что тебя съедают, есть свои плюсы."
	DESCRIBE.POLARCROWNHAT = "И что меня защищает от заморозки мозгов?"
	DESCRIBE.POLARFLEA_SACK = "Чтобы наполнить союзниками с размером с один укус."
	DESCRIBE.POLARICESTAFF = "Мне нравятся все мои шесты, но этот - самый холодный среди равных."
	DESCRIBE.POLARMOOSEHAT = "Довольно артистичный головной убор."
	DESCRIBE.WALRUS_BAGPIPE = "Добро пожаловать в охотничью вечеринку МакБивня и Вилсона."
	DESCRIBE.WALRUS_BEARTRAP = "Хорошо, что я не медведь!"
	DESCRIBE.WINTERS_FISTS = "Упакованный лёд для упакованного удара."
	
	--	Others
	DESCRIBE.ARCTIC_FOOL_FISH = "Всё, что нужно мне делать, это вести себя естественно."
	DESCRIBE.BOAT_ICE_ITEM = "Они просто хороши для того, чтобы разойтись по округе."
	DESCRIBE.POCKETWATCH_POLAR = {
		GENERIC = "Бьюсь об заклад, внутри много интересного для науки.",
		RECHARGING = "Это делает \"временные штучки\", это технический термин.",
	}
	DESCRIBE.POLARGLOBE = {
		GENERIC = "Всё ещё держится.",
		INUSE = "Давай не будем больше этого делать!",
		REFUEL = "Куда снег пропал?",
	}
	DESCRIBE.OCEANFISH_IN_ICE = "Это рыбный куб."
	DESCRIBE.POLARICEPACK = "Увы, но сохранить она меня лучше не сможет."
	DESCRIBE.POLARTRINKET_1 = "Несомненно, это артефакт, овеянный зимними легендами."
	DESCRIBE.POLARTRINKET_2 = "Несомненно, это артефакт, овеянный зимними легендами."
	DESCRIBE.TRAP_POLARTEETH = "Вот это холодный приём..."
	DESCRIBE.TURF_POLAR_CAVES = "Ещё один тип пещер."
	DESCRIBE.TURF_POLAR_DRYICE = "Крепче любого льда в округе."
	DESCRIBE.TURF_POLAR_GRASS = "Кусок земли."
	DESCRIBE.WALL_POLAR = "Я себя чувствую в такой безопасности и холоде внутри этих стен."
	DESCRIBE.WALL_POLAR_ITEM = "Полезно, чтобы сохранить хладнокровье."
	DESCRIBE.WINTER_ORNAMENTPOLAR = "Это должно в самый раз украсить ёлку."
	DESCRIBE.WX78MODULE_NAUGHTY = "Столько научных знаний упаковано в одну крошечную штуковину."
