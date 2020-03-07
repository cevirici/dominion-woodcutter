from enum import Enum


class Actions(Enum):
    PLAY = 0
    DISCARD = 1
    TRASH = 2
    REACT = 3
    GAIN = 4
    BUY = 5
    REVEAL = 6


class TurnTypes(Enum):
    PREGAME = 0
    NORMAL = 1
    MISSION = 2
    POSSESSION = 3
    DONATE = 4


class PlayerZones(Enum):
    DECK = 0
    HAND = 1
    PLAY = 2
    DISCARD = 3
    SET_ASIDE = 4
    NATIVE_VILLAGE = 5
    TAVERN = 6
    POSSESSED = 7


class NeutralZones(Enum):
    SUPPLY = 0
    NON_SUPPLY = 1
    TRASH = 2
    BOON_DISCARD = 3
    HEX_DISCARD = 4
    BLACK_MARKET = 5


class Phases(Enum):
    START_OF_TURN = 0
    ACTION = 1
    TREASURE_PLAYING = 2
    BUYS = 3
    NIGHT = 4
    CLEANUP = 5
    PREGAME = 6


class CardNames(Enum):
    Back = 0
    Curse = 1
    Copper = 2
    Silver = 3
    Gold = 4
    Estate = 5
    Duchy = 6
    Province = 7
    Artisan = 8
    Bandit = 9
    Bureaucrat = 10
    Cellar = 11
    Chapel = 12
    CouncilRoom = 13
    Festival = 14
    Gardens = 15
    Harbinger = 16
    Laboratory = 17
    Library = 18
    Market = 19
    Merchant = 20
    Militia = 21
    Mine = 22
    Moat = 23
    Moneylender = 24
    Poacher = 25
    Remodel = 26
    Sentry = 27
    Smithy = 28
    ThroneRoom = 29
    Vassal = 30
    Village = 31
    Witch = 32
    Workshop = 33
    Courtyard = 34
    Conspirator = 35
    Courtier = 36
    Baron = 37
    Bridge = 38
    Diplomat = 39
    Duke = 40
    Harem = 41
    Nobles = 42
    Ironworks = 43
    Lurker = 44
    Masquerade = 45
    Mill = 46
    MiningVillage = 47
    Minion = 48
    Patrol = 49
    Pawn = 50
    Replace = 51
    SecretPassage = 52
    ShantyTown = 53
    Steward = 54
    Swindler = 55
    Torturer = 56
    TradingPost = 57
    Upgrade = 58
    WishingWell = 59
    Ambassador = 60
    Bazaar = 61
    Caravan = 62
    Cutpurse = 63
    Embargo = 64
    Explorer = 65
    FishingVillage = 66
    GhostShip = 67
    Haven = 68
    Island = 69
    Lighthouse = 70
    Lookout = 71
    MerchantShip = 72
    NativeVillage = 73
    Navigator = 74
    Outpost = 75
    PearlDiver = 76
    PirateShip = 77
    Salvager = 78
    SeaHag = 79
    Smugglers = 80
    Tactician = 81
    TreasureMap = 82
    Treasury = 83
    Warehouse = 84
    Wharf = 85
    Alchemist = 86
    Apothecary = 87
    Apprentice = 88
    Familiar = 89
    Golem = 90
    Herbalist = 91
    PhilosophersStone = 92
    Possession = 93
    Potion = 94
    ScryingPool = 95
    Transmute = 96
    University = 97
    Vineyard = 98
    Bank = 99
    Bishop = 100
    Colony = 101
    Contraband = 102
    CountingHouse = 103
    City = 104
    Expand = 105
    Forge = 106
    GrandMarket = 107
    Goons = 108
    Hoard = 109
    KingsCourt = 110
    Loan = 111
    Mint = 112
    Monument = 113
    Mountebank = 114
    Peddler = 115
    Platinum = 116
    Quarry = 117
    Rabble = 118
    RoyalSeal = 119
    Talisman = 120
    TradeRoute = 121
    Vault = 122
    Venture = 123
    Watchtower = 124
    WorkersVillage = 125
    PrizePile = 126
    BagOfGold = 127
    Diadem = 128
    Fairgrounds = 129
    FarmingVillage = 130
    Followers = 131
    FortuneTeller = 132
    Hamlet = 133
    Harvest = 134
    HorseTraders = 135
    HornOfPlenty = 136
    HuntingParty = 137
    Jester = 138
    Menagerie = 139
    Princess = 140
    Remake = 141
    Tournament = 142
    TrustySteed = 143
    YoungWitch = 144
    BorderVillage = 145
    Cache = 146
    Cartographer = 147
    Crossroads = 148
    Develop = 149
    Duchess = 150
    Embassy = 151
    Farmland = 152
    FoolsGold = 153
    Haggler = 154
    Highway = 155
    IllGottenGains = 156
    Inn = 157
    JackOfAllTrades = 158
    Mandarin = 159
    NobleBrigand = 160
    NomadCamp = 161
    Oasis = 162
    Oracle = 163
    Margrave = 164
    Scheme = 165
    SilkRoad = 166
    SpiceMerchant = 167
    Stables = 168
    Trader = 169
    Tunnel = 170
    RuinPile = 171
    Knights = 172
    AbandonedMine = 173
    Altar = 174
    Armory = 175
    BandOfMisfits = 176
    BanditCamp = 177
    Beggar = 178
    Catacombs = 179
    Count = 180
    Counterfeit = 181
    Cultist = 182
    DameAnna = 183
    DameJosephine = 184
    DameMolly = 185
    DameNatalie = 186
    DameSylvia = 187
    DeathCart = 188
    Feodum = 189
    Forager = 190
    Fortress = 191
    Graverobber = 192
    Hermit = 193
    Hovel = 194
    HuntingGrounds = 195
    Ironmonger = 196
    JunkDealer = 197
    Madman = 198
    MarketSquare = 199
    Marauder = 200
    Mercenary = 201
    Mystic = 202
    Necropolis = 203
    OvergrownEstate = 204
    Pillage = 205
    PoorHouse = 206
    Procession = 207
    Rats = 208
    Rebuild = 209
    Rogue = 210
    RuinedLibrary = 211
    RuinedMarket = 212
    RuinedVillage = 213
    Sage = 214
    Scavenger = 215
    SirBailey = 216
    SirDestry = 217
    SirMartin = 218
    SirMichael = 219
    SirVander = 220
    Spoils = 221
    Storeroom = 222
    Squire = 223
    Survivors = 224
    Urchin = 225
    Vagrant = 226
    WanderingMinstrel = 227
    Advisor = 228
    Baker = 229
    Butcher = 230
    CandlestickMaker = 231
    Doctor = 232
    Herald = 233
    Journeyman = 234
    Masterpiece = 235
    MerchantGuild = 236
    Plaza = 237
    Taxman = 238
    Soothsayer = 239
    Stonemason = 240
    Alms = 241
    Amulet = 242
    Artificer = 243
    Ball = 244
    Bonfire = 245
    Borrow = 246
    BridgeTroll = 247
    CaravanGuard = 248
    Champion = 249
    CoinOfTheRealm = 250
    Disciple = 251
    DistantLands = 252
    Dungeon = 253
    Duplicate = 254
    Expedition = 255
    Ferry = 256
    Fugitive = 257
    Gear = 258
    Giant = 259
    Guide = 260
    HauntedWoods = 261
    Hero = 262
    Hireling = 263
    Inheritance = 264
    LostArts = 265
    LostCity = 266
    Magpie = 267
    Messenger = 268
    Miser = 269
    Mission = 270
    Pathfinding = 271
    Page = 272
    Peasant = 273
    Pilgrimage = 274
    Plan = 275
    Port = 276
    Quest = 277
    Ranger = 278
    Raid = 279
    Ratcatcher = 280
    Raze = 281
    Relic = 282
    RoyalCarriage = 283
    Save = 284
    ScoutingParty = 285
    Seaway = 286
    Soldier = 287
    Storyteller = 288
    SwampHag = 289
    Teacher = 290
    TravellingFair = 291
    Trade = 292
    Training = 293
    Transmogrify = 294
    TreasureTrove = 295
    TreasureHunter = 296
    Warrior = 297
    WineMerchant = 298
    Encampment = 299
    Plunder = 300
    Patrician = 301
    Emporium = 302
    Settlers = 303
    BustlingVillage = 304
    Catapult = 305
    Rocks = 306
    Gladiator = 307
    Fortune = 308
    Castles = 309
    HumbleCastle = 310
    CrumblingCastle = 311
    SmallCastle = 312
    HauntedCastle = 313
    OpulentCastle = 314
    SprawlingCastle = 315
    GrandCastle = 316
    KingsCastle = 317
    Advance = 318
    Annex = 319
    Archive = 320
    Aqueduct = 321
    Arena = 322
    BanditFort = 323
    Banquet = 324
    Basilica = 325
    Baths = 326
    Battlefield = 327
    Capital = 328
    Charm = 329
    ChariotRace = 330
    CityQuarter = 331
    Colonnade = 332
    Conquest = 333
    Crown = 334
    Delve = 335
    DefiledShrine = 336
    Dominate = 337
    Donate = 338
    Enchantress = 339
    Engineer = 340
    FarmersMarket = 341
    Forum = 342
    Fountain = 343
    Groundskeeper = 344
    Keep = 345
    Labyrinth = 346
    Legionary = 347
    MountainPass = 348
    Museum = 349
    Obelisk = 350
    Orchard = 351
    Overlord = 352
    Palace = 353
    Ritual = 354
    RoyalBlacksmith = 355
    Sacrifice = 356
    SaltTheEarth = 357
    Tax = 358
    Temple = 359
    Tomb = 360
    Tower = 361
    Triumph = 362
    TriumphalArch = 363
    Villa = 364
    Wall = 365
    WolfDen = 366
    Wedding = 367
    WildHunt = 368
    Windfall = 369
    Pig = 370
    MinusCard = 371
    MinusCoin = 372
    StateLimbo = 373
    DruidBoons = 374
    BoonDrawpile = 375
    BoonDiscardpile = 376
    TheEarthsGift = 377
    TheFieldsGift = 378
    TheFlamesGift = 379
    TheForestsGift = 380
    TheMoonsGift = 381
    TheMountainsGift = 382
    TheRiversGift = 383
    TheSeasGift = 384
    TheSkysGift = 385
    TheSunsGift = 386
    TheSwampsGift = 387
    TheWindsGift = 388
    HexDrawpile = 389
    HexDiscardpile = 390
    BadOmens = 391
    Delusion = 392
    Envy = 393
    Famine = 394
    Fear = 395
    Greed = 396
    Haunting = 397
    Locusts = 398
    Misery = 399
    Plague = 400
    Poverty = 401
    War = 402
    Miserable = 403
    TwiceMiserable = 404
    Envious = 405
    Deluded = 406
    LostInTheWoods = 407
    Bard = 408
    BlessedVillage = 409
    Changeling = 410
    Cemetery = 411
    Cobbler = 412
    Conclave = 413
    Crypt = 414
    CursedVillage = 415
    DenOfSin = 416
    DevilsWorkshop = 417
    Druid = 418
    Exorcist = 419
    FaithfulHound = 420
    Fool = 421
    GhostTown = 422
    Guardian = 423
    Idol = 424
    Leprechaun = 425
    Monastery = 426
    Necromancer = 427
    NightWatchman = 428
    Pixie = 429
    Pooka = 430
    Raider = 431
    SacredGrove = 432
    SecretCave = 433
    Shepherd = 434
    Skulk = 435
    Tormentor = 436
    TragicHero = 437
    Tracker = 438
    Vampire = 439
    Werewolf = 440
    CursedGold = 441
    Goat = 442
    HauntedMirror = 443
    LuckyCoin = 444
    MagicLamp = 445
    Pasture = 446
    Pouch = 447
    Bat = 448
    Ghost = 449
    Imp = 450
    WillOWisp = 451
    Wish = 452
    ZombieApprentice = 453
    ZombieMason = 454
    ZombieSpy = 455
    ActingTroupe = 456
    BorderGuard = 457
    CargoShip = 458
    Ducat = 459
    Experiment = 460
    FlagBearer = 461
    Hideout = 462
    Inventor = 463
    Improve = 464
    Lackeys = 465
    MountainVillage = 466
    Patron = 467
    Priest = 468
    Research = 469
    SilkMerchant = 470
    OldWitch = 471
    Recruiter = 472
    Scepter = 473
    Scholar = 474
    Sculptor = 475
    Seer = 476
    Spices = 477
    Swashbuckler = 478
    Treasurer = 479
    Villain = 480
    Flag = 481
    Horn = 482
    Key = 483
    Lantern = 484
    TreasureChest = 485
    Academy = 486
    Barracks = 487
    Canal = 488
    Capitalism = 489
    Cathedral = 490
    Citadel = 491
    CityGate = 492
    CropRotation = 493
    Exploration = 494
    Fair = 495
    Fleet = 496
    Guildhall = 497
    Innovation = 498
    Pageant = 499
    Piazza = 500
    RoadNetwork = 501
    Sewers = 502
    Silos = 503
    SinisterPlot = 504
    StarChart = 505
    Sauna = 506
    Avanto = 507
    BlackMarket = 508
    Envoy = 509
    Governor = 510
    Prince = 511
    Stash = 512
    Summon = 513
    WalledVillage = 514
    BlackMarketPile = 515
    Dismantle = 516
    Captain = 517
    Church = 518
    BlackCat = 519
    Sleigh = 520
    Supplies = 521
    CamelTrain = 522
    Goatherd = 523
    Scrap = 524
    Sheepdog = 525
    SnowyVillage = 526
    Stockpile = 527
    BountyHunter = 528
    Cardinal = 529
    Cavalry = 530
    Groom = 531
    Hostelry = 532
    VillageGreen = 533
    Barge = 534
    Coven = 535
    Displace = 536
    Falconer = 537
    Fisherman = 538
    Gatekeeper = 539
    HuntingLodge = 540
    Kiln = 541
    Livery = 542
    Mastermind = 543
    Paddock = 544
    Sanctuary = 545
    Destrier = 546
    Wayfarer = 547
    AnimalFair = 548
    Horse = 549
    WayOfTheButterfly = 550
    WayOfTheCamel = 551
    WayOfTheChameleon = 552
    WayOfTheFrog = 553
    WayOfTheGoat = 554
    WayOfTheHorse = 555
    WayOfTheMole = 556
    WayOfTheMonkey = 557
    WayOfTheMouse = 558
    WayOfTheMule = 559
    WayOfTheOtter = 560
    WayOfTheOwl = 561
    WayOfTheOx = 562
    WayOfThePig = 563
    WayOfTheRat = 564
    WayOfTheSeal = 565
    WayOfTheSheep = 566
    WayOfTheSquirrel = 567
    WayOfTheTurtle = 568
    WayOfTheWorm = 569
    Delay = 570
    Desperation = 571
    Gamble = 572
    Pursue = 573
    Ride = 574
    Toil = 575
    Enhance = 576
    March = 577
    Transport = 578
    Banish = 579
    Bargain = 580
    Invest = 581
    SeizeTheDay = 582
    Commerce = 583
    Demand = 584
    Stampede = 585
    Reap = 586
    Enclave = 587
    Alliance = 588
    Populate = 589
    CardOfTheButterfly = 590
    CardOfTheCamel = 591
    CardOfTheChameleon = 592
    CardOfTheFrog = 593
    CardOfTheGoat = 594
    CardOfTheHorse = 595
    CardOfTheMole = 596
    CardOfTheMonkey = 597
    CardOfTheMouse = 598
    CardOfTheMule = 599
    CardOfTheOtter = 600
    CardOfTheOwl = 601
    CardOfTheOx = 602
    CardOfThePig = 603
    CardOfTheRat = 604
    CardOfTheSeal = 605
    CardOfTheSheep = 606
    CardOfTheSquirrel = 607
    CardOfTheTurtle = 608
    CardOfTheWorm = 609


class Preds(Enum):
    GAIN = 0
    BUY_AND_GAIN = 1
    TRASH = 2
    DISCARD = 3
    PLAY = 4
    PLAY_AGAIN = 5
    PLAY_THIRD = 6
    TOPDECK = 7
    DRAW = 8
    REVEAL = 9
    REVEAL_SEARCHING = 10
    LOOK_AT = 11
    PUT_IN_HAND = 12
    SET_ASIDE = 13
    PUT_ON_MAT = 14
    CALL = 15
    DECK_TO_DISCARD = 16
    BACK_ON_DECK = 17
    SHUFFLE_INTO_DECK = 18
    INSERT_IN_DECK = 19
    EXCHANGE_RETURN = 20
    EXCHANGE_RECEIVE = 21
    PASS = 22
    STARTS_WITH = 23
    BUY = 24
    COUNTER_ADD = 25
    COUNTER_RESET = 26
    REACTS_WITH = 27
    SHUFFLES = 28
    NEW_TURN = 29
    WISH_CORRECT = 30
    WISH_WRONG = 31
    BLACK_MARKET_RESHUFFLE = 32
    RETURN_TO = 33
    PUT_ON_BOTTOM_OF = 34
    LOSE_TRACK_MOVED = 35
    LOSE_TRACK_HIDDEN = 36
    LOSE_TRACK_RESHUFFLED = 37
    LOSE_TRACK_ANONYMOUS = 38
    EXPLAIN_POINTS_BANDIT_CAMP = 39
    EXPLAIN_POINTS_TOWER = 40
    EXPLAIN_POINTS_TRIUMPHAL_ARCH_ABSENT = 41
    EXPLAIN_POINTS_TRIUMPHAL_ARCH = 42
    EXPLAIN_POINTS_WALL = 43
    EXPLAIN_POINTS_WOLF_DEN = 44
    EXPLAIN_POINTS_PALACE = 45
    EXPLAIN_POINTS_ORCHARD = 46
    EXPLAIN_POINTS_OBELISK = 47
    EXPLAIN_POINTS_MUSEUM = 48
    EXPLAIN_POINTS_KINGS_CASTLE = 49
    EXPLAIN_POINTS_KEEP = 50
    EXPLAIN_POINTS_HUMBLE_CASTLE = 51
    EXPLAIN_POINTS_FOUNTAIN = 52
    EXPLAIN_POINTS_FEODUM = 53
    EXPLAIN_POINTS_GARDENS = 54
    EXPLAIN_POINTS_VINEYARD = 55
    EXPLAIN_POINTS_SILK_ROAD = 56
    EXPLAIN_POINTS_FAIRGROUNDS = 57
    EXPLAIN_POINTS_DUKE = 58
    EXPLAIN_POINTS_DUH = 59
    EXPLAIN_POINTS_VP_TOKENS = 60
    DRAW_FROM_WHARF = 61
    DRAW_FROM_HIRELING = 62
    DRAW_FROM_ENCHANTRESS = 63
    DRAW_FROM_HAUNTED_WOODS = 64
    DRAW_FROM_CARAVAN = 65
    PUT_IN_HAND_FROM_GEAR = 66
    PUT_IN_HAND_FROM_HAVEN = 67
    PUT_IN_HAND_FROM_ARCHIVE = 68
    CARDS_BUY_ACTION_FROM_TACTICIAN = 69
    COIN_FROM_FISHING_VILLAGE = 70
    COINS_FROM_MERCHANT_SHIP = 71
    COIN_FROM_LIGHTHOUSE = 72
    COIN_FROM_CARAVAN_GUARD = 73
    COINS_FROM_SWAMP_HAG = 74
    BUY_FROM_BRIDGE_TROLL = 75
    STARTS_TURN = 76
    TAKE_VP_FROM = 77
    MOVE_VP_FROM_TO = 78
    OBELISK_CHOOSES_PILE = 79
    PLAYER_MOVES_TOKEN_TO = 80
    PLAYER_GETS_VP = 81
    PLAYER_GETS_VP_FROM = 82
    GET_VP_FROM_GROUNDSKEEPER = 83
    GET_VP_FROM_GOONS = 84
    ADDS_VP_TO = 85
    WAITING_FOR = 86
    ALMS_FAIL = 87
    BORROW_FAIL = 88
    QUEST_FAIL_ATTACK = 89
    QUEST_FAIL_CURSES = 90
    QUEST_FAIL_DISCARD = 91
    SAVE_FAIL = 92
    SCOUTING_PARTY_FAIL = 93
    BONFIRE_FAIL = 94
    MISSION_FAIL = 95
    MISSION_SUCCESS = 96
    TRADE_FAIL = 97
    PLAYER_FLIPS_TOKEN_DOWN = 98
    PLAYER_FLIPS_TOKEN_UP = 99
    TRIUMPH_FAIL = 100
    ADVANCE_FAIL = 101
    TAX_ADD_DEBT = 102
    TAX_TAKE_DEBT = 103
    RITUAL_FAIL = 104
    WINDFALL_FAIL = 105
    DOMINATE_FAIL = 106
    PLUS_ACTION_FROM = 107
    PLUS_BUY_FROM = 108
    DRAWS_FROM = 109
    PLUS_COIN_FROM = 110
    DRAWS_LESS_BECAUSE = 111
    PRINCE_FAILS = 112
    POSSESSION_TAKES_COIN_TOKENS = 113
    POSSESSION_TAKES_DEBT_TOKENS = 114
    POSSESION_TAKES_VP_TOKENS = 115
    OUTPOST_FAIL_PREVIOUS_TURN = 116
    OUTPOST_FAIL_ALREADY_PLAYED = 117
    OUTPOST_FAIL_NOT_NAMED_OUTPOST = 118
    TAKES_DEBT = 119
    REPAYS_DEBT = 120
    REPAYS_SOME_DEBT = 121
    RETURNS_TOKEN = 122
    SET_ASIDE_WITH = 123
    BLOCKS_WITH = 124
    NAMES = 125
    GAIN_ON_DRAWPILE = 126
    GAIN_FROM_TRASH = 127
    OBELISK_FAILS = 128
    INHERITS = 129
    GAME_META_INFO = 130
    THE_SKYS_GIFT_FAIL = 131
    RECEIVES = 132
    PUT_IN_HAND_FROM_CRYPT = 133
    COIN_FROM_GUARDIAN = 134
    EXPLAIN_POINTS_PASTURE = 135
    TAKE = 136
    RETURN = 137
    THE_SUNS_GIFT_FAIL = 138
    DRUID_SELECTS_BOONS = 139
    DRAW_FROM_GHOST_TOWN = 140
    DISCARD_RECEIVABLE = 141
    COINS_FROM_RAIDER = 142
    COINS_FROM_SECRET_CAVE = 143
    PLAY_ENCHANTED = 144
    DRAW_FROM_DEN_OF_SIN = 145
    DRAW_FROM_HORSE_TRADERS = 146
    PUT_IN_HAND_FROM_CARGO_SHIP = 147
    GAIN_ANOTHER_EXPERIMENT = 148
    COFFERS_FROM_PATRON = 149
    PLAYER_GETS_COINS_FROM_PRIEST = 150
    GETS_COFFER = 151
    GETS_COFFERS = 152
    GETS_COFFER_FROM = 153
    GETS_COFFERS_FROM = 154
    USES_COFFER = 155
    USES_COFFERS = 156
    GETS_VILLAGER = 157
    GETS_VILLAGERS = 158
    GETS_VILLAGER_FROM = 159
    GETS_VILLAGERS_FROM = 160
    USES_VILLAGER = 161
    USES_VILLAGERS = 162
    ENDS_BUYPHASE = 163
    GETS_ACTION = 164
    GETS_ACTIONS = 165
    GETS_ACTION_FROM = 166
    GETS_ACTIONS_FROM = 167
    GETS_BUY = 168
    GETS_BUYS = 169
    GETS_BUY_FROM = 170
    GETS_BUYS_FROM = 171
    GETS_COIN = 172
    GETS_COINS = 173
    GETS_COIN_FROM = 174
    GETS_COINS_FROM = 175
    DRAW_FROM_ROAD_NETWORK = 176
    DRAW_FROM_SILOS = 177
    DRAW_FROM_SINISTER_PLOT = 178
    LOSES_COIN = 179
    LOSES_COINS = 180
    BOTTOMDECKS = 181
    TRASH_WITH = 182
    PLAY_AGAIN_CITADEL = 183
    PRIEST_ACTIVATES = 184
    PLAY_TREASURES_FOR = 185
    PLAY_TREASURES_AGAIN_FOR = 186
    RETURNS_MINUS_COIN_TOKEN = 187
    PUT_IN_HAND_FROM_CHURCH = 188
    PLAY_WITH_CAPTAIN = 189
    NOT_IN_PLAY_PREVENTED_PLAYING = 190
    PILLAGE_FAIL = 191
    DEATH_CART_FAIL = 192
    TACTICIAN_FAIL = 193
    EMBARGO_FAIL = 194
    EXILE = 195
    DISCARD_FROM_EXILE = 196
    DISCARD_REVEALED = 197
    PLAY_WITH = 198
    DRAW_FROM_INVEST = 199
    IS_INVESTED = 200
    COMMERCE_FAIL = 201
    STAMPEDE_FAIL = 202
    PLAY_USING_WAY = 203
    WAY_OF_THE_HORSE_FAILS_NO_PILE = 204
    WAY_OF_THE_HORSE_FAILS_NOT_IN_PLAY = 205
    WAY_OF_THE_TURTLE_FAILS_TO_SET_ASIDE = 206
    USES_WAY = 207
    WOULD_GET_COIN = 208
    WOULD_DRAW = 209
    TOPDECK_WITH = 210