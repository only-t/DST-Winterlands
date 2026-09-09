local ANNOUNCE = STRINGS.CHARACTERS.WARLY
local DESCRIBE = STRINGS.CHARACTERS.WARLY.DESCRIBE

--	Announcements
	
	--	Actions
	ANNOUNCE.BATTLECRY.PENGUIN  = "Ооо, ты вкусная куриная ножка!"
	ANNOUNCE.BATTLECRY.POLARBEAR = "Ты знаешь, что они говорят об продаже медвежьего меха?"
	ANNOUNCE.BATTLECRY.WALRUS = "Аа! Как раз в тот момент, когда я искал ужин!"
	
	--	World, Events
	ANNOUNCE.ANNOUNCE_ARCTIC_FOOL_FISH_REMOVED = "Alors là! Я отомщу за это!"
	ANNOUNCE.ANNOUNCE_POLAR_SLOW = {
		"Aller... presque...",
		"Bon sang... oof...",
		"Хрррр...",
	}
	ANNOUNCE.ANNOUNCE_EMPEROR_ESCAPE = "Король умер! Да здравствует король!"
	ANNOUNCE.ANNOUNCE_POLARGLOBE = "Брр! Кто оставил дверцу морозильника открытой?"
	ANNOUNCE.ANNOUNCE_POLARFLEA_LATCHED = "Oh sa mère!"
	ANNOUNCE.ANNOUNCE_POLARICE_PLOW_BAD = "Я бы предпочёл порыбачить где-нибудь в другом месте."
	ANNOUNCE.ANNOUNCE_THRONE_GIFT_TAKEN = "Merci-- оу. Мне тоже следовало бы принести подарки!"
	
	--	Buffs
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_HUNTMOAR = "Дикая природа раскрывает передо мной свои ароматы."
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_HUNTMOAR = "Хватит охотиться, я бы предпочёл немного разнообразия."
	ANNOUNCE.ANNOUNCE_ATTACH_BUFF_POLARWETNESS = "Q-quel холодный! Мне нужно пальто побольше..."
	ANNOUNCE.ANNOUNCE_DETACH_BUFF_POLARWETNESS = "Аааах... Чтобы мы делали без огня?"
	
--	Worldgen
	
	--	Plants
	DESCRIBE.ANTLER_TREE = {
		BURNING = "Я лучше буду наслаждаться этим огнём, пока он горит.",
		BURNT = "Хрустящий, нет?",
		CHOPPED = "Лязг!",
		GENERIC = "Оу! Я чуть в него не врезался.",
	}
	DESCRIBE.ANTLER_TREE_SAPLING = "Просто a petite bébé."
	DESCRIBE.FLOWER_POLAR = "Я боюсь, что они не останутся здесь навсегда."
	DESCRIBE.ICELETTUCE_SEEDS = "Они вырастут отличными свежими овощами."
	
	--	Rocks and stones
	DESCRIBE.POLAR_ICICLE = "Моя благодарность за свежее напоминание."
	DESCRIBE.POLAR_ICICLE_ROCK = "Как ты собираешься снова подняться на ноги?"
	DESCRIBE.ROCK_POLAR = "Будем ли мы заниматься ледяным ваянием во время добычи?"
	
	--	Misc
	ANNOUNCE.DESCRIBE_IN_POLARSNOW = "Что-нибудь тут есть съедобного?"
	DESCRIBE.CAVE_ENTRANCE_POLAR = "Ça alors... уже близко. Возможно в следующий раз?" -- TEMP QUOTE
	DESCRIBE.TOWER_POLAR = {
		GENERIC = "Целый ледяной замок? Я это весьма уважаю.",
		PENGUIN = "Держу пари, он отлично готовит фрикадельки!",
	}
	DESCRIBE.TUMBLEWEED_POLAR = "Может быть, отправится туда было не так уж и плохо!"
	
--	Mobs
	
	DESCRIBE.EMPEROR_PENGUIN = {
		GENERIC = "Они проводят банкет или a banquise?",
		HOSTILE = "Ах, мы что, сейчас свергаем монархию?",
	}
	DESCRIBE.EMPEROR_PENGUIN_GUARD = "Думаю, я найду яйца где-нибудь в другом месте..."
	DESCRIBE.FROSTY_SIMPLE = "Frosty"
	DESCRIBE.GIRL_WALRUS = "Не очень рад знакомству с вами, мадам."
	DESCRIBE.MOOSE_POLAR = {
		ANTLER_LOST = "Он лишился своего гарнира.",
		GENERIC = "Великолепное блюдо, обладающее крепки, пикантным вкусом.",
	}
	DESCRIBE.MOOSE_SPECTER = "Mon dieu, это выглядит просто изысканно!"
	DESCRIBE.OCEANFISH_MEDIUM_POLAR1 = "Poisson frais!"
	DESCRIBE.POLARBEAR = {
		DEAD = "Наконец-то я могу продать его мех.",
		ENRAGED = "Оно голодно до бойни!",
		FOLLOWER = "У него разыгрался совершенно ненасытный аппетит.",
		GENERIC = "Нам обоим не терпится узнать, как по ощущениям другие вкусы\n... или это только я?",
	}
	DESCRIBE.POLARBEARKING = "Они говорят, что он ест мясо не жуя... Я думаю вот-вот упаду в обморок."
	DESCRIBE.POLARFLEA = {
		GENERIC = "Ох non!",
		HELD_INV = "Bon appétit и adieu!",
		HELD_BACKPACK = "Я думаю они впали в спячку.",
	}
	DESCRIBE.POLARFLEA_MOTHER = "Для каждого своя Maman..."
	DESCRIBE.POLARFOX = {
		FOLLOWER = "Вы просто не можете отказаться от хорошей еды, non?",
		FRIEND = "Что скажешь насчёт ужина, как в старые добрые времена?",
		GENERIC = "Хитрый маленький renard.",
	}
	DESCRIBE.POLARWARG = "Я весь дрожу, и не только из-за мороза..."
	
--	Buildings
	
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_FRUITY = "Презентация - это половина вкуса, n'est-ce pas?"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_JUGGLE = "Я и сам пробовал жонглировать. Только не едой, заметьте!"
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_MAGESTIC = "Это смелое проявление эго."
	DESCRIBE.CHESSPIECE_EMPEROR_PENGUIN_SPIN = "Это всё очень хорошо. Но... когда мы будем есть?"
	DESCRIBE.POLAR_BRAZIER = {
		GENERIC = "Полагаю, нужно немного веток.",
		ON = "Et voilà!",
	}
	DESCRIBE.POLAR_BRAZIER_ITEM = "Хорошее дополнение к моей портативной кухне."
	DESCRIBE.POLAR_THRONE = "Я не сяду на трон без стола."
	DESCRIBE.POLAR_THRONE_GIFTS = "Я имею в виду... Я был хорошим в этом году, non?"
	DESCRIBE.POLARAMULET_STATION = {
		GENERIC = "Внутри, должно быть, настоящая boucherie...",
		OPEN = "Ты можешь взять то, что я не планирую готовить.",
	}
	DESCRIBE.POLARBEAR_RUG = "Этому место в банкетном зале."
	DESCRIBE.POLARBEARHEAD = "Что за трата -- Я имею в виду, что за позор, реально позор."
	DESCRIBE.POLARBEARHOUSE = {
		BURNT = "Показалось, но я почувствовал запах сардин.",
		GENERIC = "Выдержит ли оно снежную бурю?",
	}
	DESCRIBE.POLARHEADSTICK = "Это место зарезервировано."
	DESCRIBE.POLARICE_PLOW = "Надеюсь, я принёс достаточно наживки..."
	DESCRIBE.POLARICE_PLOW_ITEM = "День ледяной рыбалки звучит заманчиво!"
	DESCRIBE.POLARWALRUSHEAD = "Он уже не двигается так быстро, как я думал."
	DESCRIBE.TOWER_POLAR_FLAG = "Наблюдая, как он вот так плывёт, я проголодался... что?"
	DESCRIBE.TOWER_POLAR_FLAG_ITEM = "Я полагаю, они не вернуться, чтобы это подобрать?"
	DESCRIBE.RAINOMETER.POLARSTORM = "Что-то готовится..."
	DESCRIBE.WINTEROMETER.POLARSTORM = "Тебе нравится пальто?"
	
--	Items
	
	--	Food
	DESCRIBE.DRYICECREAM = "Мороженое для хороших детей!"
	DESCRIBE.FILET_O_FLEA = "Секретный ингредиент - немного стыда."
	DESCRIBE.HERMITCRABTEA_PETALS_POLAR = "Я сказал \"poisson frais\" мэм, не... ах ладно."
	DESCRIBE.ICELETTUCE = "Брр... не помешало бы заправка..."
	DESCRIBE.ICELETTUCE_OVERSIZED = "Ça alors, это огромный салат!"
	DESCRIBE.ICEBURRITO = "Это последний раз, когда я полагаюсь на Уилсона в выборе названия моих рецептов."
	DESCRIBE.KOALEFRIED_TRUNK_SUMMER = "Ооо ля ля, в этой кулинарной книге охотников хранятся сокровища!"
	DESCRIBE.KOALEFRIED_TRUNK_WINTER = "Ооо ля ля, в этой кулинарной книге охотников хранятся сокровища!"
	DESCRIBE.POLARCRABLEGS = "Мвах! Simplement par-fait!"
	DESCRIBE.POLARFLEAEGGSACK = "Похоже на то... чтобы держать горшок -- У меня идея!"
	
	--	Crafting
	DESCRIBE.BLUEGEM_OVERCHARGED = "О боже мой, это слишком холодно для моего вкуса!"
	DESCRIBE.BLUEGEM_SHARDS = "Возможно надо немного клея."
	DESCRIBE.EMPEROR_EGG = "Вот это кулинарная находка, весьма любопытно."
	DESCRIBE.MOOSE_POLAR_ANTLER = "Мне больше хотелось попробовать мясо."
	DESCRIBE.PETALS_POLAR = "Как насчёт дикустации."
	DESCRIBE.PETALS_POLAR_DRIED = "Хороший ингредиент!"
	DESCRIBE.POLAR_DRYICE = "Что-за большие ледяные кубы!"
	DESCRIBE.POLARBEARFUR = "Самый удобный для снежков."
	DESCRIBE.POLARWARGSTOOTH = "Это оставило бы вмятину."
	
	--	Equipments
	DESCRIBE.ANTLER_TREE_STICK = "Salut, vieille branche!"
	DESCRIBE.ARMORPOLAR = "Пушистая защита."
	DESCRIBE.COMPASS_POLAR = "Покажи мне путь к морозилке, пожалуйста."
	DESCRIBE.EMPEROR_PENGUINHAT = "Я не из тех, кто не любит рыбу. Однако..."
	DESCRIBE.FROSTWALKERAMULET = "Это выводит обледенение на новый уровень!"
	DESCRIBE.ICICLESTAFF = "Il pleut il mouille? Нет, оно убивает!"
	DESCRIBE.POLAR_SPEAR = "Всё это весело, пока не прольётся кровь."
	DESCRIBE.POLARAMULET = "Ты бы не хотел быть рядом, когда я выпущу свои клыки."
	DESCRIBE.POLARBEARHAT = "Так ли выглядит моя еда перед тем, как её съедят?"
	DESCRIBE.POLARCROWNHAT = "Кто-нибудь боялся, что я в конце концов потеряю самообладание?"
	DESCRIBE.POLARFLEA_SACK = "Лучше внутри, чем на моей коже."
	DESCRIBE.POLARICESTAFF = "Pardon, но мне нужно вдохнуть свежего воздуха."
	DESCRIBE.POLARMOOSEHAT = "Лучше бы в этих крах не было винных охотников."
	DESCRIBE.WALRUS_BAGPIPE = "Bon dieu, мои уши!"
	DESCRIBE.WALRUS_BEARTRAP = "Ловушка, жаждущая заполучить меня в свой рот."
	DESCRIBE.WINTERS_FISTS = "Теперь я серьёзно растерян..."
	
	--	Others
	DESCRIBE.ARCTIC_FOOL_FISH = "Классический, безобидная шутка! Или, по крайне мере, так оно было..."
	DESCRIBE.BOAT_ICE_ITEM = "Всё что угодно, лишь бы остаться на плаву."
	DESCRIBE.POCKETWATCH_POLAR = {
		GENERIC = "Возможно, я могу попросить её сделать мне кухонные часы...",
		RECHARGING = "Я не думаю, что оно пока готово.",
	}
	DESCRIBE.POLARGLOBE = {
		GENERIC = "Это станет хорошим украшением для праздничного стола.",
		INUSE = "Чтож. Я лучше приготовлю немного супа для всех.",
		REFUEL = "Ах non! Ты не получишь свой снег обратно.",
	}
	DESCRIBE.OCEANFISH_IN_ICE = "В его свежести нет сомнений."
	DESCRIBE.POLARICEPACK = "Укрепление против моего злейшего врага."
	DESCRIBE.POLARTRINKET_1 = "В твоём заснеженном саду росли цветы?"
	DESCRIBE.POLARTRINKET_2 = "Я так понимаю, ваша лужайка не была зелёной круглый год."
	DESCRIBE.TRAP_POLARTEETH = "Хватает, как вилка, режет, как мясницкий нож."
	DESCRIBE.TURF_POLAR_CAVES = "Это как ингредиент для земли."
	DESCRIBE.TURF_POLAR_DRYICE = "Это как ингредиент для земли."
	DESCRIBE.TURF_POLAR_GRASS = "Мне нужно всё это срезать?"
	DESCRIBE.WALL_POLAR = "Аааах. Разве это не классно?"
	DESCRIBE.WALL_POLAR_ITEM = "Я надеюсь, что в ближайшее время он не растает."
	DESCRIBE.WINTER_ORNAMENTPOLAR = "Иней для нашей праздничной ёлки."
	DESCRIBE.WX78MODULE_NAUGHTY = "Слишком много изюминок для одного рта. Или для оратора, я не знаю."
