local module = { -- CARD_ID, NAME, POWER, HEALTH, RARITY,BIO	

	["LeTruth"] = {
		["Id"] = 540822293,
		["Name"] = "LeTruth",
		["Health"] = 250,
		["Power"] = 250,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 3,},
		["Charge"] = true,
		["Effect"] = {
			Name = "Haydoscale",
			Description = "Haste. Whenever your opponent loses life, LeTruth gains 200 health and power.",
			["Type"] = "OnEnemyLifeLoss",
			["Power"] = {{"Strengthen",200},{"Heal",200}},
			Target = "Self",
		},
		["Bio"] = "To know something requires three things. You must know why it's true, it must be true, and you must believe it's true.",
	},
	
	["Xenotrent"] = {
		["Id"] = 573807351,
		["Name"] = "Xenotrent",
		["Health"] = 600,
		["Power"] = 500,
		["Rarity"] = "Common",
		["AttackEffect"] = "Dash",
		["Color"] = "Blue", 
		["Cost"] = {["Neutral"] = 1, ["Blue"] = 4,},
		["Effect"] = {
			Name = "Haydoscale",
			Description = "Whenever your opponent casts an action or terrain spell, end the turn.",
			["Type"] = "OnEnemyCast",
			["Power"] = {{"EndTurn",1}},
			Target = "Self",
		},
		["Bio"] = "He rocks your world. Literally.",
	},
	
	["Deep Sea Diver"] = {
		["Id"] = 543830736,
		["Name"] = "Deep Sea Diver",
		["Health"] = 650,
		["Power"] = 550,
		["Rarity"] = "Rare",
		["AttackEffect"] = "Dash",
		["Color"] = "Blue", 
		["Cost"] = {["Blue"] = 3,["Neutral"] = 1},
		["Effect"] = {
			Name = "Massive Stamina",
			Description = "Put a random uncommon fighter into your hand at the end of your turns.",
			["Type"] = "OnEnd",
			["Power"] = {{"RandomAdd","Uncommon"}},
			Target = "Ally",
		},
		["Bio"] = "Yes, diving 100 meters without a scuba gear is totally fine.",
	},
	
	["Dicey Dave"] = {
		["Id"] = 543830125,
		["Name"] = "Dicey Dave",
		["Health"] = 800,
		["Power"] = 400,
		["Rarity"] = "Epic",
		["AttackEffect"] = "Dash",
		["Color"] = "Yellow", 
		["Cost"] = {["Yellow"] = 4,["Neutral"] = 1},
		["Effect"] = {
			Name = "Gamble till you drop",
			Description = "Both players lose 400 life each turn.",
			["Type"] = "OnEnd",
			["Power"] = {{"Inflict",400}},
			Target = "All",
		},
		["Bio"] = "You up for a gamble?.",
	},
	
	["Dicey Drake"] = {
		["Id"] = 543830416,
		["Name"] = "Dicey Drake",
		["Health"] = 650,
		["Power"] = 550,
		["Rarity"] = "Epic",
		["AttackEffect"] = "Dash",
		["Color"] = "Blue", 
		["Cost"] = {["Blue"] = 4,["Neutral"] = 2},
		["Effect"] = {
			Name = "Gamble till you drop",
			Description = "When summoned, lock all enemy fighters for 1 turn. All enemy fighters enter play with 150 less power.",
			["Type"] = "OnSummon",
			["Power"] = {{"Lock",1},{"Summon","Dicey Drake Token","Ally"},{"Damage",9999,"Self"}},
			Target = "Opponent",
		},
		["Bio"] = "A hammer wielding former Korblox fighter that's itching for a gamble of the century.",
	},
	
	["Dicey Drake Token"] = {
		["Id"] = 543830416,
		["Name"] = "Dicey Drake",
		["Health"] = 650,
		["Power"] = 625,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Color"] = "Blue", 
		["Cost"] = {["Blue"] = 4,["Neutral"] = 2},
		["Effect"] = {
			Name = "Gamble till you drop",
			Description = "When summoned, lock all enemy fighters for 1 turn. All enemy fighters enter play with 150 less power.",
			["Type"] = "OnEnemySummon",
			["Power"] = {{"Weaken",150}},
			Target = "Aggressor",
		},
		["Bio"] = "A hammer wielding fighter that's itching for a gamble of the century.",
	},
	
	["Wild Reporter Tracy"] = {
		["Id"] = 556338220,
		["Name"] = "Wild Reporter Tracy",
		["Health"] = 750,
		["Power"] = 525,
		["Rarity"] = "Epic",
		["AttackEffect"] = "Dash",
		["Color"] = "Yellow", 
		["Cost"] = {["Blue"] = 2,["Neutral"] = 2,["Yellow"] = 4},
		["Effect"] = {
			Name = "Hot Ancient News",
			Description = "When this card attacks, put a random epic into your hand.",
			["Type"] = "OnAttack",
			["Power"] = {{"RandomAdd","Epic"}},
			Target = "Ally",
		},
		["Bio"] = "Hot Ancient News.",
	},

	["Has"] = {
		["Id"] = 574173044,
		["Name"] = "Has",
		["Health"] = 0,
		["Power"] = 0,
		["Rarity"] = "Legendary",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 6,},
		["Effect"] = {
			Name = "Hot Ancient News",
			Description = "Summon a 450/750 fighter. Whenever you cast an action or terrain spell, increase the power of all allied fighters by 100.",
			["Type"] = "OnSummon",
			["Power"] = {{"Summon","Has Token"}},
			Target = "Ally",
		},
		["Bio"] = "You can hasard a guess as to how this is going to end.",
	},

	["Has Token"] = {
		["Id"] = 574173044,
		["Name"] = "Has",
		["Health"] = 450,
		["Power"] = 750,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Color"] = "Red", 
		["Cost"] = {["Red"] = 6,},
		["Effect"] = {
			Name = "Hot Ancient News",
			Description = "Summon a 450/750 fighter. Whenever you cast an action or terrain spell, increase the power of all allied fighters by 100.",
			["Type"] = "OnAllyCast",
			["Power"] = {{"Strengthen",100}},
			Target = "Ally",
		},
		["Bio"] = "You can hasard a guess as to how this is going to end.",
	},

	["RaveTea"] = {
		["Id"] = 574173044,
		["Name"] = "RaveTea",
		["Health"] = 450,
		["Power"] = 450,
		["Rarity"] = "Epic",
		["AttackEffect"] = "Dash",
		["Color"] = "Blue", 
		["Cost"] = {["Neutral"] = 3, ["Blue"] = 3,},
		["Effect"] = {
			Name = "Hot Ancient News",
			Description = "Enemy fighters enter play as a copy of RaveTea, without this effect.",
			["Type"] = "OnEnemySummon",
			["Power"] = {{"Damage",9999,"Aggressor"},{"Summon","RaveTea Token"}},
			Target = "Opponent",
		},
		["Bio"] = "The mind does not control the tea. The tea controls the mind.",
	},

	["RaveTea Token"] = {
		["Id"] = 574173044,
		["Name"] = "RaveTea",
		["Health"] = 450,
		["Power"] = 450,
		["Rarity"] = "Token",
		["AttackEffect"] = "Dash",
		["Color"] = "Blue", 
		["Cost"] = {["Neutral"] = 3, ["Blue"] = 3,},
		["Bio"] = "The mind does not control the body. The tea controls the body.",
	},

	["Uncreation"] = {
		["Id"] = 574356556,
		["Name"] = "Uncreation",
		["Health"] = 1600,
		["Power"] = 1600,
		["Rarity"] = "Legendary",
		["AttackEffect"] = "Dash",
		["CounterAttackBlock"] = true,
		["Color"] = "Green", 
		["Cost"] = {["Neutral"] = 5, ["Blue"] = 1, ["Green"] = 5,},
		["Archetype"] = "Nightmare",
		["Effect"] = {
			Name = "Hot Ancient News",
			Description = "Whenever a fighter dies, shuffle a nightmare into your opponent's deck. This card can't counterattack.",
			["Type"] = "OnAnyDeath",
			["Power"] = {{"DeckAdd","Nightmare"}},
			Target = "Opponent",
		},
		["Bio"] = "Soon.",
	},
}

return module
