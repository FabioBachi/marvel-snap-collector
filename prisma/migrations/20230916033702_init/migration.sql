-- CreateTable
CREATE TABLE "Cards" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "cost" SMALLINT NOT NULL,
    "power" SMALLINT NOT NULL,
    "ability" TEXT,
    "flavor" TEXT,
    "art" VARCHAR(255) NOT NULL,
    "slug" VARCHAR(255) NOT NULL,

    CONSTRAINT "Cards_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Variants" (
    "id" SERIAL NOT NULL,
    "art" VARCHAR(255) NOT NULL,
    "sketcher" VARCHAR(255) NOT NULL,
    "colorist" VARCHAR(255) NOT NULL,
    "cardId" INTEGER NOT NULL,

    CONSTRAINT "Variants_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Users" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "Users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UsersCards" (
    "cardId" INTEGER NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "UsersCards_pkey" PRIMARY KEY ("cardId","userId")
);

-- CreateIndex
CREATE UNIQUE INDEX "Cards_name_key" ON "Cards"("name");

-- AddForeignKey
ALTER TABLE "Variants" ADD CONSTRAINT "Variants_cardId_fkey" FOREIGN KEY ("cardId") REFERENCES "Cards"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UsersCards" ADD CONSTRAINT "UsersCards_cardId_fkey" FOREIGN KEY ("cardId") REFERENCES "Cards"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UsersCards" ADD CONSTRAINT "UsersCards_userId_fkey" FOREIGN KEY ("userId") REFERENCES "Users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (1, 'Abomination', 5, 9, NULL, 'Foolish rabble! You are beneath me!', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/abomination.webp?v=126', 'abomination');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (2, 'Absorbing Man', 4, 4, '<strong>On Reveal</strong>: If the last card you played has an On Reveal, copy its text. (if it''s in play)', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/absorbing-man.webp?v=126', 'absorbing-man');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (3, 'Adam Warlock', 2, 0, 'At the end of each turn, if you are winning this location, draw a card.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/adam-warlock.webp?v=126', 'adam-warlock');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (4, 'Aero', 5, 8, '<strong>On Reveal</strong>: Move the last enemy card played this turn to this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/aero.webp?v=126', 'aero');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (5, 'Agatha Harkness', 6, 14, 'Agatha starts in your hand and plays your cards for you.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/agatha-harkness.webp?v=126', 'agatha-harkness');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (6, 'Agent 13', 1, 2, '<strong>On Reveal</strong>: Add a random card to your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/agent-13.webp?v=126', 'agent-13');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (7, 'Agent Coulson', 3, 4, '<strong>On Reveal</strong>: Add a random 4-Cost and 5-Cost card to your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/agent-coulson.webp?v=126', 'agent-coulson');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (8, 'America Chavez', 6, 9, 'Starts on the bottom of your deck. Draw this on turn 6.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/america-chavez.webp?v=126', 'america-chavez');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (9, 'Angel', 1, 2, 'When one of your cards is destroyed, this flies out of your deck to replace it.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/angel.webp?v=126', 'angel');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (10, 'Angela', 2, 0, 'After you play a card here, +2 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/angela.webp?v=126', 'angela');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (407, 'Ant Man', 1, 1, '<strong>Ongoing</strong>: If you have 3 other cards here, +3 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/ant-man.webp?v=126', 'ant-man');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (12, 'Apocalypse', 6, 8, 'When you discard this from your hand, put it back with +4 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/apocalypse.webp?v=126', 'apocalypse');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (13, 'Armor', 2, 3, '<strong>Ongoing</strong>: Cards at this location can''t be destroyed.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/armor.webp?v=126', 'armor');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (14, 'Arnim Zola', 6, 0, '<strong>On Reveal</strong>: Destroy a random friendly card here. Add copies of it to the other locations.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/arnim-zola.webp?v=126', 'arnim-zola');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (379, 'Attuma', 4, 10, 'If you have another card here at the end of your turn, destroy this.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/attuma.webp?v=126', 'attuma');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (18, 'Baron Mordo', 2, 3, '<strong>On Reveal</strong>: Your opponent draws a card. Set its Cost to 6.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/baron-mordo.webp?v=126', 'baron-mordo');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (380, 'Bast', 1, 1, '<strong>On Reveal</strong>: Set the Power of all cards in your hand to 3.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/bast.webp?v=126', 'bast');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (20, 'Beast', 3, 4, '<strong>On Reveal</strong>: Return your other cards at this location to your hand. They cost 1 less.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/beast.webp?v=126', 'beast');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (21, 'Bishop', 3, 1, 'After you play a card, this gains +1 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/bishop.webp?v=126', 'bishop');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (22, 'Black Bolt', 5, 7, '<strong>On Reveal</strong>: Discard the lowest-cost card from your opponent''s hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/black-bolt.webp?v=126', 'black-bolt');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (23, 'Black Cat', 4, 9, 'If you end the turn with this in your hand, discard it.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/black-cat.webp?v=126', 'black-cat');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (25, 'Black Panther', 5, 4, '<strong>On Reveal</strong>: Double this card''s Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/black-panther.webp?v=126', 'black-panther');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (26, 'Black Widow', 2, 1, '<strong>On Reveal</strong>: Add a Widow''s Bite to your opponent''s hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/black-widow.webp?v=126', 'black-widow');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (27, 'Blade', 1, 3, '<strong>On Reveal</strong>: Discard the rightmost card from your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/blade.webp?v=126', 'blade');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (30, 'Blue Marvel', 5, 3, '<strong>Ongoing</strong>: Your other cards have +1 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/blue-marvel.webp?v=126', 'blue-marvel');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (31, 'Brood', 3, 2, '<strong>On Reveal</strong>: Add 2 Broodlings to this location with the same Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/brood.webp?v=126', 'brood');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (387, 'Broodling', 3, 2, NULL, 'We are Brood, from Broodworld. You are lunch.', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/broodling.webp?v=126', 'broodling');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (32, 'Bucky Barnes', 2, 1, 'When this is destroyed, replace it with the Winter Soldier.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/bucky-barnes.webp?v=126', 'bucky-barnes');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (34, 'Cable', 2, 2, '<strong>On Reveal</strong>: Put the bottom card of your opponent''s deck into your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/cable.webp?v=126', 'cable');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (35, 'Captain America', 3, 3, '<strong>Ongoing</strong>: Your other cards at this location have +1 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/captain-america.webp?v=126', 'captain-america');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (36, 'Captain Marvel', 4, 4, 'At the end of the game, move to a location that wins you the game. (If possible)', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/captain-marvel.webp?v=126', 'captain-marvel');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (37, 'Carnage', 2, 2, '<strong>On Reveal</strong>: Destroy your other cards here. +2 Power for each destroyed.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/carnage.webp?v=126', 'carnage');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (39, 'Cerebro', 3, 0, '<strong>Ongoing</strong>: Your highest-Power cards have +2 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/cerebro.webp?v=126', 'cerebro');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (40, 'Cloak', 2, 4, '<strong>On Reveal</strong>: Next turn, both players can move cards to this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/cloak.webp?v=126', 'cloak');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (42, 'Colleen Wing', 2, 4, '<strong>On Reveal</strong>: Discard the lowest-cost card from your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/colleen-wing.webp?v=126', 'colleen-wing');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (43, 'Colossus', 2, 3, '<strong>Ongoing</strong>: Can''t be destroyed, moved, or have its Power reduced.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/colossus.webp?v=126', 'colossus');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (44, 'Cosmo', 3, 3, '<strong>Ongoing</strong>: On Reveal abilities won''t happen at this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/cosmo.webp?v=126', 'cosmo');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (46, 'Crossbones', 4, 8, 'You can only play this at locations where you are winning.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/crossbones.webp?v=126', 'crossbones');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (47, 'Crystal', 3, 3, '<strong>On Reveal</strong>: Each player draws a card.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/crystal.webp?v=126', 'crystal');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (48, 'Cyclops', 3, 4, NULL, 'Let''s move, X-Men.', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/cyclops.webp?v=126', 'cyclops');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (49, 'Dagger', 2, 2, 'When this moves to a location, +2 Power for each card your opponent has there.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/dagger.webp?v=126', 'dagger');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (468, 'Daken', 3, 4, '<strong>On Reveal</strong>: Add the Muramasa Shard to your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/daken.webp?v=126', 'daken');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (52, 'Daredevil', 2, 2, 'On turn 5, you get to see your opponent''s plays before you make your own.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/daredevil.webp?v=126', 'daredevil');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (54, 'Darkhawk', 4, 0, '<strong>Ongoing</strong>: +2 Power for each card in your opponent''s deck.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/darkhawk.webp?v=126', 'darkhawk');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (55, 'Dazzler', 3, 2, '<strong>Ongoing</strong>: +2 Power for each location that''s full on your side.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/dazzler.webp?v=126', 'dazzler');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (56, 'Deadpool', 1, 1, 'When this is destroyed, return it to your hand with double the Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/deadpool.webp?v=126', 'deadpool');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (57, 'Death', 8, 12, 'Costs 1 less for each card destroyed this game.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/death.webp?v=126', 'death');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (58, 'Deathlok', 3, 5, '<strong>On Reveal</strong>: Destroy your other cards at this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/deathlok.webp?v=126', 'deathlok');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (59, 'Debrii', 3, 3, '<strong>On Reveal</strong>: Add a Rock to each other location, for both players.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/debrii.webp?v=126', 'debrii');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (60, 'Demon', 1, 6, NULL, 'A deal is a deal.', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/demon.webp?v=126', 'demon');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (61, 'Destroyer', 6, 15, '<strong>On Reveal</strong>: Destroy your other cards.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/destroyer.webp?v=126', 'destroyer');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (62, 'Devil Dinosaur', 5, 3, '<strong>Ongoing</strong>: +2 Power for each card in your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/devil-dinosaur.webp?v=126', 'devil-dinosaur');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (479, 'Djinn', 0, 1, '<strong>On Reveal</strong>: Next turn, you get +2 Energy.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/djinn.webp?v=126', 'djinn');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (64, 'Doctor Doom', 6, 5, '<strong>On Reveal</strong>: Add a 5-Power DoomBot to each other location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/doctor-doom.webp?v=126', 'doctor-doom');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (65, 'Doctor Octopus', 5, 10, '<strong>On Reveal</strong>: Pull 4 random cards from your opponent''s hand to their side of this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/doctor-octopus.webp?v=126', 'doctor-octopus');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (66, 'Doctor Strange', 3, 3, '<strong>On Reveal</strong>: Move your highest-Power card(s) to this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/doctor-strange.webp?v=126', 'doctor-strange');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (67, 'Domino', 2, 3, 'You always draw this card on turn 2, and not before.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/domino.webp?v=126', 'domino');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (68, 'Doombot', 6, 5, NULL, 'Doom is supreme!', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/doombot.webp?v=126', 'doombot');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (69, 'Dracula', 4, 0, 'At the end of the game, discard a card from your hand. This has its Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/dracula.webp?v=126', 'dracula');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (70, 'Drax', 4, 6, '<strong>On Reveal</strong>: If your opponent played a card here this turn, +2 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/drax.webp?v=126', 'drax');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (72, 'Drone', 1, 1, NULL, 'zzzzzzZZZTT!', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/drone.webp?v=126', 'drone');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (73, 'Ebony Maw', 1, 7, 'You can''t play this after turn 3. <strong>Ongoing</strong>: You can''t play cards here.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/ebony-maw.webp?v=126', 'ebony-maw');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (455, 'Echo', 1, 2, 'After your opponent plays an Ongoing card here, remove its abilities.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/echo.webp?v=126', 'echo');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (75, 'Electro', 3, 2, '<strong>On Reveal</strong>: +1 Max Energy. <strong>Ongoing</strong>: You can only play 1 card a turn.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/electro.webp?v=126', 'electro');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (76, 'Elektra', 1, 1, '<strong>On Reveal</strong>: Destroy a random enemy 1-Cost card at this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/elektra.webp?v=126', 'elektra');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (79, 'Enchantress', 4, 5, '<strong>On Reveal</strong>: Remove the abilities from all Ongoing cards at this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/enchantress.webp?v=126', 'enchantress');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (459, 'Evolved Abomination', 5, 9, 'Costs 1 less for each enemy card in play that''s afflicted with negative Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/abomination.webp?v=126', 'evolved-abomination');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (460, 'Evolved Cyclops', 3, 4, 'When you end a turn with unspent Energy, afflict 2 random enemies here with -1 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/cyclops.webp?v=126', 'evolved-cyclops');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (461, 'Evolved Hulk', 6, 12, NULL, 'When you end a turn with unspent Energy, +2 Power. (if in hand or in play)', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/hulk.webp?v=126', 'evolved-hulk');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (462, 'Evolved Misty Knight', 1, 2, 'When you end a turn with unspent Energy, give another friendly card +1 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/misty-knight.webp?v=126', 'evolved-misty-knight');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (463, 'Evolved Shocker', 2, 3, '<strong>On Reveal</strong>: Give the leftmost card in your hand -1 Cost.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/shocker.webp?v=126', 'evolved-shocker');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (464, 'Evolved The Thing', 4, 6, '<strong>On Reveal</strong>: Afflict a random enemy card here with -1 Power. Repeat this twice more.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/the-thing.webp?v=126', 'evolved-the-thing');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (465, 'Evolved Wasp', 0, 1, '<strong>On Reveal</strong>: Afflict a random enemy card here with -1 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/wasp.webp?v=126', 'evolved-wasp');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (80, 'Falcon', 2, 3, '<strong>On Reveal</strong>: Return your 1-Cost cards to your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/falcon.webp?v=126', 'falcon');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (480, 'Firestar', 1, 2, 'none', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/firestar.webp?v=126', 'firestar');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (81, 'Forge', 2, 1, '<strong>On Reveal</strong>: Give the next card you play +3 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/forge.webp?v=126', 'forge');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (82, 'Galactus', 6, 7, '<strong>On Reveal</strong>: If you''re winning this location and this is your only card here, destroy all other locations.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/galactus.webp?v=126', 'galactus');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (83, 'Gambit', 3, 3, '<strong>On Reveal</strong>: Discard a card from your hand. Destroy a random enemy card.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/gambit.webp?v=126', 'gambit');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (84, 'Gamora', 5, 7, '<strong>On Reveal</strong>: If your opponent played a card here this turn, +5 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/gamora.webp?v=126', 'gamora');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (422, 'Ghost', 1, 2, '<strong>Ongoing</strong>: Your cards are always revealed last. (Their On Reveal abilities happen last.)', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/ghost.webp?v=126', 'ghost');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (85, 'Ghost Rider', 4, 3, '<strong>On Reveal</strong>: Bring back one of your discarded cards to this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/ghost-rider.webp?v=126', 'ghost-rider');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (86, 'Ghost-Spider', 1, 2, '<strong>On Reveal</strong>: The last card you played moves here.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/ghost-spider.webp?v=126', 'ghost-spider');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (87, 'Giganto', 6, 14, 'You can only play this at the left location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/giganto.webp?v=126', 'giganto');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (88, 'Goose', 2, 2, '<strong>Ongoing</strong>: Nobody can play cards that cost 4, 5, or 6 at this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/goose.webp?v=126', 'goose');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (90, 'Green Goblin', 3, -3, '<strong>On Reveal</strong>: Your opponent gains control of this.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/green-goblin.webp?v=126', 'green-goblin');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (91, 'Groot', 3, 4, '<strong>On Reveal</strong>: If your opponent played a card here this turn, +2 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/groot.webp?v=126', 'groot');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (481, 'Havok', 1, 2, 'none', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/havok.webp?v=126', 'havok');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (93, 'Hawkeye', 1, 1, '<strong>On Reveal</strong>: If you play a card here next turn, +3 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/hawkeye.webp?v=126', 'hawkeye');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (94, 'Hazmat', 2, 2, '<strong>On Reveal</strong>: Afflict all other cards with -1 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/hazmat.webp?v=126', 'hazmat');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (95, 'Heimdall', 6, 8, '<strong>On Reveal</strong>: Move your other cards one location to the left.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/heimdall.webp?v=126', 'heimdall');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (96, 'Hela', 6, 6, '<strong>On Reveal</strong>: Resurrect all cards you discarded from your hand to random locations.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/hela.webp?v=126', 'hela');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (384, 'Helicarrier', 6, 10, 'When you discard this from your hand, add 3 random cards to your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/helicarrier.webp?v=126', 'helicarrier');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (97, 'Hellcow', 4, 6, '<strong>On Reveal</strong>: Discard 2 cards from your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/hellcow.webp?v=126', 'hellcow');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (443, 'High Evolutionary', 4, 4, 'At the start of the game, unlock the potential of your cards with no abilities.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/high-evolutionary.webp?v=126', 'high-evolutionary');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (99, 'Hit Monkey', 3, 2, '<strong>On Reveal</strong>: Gain +2 Power for each other card you played this turn.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/hit-monkey.webp?v=126', 'hit-monkey');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (100, 'Hobgoblin', 5, -8, '<strong>On Reveal</strong>: Your opponent gains control of this.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/hobgoblin.webp?v=126', 'hobgoblin');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (444, 'Howard the Duck', 1, 2, '<strong>Ongoing</strong>: Tap this to see the top card of your deck.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/howard-the-duck.webp?v=126', 'howard-the-duck');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (101, 'Hulk', 6, 12, NULL, 'HULK SMASH!', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/hulk.webp?v=126', 'hulk');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (102, 'Hulkbuster', 3, 5, '<strong>On Reveal</strong>: Merge this card with a random friendly card at this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/hulkbuster.webp?v=126', 'hulkbuster');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (103, 'Human Torch', 1, 2, 'When this moves, double its Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/human-torch.webp?v=126', 'human-torch');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (104, 'Iceman', 1, 2, '<strong>On Reveal</strong>: Give a random card in your opponent''s hand +1 Cost. (maximum 6)', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/iceman.webp?v=126', 'iceman');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (396, 'Illusion!', 2, 0, 'This is a fake Mysterio!', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/illusion!.webp?v=126', 'illusion!');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (105, 'Invisible Woman', 2, 3, '<strong>Ongoing</strong>: Cards you play here are not revealed until the game ends.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/invisible-woman.webp?v=126', 'invisible-woman');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (106, 'Iron Fist', 1, 2, '<strong>On Reveal</strong>: After you play your next card, move it one location to the left.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/iron-fist.webp?v=126', 'iron-fist');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (445, 'Iron Lad', 4, 6, '<strong>On Reveal</strong>: Copy the text of your deck''s top card.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/iron-lad.webp?v=126', 'iron-lad');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (107, 'Iron Man', 5, 0, '<strong>Ongoing</strong>: Your total Power is doubled at this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/iron-man.webp?v=126', 'iron-man');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (108, 'Ironheart', 3, 0, '<strong>On Reveal</strong>: Give 3 other friendly cards +2 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/ironheart.webp?v=126', 'ironheart');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (408, 'Jane Foster Mighty Thor', 5, 8, '<strong>On Reveal</strong>: Draw all cards that Cost 0 from your deck.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/jane-foster-mighty-thor.webp?v=126', 'jane-foster-mighty-thor');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (110, 'Jean Grey', 3, 3, '<strong>Ongoing</strong>: Players must play their first card here each turn. (if possible)', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/jean-grey.webp?v=126', 'jean-grey');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (430, 'Jeff the Baby Land Shark', 2, 3, 'You can move this once. Nothing can stop you from moving or playing this to any location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/jeff-the-baby-land-shark.webp?v=126', 'jeff-the-baby-land-shark');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (111, 'Jessica Jones', 4, 4, '<strong>On Reveal</strong>: If you don''t play a card here next turn, +4 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/jessica-jones.webp?v=126', 'jessica-jones');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (112, 'Jubilee', 4, 1, '<strong>On Reveal</strong>: Add the top card of your deck to this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/jubilee.webp?v=126', 'jubilee');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (113, 'Juggernaut', 3, 3, '<strong>On Reveal</strong>: If your opponent played cards here this turn, move them randomly.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/juggernaut.webp?v=126', 'juggernaut');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (117, 'Ka-Zar', 4, 4, '<strong>Ongoing</strong>: Your 1-Cost cards have +1 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/ka-zar.webp?v=126', 'ka-zar');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (116, 'Kang', 5, 0, '<strong>On Reveal</strong>: Look at what your opponent did, then restart the turn. (without Kang)', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/kang.webp?v=126', 'kang');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (118, 'Killmonger', 3, 3, '<strong>On Reveal</strong>: Destroy ALL 1-Cost cards.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/killmonger.webp?v=126', 'killmonger');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (119, 'Kingpin', 3, 4, 'When a card moves here on turn 6, destroy it.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/kingpin.webp?v=126', 'kingpin');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (120, 'Kitty Pryde', 1, 2, 'When this returns to your hand, +1 Power. Returns at the start of each turn.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/kitty-pryde.webp?v=126', 'kitty-pryde');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (121, 'Klaw', 5, 4, '<strong>Ongoing</strong>: The location to the right has +6 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/klaw.webp?v=126', 'klaw');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (409, 'Knull', 6, 0, '<strong>Ongoing</strong>: Has the combined Power of all cards destroyed this game.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/knull.webp?v=126', 'knull');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (124, 'Korg', 1, 2, '<strong>On Reveal</strong>: Shuffle a Rock into your opponent''s deck.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/korg.webp?v=126', 'korg');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (125, 'Kraven', 2, 2, 'When a card moves here, this gains +2 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/kraven.webp?v=126', 'kraven');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (127, 'Lady Deathstrike', 5, 4, '<strong>On Reveal</strong>: Destroy each card here with less Power than this.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/lady-deathstrike.webp?v=126', 'lady-deathstrike');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (128, 'Lady Sif', 3, 5, '<strong>On Reveal</strong>: Discard the highest-cost card from your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/lady-sif.webp?v=126', 'lady-sif');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (129, 'Leader', 6, 2, '<strong>On Reveal</strong>: Copy the enemy card(s) with the highest Power played this turn, but on your side.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/leader.webp?v=126', 'leader');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (131, 'Leech', 5, 3, 'At the start of turn 6, remove all abilities from cards in your opponent''s hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/leech.webp?v=126', 'leech');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (132, 'Legion', 5, 7, '<strong>On Reveal</strong>: Replace each other location with this one.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/legion.webp?v=126', 'legion');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (134, 'Lizard', 2, 5, '<strong>Ongoing</strong>: -4 Power if your opponent has 4 cards here.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/lizard.webp?v=126', 'lizard');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (135, 'Lockjaw', 3, 2, NULL, 'After you play a card here, swap it with a card in your deck. (once per turn)', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/lockjaw.webp?v=126', 'lockjaw');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (446, 'Loki', 3, 5, '<strong>On Reveal</strong>: Replace your hand with cards from your opponent''s starting deck. Give them -1 cost.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/loki.webp?v=126', 'loki');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (138, 'Luke Cage', 2, 2, '<strong>Ongoing</strong>: Your cards can''t have their Power reduced.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/luke-cage.webp?v=126', 'luke-cage');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (139, 'M''Baku', 1, 2, 'If this is in your deck at the end of the game, it jumps to a random location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/mbaku.webp?v=126', 'mbaku');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (140, 'Magik', 3, 2, '<strong>On Reveal</strong>: Replace this location with ''Limbo''. Doesn''t work after turn 5.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/magik.webp?v=126', 'magik');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (141, 'Magneto', 6, 12, '<strong>On Reveal</strong>: Move all opposing 3 and 4-Cost cards to this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/magneto.webp?v=126', 'magneto');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (143, 'Mantis', 1, 2, '<strong>On Reveal</strong>: If your opponent played a card here this turn, draw a card from their deck.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/mantis.webp?v=126', 'mantis');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (144, 'Maria Hill', 2, 3, '<strong>On Reveal</strong>: Add a random 1 or 2-Cost card to your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/maria-hill.webp?v=126', 'maria-hill');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (482, 'Martyr', 2, 6, NULL, 'At the end of the game, move to a location that LOSES you the game. (if possible)', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/martyr.webp?v=126', 'martyr');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (314, 'Master Mold', 2, 2, '<strong>On Reveal</strong>: Add 2 Sentinel to your opponent''s hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/master-mold.webp?v=126', 'master-mold');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (145, 'Maximus', 3, 7, '<strong>On Reveal</strong>: Your opponent draws 2 cards.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/maximus.webp?v=126', 'maximus');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (146, 'Medusa', 2, 2, '<strong>On Reveal</strong>: If this is at the middle location, +3 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/medusa.webp?v=126', 'medusa');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (315, 'Miles Morales', 4, 5, 'If a card moved last turn, this costs 1.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/miles-morales.webp?v=126', 'miles-morales');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (148, 'Mind Stone', 1, 1, '<strong>On Reveal</strong>: Draw 2 Stones from your deck.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/mind-stone.webp?v=126', 'mind-stone');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (151, 'Mirage', 2, 2, '<strong>On Reveal</strong>: Copy the lowest-Cost card in your opponent''s hand into your hand. Give it +2 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/mirage.webp?v=126', 'mirage');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (153, 'Mister Fantastic', 3, 2, '<strong>Ongoing</strong>: Adjacent locations have +2 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/mister-fantastic.webp?v=126', 'mister-fantastic');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (154, 'Mister Negative', 4, -1, '<strong>On Reveal</strong>: Swap the Power and Cost of all cards in your deck.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/mister-negative.webp?v=126', 'mister-negative');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (155, 'Mister Sinister', 2, 2, '<strong>On Reveal</strong>: Add a Sinister Clone to this location with the same Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/mister-sinister.webp?v=126', 'mister-sinister');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (156, 'Misty Knight', 1, 2, NULL, 'We''ve got to save this city.', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/misty-knight.webp?v=126', 'misty-knight');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (378, 'Mjölnir', 0, 0, '<strong>On Reveal</strong>: Give Thor +6 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/mjolnir.webp?v=126', 'mjolnir');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (157, 'MODOK', 5, 8, '<strong>On Reveal</strong>: Discard your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/modok.webp?v=126', 'modok');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (158, 'Mojo', 2, 2, '<strong>Ongoing</strong>: If both players have 4 cards at this location, +6 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/mojo.webp?v=126', 'mojo');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (160, 'Monster', 6, 9, NULL, 'Careful...he likes to mash.', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/monster.webp?v=126', 'monster');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (163, 'Moon Girl', 4, 4, '<strong>On Reveal</strong>: Duplicate your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/moon-girl.webp?v=126', 'moon-girl');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (164, 'Moon Knight', 3, 3, '<strong>On Reveal</strong>: Discard a card from each player''s hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/moon-knight.webp?v=126', 'moon-knight');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (165, 'Morbius', 2, 0, '<strong>Ongoing</strong>: +2 Power for each time you discarded a card this game.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/morbius.webp?v=126', 'morbius');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (166, 'Morph', 3, 0, '<strong>On Reveal</strong>: Become a copy of a random card in your opponent''s hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/morph.webp?v=126', 'morph');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (169, 'Multiple Man', 2, 3, 'When this moves, add a copy to the old location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/multiple-man.webp?v=126', 'multiple-man');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (171, 'Mysterio', 2, 4, 'As you play this, play Illusions to other locations. Disguise this as an Illusion until the game ends.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/mysterio.webp?v=126', 'mysterio');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (410, 'Mysterio?', 2, 0, NULL, 'Which is the real Mysterio? The real one has 4 Power.', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/mysterio-.webp?v=126', 'mysterio-');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (173, 'Mystique', 3, 0, '<strong>On Reveal</strong>: If the last card you played has an Ongoing, copy its text. (if it''s in play)', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/mystique.webp?v=126', 'mystique');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (174, 'Nakia', 3, 3, '<strong>On Reveal</strong>: Give all cards in your hand +1 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/nakia.webp?v=126', 'nakia');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (175, 'Namor', 4, 6, '<strong>Ongoing</strong>: +5 Power if this is your only card here.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/namor.webp?v=126', 'namor');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (176, 'Nebula', 1, 1, NULL, 'Each turn your opponent doesn''t play a card here, +2 Power. (except the turn you play this)', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/nebula.webp?v=126', 'nebula');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (177, 'Negasonic Teenage Warhead', 3, 5, 'After ANY card is played here, destroy this card AND that card.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/negasonic-teenage-warhead.webp?v=126', 'negasonic-teenage-warhead');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (180, 'Nick Fury', 4, 5, '<strong>On Reveal</strong>: Add 3 random 6-Cost cards to your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/nick-fury.webp?v=126', 'nick-fury');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (474, 'Nico Minoru', 1, 2, '<strong>On Reveal</strong>: After you play your next card, cast a spell. (The spell changes each turn.)', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/nico-minoru.webp?v=126', 'nico-minoru');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (489, 'Nico Minoru Spell 01', 1, 2, '<strong>On Reveal</strong>: After you play your next card, it becomes a Demon.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/nico-minoru.webp?v=126', 'nico-minoru-spell-01');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (490, 'Nico Minoru Spell 02', 1, 2, '<strong>On Reveal</strong>: After you play your next card, destroy it and draw two cards.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/nico-minoru.webp?v=126', 'nico-minoru-spell-02');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (491, 'Nico Minoru Spell 03', 1, 2, '<strong>On Reveal</strong>: After you play your next card, move it one location to the right.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/nico-minoru.webp?v=126', 'nico-minoru-spell-03');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (492, 'Nico Minoru Spell 04', 1, 2, '<strong>On Reveal</strong>: After you play your next card, give it +2 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/nico-minoru.webp?v=126', 'nico-minoru-spell-04');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (493, 'Nico Minoru Spell 05', 1, 2, '<strong>On Reveal</strong>: After you play your next card, replace that card''s location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/nico-minoru.webp?v=126', 'nico-minoru-spell-05');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (494, 'Nico Minoru Spell 06', 1, 2, '<strong>On Reveal</strong>: After you play your next card, add a copy of it to your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/nico-minoru.webp?v=126', 'nico-minoru-spell-06');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (495, 'Nico Minoru Spell 07', 1, 2, '<strong>On Reveal</strong>: After you play your next card, double this card''s Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/nico-minoru.webp?v=126', 'nico-minoru-spell-07');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (181, 'Nightcrawler', 1, 2, 'You can move this once.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/nightcrawler.webp?v=126', 'nightcrawler');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (429, 'Nimrod', 5, 6, 'When this is destroyed, add a copy to each other location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/nimrod.webp?v=126', 'nimrod');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (398, 'Ninja', 1, -2, NULL, 'I serve the Hand.', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/ninja.webp?v=126', 'ninja');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (182, 'Nova', 1, 1, 'When this is destroyed, give your cards +1 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/nova.webp?v=126', 'nova');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (184, 'Odin', 6, 8, '<strong>On Reveal</strong>: Activate the On Reveal abilities of your other cards at this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/odin.webp?v=126', 'odin');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (185, 'Okoye', 2, 2, '<strong>On Reveal</strong>: Give every card in your deck +1 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/okoye.webp?v=126', 'okoye');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (187, 'Omega Red', 4, 5, '<strong>Ongoing</strong>: If you''re ahead by 10 Power here, +4 Power to other locations.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/omega-red.webp?v=126', 'omega-red');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (188, 'Onslaught', 6, 7, '<strong>Ongoing</strong>: Double your other Ongoing effects at this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/onslaught.webp?v=126', 'onslaught');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (190, 'Orka', 6, 11, '<strong>Ongoing</strong>: +5 Power if this is your only card here.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/orka.webp?v=126', 'orka');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (191, 'Patriot', 3, 1, '<strong>Ongoing</strong>: Your cards with no abilities have +2 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/patriot.webp?v=126', 'patriot');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (451, 'Pig', 0, 0, NULL, 'oink!', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/pig.webp?v=126', 'pig');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (193, 'Polaris', 3, 5, '<strong>On Reveal</strong>: Move an opposing 1 or 2-Cost card to this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/polaris.webp?v=126', 'polaris');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (194, 'Power Stone', 1, 3, '<strong>Ongoing</strong>: If you''ve played all 6 stones, Thanos has +10 Power. (wherever he is)', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/power-stone.webp?v=126', 'power-stone');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (195, 'Professor X', 5, 3, '<strong>Ongoing</strong>: Lock down this location. (Cards can''t be added, removed, etc.)', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/professor-x.webp?v=126', 'professor-x');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (196, 'Psylocke', 2, 1, '<strong>On Reveal</strong>: Next turn, you get +1 Energy.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/psylocke.webp?v=126', 'psylocke');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (411, 'Punisher', 3, 2, '<strong>Ongoing</strong>: +1 Power for each opposing card at this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/punisher.webp?v=126', 'punisher');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (197, 'Quake', 2, 3, '<strong>On Reveal</strong>: If this is at the middle location, swap the positions of each location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/quake.webp?v=126', 'quake');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (198, 'Quicksilver', 1, 2, 'Starts in your opening hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/quicksilver.webp?v=126', 'quicksilver');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (199, 'Quinjet', 1, 2, '<strong>Ongoing</strong>: Cards that didn''t start in your deck cost 1 less. (minimum 1)', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/quinjet.webp?v=126', 'quinjet');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (200, 'Raptor', 1, 1, NULL, 'SCREEEEEEEE', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/raptor.webp?v=126', 'raptor');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (201, 'Reality Stone', 1, 1, '<strong>On Reveal</strong>: Transform this location into a new one. Draw a card.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/reality-stone.webp?v=126', 'reality-stone');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (203, 'Red Skull', 5, 14, '<strong>Ongoing</strong>: Enemy cards at this location have +2 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/red-skull.webp?v=126', 'red-skull');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (204, 'Rescue', 4, 4, '<strong>On Reveal</strong>: If you play a card here next turn, +5 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/rescue.webp?v=126', 'rescue');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (205, 'Rhino', 3, 3, '<strong>On Reveal</strong>: Ruin this location. (remove its ability)', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/rhino.webp?v=126', 'rhino');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (206, 'Rock', 1, 0, NULL, 'Well, that''s useless....', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/rock.webp?v=126', 'rock');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (207, 'Rocket Raccoon', 1, 2, '<strong>On Reveal</strong>: If your opponent played a card here this turn, +2 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/rocket-raccoon.webp?v=126', 'rocket-raccoon');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (208, 'Rockslide', 3, 3, '<strong>On Reveal</strong>: Shuffle 2 Rocks into your opponent''s deck.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/rockslide.webp?v=126', 'rockslide');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (209, 'Rogue', 3, 2, '<strong>On Reveal</strong>: Steal an Ongoing ability from a random enemy card at this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/rogue.webp?v=126', 'rogue');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (210, 'Ronan the Accuser', 5, 3, '<strong>Ongoing</strong>: +2 Power for each card in your opponent''s hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/ronan-the-accuser.webp?v=126', 'ronan-the-accuser');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (212, 'Sabretooth', 3, 4, 'When this is destroyed, return it to your hand. It costs 0.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/sabretooth.webp?v=126', 'sabretooth');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (215, 'Sandman', 5, 3, '<strong>Ongoing</strong>: Players can only play 1 card a turn.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/sandman.webp?v=126', 'sandman');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (390, 'Sauron', 3, 3, '<strong>On Reveal</strong>: Remove the abilities from all Ongoing cards in your hand and deck.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/sauron.webp?v=126', 'sauron');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (217, 'Scarlet Witch', 2, 3, '<strong>On Reveal</strong>: Replace this location with a random new one.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/scarlet-witch.webp?v=126', 'scarlet-witch');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (218, 'Scorpion', 2, 2, '<strong>On Reveal</strong>: Afflict cards in your opponent''s hand with -1 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/scorpion.webp?v=126', 'scorpion');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (483, 'Sebastian Shaw', 1, 1, 'none', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/sebastian-shaw.webp?v=126', 'sebastian-shaw');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (484, 'Selene', 1, 2, 'none', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/selene.webp?v=126', 'selene');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (219, 'Sentinel', 2, 3, '<strong>On Reveal</strong>: Add another Sentinel to your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/sentinel.webp?v=126', 'sentinel');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (220, 'Sentry', 4, 10, 'You can''t play this at the right location. <strong>On Reveal</strong>: Add a -10 Power Void to the right location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/sentry.webp?v=126', 'sentry');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (221, 'Sera', 5, 4, '<strong>Ongoing</strong>: Cards in your hand cost 1 less. (minimum 1)', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/sera.webp?v=126', 'sera');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (222, 'Shadow King', 2, 3, '<strong>On Reveal</strong>: Set all cards here to their original base Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/shadow-king.webp?v=126', 'shadow-king');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (224, 'Shang-Chi', 4, 3, '<strong>On Reveal</strong>: Destroy all enemy cards at this location that have 9 or more Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/shang-chi.webp?v=126', 'shang-chi');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (317, 'Shanna', 3, 2, '<strong>On Reveal</strong>: Add a random 1-Cost card to each location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/shanna.webp?v=126', 'shanna');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (226, 'She-Hulk', 6, 9, 'Costs 1 less for each unspent Energy last turn.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/she-hulk.webp?v=126', 'she-hulk');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (227, 'Shocker', 2, 3, NULL, 'I''m gonna blast you!', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/shocker.webp?v=126', 'shocker');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (228, 'Shuri', 4, 2, '<strong>On Reveal</strong>: If you play your next card here, double its Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/shuri.webp?v=126', 'shuri');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (231, 'Silver Samurai', 4, 5, '<strong>On Reveal</strong>: Each player discards the lowest-Power card from their hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/silver-samurai.webp?v=126', 'silver-samurai');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (232, 'Silver Surfer', 3, 2, '<strong>On Reveal</strong>: Give your other 3-Cost cards +2 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/silver-surfer.webp?v=126', 'silver-surfer');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (400, 'Sinister Clone', 2, 2, NULL, 'Sinister is a system. Sinister is a species. Everything is Sinister.', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/sinister-clone.webp?v=126', 'sinister-clone');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (235, 'Snowguard', 1, 2, '<strong>On Reveal</strong>: Add the Hawk and Bear auroras to your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/snowguard.webp?v=126', 'snowguard');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (434, 'Snowguard Bear', 2, 3, '<strong>On Reveal</strong>: Trigger the effect of this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/snowguard-bear.webp?v=126', 'snowguard-bear');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (435, 'Snowguard Hawk', 2, 3, '<strong>On Reveal</strong>: Ignore all location abilities until the end of next turn (or the game).', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/snowguard-hawk.webp?v=126', 'snowguard-hawk');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (436, 'Snowguard Wolf', 4, 8, '<strong>Ongoing</strong>: -2 Power for each other card you have here.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/snowguard-wolf.webp?v=126', 'snowguard-wolf');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (237, 'Soul Stone', 1, 1, '<strong>Ongoing</strong>: Enemy cards here have -1 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/soul-stone.webp?v=126', 'soul-stone');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (238, 'Space Stone', 1, 1, '<strong>On Reveal</strong>: Next turn, you can move one card to this location. Draw a card.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/space-stone.webp?v=126', 'space-stone');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (239, 'Spectrum', 6, 5, '<strong>On Reveal</strong>: Give your Ongoing cards +2 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/spectrum.webp?v=126', 'spectrum');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (453, 'Spider-Ham', 1, 1, '<strong>On Reveal</strong>: Transform the leftmost card in your opponent''s hand into a Pig, keeping its Power and Cost.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/spider-ham.webp?v=126', 'spider-ham');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (240, 'Spider-Man', 3, 5, '<strong>On Reveal</strong>: Move to another location and pull an enemy card from here to there.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/spider-man.webp?v=126', 'spider-man');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (454, 'Spider-Man 2099', 4, 6, 'The first time this moves to a location, destroy an enemy card there.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/spider-man-2099.webp?v=126', 'spider-man-2099');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (242, 'Spider-Woman', 5, 8, '<strong>On Reveal</strong>: Afflict all enemy cards here with -1 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/spider-woman.webp?v=126', 'spider-woman');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (243, 'Squirrel', 1, 1, NULL, 'squeak!', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/squirrel.webp?v=126', 'squirrel');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (244, 'Squirrel Girl', 1, 1, '<strong>On Reveal</strong>: Add a 1-Power Squirrel to each other location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/squirrel-girl.webp?v=126', 'squirrel-girl');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (245, 'Star-Lord', 2, 2, '<strong>On Reveal</strong>: If your opponent played a card here this turn, +3 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/star-lord.webp?v=126', 'star-lord');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (423, 'Stature', 5, 6, 'Costs 1 if your opponent discarded a card from their hand this game.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/stature.webp?v=126', 'stature');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (441, 'Stegron', 4, 5, '<strong>On Reveal</strong>: Move an enemy card from here to another location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/stegron.webp?v=126', 'stegron');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (247, 'Storm', 3, 2, '<strong>On Reveal</strong>: Flood this location. Next turn is the last turn cards can be played here.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/storm.webp?v=126', 'storm');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (249, 'Strong Guy', 4, 4, '<strong>Ongoing</strong>: If your hand is empty, +6 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/strong-guy.webp?v=126', 'strong-guy');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (252, 'Sunspot', 1, 0, 'At the end of each turn, gain +1 Power for each unspent Energy.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/sunspot.webp?v=126', 'sunspot');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (253, 'Super-Skrull', 4, 2, '<strong>Ongoing</strong>: Has the Ongoing effects of all enemy cards.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/super-skrull.webp?v=126', 'super-skrull');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (255, 'Swarm', 2, 3, 'When this is discarded from your hand, add two copies that Cost 0 to your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/swarm.webp?v=126', 'swarm');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (256, 'Sword Master', 3, 6, '<strong>On Reveal</strong>: Discard a card from your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/sword-master.webp?v=126', 'sword-master');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (412, 'Symbiote', 4, 0, NULL, 'YUUUUUMMMMMM!!!', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/symbiote.webp?v=126', 'symbiote');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (257, 'Taskmaster', 5, 0, '<strong>On Reveal</strong>: Set this card''s Power equal to that of the last card you played. (if that card''s in play)', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/taskmaster.webp?v=126', 'taskmaster');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (258, 'Thanos', 6, 10, 'At the start of the game, shuffle the six Infinity Stones into your deck.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/thanos.webp?v=126', 'thanos');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (261, 'The Collector', 2, 0, NULL, 'When a card enters your hand from anywhere (except your deck), +1 Power.', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/the-collector.webp?v=126', 'the-collector');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (262, 'The Hood', 1, -3, '<strong>On Reveal</strong>: Add a Demon to your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/the-hood.webp?v=126', 'the-hood');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (264, 'The Infinaut', 6, 20, 'If you played a card last turn, you can''t play this.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/the-infinaut.webp?v=126', 'the-infinaut');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (265, 'The Living Tribunal', 6, 9, '<strong>Ongoing</strong>: Split your total Power evenly among all locations.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/the-living-tribunal.webp?v=126', 'the-living-tribunal');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (413, 'The Phoenix Force', 4, 5, '<strong>On Reveal</strong>: Revive one of your destroyed cards and merge with it. That card can move each turn.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/the-phoenix-force.webp?v=126', 'the-phoenix-force');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (269, 'The Thing', 4, 6, NULL, 'It''s clobberin'' time!', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/the-thing.webp?v=126', 'the-thing');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (271, 'The Void', 4, -10, NULL, 'Hello again...', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/the-void.webp?v=126', 'the-void');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (272, 'Thor', 3, 4, '<strong>On Reveal</strong>: Shuffle Mjolnir into your deck.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/thor.webp?v=126', 'thor');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (273, 'Tiger Spirit', 5, 7, NULL, 'Vengeance is mine!', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/tiger-spirit.webp?v=126', 'tiger-spirit');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (274, 'Time Stone', 1, 1, '<strong>On Reveal</strong>: Draw a card. Next turn, you get +1 Energy.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/time-stone.webp?v=126', 'time-stone');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (277, 'Titania', 1, 5, 'After ANY card is played here, this card switches sides.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/titania.webp?v=126', 'titania');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (279, 'Typhoid Mary', 4, 10, '<strong>Ongoing</strong>: Your other cards have -1 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/typhoid-mary.webp?v=126', 'typhoid-mary');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (280, 'Uatu the Watcher', 1, 2, 'Once this is in your hand, you can see the unrevealed locations.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/uatu-the-watcher.webp?v=126', 'uatu-the-watcher');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (281, 'Ultron', 6, 8, '<strong>On Reveal</strong>: Create four 1-Power Drones at each other location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/ultron.webp?v=126', 'ultron');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (283, 'Valkyrie', 5, 3, '<strong>On Reveal</strong>: Set ALL cards at this location to 3 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/valkyrie.webp?v=126', 'valkyrie');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (284, 'Venom', 3, 3, '<strong>On Reveal</strong>: Destroy your other cards at this location. Add their Power to this card.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/venom.webp?v=126', 'venom');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (420, 'Vibranium', 1, 4, '<strong>Ongoing</strong>: Can''t be destroyed.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/vibranium.webp?v=126', 'vibranium');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (285, 'Viper', 2, 3, '<strong>On Reveal</strong>: Your opponent gains control of one of your other cards at this location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/viper.webp?v=126', 'viper');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (286, 'Vision', 5, 8, 'You can move this each turn.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/vision.webp?v=126', 'vision');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (287, 'Vulture', 3, 3, 'When this card moves, +5 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/vulture.webp?v=126', 'vulture');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (291, 'Warpath', 4, 5, '<strong>Ongoing</strong>: If any of your locations are empty, +4 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/warpath.webp?v=126', 'warpath');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (293, 'Wasp', 0, 1, NULL, 'My secret power is that I get things done.', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/wasp.webp?v=126', 'wasp');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (294, 'Wave', 3, 3, '<strong>On Reveal</strong>: All cards cost 4 until the end of next turn.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/wave.webp?v=126', 'wave');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (297, 'White Queen', 4, 6, '<strong>On Reveal</strong>: Copy the highest-Cost card in your opponent''s hand into your hand.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/white-queen.webp?v=126', 'white-queen');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (298, 'White Tiger', 5, 1, '<strong>On Reveal</strong>: Add a 7-Power Tiger to another location.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/white-tiger.webp?v=126', 'white-tiger');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (299, 'Widow''s Bite', 0, 0, 'While this is in your hand, you can''t draw cards.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/widows-bite.webp?v=126', 'widows-bite');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (300, 'Winter Soldier', 2, 6, NULL, 'It''s time for me to face the past.', 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/winter-soldier.webp?v=126', 'winter-soldier');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (301, 'Wolfsbane', 3, 1, '<strong>On Reveal</strong>: +2 Power for each other card you have here.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/wolfsbane.webp?v=126', 'wolfsbane');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (302, 'Wolverine', 2, 2, 'When this is discarded or destroyed, regenerate it at a random location with +2 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/wolverine.webp?v=126', 'wolverine');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (303, 'Wong', 4, 2, '<strong>Ongoing</strong>: Your On Reveal abilities at this location happen twice.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/wong.webp?v=126', 'wong');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (395, 'X-23', 1, 2, 'When this is discarded or destroyed, regenerate it at a random location and you get +1 Energy next turn.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/x-23.webp?v=126', 'x-23');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (307, 'Yellowjacket', 0, 2, '<strong>On Reveal</strong>: Afflict your other cards at this location with -1 Power.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/yellowjacket.webp?v=126', 'yellowjacket');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (309, 'Yondu', 1, 2, '<strong>On Reveal</strong>: Destroy the top card of your opponent''s deck.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/yondu.webp?v=126', 'yondu');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (310, 'Zabu', 2, 2, '<strong>Ongoing</strong>: Your 4-Cost cards cost 1 less. (minimum 1)', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/zabu.webp?v=126', 'zabu');
INSERT INTO "Cards"(id, name, cost, power, ability, flavor, art, slug)
  VALUES (311, 'Zero', 1, 3, '<strong>On Reveal</strong>: Remove the abilities on the next card you play.', NULL, 'https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/zero.webp?v=126', 'zero');

INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/1_166196504250.webp?v=126', 'G-Angle', 'G-Angle', '1');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/1_166196504260.webp?v=126', 'Ryan Brown', 'Ryan Brown', '1');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/1_166196504251.webp?v=126', 'Afif Khaled', 'Ryan Kinnaird', '1');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/1_166196504389.webp?v=126', 'Joverine', 'Ryan Kinnaird', '1');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/1_06.webp?v=126', 'Dan Hipp', 'Dan Hipp', '1');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/2_166025533667.webp?v=126', 'G-Angle', 'G-Angle', '2');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/2_166025533670.webp?v=126', 'Simone Buonfantino', 'Ryan Kinnaird', '2');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/2_166025533647.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '2');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/2_166025533796.webp?v=126', 'G-Angle', 'G-Angle', '2');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/3_166196504332.webp?v=126', 'G-Angle', 'G-Angle', '3');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/3_166196504375.webp?v=126', 'Ron Lim', 'Israel Silva', '3');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/3_166196504481.webp?v=126', 'Flaviano', 'Flaviano', '3');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/3_166196504460.webp?v=126', 'Aleksi Briclot', '', '3');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/3_1666701989.webp?v=126', 'Dan Hipp', 'Dan Hipp', '3');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/3_06.webp?v=126', 'Alex Horley', 'Alex Horley', '3');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/3_07.webp?v=126', 'Eduardo Francisco', 'Stefani Rennee', '3');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/4_166196504497.webp?v=126', 'G-Angle', 'G-Angle', '4');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/4_166196504552.webp?v=126', 'Artgerm', 'Artgerm', '4');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/4_166196504579.webp?v=126', 'G-Angle', 'G-Angle', '4');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/4_166196504588.webp?v=126', 'Volmi', 'Volmi', '4');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/4_1666702024.webp?v=126', 'Woo-Chul Lee', 'Woo-Chul Lee', '4');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/4_06.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '4');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/4_08.webp?v=126', 'Coax', 'Coax', '4');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/5_166196504651.webp?v=126', 'G-Angle', 'G-Angle', '5');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/5_166196504668.webp?v=126', 'Daniele Di Nicuolo', 'Ryan Kinnaird', '5');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/5_166196504653.webp?v=126', 'Gianluca Gugliotta', 'Ryan Kinnaird', '5');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/5_166196504696.webp?v=126', 'G-Angle', 'G-Angle', '5');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/5_05.webp?v=126', 'Dan Hipp', 'Dan Hipp', '5');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/6_166196504723.webp?v=126', 'G-Angle', 'G-Angle', '6');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/6_166196504781.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '6');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/6_166196504813.webp?v=126', 'G-Angle', 'G-Angle', '6');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/6_166196504839.webp?v=126', 'Alex Ross', 'Alex Ross', '6');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/6_166196504833.webp?v=126', 'Luca Claretti', 'Luca Claretti', '6');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/6_06.webp?v=126', 'Dan Hipp', 'Dan Hipp', '6');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/7_16602553372.webp?v=126', 'G-Angle', 'G-Angle', '7');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/7_16602553374.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '7');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/7_166025533849.webp?v=126', 'G-Angle', 'G-Angle', '7');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/7_1666702087.webp?v=126', 'Patrick Piazzalunga', 'Valentina Taddeo', '7');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/7_05.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '7');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/8_166196504986.webp?v=126', 'G-Angle', 'G-Angle', '8');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/8_16619650494.webp?v=126', 'Jamie McKelvie', 'Matthew Wilson', '8');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/8_166196504943.webp?v=126', 'Skottie Young', 'Skottie Young', '8');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/8_166196505098.webp?v=126', 'Marguerite Sauvage', 'Marguerite Sauvage', '8');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/8_05.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '8');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/8_07.webp?v=126', 'Stefano Caselli', 'Federico Blee', '8');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/8_06.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '8');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/9_166196505013.webp?v=126', 'G-Angle', 'G-Angle', '9');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/9_166196505054.webp?v=126', 'Greg Land', 'Nolan Woodard', '9');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/9_16619650513.webp?v=126', 'G-Angle', 'G-Angle', '9');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/9_166196505173.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '9');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/9_166196505130.webp?v=126', 'Alex Ross', 'Alex Ross', '9');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/9_1666702157.webp?v=126', 'Jim Lee', 'Israel Silva', '9');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/10_16619650525.webp?v=126', 'G-Angle', 'G-Angle', '10');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/10_166196505274.webp?v=126', 'Stephanie Hans', 'Stephanie Hans', '10');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/10_166196505260.webp?v=126', 'Skottie Young', 'Skottie Young', '10');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/10_166196505236.webp?v=126', 'G-Angle', 'G-Angle', '10');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/10_06.webp?v=126', 'Alaine Baybayan', 'Alaine Baybayan', '10');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/11_166196505353.webp?v=126', 'G-Angle', 'G-Angle', '407');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/11_166196505329.webp?v=126', 'Andy Park', 'Andy Park', '407');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/11_166196505321.webp?v=126', 'Skottie Young', 'Skottie Young', '407');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/11_166196505467.webp?v=126', 'Ryan Benjamin', 'Ryan Kinnaird', '407');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/407_05.webp?v=126', 'Marco Itri', 'Ryan Kinnaird', '407');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/407_07.webp?v=126', 'Faye Cheng', 'Faye Cheng', '407');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/407_06.webp?v=126', 'Roberto Di Salvo', 'Eric Guerrero', '407');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/407_08.webp?v=126', 'Dan Hipp', 'Dan Hipp', '407');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/12_166196505467.webp?v=126', 'G-Angle', 'G-Angle', '12');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/12_166196505421.webp?v=126', 'Mahmud Asrar', 'Mahmud Asrar', '12');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/12_166196505516.webp?v=126', 'Dan Hipp', 'Dan Hipp', '12');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/12_166196505523.webp?v=126', 'Pepe Larraz', 'Marte Gracia', '12');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/12_16619650557.webp?v=126', 'Kim Jacinto', 'Kim Jacinto', '12');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/13_166196505682.webp?v=126', 'G-Angle', 'G-Angle', '13');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/13_166196505652.webp?v=126', 'G-Angle', 'G-Angle', '13');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/13_166196505655.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '13');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/13_166196505789.webp?v=126', 'John Tyler Christopher', 'John Tyler Christopher', '13');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/14_166196505741.webp?v=126', 'G-Angle', 'G-Angle', '14');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/14_166196505772.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '14');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/14_166196505850.webp?v=126', 'Ivan Shavrin', 'Ryan Kinnaird', '14');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/14_166196505845.webp?v=126', 'G-Angle', 'G-Angle', '14');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/14_06.webp?v=126', 'Dan Hipp', 'Dan Hipp', '14');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/379_1666702329.webp?v=126', 'G-Angle', 'G-Angle', '379');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/379_1666702337.webp?v=126', 'Dan Hipp', 'Dan Hipp', '379');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/379_1666702343.webp?v=126', 'Jason Kang', 'Jason Kang', '379');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/379_04.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '379');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/18_166196505885.webp?v=126', 'G-Angle', 'G-Angle', '18');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/18_166196505999.webp?v=126', 'Dan Hipp', 'Dan Hipp', '18');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/18_1666702426.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '18');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/18_04.webp?v=126', 'Joverine', 'Ryan Kinnaird', '18');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/18_05.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '18');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/380_166025533850.webp?v=126', 'G-Angle', 'G-Angle', '380');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/380_1666702471.webp?v=126', 'Dan Hipp', 'Dan Hipp', '380');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/20_166196505951.webp?v=126', 'G-Angle', 'G-Angle', '20');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/20_166196505932.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '20');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/20_166196506042.webp?v=126', 'Joverine', 'Ryan Kinnaird', '20');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/20_166196506085.webp?v=126', 'Combo Break', 'Ryan Kinnaird', '20');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/20_166196506013.webp?v=126', 'Dan Hipp', 'Dan Hipp', '20');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/21_166196506187.webp?v=126', 'G-Angle', 'G-Angle', '21');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/21_166196506168.webp?v=126', 'Ryan Benjamin', 'Ryan Kinnaird', '21');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/21_16619650611.webp?v=126', 'Simone Buonfantino', 'Ryan Kinnaird', '21');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/21_166196506253.webp?v=126', 'Marco Itri', 'Ryan Kinnaird', '21');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/21_1666688846.webp?v=126', 'Simone Buonfantino', 'Ryan Kinnaird', '21');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/21_1666688851.webp?v=126', 'Volmi', 'Volmi', '21');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/21_07.webp?v=126', 'Jim Lee', 'Chris Sotomayor', '21');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/21_08.webp?v=126', 'Dan Hipp', 'Dan Hipp', '21');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/22_166196506247.webp?v=126', 'Skan', 'Skan', '22');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/22_166196506385.webp?v=126', 'Marco Itri', 'Ryan Kinnaird', '22');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/22_166196506368.webp?v=126', 'Christian Ward', 'Christian Ward', '22');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/22_06.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '22');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/22_07.webp?v=126', 'Adi Granov', 'Adi Granov', '22');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/23_16619650643.webp?v=126', 'G-Angle', 'G-Angle', '23');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/23_16619650649.webp?v=126', 'Skan', 'Skan', '23');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/23_166196506427.webp?v=126', 'Artgerm', 'Artgerm', '23');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/23_166196506493.webp?v=126', 'Skottie Young', 'Skottie Young', '23');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/23_166196506416.webp?v=126', 'Patrick Piazzalunga', 'Valentina Taddeo', '23');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/23_07.webp?v=126', 'Phil Noto', 'Phil Noto', '23');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/23_06.webp?v=126', 'Roberto Di Salvo', 'Massimo Di Leo', '23');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/25_166025533996.webp?v=126', 'G-Angle', 'G-Angle', '25');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/25_166025533921.webp?v=126', 'Skottie Young', 'Skottie Young', '25');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/25_166025534036.webp?v=126', 'Joshua Cassara', 'Joshua Cassara', '25');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/25_166025534057.webp?v=126', 'Dan Hipp', 'Dan Hipp', '25');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/25_166025534011.webp?v=126', 'Max Grecke', 'Max Grecke', '25');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/25_166025534060.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '25');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/25_07.webp?v=126', 'Ken Lashley', '', '25');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/25_08.webp?v=126', 'Jander Gonzalez', 'Jander Gonzalez', '25');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/26_16619650655.webp?v=126', 'G-Angle', 'G-Angle', '26');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/26_166196506552.webp?v=126', 'Adi Granov', 'Adi Granov', '26');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/26_166196506571.webp?v=126', 'Skottie Young', 'Skottie Young', '26');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/26_166196506644.webp?v=126', 'Olivier Coipel', 'Olivier Coipel', '26');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/26_166196506697.webp?v=126', 'Max Grecke', 'Max Grecke', '26');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/26_06.webp?v=126', 'Skan', 'Skan', '26');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/26_07.webp?v=126', 'Dan Hipp', 'Dan Hipp', '26');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/26_08.webp?v=126', 'Frontier Agent', 'Frontier Agent', '26');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/27_166196506682.webp?v=126', 'G-Angle', 'G-Angle', '27');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/27_166196506789.webp?v=126', 'Ryan Benjamin', 'Ryan Kinnaird', '27');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/27_166196506717.webp?v=126', 'Luca Claretti', 'Luca Claretti', '27');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/27_1666702767.webp?v=126', 'Marco Itri', 'Ryan Kinnaird', '27');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/27_08.webp?v=126', 'Combo Break', 'Combo Break', '27');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/30_166196506782.webp?v=126', 'G-Angle', 'G-Angle', '30');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/30_166196506897.webp?v=126', 'Simone Buonfantino', 'Ryan Kinnaird', '30');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/30_166196506814.webp?v=126', 'Dan Hipp', 'Dan Hipp', '30');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/30_166196506821.webp?v=126', 'Roberto Di Salvo', 'Ryan Kinnaird', '30');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/30_06.webp?v=126', 'Max Grecke', 'Max Grecke', '30');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/31_166196506949.webp?v=126', 'G-Angle', 'G-Angle', '31');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/31_166196506968.webp?v=126', 'Virgilio D''Ambrosio', 'Ryan Kinnaird', '31');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/31_166196506956.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '31');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/31_166196506962.webp?v=126', 'Dan Hipp', 'Dan Hipp', '31');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/31_06.webp?v=126', 'Kim Jacinto', 'Kim Jacinto', '31');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/32_166196507028.webp?v=126', 'G-Angle', 'G-Angle', '32');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/32_166196507061.webp?v=126', 'Ario Anindito', 'Ryan Kinnaird', '32');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/32_166196507191.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '32');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/32_166196507139.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '32');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/32_166196507163.webp?v=126', 'Patrick Piazzalunga', 'Valentina Taddeo', '32');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/34_166196507228.webp?v=126', 'G-Angle', 'G-Angle', '34');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/34_166196507286.webp?v=126', 'Nick Bradshaw', 'Rachelle Rosenberg', '34');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/34_166196507223.webp?v=126', 'Skottie Young', 'Skottie Young', '34');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/34_16619650721.webp?v=126', 'Dale Keown', 'Jason Keith', '34');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/34_1666702935.webp?v=126', 'Kael Ngu', 'Kael Ngu', '34');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/34_07.webp?v=126', 'Greg Capullo', 'Jason Keith', '34');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/34_08.webp?v=126', 'Dan Hipp', 'Dan Hipp', '34');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/35_166196507380.webp?v=126', 'G-Angle', 'G-Angle', '35');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/35_16619650739.webp?v=126', 'Chris Samnee', 'Matthew Wilson', '35');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/35_166196507331.webp?v=126', 'Alex Ross', 'Alex Ross', '35');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/35_166196507456.webp?v=126', 'Joe Madureira', 'Marte Gracia', '35');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/35_1666703076.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '35');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/35_06.webp?v=126', 'Roberto Di Salvo', 'Eric Guerrero', '35');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/35_11.webp?v=126', 'Dan Hipp', 'Dan Hipp', '35');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/36_166025438318.webp?v=126', 'G-Angle', 'G-Angle', '36');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/36_166025438319.webp?v=126', 'Artgerm', 'Artgerm', '36');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/36_166025438316.webp?v=126', 'Emanuela Lupacchino', 'Jason Keith', '36');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/36_166025438493.webp?v=126', 'Skottie Young', 'Skottie Young', '36');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/36_166025438423.webp?v=126', 'David Nakayama', 'David Nakayama', '36');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/36_07.webp?v=126', 'MUGENUP', 'MUGENUP', '36');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/37_1660254384100.webp?v=126', 'G-Angle', 'G-Angle', '37');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/37_16602543857.webp?v=126', 'Artgerm', 'Artgerm', '37');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/37_16602543853.webp?v=126', 'Max Grecke', 'Max Grecke', '37');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/37_16602543855.webp?v=126', 'Mark Bagley', 'Jason Keith', '37');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/37_166025438559.webp?v=126', 'Kim Jacinto', 'Kim Jacinto', '37');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/37_07.webp?v=126', 'Fiona Hsieh', 'Fiona Hsieh', '37');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/37_08.webp?v=126', 'Kunkka', 'Kunkka', '37');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/39_16602543869.webp?v=126', 'G-Angle', 'G-Angle', '39');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/39_166025438686.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '39');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/39_166025438644.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '39');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/39_04.webp?v=126', 'Marco Itri', 'Ryan Kinnaird', '39');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/39_05.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '39');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/40_166025438711.webp?v=126', 'G-Angle', 'G-Angle', '40');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/40_166025438759.webp?v=126', 'Max Grecke', 'Max Grecke', '40');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/40_166025438725.webp?v=126', 'Ario Anindito', 'Ryan Kinnaird', '40');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/42_166025438887.webp?v=126', 'Diogo Saito', 'Ryan Kinnaird', '42');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/42_16602543886.webp?v=126', 'Cristina Cid', 'Cristina Cid', '42');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/42_166025438827.webp?v=126', 'Kim Jacinto', 'Kim Jacinto', '42');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/42_166025438942.webp?v=126', 'Patrick Piazzalunga', 'Valentina Taddeo', '42');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/43_166025438957.webp?v=126', 'G-Angle', 'G-Angle', '43');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/43_166025438912.webp?v=126', 'Kael Ngu', 'Kael Ngu', '43');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/43_166025439022.webp?v=126', 'Adi Granov', 'Adi Granov', '43');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/43_166025439011.webp?v=126', 'G-Angle', 'G-Angle', '43');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/43_166025439075.webp?v=126', 'Jim Lee', 'Israel Silva', '43');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/43_05.webp?v=126', 'Eduardo Francisco', 'Stefani Rennee', '43');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/44_166025439184.webp?v=126', 'G-Angle', 'G-Angle', '44');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/44_166025439114.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '44');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/44_166025439122.webp?v=126', 'Afif Khaled', 'Ryan Kinnaird', '44');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/44_166025439143.webp?v=126', 'Luca Claretti', 'Luca Claretti', '44');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/44_06.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '44');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/46_166025439227.webp?v=126', 'G-Angle', 'G-Angle', '46');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/46_166025439263.webp?v=126', 'Roberto Di Salvo', 'Ryan Kinnaird', '46');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/46_166025439246.webp?v=126', 'G-Angle', 'G-Angle', '46');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/46_166025439361.webp?v=126', 'Greg Tocchini', 'Greg Tocchini', '46');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/46_166025439357.webp?v=126', 'Patrick Piazzalunga', 'Giulia Priori', '46');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/47_166025439397.webp?v=126', 'G-Angle', 'G-Angle', '47');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/47_166025439463.webp?v=126', 'Jamal Campbell', 'Jamal Campbell', '47');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/47_166025439447.webp?v=126', 'Dan Hipp', 'Dan Hipp', '47');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/47_16602543944.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '47');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/48_166025439565.webp?v=126', 'G-Angle', 'G-Angle', '48');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/48_166025439578.webp?v=126', 'Jim Lee', 'Israel Silva', '48');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/48_166025439575.webp?v=126', 'Alexander Lozano', 'Alexander Lozano', '48');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/48_166025439546.webp?v=126', 'Eric Guerrero', 'Eric Guerrero', '48');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/48_1666703351.webp?v=126', 'Skottie Young', 'Skottie Young', '48');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/48_10.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '48');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/49_166025439620.webp?v=126', 'G-Angle', 'G-Angle', '49');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/49_166025439638.webp?v=126', 'Max Grecke', 'Max Grecke', '49');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/49_166025439681.webp?v=126', 'Ario Anindito', 'Ryan Kinnaird', '49');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/468_02.webp?v=126', 'Dan Hipp', 'Dan Hipp', '468');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/468_03.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '468');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/468_04.webp?v=126', 'Gerardo Sandoval', 'David Curiel', '468');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/52_166025534365.webp?v=126', 'Marco Checchetto', 'Marco Checchetto', '52');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/52_166025534478.webp?v=126', 'Skottie Young', 'Skottie Young', '52');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/52_166025534472.webp?v=126', 'Ryan Benjamin', 'Ryan Kinnaird', '52');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/52_166025534414.webp?v=126', 'Ken Lashley', '', '52');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/52_06.webp?v=126', 'Joe Quesada', 'David Mack', '52');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/52_09.webp?v=126', 'Marco Checchetto', 'Matthew Wilson', '52');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/54_166025534433.webp?v=126', 'G-Angle', 'G-Angle', '54');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/54_166025534581.webp?v=126', 'Skan', 'Skan', '54');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/54_1666703436.webp?v=126', 'G-Angle', 'G-Angle', '54');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/54_04.webp?v=126', 'Flaviano', 'Flaviano', '54');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/54_06.webp?v=126', 'Iban Coello', '', '54');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/54_07.webp?v=126', 'Eduardo Francisco', 'Stefani Rennee', '54');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/55_16602553459.webp?v=126', 'Elizabeth Torque', 'Elizabeth Torque', '55');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/55_04.webp?v=126', 'Dan Hipp', 'Dan Hipp', '55');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/56_01.webp?v=126', 'G-Angle', 'G-Angle', '56');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/56_02.webp?v=126', 'William Sliney', 'Rachelle Rosenberg', '56');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/56_03.webp?v=126', 'Clayton Crain', 'Clayton Crain', '56');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/56_04.webp?v=126', 'Skottie Young', 'Skottie Young', '56');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/56_05.webp?v=126', 'Ron Lim', 'Jay David Ramos', '56');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/56_06.webp?v=126', 'Max Grecke', 'Max Grecke', '56');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/56_08.webp?v=126', 'Skottie Young', 'Skottie Young', '56');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/57_166025439841.webp?v=126', 'G-Angle', 'G-Angle', '57');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/57_166025439880.webp?v=126', 'Ario Anindito', 'Ryan Kinnaird', '57');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/57_166025439944.webp?v=126', 'G-Angle', 'G-Angle', '57');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/57_166025439937.webp?v=126', 'Flaviano', 'Flaviano', '57');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/57_166025439941.webp?v=126', 'Giulio Rincione', 'Giulio Rincione', '57');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/57_07.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '57');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/58_166025440086.webp?v=126', 'Mike Perkins', 'Andy Troy', '58');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/58_166025440010.webp?v=126', 'Tom Whalen', 'Tom Whalen', '58');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/58_166025440011.webp?v=126', 'G-Angle', 'G-Angle', '58');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/58_06.webp?v=126', 'Roberto Di Salvo', 'Eric Guerrero', '58');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/59_166025440183.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '59');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/59_166025440173.webp?v=126', 'G-Angle', 'G-Angle', '59');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/59_05.webp?v=126', 'Skottie Young', 'Skottie Young', '59');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/59_07.webp?v=126', 'Dan Hipp', 'Dan Hipp', '59');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/61_166025440211.webp?v=126', 'G-Angle', 'G-Angle', '61');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/61_166025440258.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '61');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/61_166025440344.webp?v=126', 'Marco Itri', 'Ryan Kinnaird', '61');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/61_07.webp?v=126', 'Dan Hipp', 'Dan Hipp', '61');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/62_166025440397.webp?v=126', 'Alex Horley', 'Alex Horley', '62');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/62_166025440343.webp?v=126', 'Natacha Bustos', 'Natacha Bustos', '62');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/62_166025440443.webp?v=126', 'Steve Kurth', 'Alessia Pastorello', '62');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/62_166025440476.webp?v=126', 'Guillaume Singelin', 'Guillaume Singelin', '62');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/62_16602544047.webp?v=126', 'Gabriele Dell''Otto', 'Gabriele Dell''Otto', '62');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/62_07.webp?v=126', 'Dan Hipp', 'Dan Hipp', '62');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/62_08.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '62');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/64_166025440472.webp?v=126', 'G-Angle', 'G-Angle', '64');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/64_16602544055.webp?v=126', 'Alex Ross', 'Alex Ross', '64');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/64_166025440535.webp?v=126', 'Artgerm', 'Artgerm', '64');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/64_166025440560.webp?v=126', 'Skottie Young', 'Skottie Young', '64');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/64_166025440559.webp?v=126', 'Max Grecke', 'Max Grecke', '64');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/64_07.webp?v=126', 'Coran Kizer Stone', 'Coran Kizer Stone', '64');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/65_166025440639.webp?v=126', 'Max Grecke', 'Max Grecke', '65');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/65_166025440694.webp?v=126', 'Afif Khaled', 'Ryan Kinnaird', '65');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/65_16602544074.webp?v=126', 'Roberto Di Salvo', 'Ryan Kinnaird', '65');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/65_1660254407100.webp?v=126', 'Patrick Piazzalunga', 'Valentina Taddeo', '65');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/66_166025440790.webp?v=126', 'G-Angle', 'G-Angle', '66');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/66_166025440812.webp?v=126', 'Alex Ross', 'Alex Ross', '66');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/66_166025440826.webp?v=126', 'Skottie Young', 'Skottie Young', '66');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/66_166025440831.webp?v=126', 'Javier Garrón', 'Jason Keith', '66');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/67_166025440974.webp?v=126', 'G-Angle', 'G-Angle', '67');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/67_166025440934.webp?v=126', 'Greg Land', 'Frank D''Armata', '67');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/67_166025440963.webp?v=126', 'Mad Boogie', 'Mad Boogie', '67');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/67_166025440936.webp?v=126', 'Kael Ngu', 'Kael Ngu', '67');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/67_07.webp?v=126', 'Jim Lee', 'Israel Silva', '67');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/69_166025441627.webp?v=126', 'David Finch', 'Michael Gaydos and Frank D''Armata', '69');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/69_166025441611.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '69');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/69_166025441758.webp?v=126', 'Alex Horley', 'Alex Horley', '69');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/70_16602544177.webp?v=126', 'G-Angle', 'G-Angle', '70');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/70_166025441756.webp?v=126', 'Scott Hepburn', 'Matt Milla', '70');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/70_166025441842.webp?v=126', 'Joverine', 'Ryan Kinnaird', '70');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/70_16602544184.webp?v=126', 'Dan Hipp', 'Dan Hipp', '70');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/70_05.webp?v=126', 'Valeria Orlando', 'Giulia Priori', '70');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/73_166025441928.webp?v=126', 'In-Hyuk Lee', 'In-Hyuk Lee', '73');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/73_166025442076.webp?v=126', 'Afif Khaled', 'Ryan Kinnaird', '73');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/73_166025442040.webp?v=126', 'G-Angle', 'G-Angle', '73');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/455_1681883973.webp?v=126', '', '', '455');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/455_1681884085.webp?v=126', '', '', '455');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/455_02.webp?v=126', 'Peach Momoko', 'Peach Momoko', '455');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/455_03.webp?v=126', 'Maria Wolf', 'Mike Spicer', '455');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/75_166025442188.webp?v=126', 'G-Angle', 'G-Angle', '75');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/75_166025442143.webp?v=126', 'Gianluca Gugliotta', 'Ryan Kinnaird', '75');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/75_166025442149.webp?v=126', 'Nikola Čižmešija', 'Nikola Čižmešija', '75');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/75_166025442138.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '75');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/75_166025442186.webp?v=126', 'Valeria Orlando', 'Giulia Priori', '75');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/75_06.webp?v=126', 'Kim Jacinto', 'Kim Jacinto', '75');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/76_166025442273.webp?v=126', 'G-Angle', 'G-Angle', '76');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/76_166025442298.webp?v=126', 'Adi Granov', 'Adi Granov', '76');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/76_166025442242.webp?v=126', 'Skottie Young', 'Skottie Young', '76');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/76_166025442364.webp?v=126', 'Marco Checchetto', 'Marcio Menyz', '76');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/76_06.webp?v=126', 'R1c0', 'R1c0', '76');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/79_166025442348.webp?v=126', 'Stephanie Hans', 'Stephanie Hans', '79');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/79_166025442336.webp?v=126', 'G-Angle', 'G-Angle', '79');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/79_166025442477.webp?v=126', 'Frank Cho', '', '79');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/79_1666703999.webp?v=126', 'Alex Horley', 'Alex Horley', '79');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/79_08.webp?v=126', 'ADIA', 'ADIA', '79');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/80_166025442432.webp?v=126', 'G-Angle', 'G-Angle', '80');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/80_166025442492.webp?v=126', 'Stuart Immonen', 'Marte Gracia', '80');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/80_166025442429.webp?v=126', 'Jay Anacleto', 'Romulo Fajardo, Jr.', '80');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/80_166025442513.webp?v=126', 'Marco Itri', 'Ryan Kinnaird', '80');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/80_166025442581.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '80');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/80_06.webp?v=126', 'David Nakayama', 'David Nakayama', '80');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/81_16602544258.webp?v=126', 'G-Angle', 'G-Angle', '81');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/81_166025442669.webp?v=126', 'Simone Buonfantino', 'Ryan Kinnaird', '81');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/81_166025442642.webp?v=126', 'Ario Anindito', 'Ryan Kinnaird', '81');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/81_1666704099.webp?v=126', 'Jim Lee', 'Israel Silva', '81');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/82_166025534757.webp?v=126', 'Kenneth Rocafort', 'Kenneth Rocafort', '82');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/82_166025534755.webp?v=126', 'Skottie Young', 'Skottie Young', '82');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/82_166025534796.webp?v=126', 'Adi Granov', 'Adi Granov', '82');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/82_16602553478.webp?v=126', 'Flaviano', 'Flaviano', '82');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/82_07.webp?v=126', 'Kim Jacinto', 'Kim Jacinto', '82');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/83_166025442791.webp?v=126', 'Jamie McKelvie', 'Jamie McKelvie', '83');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/83_166025442722.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '83');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/83_06.webp?v=126', 'Jander Gonzalez', 'Jander Gonzalez', '83');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/84_166025442732.webp?v=126', 'Ario Anindito', 'Ryan Kinnaird', '84');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/84_166025442874.webp?v=126', 'Stephanie Hans', 'Stephanie Hans', '84');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/84_166025442832.webp?v=126', 'Marco Checchetto', 'Marco Checchetto', '84');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/84_166025442879.webp?v=126', 'Francesco Mattina', 'Francesco Mattina', '84');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/84_1666704171.webp?v=126', 'Valeria Orlando', 'Giulia Priori', '84');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/84_09.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '84');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/422_04.webp?v=126', 'Dan Hipp', 'Dan Hipp', '422');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/422_03.webp?v=126', 'Valeria Orlando', 'Giulia Priori', '422');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/422_05.webp?v=126', 'Eduardo Francisco', 'Stefani Rennee', '422');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/85_166025442946.webp?v=126', 'Tradd Moore', 'Laura Martin', '85');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/85_16602544296.webp?v=126', 'Max Grecke', 'Max Grecke', '85');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/85_166025443076.webp?v=126', 'Jason Kang', 'Jason Kang', '85');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/85_1666705891.webp?v=126', 'Kim Jacinto', 'Kim Jacinto', '85');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/86_166025534882.webp?v=126', 'G-Angle', 'G-Angle', '86');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/86_166025534842.webp?v=126', 'Ken Lashley', 'Juan Fernandez', '86');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/86_166025534924.webp?v=126', 'Bengal', 'Bengal', '86');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/86_166025534910.webp?v=126', 'Rose Besch', 'Rose Besch', '86');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/86_07.webp?v=126', 'Ryan Brown', 'Ryan Brown', '86');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/86_11.webp?v=126', 'Artgerm', 'Artgerm', '86');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/87_166025443117.webp?v=126', 'Afif Khaled', 'Ryan Kinnaird', '87');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/87_166025443177.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '87');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/87_166025443125.webp?v=126', 'Giulio Rincione', 'Giulio Rincione', '87');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/87_166025443196.webp?v=126', 'Dan Hipp', 'Dan Hipp', '87');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/88_166025443248.webp?v=126', 'G-Angle', 'G-Angle', '88');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/88_166025443292.webp?v=126', 'Simone Buonfantino', 'Ryan Kinnaird', '88');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/88_166025443265.webp?v=126', 'Luca Claretti', 'Luca Claretti', '88');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/88_1666704553.webp?v=126', 'Dan Hipp', 'Dan Hipp', '88');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/88_06.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '88');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/90_166025443346.webp?v=126', 'G-Angle', 'G-Angle', '90');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/90_166025443373.webp?v=126', 'Max Grecke', 'Max Grecke', '90');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/90_166025443370.webp?v=126', 'Alex Ross', 'Alex Ross', '90');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/90_166025443348.webp?v=126', 'In-Hyuk Lee', 'In-Hyuk Lee', '90');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/90_06.webp?v=126', 'In-Hyuk Lee', 'In-Hyuk Lee', '90');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/91_166025443443.webp?v=126', 'G-Angle', 'G-Angle', '91');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/91_166025443467.webp?v=126', 'Francesco Francavilla', 'Francesco Francavilla', '91');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/91_166025443422.webp?v=126', 'Jay Fosgitt', 'Jay Fosgitt', '91');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/91_166025443555.webp?v=126', 'Humberto Ramos', 'Humberto Ramos', '91');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/91_05.webp?v=126', 'Marco Failla', 'Ryan Kinnaird', '91');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/91_06.webp?v=126', 'Dan Hipp', 'Dan Hipp', '91');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/93_166025443526.webp?v=126', 'G-Angle', 'G-Angle', '93');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/93_166025443550.webp?v=126', 'Brandon Peterson', '', '93');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/93_166025443662.webp?v=126', 'Skottie Young', 'Skottie Young', '93');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/93_166025443611.webp?v=126', 'Marco Checchetto', 'Andres Mossa', '93');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/93_16602544362.webp?v=126', 'Dan Hipp', 'Dan Hipp', '93');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/94_166025443759.webp?v=126', 'Max Grecke', 'Max Grecke', '94');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/94_166025443756.webp?v=126', 'Ario Anindito', 'Ryan Kinnaird', '94');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/94_166025443729.webp?v=126', 'Giuseppe Camuncoli', 'Christopher Sotomayor', '94');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/95_166025443847.webp?v=126', 'G-Angle', 'G-Angle', '95');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/95_166025443821.webp?v=126', 'Flaviano', 'Flaviano', '95');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/95_166025443899.webp?v=126', 'Eric Guerrero', 'Eric Guerrero', '95');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/95_06.webp?v=126', 'ADIA', 'ADIA', '95');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/96_16602544399.webp?v=126', 'Clayton Crain', 'Clayton Crain', '96');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/96_166025443934.webp?v=126', 'G-Angle', 'G-Angle', '96');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/96_04.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '96');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/384_166025535047.webp?v=126', 'G-Angle', 'G-Angle', '384');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/384_03.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '384');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/384_05.webp?v=126', 'Dan Hipp', 'Dan Hipp', '384');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/97_166025444052.webp?v=126', 'G-Angle', 'G-Angle', '97');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/97_166025444054.webp?v=126', 'Luca Claretti', 'Luca Claretti', '97');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/97_166025444038.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '97');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/97_166025444034.webp?v=126', 'Joverine', 'Ryan Kinnaird', '97');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/443_02.webp?v=126', 'Dan Hipp', 'Dan Hipp', '443');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/443_03.webp?v=126', 'Eduardo Francisco', 'Cindy Aline Nakashima', '443');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/443_05.webp?v=126', 'Max Grecke', 'Max Grecke', '443');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/99_04.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '99');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/99_02.webp?v=126', 'Ivan Shavrin', 'Ivan Shavrin', '99');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/99_05.webp?v=126', 'Dan Hipp', 'Dan Hipp', '99');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/100_166025444172.webp?v=126', 'G-Angle', 'G-Angle', '100');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/100_166025444119.webp?v=126', 'Max Grecke', 'Max Grecke', '100');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/100_166025444237.webp?v=126', 'Nikola Čižmešija', 'Nikola Čižmešija', '100');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/100_16602544422.webp?v=126', 'Dan Hipp', 'Dan Hipp', '100');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/100_166025444224.webp?v=126', 'Giulio Rincione', 'Giulio Rincione', '100');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/100_06.webp?v=126', 'Lorusso Giovanni', 'Ryan Kinnaird', '100');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/444_02.webp?v=126', 'Dan Hipp', 'Dan Hipp', '444');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/444_03.webp?v=126', 'Patrick Piazzalunga', 'Valentina Taddeo', '444');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/444_04.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '444');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/101_166025444242.webp?v=126', 'G-Angle', 'G-Angle', '101');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/101_166025444337.webp?v=126', 'Max Grecke', 'Max Grecke', '101');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/101_1666705246.webp?v=126', 'Valeria Orlando', 'Giulia Priori', '101');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/101_1666705250.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '101');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/102_166025444442.webp?v=126', 'G-Angle', 'G-Angle', '102');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/102_166025444461.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '102');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/102_166025444554.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '102');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/102_16602544455.webp?v=126', 'Marco Itri', 'Ryan Kinnaird', '102');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/103_166042421928.webp?v=126', 'Michael Komarck', '', '103');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/103_166042421918.webp?v=126', 'Max Grecke', 'Max Grecke', '103');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/103_166042421926.webp?v=126', 'Kim Jacinto', 'Kim Jacinto', '103');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/104_16604242202.webp?v=126', 'G-Angle', 'G-Angle', '104');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/104_166042422069.webp?v=126', 'Jee-Hyung Lee', 'Jee-Hyung Lee', '104');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/104_166042422144.webp?v=126', 'Skottie Young', 'Skottie Young', '104');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/104_06.webp?v=126', 'Combo Break', 'Combo Break', '104');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/104_07.webp?v=126', 'Stuart Immonen', 'Marte Gracia', '104');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/105_166042422160.webp?v=126', 'G-Angle', 'G-Angle', '105');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/105_166042422149.webp?v=126', 'Alex Ross', 'Alex Ross', '105');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/105_166042422223.webp?v=126', 'Artgerm', 'Artgerm', '105');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/105_166042422236.webp?v=126', 'Max Grecke', 'Max Grecke', '105');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/105_1666706135.webp?v=126', 'Peach Momoko', 'Peach Momoko', '105');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/105_06.webp?v=126', 'Coran Kizer Stone', 'Coran Kizer Stone', '105');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/106_166042422252.webp?v=126', 'G-Angle', 'G-Angle', '106');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/106_166042422312.webp?v=126', 'Gabriele Dell''Otto', 'Gabriele Dell''Otto', '106');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/106_166042422392.webp?v=126', 'Skottie Young', 'Skottie Young', '106');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/106_166042422348.webp?v=126', 'Jeff Dekal', 'Jeff Dekal', '106');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/106_166042422349.webp?v=126', 'Daniel Warren Johnson', 'Daniel Warren Johnson', '106');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/445_03.webp?v=126', 'Dan Hipp', 'Dan Hipp', '445');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/445_04.webp?v=126', 'Volmi', 'Volmi', '445');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/445_05.webp?v=126', 'Eduardo Francisco', 'Cindy Aline Nakashima', '445');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/445_02.webp?v=126', 'Marco Itri', 'Ryan Kinnaird', '445');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/107_166042422488.webp?v=126', 'G-Angle', 'G-Angle', '107');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/107_166042422490.webp?v=126', 'Salvador Larroca', 'Frank D''Armata', '107');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/107_166042422427.webp?v=126', 'Dan Hipp', 'Dan Hipp', '107');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/107_166042422595.webp?v=126', 'Gary Choo', '', '107');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/107_16604242259.webp?v=126', 'Max Grecke', 'Max Grecke', '107');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/107_1666603412.webp?v=126', 'Skottie Young', 'Skottie Young', '107');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/107_07.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '107');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/107_10.webp?v=126', 'Alex Garner', 'Alex Garner', '107');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/107_08.webp?v=126', 'MUGENUP', 'MUGENUP', '107');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/108_166042422593.webp?v=126', 'G-Angle', 'G-Angle', '108');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/108_166042422645.webp?v=126', 'Skan', 'Skan', '108');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/108_166042422679.webp?v=126', 'Skottie Young', 'Skottie Young', '108');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/108_166042422649.webp?v=126', 'Jeff Dekal', 'Jeff Dekal', '108');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/109_166042422797.webp?v=126', 'Skottie Young', 'Skottie Young', '408');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/408_06.webp?v=126', 'MUGENUP', 'MUGENUP', '408');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/110_166025535146.webp?v=126', 'G-Angle', 'G-Angle', '110');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/110_166025535136.webp?v=126', 'Artgerm', 'Artgerm', '110');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/110_04.webp?v=126', 'Artgerm', 'Artgerm', '110');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/110_05.webp?v=126', 'Philip Tan', 'Rain Beredo', '110');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/430_02.webp?v=126', 'Dan Hipp', 'Dan Hipp', '430');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/430_03.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '430');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/430_04.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '430');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/111_166042422864.webp?v=126', 'G-Angle', 'G-Angle', '111');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/111_166042422835.webp?v=126', 'David Mack', 'David Mack', '111');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/111_166042422931.webp?v=126', 'G-Angle', 'G-Angle', '111');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/111_16604242293.webp?v=126', 'Alex Maleev', 'Alex Maleev', '111');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/112_166042423033.webp?v=126', 'Terry Dodson', 'Rachel Dodson', '112');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/112_166042423036.webp?v=126', 'Lucas Werneck', 'Lucas Werneck', '112');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/112_166042423045.webp?v=126', 'Christina Chen', '', '112');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/112_1666706643.webp?v=126', 'Peach Momoko', 'Peach Momoko', '112');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/112_06.webp?v=126', 'Elizabeth Torque', 'Elizabeth Torque', '112');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/112_08.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '112');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/113_166042423118.webp?v=126', 'Nick Bradshaw', 'Edgar Delgado', '113');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/113_16604242317.webp?v=126', 'Skottie Young', 'Skottie Young', '113');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/113_08.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '113');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/117_166042423278.webp?v=126', 'Alex Horley', 'Alex Horley', '117');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/117_166042423266.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '117');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/117_166042423225.webp?v=126', 'Dan Hipp', 'Dan Hipp', '117');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/116_166025535161.webp?v=126', 'G-Angle', 'G-Angle', '116');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/116_166025535278.webp?v=126', 'Alex Horley', 'Alex Horley', '116');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/116_06.webp?v=126', 'Eric Guerrero', 'Eric Guerrero', '116');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/116_04.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '116');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/116_08.webp?v=126', 'Kael Ngu', 'Kael Ngu', '116');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/118_166042423368.webp?v=126', 'G-Angle', 'G-Angle', '118');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/118_166042423397.webp?v=126', 'Kael Ngu', 'Kael Ngu', '118');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/118_166042423315.webp?v=126', 'Dan Hipp', 'Dan Hipp', '118');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/118_166042423495.webp?v=126', 'Ryan Benjamin', 'Ryan Kinnaird', '118');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/119_166042423438.webp?v=126', 'G-Angle', 'G-Angle', '119');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/119_166042423416.webp?v=126', 'Afif Khaled', 'Ryan Kinnaird', '119');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/119_166042423588.webp?v=126', 'Ario Anindito', 'Ryan Kinnaird', '119');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/119_166042423567.webp?v=126', 'Patrick Piazzalunga', 'Giada Marchisio', '119');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/120_166025545750.webp?v=126', 'Carmen Carnero', 'Carmen Carnero', '120');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/120_166025545830.webp?v=126', 'Volmi', 'Volmi', '120');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/120_166025545898.webp?v=126', 'Adi Granov', 'Adi Granov', '120');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/121_166042423699.webp?v=126', 'G-Angle', 'G-Angle', '121');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/121_166042423521.webp?v=126', 'Max Grecke', 'Max Grecke', '121');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/121_166042423648.webp?v=126', 'Flaviano', 'Flaviano', '121');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/409_01.webp?v=126', 'G-Angle', 'G-Angle', '409');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/409_02.webp?v=126', 'Dan Hipp', 'Dan Hipp', '409');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/409_03.webp?v=126', 'Peach Momoko', 'Peach Momoko', '409');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/409_04.webp?v=126', 'Skan', 'Skan', '409');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/409_06.webp?v=126', 'Superlog', 'Superlog', '409');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/409_08.webp?v=126', 'Skan', 'Skan', '409');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/409_09.webp?v=126', 'Kim Jacinto', 'Kim Jacinto', '409');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/124_166042423791.webp?v=126', 'G-Angle', 'G-Angle', '124');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/124_166042423741.webp?v=126', 'G-Angle', 'G-Angle', '124');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/124_166042423743.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '124');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/124_1660424237100.webp?v=126', 'Luca Claretti', 'Luca Claretti', '124');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/124_166042423811.webp?v=126', 'Dan Hipp', 'Dan Hipp', '124');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/125_16604242386.webp?v=126', 'G-Angle', 'G-Angle', '125');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/125_166042423858.webp?v=126', 'Alex Horley', 'Alex Horley', '125');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/125_166042423827.webp?v=126', 'Roberto Di Salvo', 'Ryan Kinnaird', '125');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/125_166042423929.webp?v=126', 'Nikola Čižmešija', 'Nikola Čižmešija', '125');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/125_06.webp?v=126', 'Sergio Davila', 'Morry Hollowell', '125');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/125_07.webp?v=126', 'ADIA', 'ADIA', '125');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/127_166025545880.webp?v=126', 'G-Angle', 'G-Angle', '127');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/127_16602554595.webp?v=126', 'Ario Anindito', 'Ryan Kinnaird', '127');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/127_08.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '127');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/128_166042423941.webp?v=126', 'Daniel Acuña', 'Daniel Acuña', '128');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/128_166042424054.webp?v=126', 'Jorge Molina', 'Jorge Molina', '128');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/128_1666602544.webp?v=126', 'Dan Hipp', 'Dan Hipp', '128');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/128_07.webp?v=126', 'Ivan Tao', 'Ivan Tao', '128');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/129_166042424146.webp?v=126', 'Combo Break', 'Ryan Kinnaird', '129');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/129_166042424128.webp?v=126', 'Nikola Čižmešija', 'Paris Alleyne', '129');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/129_166042424188.webp?v=126', 'Mad Boogie', 'Mad Boogie', '129');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/129_166042424127.webp?v=126', 'Luca Claretti', 'Luca Claretti', '129');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/131_166042424216.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '131');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/131_166042424226.webp?v=126', 'Afif Khaled', 'Ryan Kinnaird', '131');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/131_04.webp?v=126', 'Dan Hipp', 'Dan Hipp', '131');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/132_02.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '132');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/132_03.webp?v=126', 'Dan Hipp', 'Dan Hipp', '132');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/132_06.webp?v=126', 'Giuseppe Camuncoli', 'Guru Efx', '132');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/134_166042424398.webp?v=126', 'G-Angle', 'G-Angle', '134');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/134_166042424399.webp?v=126', 'Shane Davis', 'Shane Davis', '134');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/134_166042424476.webp?v=126', 'Ryan Brown', 'Ryan Brown', '134');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/134_166042424460.webp?v=126', 'J. Scott Campbell', 'Edgar Delgado', '134');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/134_06.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '134');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/135_166042424496.webp?v=126', 'Dan Hipp', 'Dan Hipp', '135');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/135_166042424585.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '135');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/135_166042424563.webp?v=126', 'Luca Claretti', 'Luca Claretti', '135');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/446_04.webp?v=126', 'Ozgur Yildirim', 'Ozgur Yildirim', '446');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/446_05.webp?v=126', 'ADIA', 'ADIA', '446');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/446_07.webp?v=126', 'Tyler Kirkham', 'Arif Prianto', '446');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/138_166025546027.webp?v=126', 'G-Angle', 'G-Angle', '138');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/138_166025546029.webp?v=126', 'David Marquez', 'Justin Ponsor', '138');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/138_166025546068.webp?v=126', 'Dan Hipp', 'Dan Hipp', '138');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/138_166025546047.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '138');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/138_06.webp?v=126', 'Combo Break', 'Combo Break', '138');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/139_16602554616.webp?v=126', 'G-Angle', 'G-Angle', '139');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/139_16602554613.webp?v=126', 'Kael Ngu', 'Kael Ngu', '139');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/139_166025546144.webp?v=126', 'Joverine', 'Ryan Kinnaird', '139');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/140_166042424528.webp?v=126', 'G-Angle', 'G-Angle', '140');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/140_166042424672.webp?v=126', 'Skottie Young', 'Skottie Young', '140');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/140_166042424666.webp?v=126', 'Mike Del Mundo', 'Mike Del Mundo', '140');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/140_166042424624.webp?v=126', 'Ryan Benjamin', 'Ryan Kinnaird', '140');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/141_166042424746.webp?v=126', 'G-Angle', 'G-Angle', '141');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/141_166042424737.webp?v=126', 'Marco Checchetto', 'Marco Checchetto', '141');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/141_166042424735.webp?v=126', 'Skottie Young', 'Skottie Young', '141');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/141_166042424766.webp?v=126', 'Dan Hipp', 'Dan Hipp', '141');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/141_08.webp?v=126', 'Combo Break', 'Combo Break', '141');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/143_166042424814.webp?v=126', 'G-Angle', 'G-Angle', '143');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/143_166042424856.webp?v=126', 'Kael Ngu', 'Kael Ngu', '143');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/143_166042424813.webp?v=126', 'Afif Khaled', 'Ryan Kinnaird', '143');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/143_166042424874.webp?v=126', 'Dan Hipp', 'Dan Hipp', '143');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/143_166042424924.webp?v=126', 'Ario Anindito', 'Ryan Kinnaird', '143');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/143_06.webp?v=126', 'Marco Failla', 'Eric Guerrero', '143');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/144_166025546393.webp?v=126', 'Cristina Cid', 'Cristina Cid', '144');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/144_166025546373.webp?v=126', 'G-Angle', 'G-Angle', '144');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/144_1666707617.webp?v=126', 'Gianluca Gugliotta', 'Valentina Taddeo', '144');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/314_02.webp?v=126', 'Dan Hipp', 'Dan Hipp', '314');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/314_04.webp?v=126', 'Eduardo Francisco', 'Stefani Rennee', '314');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/145_166025456859.webp?v=126', 'Stjepan Šejić', 'Stjepan Šejić', '145');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/145_166025456872.webp?v=126', 'Daniele Di Nicuolo', 'Ryan Kinnaird', '145');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/145_1666707652.webp?v=126', 'Giulio Rincione', 'Giulio Rincione', '145');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/146_166025456949.webp?v=126', 'G-Angle', 'G-Angle', '146');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/146_166025456994.webp?v=126', 'Ario Anindito', 'Ryan Kinnaird', '146');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/146_166025456940.webp?v=126', 'Dan Hipp', 'Dan Hipp', '146');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/146_166025457078.webp?v=126', 'G-Angle', 'G-Angle', '146');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/315_166025546440.webp?v=126', 'G-Angle', 'G-Angle', '315');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/315_166025546489.webp?v=126', 'Ryan Benjamin', '', '315');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/315_166025546493.webp?v=126', 'Steve Kurth', 'Alessia Pastorello', '315');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/315_166025546584.webp?v=126', 'Kael Ngu', 'Kael Ngu', '315');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/315_11.webp?v=126', 'Skottie Young', 'Skottie Young', '315');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/315_13.webp?v=126', 'Derrick Chew', 'Derrick Chew', '315');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/151_166025546616.webp?v=126', 'G-Angle', 'G-Angle', '151');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/151_02.webp?v=126', 'Peach Momoko', 'Peach Momoko', '151');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/151_03.webp?v=126', 'Maria Wolf', 'Maria Wolf', '151');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/151_05.webp?v=126', 'Justyna Dura', 'Justyna Dura', '151');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/153_166025457042.webp?v=126', 'G-Angle', 'G-Angle', '153');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/153_166025457094.webp?v=126', 'Artgerm', 'Artgerm', '153');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/153_166025457167.webp?v=126', 'Max Grecke', 'Max Grecke', '153');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/153_05.webp?v=126', 'Ario Anindito', 'Ryan Kinnaird', '153');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/153_07.webp?v=126', 'Coran Kizer Stone', 'Coran Kizer Stone', '153');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/153_06.webp?v=126', 'Roberto Di Salvo', 'Eric Guerrero', '153');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/154_166025457160.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '154');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/154_166025457280.webp?v=126', 'Nikola Čižmešija', 'Nikola Čižmešija', '154');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/154_166025457282.webp?v=126', 'Luca Claretti', 'Luca Claretti', '154');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/154_16602545722.webp?v=126', 'Faye Cheng', 'Faye Cheng', '154');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/154_06.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '154');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/155_166025457259.webp?v=126', 'G-Angle', 'G-Angle', '155');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/155_166025457327.webp?v=126', 'Skottie Young', 'Skottie Young', '155');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/155_166025457320.webp?v=126', 'Luca Claretti', 'Luca Claretti', '155');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/155_1666707741.webp?v=126', 'Ryan Benjamin', 'Ryan Kinnaird', '155');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/155_1666707747.webp?v=126', 'Daniel Acuña', 'Daniel Acuña', '155');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/155_07.webp?v=126', 'Volmi', 'Volmi', '155');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/156_166025457387.webp?v=126', 'G-Angle', 'G-Angle', '156');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/156_166025457442.webp?v=126', 'Paul Renaud', 'Paul Renaud', '156');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/156_166025457489.webp?v=126', 'G-Angle', 'G-Angle', '156');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/156_166025457425.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '156');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/156_06.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '156');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/313_165836180047.webp?v=126', 'G-Angle', 'G-Angle', '157');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/401_166025546293.webp?v=126', 'David Lafuente', 'John Rauch', '157');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/157_03.webp?v=126', 'Skottie Young', 'Skottie Young', '157');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/157_04.webp?v=126', 'Giulio Rincione', 'Giulio Rincione', '157');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/157_06.webp?v=126', 'Volmi', 'Volmi', '157');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/158_166025457545.webp?v=126', 'G-Angle', 'G-Angle', '158');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/158_166025457564.webp?v=126', 'J. Scott Campbell', 'Sabine Rich', '158');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/158_166025457573.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '158');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/158_166025457565.webp?v=126', 'Luca Claretti', 'Luca Claretti', '158');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/158_166025457697.webp?v=126', 'Giulio Rincione', 'Giulio Rincione', '158');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/163_166025457612.webp?v=126', 'G-Angle', 'G-Angle', '163');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/163_166025457622.webp?v=126', 'Ryan Benjamin', 'Ryan Kinnaird', '163');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/163_166025457731.webp?v=126', 'Marco Itri', 'Ryan Kinnaird', '163');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/163_166025457724.webp?v=126', 'Steve Kurth', 'Alessia Pastorello', '163');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/163_06.webp?v=126', 'Dan Hipp', 'Dan Hipp', '163');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/163_10.webp?v=126', 'Ken Lashley', 'Ken Lashley', '163');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/164_166025457790.webp?v=126', 'G-Angle', 'G-Angle', '164');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/164_166025457855.webp?v=126', 'Philip Tan', 'Marte Gracia', '164');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/164_166025457877.webp?v=126', 'Alex Garner', 'Alex Garner', '164');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/164_1666707917.webp?v=126', 'Skottie Young', 'Skottie Young', '164');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/165_166025457995.webp?v=126', 'Alex Horley', 'Alex Horley', '165');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/165_166025457916.webp?v=126', 'Skottie Young', 'Skottie Young', '165');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/165_166025457987.webp?v=126', 'In-Hyuk Lee', 'In-Hyuk Lee', '165');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/165_166025457960.webp?v=126', 'Giulio Rincione', 'Giulio Rincione', '165');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/165_06.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '165');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/166_166025458038.webp?v=126', 'G-Angle', 'G-Angle', '166');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/166_166025458030.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '166');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/166_166025458060.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '166');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/166_16602545809.webp?v=126', 'Luca Claretti', 'Luca Claretti', '166');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/169_166025458180.webp?v=126', 'G-Angle', 'G-Angle', '169');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/169_166025458151.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '169');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/169_166025458120.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '169');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/169_166025458232.webp?v=126', 'Combo Break', 'Ryan Kinnaird', '169');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/171_166025458341.webp?v=126', 'G-Angle', 'G-Angle', '171');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/171_166025458332.webp?v=126', 'Max Grecke', 'Max Grecke', '171');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/171_166025458352.webp?v=126', 'Jelena Djurdjevic', 'Jelena Djurdjevic', '171');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/171_166025458353.webp?v=126', 'Dan Hipp', 'Dan Hipp', '171');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/173_166025458454.webp?v=126', 'G-Angle', 'G-Angle', '173');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/173_166025458459.webp?v=126', 'Joseph Linsner', 'Studio F', '173');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/173_1660254585100.webp?v=126', 'Luca Claretti', 'Luca Claretti', '173');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/173_166025458580.webp?v=126', 'Sana Takeda', 'Sana Takeda', '173');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/173_1666708060.webp?v=126', 'Peach Momoko', 'Peach Momoko', '173');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/173_06.webp?v=126', 'Elizabeth Torque', 'Elizabeth Torque', '173');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/173_08.webp?v=126', 'Artgerm', 'Artgerm', '173');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/174_166025458591.webp?v=126', 'G-Angle', 'G-Angle', '174');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/174_166025458689.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '174');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/174_166025458647.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '174');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/174_166025458670.webp?v=126', 'Dan Hipp', 'Dan Hipp', '174');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/175_166025458789.webp?v=126', 'G-Angle', 'G-Angle', '175');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/175_166025458753.webp?v=126', 'Leinil Francis Yu', 'Sunny Gho', '175');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/175_166025458719.webp?v=126', 'Skottie Young', 'Skottie Young', '175');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/175_1666708108.webp?v=126', 'Jason Kang', 'Jason Kang', '175');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/175_05.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '175');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/176_166025546769.webp?v=126', 'G-Angle', 'G-Angle', '176');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/176_1666708163.webp?v=126', 'Jen Bartel', 'Jen Bartel', '176');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/176_1666708167.webp?v=126', 'Skottie Young', 'Skottie Young', '176');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/176_04.webp?v=126', 'Dan Hipp', 'Dan Hipp', '176');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/176_05.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '176');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/177_02.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '177');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/180_166025546846.webp?v=126', 'G-Angle', 'G-Angle', '180');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/180_166025546827.webp?v=126', 'Gabriele Dell''Otto', 'Gabriele Dell''Otto', '180');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/180_166025546869.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '180');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/180_166025546944.webp?v=126', 'Dan Hipp', 'Dan Hipp', '180');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/180_166025546957.webp?v=126', 'Patrick Piazzalunga', 'Valentina Taddeo', '180');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/180_09.webp?v=126', 'Ryan Benjamin', 'Ryan Kinnaird', '180');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/180_08.webp?v=126', 'Roberto Di Salvo', 'Massimo Di Le', '180');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/181_166025458821.webp?v=126', 'G-Angle', 'G-Angle', '181');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/181_166025458881.webp?v=126', 'Eduard Petrovich', 'Eduard Petrovich', '181');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/181_166025458845.webp?v=126', 'Skottie Young', 'Skottie Young', '181');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/181_1666708245.webp?v=126', 'Travis Charest', 'Travis Charest', '181');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/181_06.webp?v=126', 'Dan Hipp', 'Dan Hipp', '181');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/181_07.webp?v=126', 'Volmi', 'Volmi', '181');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/429_02.webp?v=126', 'Dan Hipp', 'Dan Hipp', '429');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/429_03.webp?v=126', 'Kim Jacinto', 'Kim Jacinto', '429');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/429_04.webp?v=126', 'ADIA', 'ADIA', '429');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/182_166025458913.webp?v=126', 'G-Angle', 'G-Angle', '182');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/182_166025458926.webp?v=126', 'Skottie Young', 'Skottie Young', '182');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/182_1660254589100.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '182');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/182_1666708280.webp?v=126', 'Mike Deodato', 'Guru FX', '182');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/182_05.webp?v=126', 'Volmi', 'Volmi', '182');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/182_06.webp?v=126', 'Adi Granov', 'Adi Granov', '182');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/184_166025459075.webp?v=126', 'G-Angle', 'G-Angle', '184');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/184_166025459084.webp?v=126', 'Simone Buonfantino', 'Ryan Kinnaird', '184');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/184_166025459011.webp?v=126', 'Flaviano', 'Flaviano', '184');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/184_166025459143.webp?v=126', 'Daniele Di Nicuolo', 'Ryan Kinnaird', '184');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/184_166025459130.webp?v=126', 'Dan Hipp', 'Dan Hipp', '184');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/185_166025459131.webp?v=126', 'G-Angle', 'G-Angle', '185');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/185_166025459298.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '185');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/185_166025459270.webp?v=126', 'G-Angle', 'G-Angle', '185');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/185_166025459221.webp?v=126', 'David Nakayama', 'David Nakayama', '185');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/185_166025459280.webp?v=126', 'Flaviano', 'Flaviano', '185');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/187_166025459355.webp?v=126', 'G-Angle', 'G-Angle', '187');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/187_166025459332.webp?v=126', 'Clayton Crain', 'Clayton Crain', '187');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/187_166025459341.webp?v=126', 'Luca Claretti', 'Luca Claretti', '187');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/187_166025459328.webp?v=126', 'Dan Hipp', 'Dan Hipp', '187');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/187_04.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '187');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/188_166025459419.webp?v=126', 'G-Angle', 'G-Angle', '188');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/188_166025459481.webp?v=126', 'Max Grecke', 'Max Grecke', '188');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/188_166025459423.webp?v=126', 'Luca Claretti', 'Luca Claretti', '188');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/188_166025459545.webp?v=126', 'Dan Hipp', 'Dan Hipp', '188');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/188_166025459550.webp?v=126', 'Kim Jacinto', 'Kim Jacinto', '188');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/190_166025547023.webp?v=126', 'G-Angle', 'G-Angle', '190');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/190_166025547046.webp?v=126', 'Joverine', 'Ryan Kinnaird', '190');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/190_166025547091.webp?v=126', 'Giulio Rincione', 'Giulio Rincione', '190');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/191_16602547146.webp?v=126', 'Paulo Siqueira', 'Marcio Menyz', '191');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/191_166025471429.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '191');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/191_166025471421.webp?v=126', 'G-Angle', 'G-Angle', '191');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/191_07.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '191');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/193_166025471471.webp?v=126', 'G-Angle', 'G-Angle', '193');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/193_166025471517.webp?v=126', 'Ryan Benjamin', 'Ryan Kinnaird', '193');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/193_16602547152.webp?v=126', 'G-Angle', 'G-Angle', '193');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/195_166025471578.webp?v=126', 'G-Angle', 'G-Angle', '195');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/195_166025471653.webp?v=126', 'Combo Break', 'Ryan Kinnaird', '195');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/195_166025471618.webp?v=126', 'Skottie Young', 'Skottie Young', '195');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/195_166025471646.webp?v=126', 'Patrick Piazzalunga', 'Valentina Taddeo', '195');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/196_166025471689.webp?v=126', 'G-Angle', 'G-Angle', '196');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/196_166025471658.webp?v=126', 'Rose Besch', 'Rose Besch', '196');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/196_16602547176.webp?v=126', 'J. Scott Campbell', 'Edgar Delgado', '196');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/196_166025471776.webp?v=126', 'Kael Ngu', 'Kael Ngu', '196');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/196_08.webp?v=126', 'Dan Hipp', 'Dan Hipp', '196');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/266_166025471746.webp?v=126', 'G-Angle', 'G-Angle', '411');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/266_166025471739.webp?v=126', 'Skottie Young', 'Skottie Young', '411');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/266_16602547179.webp?v=126', 'Christopher Stevens', 'Christopher Stevens', '411');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/197_166025471882.webp?v=126', 'G-Angle', 'G-Angle', '197');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/197_166025471890.webp?v=126', 'Alexander Maleev', 'Alexander Maleev', '197');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/197_166025471883.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '197');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/197_166025471835.webp?v=126', 'Jamal Campbell', 'Jamal Campbell', '197');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/198_166025471920.webp?v=126', 'G-Angle', 'G-Angle', '198');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/198_166025471963.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '198');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/198_166025471964.webp?v=126', 'Martin Simmonds', 'Martin Simmonds', '198');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/199_166025471952.webp?v=126', 'G-Angle', 'G-Angle', '199');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/199_166025472078.webp?v=126', 'Simone Buonfantino', 'Ryan Kinnaird', '199');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/199_1663848724.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '199');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/199_04.webp?v=126', 'Marco Itri', 'Ryan Kinnaird', '199');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/203_16602547209.webp?v=126', 'G-Angle', 'G-Angle', '203');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/203_166025472053.webp?v=126', 'Jason Kang', 'Jason Kang', '203');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/203_16602547208.webp?v=126', 'Joverine', 'Ryan Kinnaird', '203');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/203_166025472186.webp?v=126', 'Giulio Rincione', 'Giulio Rincione', '203');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/203_06.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '203');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/204_166025472111.webp?v=126', 'G-Angle', 'G-Angle', '204');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/204_166025472153.webp?v=126', 'Jen Bartel', 'Jen Bartel', '204');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/204_166025472196.webp?v=126', 'Fahmi Fauzi', 'Fahmi Fauzi', '204');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/204_166025472245.webp?v=126', 'Guillaume Singelin', 'Guillaume Singelin', '204');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/204_05.webp?v=126', 'Dan Hipp', 'Dan Hipp', '204');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/204_06.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '204');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/205_166025472279.webp?v=126', 'G-Angle', 'G-Angle', '205');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/205_16602547222.webp?v=126', 'Roberto Di Salvo', 'Ryan Kinnaird', '205');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/205_166025472291.webp?v=126', 'Nikola Čižmešija', 'Nikola Čižmešija', '205');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/205_166025472257.webp?v=126', 'Dan Hipp', 'Dan Hipp', '205');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/205_166025472359.webp?v=126', 'Giulio Rincione', 'Giulio Rincione', '205');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/207_166025472328.webp?v=126', 'G-Angle', 'G-Angle', '207');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/207_166025472399.webp?v=126', 'Skottie Young', 'Skottie Young', '207');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/207_166025472460.webp?v=126', 'Skottie Young', 'Skottie Young', '207');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/207_166025472410.webp?v=126', 'Skottie Young', 'Skottie Young', '207');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/207_06.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '207');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/208_166025472499.webp?v=126', 'G-Angle', 'G-Angle', '208');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/208_166025472443.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '208');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/208_16602547244.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '208');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/208_166025472572.webp?v=126', 'G-Angle', 'G-Angle', '208');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/208_06.webp?v=126', 'Marco Failla', 'Ryan Kinnaird', '208');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/209_166025472588.webp?v=126', 'G-Angle', 'G-Angle', '209');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/209_166025472525.webp?v=126', 'Alex Horley', 'Alex Horley', '209');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/209_166025472517.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '209');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/209_166025472646.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '209');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/209_166025472641.webp?v=126', 'Mark Brooks', 'Mark Brooks', '209');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/209_07.webp?v=126', 'Jander Gonzalez', 'Jander Gonzalez', '209');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/210_166025472672.webp?v=126', 'Jonboy Meyers', 'Jonboy Meyers', '210');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/210_166025472714.webp?v=126', 'Iwan Nazif', 'Ryan Kinnaird', '210');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/210_166025472733.webp?v=126', 'Dan Hipp', 'Dan Hipp', '210');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/212_166025472743.webp?v=126', 'Gabriele Dell''Otto', 'Gabriele Dell''Otto', '212');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/212_166025474378.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '212');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/212_166025474391.webp?v=126', 'Ryan Brown', 'Ryan Brown', '212');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/212_07.webp?v=126', 'Alex Horley', 'Alex Horley', '212');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/215_166025474469.webp?v=126', 'Joverine', 'Ryan Kinnaird', '215');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/215_166025474423.webp?v=126', 'Afif Khaled', 'Ryan Kinnaird', '215');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/215_166025474461.webp?v=126', 'Nikola Čižmešija', 'Nikola Čižmešija', '215');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/215_07.webp?v=126', 'Rafael Sam', 'Rafael Sam', '215');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/215_06.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '215');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/390_02.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '390');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/390_04.webp?v=126', 'Dan Hipp', 'Dan Hipp', '390');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/217_166025474414.webp?v=126', 'G-Angle', 'G-Angle', '217');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/217_166025474596.webp?v=126', 'Jamal Campbell', 'Jamal Campbell', '217');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/217_166025474541.webp?v=126', 'Iwan Nazif', 'Ryan Kinnaird', '217');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/217_166025474556.webp?v=126', 'Steve Kurth', 'Alessia Pastorello', '217');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/217_1666710821.webp?v=126', 'Artgerm', 'Artgerm', '217');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/217_07.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '217');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/218_166025474572.webp?v=126', 'Simone Buonfantino', 'Ryan Kinnaird', '218');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/218_166025474595.webp?v=126', 'Afif Khaled', 'Ryan Kinnaird', '218');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/218_16602547467.webp?v=126', 'Nikola Čižmešija', 'Nikola Čižmešija', '218');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/218_05.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '218');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/219_166025474667.webp?v=126', 'G-Angle', 'G-Angle', '219');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/219_166025474637.webp?v=126', 'Alan Davis', 'Jason Keith', '219');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/219_1666710912.webp?v=126', 'Marco Itri', 'Ryan Kinnaird', '219');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/219_05.webp?v=126', 'Jim Lee', 'Israel Silva', '219');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/220_166025556883.webp?v=126', 'G-Angle', 'G-Angle', '220');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/220_1666710937.webp?v=126', 'Pyeong-Jun Park', 'Pyeong-Jun Park', '220');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/220_04.webp?v=126', 'Kim Jacinto and Joshua Cassara', 'Rain Beredo', '220');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/221_166025474662.webp?v=126', 'G-Angle', 'G-Angle', '221');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/221_166025474710.webp?v=126', 'G-Angle', 'G-Angle', '221');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/221_166025474729.webp?v=126', 'Ario Anindito', 'Ryan Kinnaird', '221');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/221_06.webp?v=126', 'Alaine Baybayan', 'Alaine Baybayan', '221');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/221_07.webp?v=126', 'Max Grecke', 'Max Grecke', '221');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/222_166025556889.webp?v=126', 'G-Angle', 'G-Angle', '222');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/222_02.webp?v=126', 'Luca Claretti', 'Luca Claretti', '222');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/222_04.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '222');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/224_166025474883.webp?v=126', 'Kim Jacinto', 'Kim Jacinto', '224');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/224_166025474882.webp?v=126', 'Skottie Young', 'Skottie Young', '224');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/224_166025474818.webp?v=126', 'Arthur Adams', 'Sabine Rich', '224');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/224_05.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '224');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/317_166025556980.webp?v=126', 'G-Angle', 'G-Angle', '317');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/317_02.webp?v=126', 'Alex Horley', 'Alex Horley', '317');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/226_16602555692.webp?v=126', 'G-Angle', 'G-Angle', '226');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/226_16602555696.webp?v=126', 'Alex Horley', 'Alex Horley', '226');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/226_166025556998.webp?v=126', 'Artgerm', 'Artgerm', '226');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/226_1666711855.webp?v=126', 'Skottie Young', 'Skottie Young', '226');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/227_166025474873.webp?v=126', 'G-Angle', 'G-Angle', '227');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/227_166025474976.webp?v=126', 'Nikola Čižmešija', 'Nikola Čižmešija', '227');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/227_1666711940.webp?v=126', 'Marco Itri', 'Ryan Kinnaird', '227');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/228_166025557060.webp?v=126', 'G-Angle', 'G-Angle', '228');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/228_166025557013.webp?v=126', 'Alex Horley', 'Alex Horley', '228');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/228_166025557048.webp?v=126', 'Skottie Young', 'Skottie Young', '228');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/228_166025557186.webp?v=126', 'Jamal Campbell', 'Jamal Campbell', '228');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/228_06.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '228');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/231_02.webp?v=126', 'Nikola Čižmešija', 'Nikola Čižmešija', '231');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/231_06.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '231');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/232_166025557411.webp?v=126', 'G-Angle', 'G-Angle', '232');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/232_06.webp?v=126', 'Kim Jacinto', 'Kim Jacinto', '232');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/235_02.webp?v=126', 'Panda Graphics', 'Panda Graphics', '235');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/235_04.webp?v=126', 'Sean Izaakse', 'Marcio Menyz', '235');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/235_05.webp?v=126', 'Justyna Dura', 'Justyna Dura', '235');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/239_16604237978.webp?v=126', 'G-Angle', 'G-Angle', '239');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/239_166042379761.webp?v=126', 'Dan Hipp', 'Dan Hipp', '239');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/239_166042379787.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '239');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/239_166042379886.webp?v=126', 'Flaviano', 'Flaviano', '239');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/239_1666712319.webp?v=126', 'Kim Jacinto', 'Kim Jacinto', '239');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/239_1666712323.webp?v=126', 'Joshua Swaby', 'Joshua Swaby', '239');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/453_02.webp?v=126', 'Roberto Di Salvo', 'Massimo Di Leo', '453');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/453_04.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '453');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/453_05.webp?v=126', 'Dan Hipp', 'Dan Hipp', '453');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/453_06.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '453');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/240_166042379878.webp?v=126', 'G-Angle', 'G-Angle', '240');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/240_166042379811.webp?v=126', 'Todd McFarlane', 'Todd McFarlane', '240');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/240_166042379986.webp?v=126', 'Max Grecke', 'Max Grecke', '240');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/240_16604237998.webp?v=126', 'Patrick Brown', 'Patrick Brown', '240');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/240_1666712381.webp?v=126', 'Kael Ngu', 'Kael Ngu', '240');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/240_1666712386.webp?v=126', 'Dan Hipp', 'Dan Hipp', '240');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/240_07.webp?v=126', 'Eduardo Mello', 'Luigi Aimè', '240');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/240_10.webp?v=126', 'Rafael Sam', 'Rafael Sam', '240');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/240_08.webp?v=126', 'MUGENUP', 'MUGENUP', '240');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/454_02.webp?v=126', 'Francesco Mattina', 'Francesco Mattina', '454');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/454_03.webp?v=126', 'Skottie Young', 'Skottie Young', '454');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/454_05.webp?v=126', 'Skan', 'Skan', '454');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/454_07.webp?v=126', 'Dan Hipp', 'Dan Hipp', '454');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/242_166042380043.webp?v=126', 'G-Angle', 'G-Angle', '242');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/242_166042380066.webp?v=126', 'Rose Besch', 'Rose Besch', '242');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/242_166042380077.webp?v=126', 'Jung-Geun Yoon', 'Jung-Geun Yoon', '242');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/242_16604238002.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '242');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/242_166042380068.webp?v=126', 'David Nakayama', 'David Nakayama', '242');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/242_1666712449.webp?v=126', 'Peach Momoko', 'Peach Momoko', '242');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/242_07.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '242');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/244_166042380126.webp?v=126', 'G-Angle', 'G-Angle', '244');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/244_166042380187.webp?v=126', 'Gurihiru Wom', 'Gurihiru Wom', '244');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/244_166042380241.webp?v=126', 'Skottie Young', 'Skottie Young', '244');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/244_06.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '244');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/245_166042380296.webp?v=126', 'G-Angle', 'G-Angle', '245');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/245_166042380390.webp?v=126', 'Paco Medina', 'Paco Medina', '245');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/245_166042380340.webp?v=126', 'Skottie Young', 'Skottie Young', '245');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/245_166042380319.webp?v=126', 'Kris Anka', 'Kris Anka', '245');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/245_166042380373.webp?v=126', 'Valeria Orlando', 'Giulia Priori', '245');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/245_07.webp?v=126', 'Nic Klein', 'Nic Klein', '245');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/423_04.webp?v=126', 'Dan Hipp', 'Dan Hipp', '423');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/423_02.webp?v=126', 'Eduardo Mello', 'Massimo Di Leo', '423');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/423_05.webp?v=126', 'Jason Kang', 'Jason Kang', '423');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/441_03.webp?v=126', 'Ivan Shavrin', 'Ivan Shavrin', '441');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/441_04.webp?v=126', 'Dan Hipp', 'Dan Hipp', '441');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/441_05.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '441');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/247_16604238043.webp?v=126', 'G-Angle', 'G-Angle', '247');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/247_166042380428.webp?v=126', 'Alex Horley', 'Alex Horley', '247');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/247_166042380436.webp?v=126', 'Skottie Young', 'Skottie Young', '247');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/247_166042380418.webp?v=126', 'Volmi', 'Volmi', '247');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/247_07.webp?v=126', 'Frontier Agent', 'Frontier Agent', '247');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/247_08.webp?v=126', 'Iban Coello', 'Jesus Aburtov', '247');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/247_10.webp?v=126', 'Jander Gonzalez', 'Jander Gonzalez', '247');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/249_166042380574.webp?v=126', 'G-Angle', 'G-Angle', '249');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/249_166042380580.webp?v=126', 'Joverine', 'Ryan Kinnaird', '249');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/249_166042380597.webp?v=126', 'Afif Khaled', 'Ryan Kinnaird', '249');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/252_166042380620.webp?v=126', 'Dan Mora', 'Marcio Menyz', '252');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/252_16604238063.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '252');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/252_166042380761.webp?v=126', 'Luca Claretti', 'Luca Claretti', '252');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/252_06.webp?v=126', 'Iwan Nazif', 'Ryan Kinnaird', '252');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/253_166025557641.webp?v=126', 'G-Angle', 'G-Angle', '253');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/253_166025557692.webp?v=126', 'Adi Granov', 'Adi Granov', '253');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/253_166025557748.webp?v=126', 'G-Angle', 'G-Angle', '253');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/253_16602555773.webp?v=126', 'Max Grecke', 'Max Grecke', '253');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/253_166025557764.webp?v=126', 'Skottie Young', 'Skottie Young', '253');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/253_06.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '253');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/255_166042380799.webp?v=126', 'G-Angle', 'G-Angle', '255');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/255_166042380771.webp?v=126', 'Roberto Di Salvo', 'Ryan Kinnaird', '255');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/255_16604238088.webp?v=126', 'Max Grecke', 'Max Grecke', '255');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/255_166042380828.webp?v=126', 'Nikola Čižmešija', 'Nikola Čižmešija', '255');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/255_166042380882.webp?v=126', 'Dan Hipp', 'Dan Hipp', '255');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/256_166042380960.webp?v=126', 'G-Angle', 'G-Angle', '256');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/256_166042380999.webp?v=126', 'Woo-Chul Lee', 'Woo-Chul Lee', '256');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/256_166042380918.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '256');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/256_16604238106.webp?v=126', 'Volmi', 'Volmi', '256');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/256_07.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '256');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/257_166042381054.webp?v=126', 'Joe Madureira', 'Arnold Tsang', '257');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/257_166042381189.webp?v=126', 'Joverine', 'Ryan Kinnaird', '257');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/258_16602555785.webp?v=126', 'G-Angle', 'G-Angle', '258');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/258_166025557838.webp?v=126', 'In-Hyuk Lee', 'In-Hyuk Lee', '258');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/258_166025557843.webp?v=126', 'Skottie Young', 'Skottie Young', '258');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/258_166025557818.webp?v=126', 'Mike Deodato', 'Frank Martin', '258');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/258_1666712803.webp?v=126', 'Flaviano', 'Flaviano', '258');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/258_06.webp?v=126', 'Marko Djurdjević', 'Marko Djurdjević', '258');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/261_1660423811100.webp?v=126', 'G-Angle', 'G-Angle', '261');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/261_166042381127.webp?v=126', 'Kael Ngu', 'Kael Ngu', '261');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/261_166042381237.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '261');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/261_166042381274.webp?v=126', 'Dan Hipp', 'Dan Hipp', '261');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/261_166042381278.webp?v=126', 'Flaviano', 'Flaviano', '261');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/261_1666712856.webp?v=126', 'Ivan Shavrin', 'Ivan Shavrin', '261');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/262_166042381383.webp?v=126', 'Billy Tan', 'Jason Keith', '262');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/262_166042381360.webp?v=126', 'Luca Claretti', 'Luca Claretti', '262');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/262_166042381354.webp?v=126', 'G-Angle', 'G-Angle', '262');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/262_06.webp?v=126', 'Marko Djurdjević', 'Marko Djurdjević', '262');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/264_166042381499.webp?v=126', 'G-Angle', 'G-Angle', '264');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/264_166042381482.webp?v=126', 'Kenneth Rocafort', 'Kenneth Rocafort', '264');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/264_16604238148.webp?v=126', 'Marco Itri', 'Ryan Kinnaird', '264');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/264_166042381587.webp?v=126', 'Flaviano', 'Flaviano', '264');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/265_16602555798.webp?v=126', 'G-Angle', 'G-Angle', '265');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/265_166025557958.webp?v=126', 'Flaviano', 'Flaviano', '265');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/265_166025557961.webp?v=126', 'G-Angle', 'G-Angle', '265');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/265_166025558043.webp?v=126', 'Eric Guerrero', 'Eric Guerrero', '265');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/265_05.webp?v=126', 'Dan Hipp', 'Dan Hipp', '265');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/413_03.webp?v=126', 'Alex Horley', 'Alex Horley', '413');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/269_166042381528.webp?v=126', 'G-Angle', 'G-Angle', '269');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/269_166042381550.webp?v=126', 'Joverine', 'Ryan Kinnaird', '269');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/269_166042381661.webp?v=126', 'Max Grecke', 'Max Grecke', '269');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/269_166042381672.webp?v=126', 'Alex Horley', 'Alex Horley', '269');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/272_166042381735.webp?v=126', 'G-Angle', 'G-Angle', '272');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/272_166042381774.webp?v=126', 'Olivier Coipel', 'Laura Martin', '272');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/272_166042381744.webp?v=126', 'Skottie Young', 'Skottie Young', '272');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/272_07.webp?v=126', 'Ken Lashley', 'Nolan Woodard', '272');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/272_08.webp?v=126', 'Olivier Coipel', 'Matthew Wilson', '272');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/272_09.webp?v=126', 'Peach Momoko', 'Peach Momoko', '272');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/272_10.webp?v=126', 'Ivan Tao', 'Ivan Tao', '272');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/272_11.webp?v=126', 'ADIA', 'ADIA', '272');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/277_16602555818.webp?v=126', 'G-Angle', 'G-Angle', '277');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/277_166025558169.webp?v=126', 'Ario Anindito', 'Ryan Kinnaird', '277');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/277_166025558182.webp?v=126', 'Joverine', 'Ryan Kinnaird', '277');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/279_166042381827.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '279');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/279_166042381931.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '279');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/280_166042381981.webp?v=126', 'G-Angle', 'G-Angle', '280');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/280_166042381943.webp?v=126', 'Flaviano', 'Flaviano', '280');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/280_166042382060.webp?v=126', 'G-Angle', 'G-Angle', '280');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/280_05.webp?v=126', 'Roberto Di Salvo', 'Massimo Di Leo', '280');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/281_166042382062.webp?v=126', 'G-Angle', 'G-Angle', '281');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/281_166042382067.webp?v=126', 'Rock-He Kim', 'Rock-He Kim', '281');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/281_166042382126.webp?v=126', 'Aleksi Briclot', 'Aleksi Briclot', '281');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/281_1660423821100.webp?v=126', 'Flaviano', 'Flaviano', '281');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/281_166042382186.webp?v=126', 'Kim Jacinto', 'Kim Jacinto', '281');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/281_1666713091.webp?v=126', 'Dan Hipp', 'Dan Hipp', '281');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/283_166025573227.webp?v=126', 'G-Angle', 'G-Angle', '283');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/283_166025573220.webp?v=126', 'Artgerm', 'Artgerm', '283');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/283_166025573276.webp?v=126', 'Skottie Young', 'Skottie Young', '283');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/283_166025573356.webp?v=126', 'Rian Gonzales', 'Rian Gonzales', '283');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/284_166042382186.webp?v=126', 'G-Angle', 'G-Angle', '284');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/284_166042382265.webp?v=126', 'Ryan Stegman', 'Frank Martin', '284');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/284_166042382292.webp?v=126', 'Skottie Young', 'Skottie Young', '284');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/284_166042382261.webp?v=126', 'Kael Ngu', 'Kael Ngu', '284');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/284_16sd82265.webp?v=126', 'Kim Jacinto', 'Kim Jacinto', '284');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/284_06.webp?v=126', 'Fiona Hsieh', 'Fiona Hsieh', '284');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/284_07.webp?v=126', 'In-Hyuk Lee', 'In-Hyuk Lee', '284');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/285_166025479113.webp?v=126', 'G-Angle', 'G-Angle', '285');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/285_166025479158.webp?v=126', 'Ario Anindito', 'Ryan Kinnaird', '285');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/285_166025479126.webp?v=126', 'Marco Itri', 'Ryan Kinnaird', '285');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/285_166025479160.webp?v=126', 'Valeria Orlando', 'Giulia Priori', '285');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/286_166025479241.webp?v=126', 'G-Angle', 'G-Angle', '286');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/286_166025479236.webp?v=126', 'Clayton Henry', 'Clayton Henry', '286');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/286_166025479210.webp?v=126', 'Dale Keown', 'Jason Keith', '286');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/286_166025479282.webp?v=126', 'Dan Hipp', 'Dan Hipp', '286');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/286_1666713250.webp?v=126', 'Brandon Peterson', 'Brandon Peterson', '286');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/286_1666713260.webp?v=126', 'Max Grecke', 'Max Grecke', '286');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/287_166025479357.webp?v=126', 'G-Angle', 'G-Angle', '287');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/287_166025479339.webp?v=126', 'Simone Buonfantino', 'Ryan Kinnaird', '287');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/287_166025479425.webp?v=126', 'Max Grecke', 'Max Grecke', '287');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/287_166025479461.webp?v=126', 'Nikola Čižmešija', 'Nikola Čižmešija', '287');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/287_1666713293.webp?v=126', 'Giulio Rincione', 'Giulio Rincione', '287');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/291_166025479467.webp?v=126', 'G-Angle', 'G-Angle', '291');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/291_166025479548.webp?v=126', 'Eric Guerrero', 'Ryan Kinnaird', '291');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/291_166025479535.webp?v=126', 'Joverine', 'Ryan Kinnaird', '291');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/293_166025479694.webp?v=126', 'G-Angle', 'G-Angle', '293');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/293_166025479643.webp?v=126', 'Combo Break', 'Ryan Kinnaird', '293');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/293_166025479690.webp?v=126', 'Tony Fleecs', 'Tony Fleecs', '293');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/293_166025479663.webp?v=126', 'Dan Hipp', 'Dan Hipp', '293');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/293_1666713428.webp?v=126', 'Marco Itri', 'Ryan Kinnaird', '293');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/293_06.webp?v=126', 'Elizabeth Torque', 'Elizabeth Torque', '293');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/294_166025479735.webp?v=126', 'Mico Suayan', 'Rain Beredo', '294');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/294_16602547979.webp?v=126', 'Dan Hipp', 'Dan Hipp', '294');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/294_1666713468.webp?v=126', 'Fahmi Fauzi', 'Fahmi Fauzi', '294');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/297_166025479853.webp?v=126', 'G-Angle', 'G-Angle', '297');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/297_166025479810.webp?v=126', 'Artgerm', 'Artgerm', '297');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/297_166025479936.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '297');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/297_1666570146.webp?v=126', 'In-Hyuk Lee', 'In-Hyuk Lee', '297');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/298_166025479936.webp?v=126', 'G-Angle', 'G-Angle', '298');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/298_166025479970.webp?v=126', 'Alex Horley', 'Alex Horley', '298');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/298_166025479975.webp?v=126', 'Luca Claretti', 'Luca Claretti', '298');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/301_166025480162.webp?v=126', 'G-Angle', 'G-Angle', '301');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/301_166025480186.webp?v=126', 'Chris Bachalo', 'Chris Bachalo', '301');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/301_166025480122.webp?v=126', 'Mad Boogie', 'Mad Boogie', '301');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/301_166025480168.webp?v=126', 'Dan Hipp', 'Dan Hipp', '301');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/302_166025480249.webp?v=126', 'G-Angle', 'G-Angle', '302');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/302_16602548023.webp?v=126', 'Steve McNiven', 'Steve McNiven', '302');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/302_166025480351.webp?v=126', 'Skottie Young', 'Skottie Young', '302');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/302_166025480359.webp?v=126', 'David Finch', 'David Finch', '302');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/302_1666713588.webp?v=126', 'Dan Hipp', 'Dan Hipp', '302');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/302_10.webp?v=126', 'MUGENUP', 'MUGENUP', '302');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/303_166025480366.webp?v=126', 'G-Angle', 'G-Angle', '303');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/303_166025480415.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '303');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/303_166025480410.webp?v=126', 'Dan Hipp', 'Dan Hipp', '303');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/303_166025480458.webp?v=126', 'Giovanni Lorusso', 'Ryan Kinnaird', '303');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/395_166025573532.webp?v=126', '', '', '395');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/395_04.webp?v=126', 'Francesco Mattina', 'Francesco Mattina', '395');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/395_05.webp?v=126', 'Skottie Young', 'Skottie Young', '395');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/395_08.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '395');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/307_166025480563.webp?v=126', 'Nikola Čižmešija', 'Nikola Čižmešija', '307');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/307_1666604110.webp?v=126', 'Fahmi Fauzi', 'Fahmi Fauzi', '307');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/307_04.webp?v=126', 'Marco Itri', 'Ryan Kinnaird', '307');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/309_166025480624.webp?v=126', 'G-Angle', 'G-Angle', '309');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/309_166025480625.webp?v=126', 'Carlos Pacheco', 'Nolan Woodard', '309');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/309_166025480660.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '309');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/309_166025480656.webp?v=126', 'Dan Hipp', 'Dan Hipp', '309');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/309_06.webp?v=126', 'Alex Garner', 'Alex Garner', '309');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/310_02.webp?v=126', 'Alex Horley', 'Alex Horley', '310');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/310_03.webp?v=126', 'French Carlomagno', 'Ryan Kinnaird', '310');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/310_04.webp?v=126', 'Dan Hipp', 'Dan Hipp', '310');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/311_16602548071.webp?v=126', 'G-Angle', 'G-Angle', '311');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/311_166025480741.webp?v=126', 'Eduardo Mello', 'Ryan Kinnaird', '311');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/311_166025480748.webp?v=126', 'Nikola Čižmešija', 'Paris Alleyne', '311');
INSERT INTO "Variants"(art, sketcher, colorist, "cardId") VALUES ('https://marvelsnapzone.com/wp-content/themes/blocksy-child/assets/media/cards/311_166025480736.webp?v=126', 'G-Angle', 'G-Angle', '311');
