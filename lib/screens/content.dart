import 'package:yugioh_masterduel_app/models/models.dart';

class Content {
  static final guideContent = <ExpansionItem>[
    ExpansionItem(
      header: 'How to Start',
      content:
          "Yu-gi-oh! is a Trading Card Game, where the objective is win with your card strategies. There are many forms of wins but the main objective is to reduce your opponent's life points to 0 \n\nThere are different card types like monsters, spells and traps that you can use on your main deck, it must have between 40 - 60 cards, and the extra deck is made by special monsters (those with purple, white, black or blue frames) and you can have up to 15 of those.\n\nAt the start of the match the two players will start with 8000 life points, shuffling and drawing 5 cards from his/her deck,the player who goes in the first turn cannot attack or draw a card.",
      image:
          'https://gruposaedal.com/wp-content/uploads/2022/02/1643961247_Explicacion-de-la-lista-de-clasificacion-y-el-sistema-de-1140x600.jpg',
    ),
    ExpansionItem(
      header: 'Card Types',
      content:
          'Monsters: monsters are cards that have features as level, attribute, type, attack and/or defense and can have an effect. Some monster card-types must be summoned in a specific way.\n\n Spells: Card that can give you an advantage, but can only be used in your main phase, there are normal with only one use, fields that have special effects, equip cards that will affect only one monster, continuous that can be used until they leave the field and quick effects that can be used in any moment of your turn and also be used like traps\n\n Traps: These cards first must set it on your field and  cannot be used the turn you do, but after that it can be used at any moment even during your turn, and like spells there are normal traps, continuous traps and counter traps that can be only responded to by other counter traps. ',
      image:
          'https://www.cosplaygen.com/wp-content/uploads/2020/07/LRsEh5m.jpg',
    ),
    ExpansionItem(
      header: 'Game Field',
      content:
          'The game field is a symmetrical field divided by zones where you can play your cards.\n\n In the middle you can have 5 spaces for monsters, 5 for spells/traps but the first and the last zone are also Pendulum Zones, in the left side is your field zone and extra deck zone, in the right side is your graveyard and main deck zone, at last we have two zones above the 2 and 4 monster zone where you can summon an extra deck monster(you can only use one of the two).',
      image:
          'https://static.wikia.nocookie.net/yugioh/images/e/e6/Playing_area_New_Master_Rules.png/revision/latest?cb=20170406233740',
    ),
    ExpansionItem(
      header: 'Basic Terms',
      content:
          'Vanilla: Monsters that had no effectn\n\nsacrifice/tribute: send monsters from your field or hand to do a certain action\n\nHandtrap: Cards with effects that can be solved during your opponents turn from your hand\n\nStaple: Cards that have generic effects and can be used in almost all decks, like most of hand traps',
      image:
          'https://assets.reedpopcdn.com/yu-gi-oh-master-duel-secret-packs-9005-1643300914258.jpg/BROK/thumbnail/1600x900/quality/100/yu-gi-oh-master-duel-secret-packs-9005-1643300914258.jpg',
    ),
    ExpansionItem(
      header: 'Summons',
      content:
          'Monsters can only be Summoned to the Monster Zones on your side of the field in the Zone you want in Attack or Defense Position. And once per turn except the turn that monster was summoned you can chance their battle position. ',
      image: 'https://i.ytimg.com/vi/K6FcBMa67SU/hqdefault.jpg',
    ),
    ExpansionItem(
      header: 'Fusion',
      content:
          ' To Fusion summon a monster you will need the monsters listed in the card you want to summon and a fusion effect card like polymerization; After the effect resolves the monsters are sent to the graveyard and the fusion monster can be placed on the field. \n\n There are many exceptions or tricks to summon fusion monster in other ways like monster, trap  or spell  effect.',
      image:
          'https://yugiohblog.konami.com/articles/wp-content/uploads/2018/10/CutToTheChase.jpg',
    ),
    ExpansionItem(
      header: 'Synchro',
      content:
          'Synchro summons need a special type of monster named “Tuner” and other(s) monster(s). The total level of those monster must be equal to the monster you want to summon; The monsters are sent to the graveyard and after that the synchro monster can be placed on the field',
      image:
          'http://yugiohblog.konami.com/articles/wp-content/uploads/2010/03/B1.jpg',
    ),
    ExpansionItem(
      header: 'XYZ',
      content:
          'To xyz summon a monster you will need the materials listed in that card, the monsters must have the same level and be face up on the field before use them. \n\Xyz monsters are special because the materials for its summon are not sent to the graveyard, instead they are stacked and the xyz monster is placed in top of it; Also the xyz monster have to send the stacked monsters (materails) to activate some efects',
      image:
          'https://yugiohblog.konami.com/articles/wp-content/uploads/2011/07/XyzSummons.jpg',
    ),
    ExpansionItem(
      header: 'Pendulum',
      content:
          'They are monsters that have scales (the numbers on the bottom sides of the illustration).\n\nThey can be used as magic in pendulum zones, using only the effect that appears between their scales.\n\nThey can be used like other monsters but when destroyed they are sent face up to the Extra Deck instead of the Graveyard.\n\nOnce per turn during the Main Phase if you have two Pendulum Monsters in the Pendulum Zone, you can Pendulum Summon and Summon all cards in your hand whose Level is between the card scales. You can also Summon one of your face-up Pendulum Monsters from the Extra Deck that matches the Level of the Scale in the Extra Monster Zone or where your Link Monsters point.\n\nScales [2] and [7] would allow you to summon monsters from level 3 to 6. ',
      image:
          'https://s3.duellinksmeta.com/img/content/news/2021/08/datamined-leaks/tips183a.webp',
    ),
    ExpansionItem(
      header: 'Link',
      content:
          'Link Monsters can only be in Attack Position and have red arrows pointing to other monster zones.\n\nTo be summoned they need a monster sacrifice indicated in their text, which is equal to the number of active arrows they have, if a link monster is used to summon another, the arrows that it has active can also count as a sacrifice.\n\nFor example, to summon a Link 4 monster that needs two monsters, I can use any four monsters or two Link 2 monsters.\n\nLink Monsters when Summoned by this method can only be in the Extra Monster Zone or where it points to on other Link Monsters.',
      image: 'https://www.yugioh-card.com/hk/images/howto/en/nm2.jpg',
    )
  ];

  static final tipsContent = <ExpansionItem>[
    ExpansionItem(
      header: 'Read The Cards On The Field',
      content:
          "the most powerful Yu-Gi-Oh! technique that even the most skilled players often forget about: reading the cards.\n\nThrough the power of reading, it's easier to understand why certain interactions play out the way they do. If a play comes as a surprise at some point, reading the card is a great way to make sure to be prepared for it next time.",
      image:
          'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2022/01/YGO-Master-Duel-Pooh-Reading-and-Card-Text.jpg?q=50&fit=crop&w=740&dpr=1.5',
    ),
    ExpansionItem(
      header: 'Take Your Time To Make Plays',
      content:
          "Each turn, the player is given eight full minutes to make their plays. Even for newer players, it is plenty of time to think through lines of play. Most players who are interested in playing the game competitively understand that games are going to take some time to play out. The second most important thing one can do in the game is to think about plays before making them.",
      image:
          'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2022/01/YGO-Master-Duel-Anime-Hand-and-Game-Board-During-Match.jpg?q=50&fit=crop&w=740&dpr=1.5',
    ),
    ExpansionItem(
      header: 'Save Craft Points For Staple Cards When You Can',
      content:
          "Craft points can be obtained through progressing through missions, the battle pass, or through dismantling cards one's deck doesn't need. The conversion rate is simple: three cards of a rarity need to be dismantled to craft one card of the same rarity. Craft points are great for filling in those gaps in a deck list that's missing one or cards. However, if those cards can be obtained more easily through other means, consider saving craft points to get staple cards",
      image:
          'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2022/01/YGO-Master-Duel-Maxx-C---Nibiru---Ash-Blossom-Card-Art.jpg?q=50&fit=crop&w=740&dpr=1.5',
    ),
    ExpansionItem(
      header: 'Focus Free Gems On Relevant Secret Packs',
      content:
          "As a free-to-play game, a divide is created between those willing to whale and those who are looking to play for free. Master Duel is actually pretty good in this respect, as building one's first deck is easily feasible for new players. Smart spending is the best way to create a free-to-play deck, and Secret Packs are the key. \n\n Secret Packs are special packs unlocked by obtaining an SR or UR card of an archetype or theme. Pulling Dark Magician, for example, unlocks a whole pack focused on Dark Spellcaster support. While they are hidden at first, crafting an SR or UR card in the archetype also unlocks the pack. From there, dumping free gems into the pack will eventually pull either the cards a build needs, or can be converted into resources to fill in the gaps in a decklist.",
      image:
          'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2022/01/YGO-Master-Duel-Maxx-C---Nibiru---Ash-Blossom-Card-Art.jpg?q=50&fit=crop&w=740&dpr=1.5',
    ),
    ExpansionItem(
      header: 'Use The Spectate Feature To The Fullest',
      content:
          "Finding a deck and getting the theory behind it is great, but with so many cards in the game, it's a challenge to learn what every single deck is capable of doing. A TCG player needs to be able to pilot their own deck while understanding how to play around their opponents. It can be hard to learn certain chokepoints and timings without a ton of hours invested. Fortunately, the spectator tool is a great way to see more decks at play.",
      image:
          'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2022/01/YGO-Master-Duel-Opening-Secret-Packs.jpg?q=50&fit=crop&w=740&dpr=1.5',
    ),
    ExpansionItem(
      header: 'Find Your Playstyle',
      content:
          "It may seem at first glance that there are an overwhelming number of possibilities for decks in Master Duel. That's technically true, but a constructed deck with a specific game plan and win condition will end up more similar to other decks than one would initially think. The first step in getting started with constructed play is finding a style of play that fits one's individual vibe, and building decks that fit that style. \n\nYu-Gi-Oh decks tend to fall under the umbrella of the big three: Control, Midrange, and Aggro.\n\nControl decks choke the opponent out by controlling resources and forcing sub-optimal play.\n\nMidrange decks require multiple turns to get going, but quickly snowball out of control.\n\nAggro decks hit fast and hit hard, but tend to struggle to recover when the tank is empty.",
      image:
          'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2022/01/YGO-Master-Duel-Drytron-and-Mekk-Knight-Boss-Monsters-Being-Summoned.jpg?q=50&fit=crop&w=740&dpr=1.5',
    ),
    ExpansionItem(
      header: 'Take Advantage Of The Solo Mode',
      content:
          "While in-game tutorials on their own aren't the most detailed, the solo mode, as a whole, works as a great teaching tool for the game. The mode throws different decks and playstyles at the player, allowing them to get used to the modern game in a controlled environment. Unlike the old days, the modern game is loaded with tons of different summoning mechanics and interactions. It's good for players to get acclimated to the experience from the shallow end.",
      image:
          'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2022/01/YGO-Master-Duel-Solo-Mode-Menu-and-Selecting-a-Match.jpg?q=50&fit=crop&w=740&dpr=1.5',
    ),
    ExpansionItem(
      header: 'DON’T GO OVER 40',
      content:
          "WWhile the rules allow anything from 40-60 cards in a deck, you always want to opt for the bare minimum here. Building a deck is all about facilitating combos, so pick out cards that best serve your style of play, and cut away anything too scenario-specific",
      image:
          'https://ygoprodeck.com/wp-content/uploads/2022/03/PhotonMaterDuel40CardDeck-deck-264387.jpg',
    ),
    ExpansionItem(
      header: 'DON’T WASTE YOUR GEMS',
      content:
          "You receive a bunch of gems during the first few hours of playing Master Duel, but don’t go spending them all at once. Not only does the gem-well dry up pretty quick, but you can get specific cards much easier by generating them in the deck build menu. Save your gems for when you unlock Yu-Gi-Oh! Master Duel secret packs, and only buy those containing the cards you need for your deck.",
      image:
          'https://www.pockettactics.com/wp-content/uploads/2022/02/Yu-Gi-Oh-Master-duel-deck-building-900x506.jpg',
    ),
  ];
}
