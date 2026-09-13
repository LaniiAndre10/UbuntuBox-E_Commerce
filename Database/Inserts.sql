USE dbaUbuntuBox;

-- Attraction Inserts

INSERT INTO Attraction
    (AttractionName, Province, AttractionDescription, AttractionImageURL)
VALUES

    ('Table Mountain','Western Cape','Table Mountain is one of South Africa''s most famous landmarks and overlooks the city of Cape Town. Visitors can enjoy beautiful views of the city, coastline and surrounding mountains.',
     'https://commons.wikimedia.org/wiki/Special:Redirect/file/Cape%20Town%20Table%20Mountain.jpg'),

    ('Vilakazi Street','Gauteng', 'Vilakazi Street is a famous tourist destination in Soweto known for its rich history and culture. The street attracts visitors interested in South African heritage, local food and the Soweto community.',
     'https://commons.wikimedia.org/wiki/Special:Redirect/file/Homes%20on%20Mandela%27s%20Vilakazi%20street.jpg'),

    ('uShaka Marine World','KwaZulu-Natal','uShaka Marine World is a popular tourist attraction located along Durban''s beachfront. It offers marine attractions, entertainment and beach activities for visitors.',
     'https://commons.wikimedia.org/wiki/Special:Redirect/file/UShaka%20Marine%20World%2C%20Durban%2C%20KwaZulu%20Natal%2C%20South%20Africa%20%2820326747969%29.jpg'),

    ('Blyde River Canyon','Mpumalanga','Blyde River Canyon is a major natural attraction along the Panorama Route. It is known for its beautiful mountain scenery, cliffs and popular viewpoints.',
     'https://commons.wikimedia.org/wiki/Special:Redirect/file/Blyde%20River%20Canyon%2C%20Mpumalanga%2C%20South%20Africa%20%2820516655965%29.jpg'),

    ('Kruger National Park','Limpopo','Kruger National Park is one of South Africa''s most popular wildlife destinations. It is known for its large variety of wildlife, natural landscapes and safari experiences.',
     'https://commons.wikimedia.org/wiki/Special:Redirect/file/Kruger%20National%20Park%20Landscape%203.jpg'),

    ('Addo Elephant National Park',
     'Eastern Cape','Addo Elephant National Park is a popular wildlife destination in the Eastern Cape. It is especially known for its elephants and variety of other wildlife.',
     'https://commons.wikimedia.org/wiki/Special:Redirect/file/Elephant%20addo%20park.jpg'),

    ('Pilanesberg National Park','North West','Pilanesberg National Park is a popular wildlife destination in the North West. Visitors can enjoy game viewing and experience the natural landscape of the park.',
     'https://commons.wikimedia.org/wiki/Special:Redirect/file/Pilanesberg%20National%20Park%201.jpg'),

    ('Golden Gate Highlands National Park','Free State','Golden Gate Highlands National Park is known for its mountain scenery and golden sandstone cliffs. It offers visitors beautiful landscapes, wildlife and outdoor activities.',
     'https://commons.wikimedia.org/wiki/Special:Redirect/file/Golden%20Gate%20Highlands%20National%20Park%2C%20South%20Africa%20%28Unsplash%29.jpg'),

    ('Kgalagadi Transfrontier Park','Northern Cape','Kgalagadi Transfrontier Park is a large wildlife conservation area in the Kalahari. It is known for its red sand dunes, desert landscape and wildlife.',
     'https://commons.wikimedia.org/wiki/Special:Redirect/file/Kgalagadi%20Transfrontier%20Park%2C%20South%20Africa%20%283180445798%29.jpg');

-- PRODUCT INSERTS>>**************************************************************************************************************************************

-- Table Mountain
INSERT INTO [Product]
    (AttractionID, ProductName, Description, Price, BoxCategory)
VALUES
	--Standard Box
    (1,
     'Table Mountain StanBox','A Standard Box inspired by Table Mountain containing Rooibos Tea, Local Craft Chocolate and Cape Town Handmade Candles.',
     1899.99,'Standard'),
 --Premium Box
    (1,
     'Table Mountain PremBox','A Premium Box inspired by Table Mountain containing a Karoo Nougat Gift Set and Garden Route Handmade Bow Tie.',
     3499.99,'Premium');
 --Mystery Box
    (1,
     'Table Mountain Mystery Box','A surprise inspired by the Cape. Open the box to discover a hidden selection of locally inspired treasures chosen to bring the spirit, creativity and flavours of the Table Mountain experience to you.',
      2799.99,'Mystery');


-- Vilakazi Street
INSERT INTO [Product]
    (AttractionID, ProductName, Description, Price, BoxCategory)
VALUES

	--Standard Box
    (2,
     'Vilakazi Street StanBox','A Standard Box inspired by Soweto containing a Soweto-themed T-Shirt, Ndebele Beaded Bracelet and Township Wire Sculpture.',1999.99,'Standard'),
   --Premium Box
    (2,
     'Vilakazi Street PremBox','A Premium Box inspired by Soweto containing a Beaded Ndebele Necklace and African Fine Art Painting.',3999.99,
     'Premium');
    --Mystery Box
     (2,
     'Vilakazi Street Mystery Box','A hidden piece of Soweto is waiting inside. This mystery box celebrates the colour, creativity and powerful cultural story of Vilakazi Street through a surprise selection chosen especially for the experience.',
     2799.99,'Mystery');


-- uShaka Marine World
INSERT INTO [Product]
    (AttractionID, ProductName, Description, Price, BoxCategory)
VALUES
	--Standard Box
    (3,
     'uShaka StanBox','A Standard Box containing Zulu Beaded Earrings, Zulu Beaded Bracelet and Polished Stone Decor.',
     1799.99,'Standard'),
   --Premium Box
    (3,
     'uShaka PremBox','A Premium Box containing a Handmade Zulu Hat and Woven Ilala Palm Basket.',
     3799.99,'Premium');

 --Mystery Box
    (3,
	'uShaka Mystery Box','Inspired by the energy of Durban and the rich craft heritage of KwaZulu-Natal, this mystery box keeps its contents secret until the moment you open it. Expect a surprise connected to the culture and character of the region.',
     2799.99,'Mystery');

-- Blyde River Canyon
INSERT INTO [Product]
    (AttractionID, ProductName, Description, Price, BoxCategory)
VALUES
	--Standard Box
    (4,
     'Blyde Canyon StanBox','A Standard Box containing a Recycled-Glass Bead Bracelet, Recycled Glass Bead Necklace and Wildlife Keychain.',
     1699.99,'Standard'),
    --Premium Box
    (4,
     'Blyde Canyon PremBox','A Premium Box containing a Hand-Carved Wooden Wildlife Statue and Hand Painted Wildlife Tablecloth.',
     3599.99,'Premium');
   --Mystery Box
    (4,
     'Blyde Canyon Mystery Box','Let the Panorama Route surprise you. This mystery box hides a carefully selected collection inspired by the wildlife, craft and dramatic landscapes surrounding Blyde River Canyon.',
     2799.99,'Mystery');
-- Kruger National Park
INSERT INTO [Product]
    (AttractionID, ProductName, Description, Price, BoxCategory)
VALUES
	--Standard Box
    (5,
     'Kruger National StanBox', 'A Standard Box containing Venda Clay Beads or Pot, Venda Copper Style Bracelet and Traditional Beaded Necklace.',
     1849.99,'Standard'),
   --Premium Box
    (5,
     'Kruger National PremBox','A Premium Box containing a Venda Silver-Wire Bracelet and Venda Wooden Carving.',
     3699.99,'Premium');
 -- Mystery Box 
      (5,
     'Kruger Mystery Box','The wild side of Limpopo comes with a surprise. Hidden inside this box is a selection inspired by the craft, culture and unforgettable wildlife experience surrounding Kruger National Park. What you receive remains part of the adventure.',
      2799.99,'Mystery');

-- Addo Elephant National Park
INSERT INTO [Product]
    (AttractionID, ProductName, Description, Price, BoxCategory)
VALUES
	--Standard Box
    (6,
     'Addo Elephant StanBox','A Standard Box containing Xhosa Beadwork Jewellery, a Wire and Bead Animal and Handmade Cape Ceramic.',
     1749.99,'Standard'),
   --Premium Box
    (6,
     'Addo Elephant PremBox','A Premium Box containing a Telephone Wire Woven Basket and Leather Accessory.',
     3899.99,'Premium');
  --Mystery Box
     (6,
       'Addo Elephant Mystery Box','Discover the Eastern Cape without knowing what comes next. This mystery box contains a surprise inspired by local craft, wildlife and the cultural character surrounding Addo Elephant National Park.',
        2799.99,'Mystery');



-- Pilanesberg National Park
INSERT INTO [Product]
    (AttractionID, ProductName, Description, Price, BoxCategory)
VALUES
	--Standard Box
    (7,
     'Pilanesberg StanBox','A Standard Box containing a Setswana Beaded Bracelet, Setswana Beaded Necklace and Curiosity Figurine.',
     1649.99,'Standard'),
   --Premium Box 
    (7,
     'Pilanesberg PremBox','A Premium Box containing Handcrafted Wildlife Fine Art and a Master Woven Basket.',
     3499.99,'Premium');
  --Mystery Box
   (7,
     'Pilanesberg Mystery Box','A surprise from the heart of the North West. Inspired by Pilanesberg, this box hides a selection connected to local craft and wildlife, making every unboxing part of the safari experience.',
        2799.99,'Mystery');



-- Golden Gate Highlands National Park
INSERT INTO [Product]
    (AttractionID, ProductName, Description, Price, BoxCategory)
VALUES
	--Standard Box
    (8,
     'Golden Gate StanBox','A Standard Box containing a Basotho Beaded Bag, Basotho Beaded Tie and Traditional Basotho Clay Dish.',
     1899.99,'Standard'),
   --Premium Box
    (8,
     'Golden Gate PremBox','A Premium Box containing a Traditional Mokorotlo Hat and Mohair or Karakul Wool Throw.',
     4199.99,'Premium');
  -- Mystery Box
   (8,
    'Golden Gate Mystery Box','Behind the golden mountains is a surprise waiting to be discovered. This mystery box celebrates Basotho-inspired craft and the character of the Free State while keeping its contents hidden until you open it.',
     2799.99,'Mystery');


-- Kgalagadi Transfrontier Park
INSERT INTO [Product]
    (AttractionID, ProductName, Description, Price, BoxCategory)
VALUES
	--Standard Box
    (9,
     'Kgalagadi StanBox','A Standard Box containing Ostrich Shell Jewellery, Nama Inspired Beadwork and a Desert Themed Souvenir.',
     1599.99,'Standard'),
    --Premium Box
    (9,
     'Kgalagadi PremBox','A Premium Box containing an Ostrich Shell Carved Ornament and Kalahari Desert Fine Art Print.',
     3399.99,'Premium');
-- Mystery Box
   (9,
     'Kgalagadi Mystery Box','Inspired by the red dunes and open landscapes of the Kalahari, this mystery box hides a selection of desert-inspired treasures. The contents stay secret, making the discovery part of the Kgalagadi journey.',
     2799.99, 'Mystery');

*******************************************************************************************************************************************

---Insert Into  ProductImage

-- TABLE MOUNTAIN
INSERT INTO ProductImage
    (ProductID, ItemName, ItemDescription, ImageURL)
VALUES
-- STANDARD BOX
(
    (SELECT ProductID FROM [Product]
     WHERE ProductName = 'Table Mountain StanBox'),
    'Rooibos Tea','Rooibos is a uniquely South African herbal tea grown in the Cederberg region of the Western Cape. Its story reaches back to the Khoisan people, who harvested the indigenous Aspalathus linearis plant long before rooibos became a commercial product. This item represents the landscape, knowledge and tea-growing heritage of the Cape.'
    'https://th.bing.com/th/id/OIP.uxSOocz1GqoYFqQE8-1ruQHaHa'
),

(
    (SELECT ProductID FROM [Product]
     WHERE ProductName = 'Table Mountain StanBox'),
    'Local Craft Chocolate','A Cape Town bean to bar chocolate inspired by Honest Chocolate, an artisanal company founded by Anthony Gird and Michael de Klerk. Their chocolate journey began with experiments using raw cacao before developing into a Cape Town chocolate business focused on handcrafted production and ethically sourced cacao.',
	'https://www.capetown.travel/wp-content/uploads/honest-chocolates-800x400.jpg'
),

(
    (SELECT ProductID FROM [Product]
     WHERE ProductName = 'Table Mountain StanBox'),'Cape Town Handmade Candles','A handmade candle representing Cape Town''s creative craft culture. Small handcrafted products such as candles allow visitors to take home something practical while remembering the makers, markets and creative communities of the Cape.',
    'https://th.bing.com/th/id/OIP.qz3TxRDM6A9OBn7dxR6GpwHaHa'
),
-- PREMIUM BOX
(
    (SELECT ProductID FROM [Product]
     WHERE ProductName = 'Table Mountain PremBox'),'Karoo Nougat Gift Set','Artisanal divinity nougat from Karoo Blessings in Merweville. The business grew from a dream shared by friends Marian and Suzaan during a severe Karoo drought. They learned the nougat-making tradition from Theresa, who had spent about twenty years making it. The product therefore carries a story of friendship, resilience and Karoo entrepreneurship.',
    'https://karooblessings.co.za/wp-content/uploads/Large-Nougat-24-min.jpg'
),

(
    (SELECT ProductID FROM [Product]
     WHERE ProductName = 'Table Mountain PremBox'),'Garden Route Handmade Bow Tie','A handmade fashion accessory representing the creativity of South African textile and craft makers. The piece adds a modern element to the box while connecting the visitor to the handmade character of the Cape and Garden Route.',
    'https://i.pinimg.com/originals/0c/a9/a6/0ca9a6c6349a5517445dac5868f30d0a.jpg'
);


-- VILAKAZI STREET****************************************************************************************************
INSERT INTO ProductImage
    (ProductID, ItemName, ItemDescription, ImageURL)
VALUES
-- STANDARD BOX
(
    (SELECT ProductID FROM [Product]
     WHERE ProductName = 'Vilakazi Street StanBox'),'Soweto themed T-Shirt','A wearable souvenir celebrating Soweto and the identity of one of South Africa''s bestknown communities. The design allows the visitor to carry a reminder of the people, history and energy associated with Soweto and Vilakazi Street.',
    'https://th.bing.com/th/id/OIP.2Sz7vikKPRe2fmtmJNpiEwHaHa'
),

(
    (SELECT ProductID FROM [Product]
     WHERE ProductName = 'Vilakazi Street StanBox'),'Ndebele Beaded Bracelet', 'A colourful bracelet inspired by Ndebele beadwork. Ndebele craft is recognised for skilled beadwork and strong geometric visual traditions. The bracelet represents how patterns and colour can carry cultural identity through an object that can be worn and passed on.',
    'https://i.etsystatic.com/11380243/r/il/cb69ad/1874664681/il_510x638.1874664681_8z4t.jpg'
),

(
    (SELECT ProductID FROM [Product]
     WHERE ProductName = 'Vilakazi Street StanBox'),'Township Wire Sculpture','A handmade wire sculpture inspired by South African wire craft. Ordinary wire is shaped by hand into decorative forms, turning a simple material into an object that reflects the creativity and resourcefulness found in South African craft communities.',
    'https://i.etsystatic.com/6846183/r/il/51d683/5453365015/il_1080xN.5453365015_dwgz.jpg'
),
-- PREMIUM BOX
(
    (SELECT ProductID FROM [Product]
     WHERE ProductName = 'Vilakazi Street PremBox'),'Beaded Ndebele Necklace','A decorative necklace inspired by Ndebele beadwork and its distinctive use of colour and geometric patterns. Rather than being only jewellery, the piece represents a craft tradition in which visual design, identity and skilled handwork meet.',
    'https://i.etsystatic.com/8176369/c/743/743/0/179/il/9d84b9/1937492909/il_600x600.1937492909_ph1a.jpg'
),

(
    (SELECT ProductID FROM [Product]
     WHERE ProductName = 'Vilakazi Street PremBox'),'African Fine Art Painting','A South African-inspired artwork chosen to represent the country through visual storytelling. The painting gives the box an artistic element and allows the customer to take home an interpretation of South African people, culture or landscape.',
    'https://elisium.art/wp-content/uploads/2025/01/South_Africa-1024x1024.png'
);


-- USHAKA MARINE WORLD********************************************************************************************************************************
INSERT INTO ProductImage
    (ProductID, ItemName, ItemDescription, ImageURL)
VALUES
-- STANDARD BOX
(
    (SELECT ProductID FROM [Product]
     WHERE ProductName = 'uShaka StanBox'),'Zulu Beaded Earrings','Colourful earrings inspired by the long tradition of Zulu beadwork in KwaZulu Natal. The small handmade style souvenir represents the detailed handwork, colour and design associated with Zulu decorative arts.',
    'https://www.bing.com/th/id/OIP.b5jjXaNf2GOxkoqMtmjr7QHaFc'
),

(
    (SELECT ProductID FROM [Product]
     WHERE ProductName = 'uShaka StanBox'),'Zulu Beaded Bracelet', 'A bracelet inspired by Zulu beadwork, where carefully arranged beads create colourful geometric designs. The item gives the customer a wearable connection to KwaZulu-Natal''s craft heritage.',
    'https://i.etsystatic.com/38645205/r/il/a03527/7810635341/il_510x638.7810635341_kzi0.jpg'
),

(
    (SELECT ProductID FROM [Product]
     WHERE ProductName = 'uShaka StanBox'),'Polished Stone Decor','A polished decorative stone selected as a small keepsake. Its natural material connects the box to the landscapes of KwaZulu-Natal while giving the customer a simple decorative reminder of the destination.',
    'https://ae-pic-a1.aliexpress-media.com/kf/Sbf0f63479cfb4216bbc1d154cc7a503eV.jpg_220x220q75.jpg_.avif'
),
-- PREMIUM BOX
(
    (SELECT ProductID FROM [Product]
     WHERE ProductName = 'uShaka PremBox'),'Handmade Zulu Hat (Isicholo)','A handmade-style Isicholo inspired by Zulu cultural dress. Its distinctive circular form makes it one of the recognisable visual elements associated with Zulu heritage and gives the premium box a strong cultural connection to KwaZulu-Natal.',
    'https://tse2.mm.bing.net/th/id/OIP.iGhnMa_azZC7Y644N084xAHaFj'
),

(
    (SELECT ProductID FROM [Product]
     WHERE ProductName = 'uShaka PremBox'),'Zulu Woven Ilala Palm Basket', 'A basket representing generations of Zulu weaving knowledge. Traditional baskets are woven by hand using indigenous materials such as Ilala palm from northern KwaZulu-Natal. Natural dyes can come from local roots, leaves, berries and bark, and individual patterns make each basket unique.',
    'https://basketsofafrica.com/weaving-zulu-ilala-palm-baskets-in-south-africa'
);


-- BLYDE CANYON*********************************************************************************************************************************************************
INSERT INTO ProductImage
    (ProductID, ItemName, ItemDescription, ImageURL)
VALUES

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Blyde Canyon StanBox'),
 'Recycled Glass Bead Bracelet','A colourful bracelet inspired by South African beadwork and the creative reuse of materials. The item represents how makers can transform simple materials into wearable craft while giving them a new purpose.',
 'https://i.etsystatic.com/38645205/r/il/a03527/7810635341/il_510x638.7810635341_kzi0.jpg'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Blyde Canyon StanBox'),
 'Recycled Glass Bead Necklace','A decorative necklace inspired by African beadwork and recycled material craft. Each bead contributes to a piece that combines colour, handwork and the idea of turning discarded material into something valuable.',
 'https://i.etsystatic.com/8176369/c/743/743/0/179/il/9d84b9/1937492909/il_600x600.1937492909_ph1a.jpg'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Blyde Canyon StanBox'),
 'Wildlife Keychain','A small wildlife souvenir inspired by the animals and natural landscapes encountered around Mpumalanga. It is designed as an everyday reminder of the visitor''s journey through the region.',
 'https://i.etsystatic.com/6846183/r/il/51d683/5453365015/il_1080xN.5453365015_dwgz.jpg'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Blyde Canyon PremBox'),
 'Hand-Carved Wooden Wildlife Statue','A hand-carved style wooden sculpture celebrating the wildlife associated with Mpumalanga. The carving represents the patience of working a simple piece of wood into an animal form and turns the region''s wildlife story into a lasting decorative object.',
 'https://th.bing.com/th/id/OIP.gLvca9BSbzSdQYQmch96HQHaFc'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Blyde Canyon PremBox'),
 'Hand-Painted Wildlife Tablecloth','A decorative textile inspired by South African wildlife. The item combines practical use with visual storytelling, bringing images of the country''s natural heritage into the customer''s home.',
 'https://elisium.art/wp-content/uploads/2025/01/South_Africa-1024x1024.png'
);



-- KRUGER NATIONAL PARK**************************************************************************************************************************************************
INSERT INTO ProductImage
    (ProductID, ItemName, ItemDescription, ImageURL)
VALUES

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Kruger National StanBox'),
 'Venda Clay Beads / Pot','A clay craft inspired by Venda pottery traditions of Limpopo. The piece represents the relationship between local earth, hand shaped pottery and knowledge passed between generations of makers.',
 'https://th.bing.com/th/id/OIP.otXWSK2-lIuaq26IlD8ZkwHaDc'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Kruger National StanBox'),
 'Venda Copper Style Bracelet','A bracelet inspired by Venda metalwork and jewellery. Its simple wearable form gives the customer a connection to Limpopo''s tradition of decorative handmade objects.',
 'https://i.etsystatic.com/11380243/r/il/cb69ad/1874664681/il_510x638.1874664681_8z4t.jpg'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Kruger National StanBox'),
 'Traditional Beaded Necklace','A colourful necklace inspired by Southern African beadwork. The piece represents the careful handwork required to combine many small beads into a complete wearable design.',
 'https://i.etsystatic.com/8176369/c/743/743/0/179/il/9d84b9/1937492909/il_600x600.1937492909_ph1a.jpg'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Kruger National PremBox'),
 'Venda Silver-Wire Bracelet','A wire bracelet inspired by Venda jewellery and metal craft. The item turns a simple material into a carefully shaped wearable piece and represents the skill of handmade craft.',
 'https://i.etsystatic.com/38645205/r/il/a03527/7810635341/il_510x638.7810635341_kzi0.jpg'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Kruger National PremBox'),
 'Venda Wooden Carving','A wooden carving inspired by Venda decorative art. The piece connects the customer to Limpopo through carved wood, handmade form and the storytelling tradition of objects created to represent people, animals and cultural ideas.',
 'https://th.bing.com/th/id/OIP.gLvca9BSbzSdQYQmch96HQHaFc'
);

-- ADDO ELEPHANT****************************************************************************************************************************************************
INSERT INTO ProductImage
    (ProductID, ItemName, ItemDescription, ImageURL)
VALUES

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Addo Elephant StanBox'),
 'Xhosa Beadwork Jewellery','Jewellery inspired by Xhosa beadwork from the Eastern Cape. Carefully arranged beads turn colour and pattern into a wearable piece that represents the region''s strong tradition of decorative handcraft.',
 'https://www.bing.com/th/id/OIP.b5jjXaNf2GOxkoqMtmjr7QHaFc'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Addo Elephant StanBox'),
 'Handcrafted Wire and Bead Animal','A handmade style animal sculpture formed from wire and beads. The piece combines South African wire craft with the wildlife story of Addo, turning the animals associated with the destination into a small keepsake.',
 'https://th.bing.com/th/id/OIP.gLvca9BSbzSdQYQmch96HQHaFc'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Addo Elephant StanBox'),
 'Handmade Cape Ceramic','A ceramic piece representing the handmade pottery traditions of the Cape. Shaped and finished as a functional or decorative object, it brings the story of local clay craft into the customer''s home.',
 'https://th.bing.com/th/id/OIP.otXWSK2-lIuaq26IlD8ZkwHaDc'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Addo Elephant PremBox'),
 'Telephone Wire Woven Basket','A woven basket representing a distinctive South African wire art tradition. Telephone wire basket making developed into an art form associated with Zulu makers; documented artists include Elliot Mkhize, Bheki Dlamini and Zodwa Maphumulo. The basket transforms an industrial material into colourful geometric craft.',
 'https://indigoarts.com/exhibitions/closing-circle-selection-african-baskets'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Addo Elephant PremBox'),
 'Leather Accessory','A handcrafted style leather accessory chosen to represent South African leather craft. The material is shaped into a useful keepsake intended to age with the owner and continue carrying the memory of the journey.',
 'https://www.bing.com/th/id/OIP.b5jjXaNf2GOxkoqMtmjr7QHaFc'
);

--------------------------------------------------
-- PILANESBERG
--------------------------------------------------

INSERT INTO ProductImage
    (ProductID, ItemName, ItemDescription, ImageURL)
VALUES

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Pilanesberg StanBox'),
 'Setswana Beaded Bracelet',
 'A bracelet inspired by Setswana beadwork and the craft heritage of the North West. Its arrangement of small colourful beads turns detailed handwork into a wearable souvenir.',
 'https://i.etsystatic.com/11380243/r/il/cb69ad/1874664681/il_510x638.1874664681_8z4t.jpg'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Pilanesberg StanBox'),
 'Setswana Beaded Necklace',
 'A decorative necklace inspired by Setswana beadwork. The piece celebrates the patience and skill involved in building a complete pattern from many individual beads.',
 'https://i.etsystatic.com/8176369/c/743/743/0/179/il/9d84b9/1937492909/il_600x600.1937492909_ph1a.jpg'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Pilanesberg StanBox'),
 'Curiosity Figurine',
 'A small decorative figurine inspired by South African souvenir carving and the wildlife surrounding Pilanesberg. It gives the customer a physical reminder of the destination and its animals.',
 'https://i.etsystatic.com/6846183/r/il/51d683/5453365015/il_1080xN.5453365015_dwgz.jpg'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Pilanesberg PremBox'),
 'Handcrafted Wildlife Fine Art',
 'A decorative artwork inspired by the wildlife of South Africa. The piece tells the story of the landscape through visual art and allows the customer to carry part of the safari experience into their home.',
 'https://elisium.art/wp-content/uploads/2025/01/South_Africa-1024x1024.png'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Pilanesberg PremBox'),
 'Master Woven Basket',
 'A handmade-style woven basket representing Southern African basket-making traditions. Basket weaving requires repeated, careful handwork to turn natural fibres into a functional object whose pattern also gives each piece its individual character.',
 'https://basketsofafrica.com/weaving-zulu-ilala-palm-baskets-in-south-africa'
);


--------------------------------------------------
-- GOLDEN GATE
--------------------------------------------------

INSERT INTO ProductImage
    (ProductID, ItemName, ItemDescription, ImageURL)
VALUES

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Golden Gate StanBox'),
 'Basotho Beaded Bag',
 'A beaded bag inspired by Basotho decorative craft. The piece combines practical use with detailed beadwork and represents the cultural influence of Basotho communities in the Free State and neighbouring Lesotho.',
 'https://th.bing.com/th/id/OIP.8Xp65GwtlMtoFpYxmU3K0gHaIu'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Golden Gate StanBox'),
 'Basotho Beaded Tie',
 'A wearable beaded accessory inspired by Basotho craft. Its detailed pattern transforms a familiar item of clothing into a distinctive piece of handmade-style cultural design.',
 'https://i.etsystatic.com/29816960/r/il/ab66f1/4660944488/il_1588xN.4660944488_40ys.jpg'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Golden Gate StanBox'),
 'Traditional Basotho Clay Dish',
 'A clay dish inspired by Basotho pottery and everyday handmade objects. Its story comes from transforming natural clay into something both functional and decorative.',
 'https://portal-images.azureedge.net/auctions-2015/srwo10029/images/73fc37d6-706e-4f9f-ead6-8951c50601ec.jpg'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Golden Gate PremBox'),
 'Traditional Basotho Mokorotlo Hat',
 'The Mokorotlo is a distinctive conical Basotho hat and an important symbol of Basotho identity. Its form is traditionally associated with the shape of Mount Qiloane, making the hat more than a souvenir: it carries a recognisable story of Basotho landscape and heritage.',
 'https://lotshaonaka.co.za/product/mokorotlo-traditional-basotho-hat-for-men'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Golden Gate PremBox'),
 'Mohair / Karakul Wool Throw',
 'A premium textile chosen to represent the wool and fibre craft associated with the region. The throw combines practical warmth with textile workmanship, giving the customer an item intended to remain useful long after the journey.',
 'https://portal-images.azureedge.net/auctions-2015/srwo10029/images/73fc37d6-706e-4f9f-ead6-8951c50601ec.jpg'
);


 -- PILANESBERG**************************************************************************************************************************************************************************
INSERT INTO ProductImage
    (ProductID, ItemName, ItemDescription, ImageURL)
VALUES

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Pilanesberg StanBox'),
 'Setswana Beaded Bracelet','A bracelet inspired by Setswana beadwork and the craft heritage of the North West. Its arrangement of small colourful beads turns detailed handwork into a wearable souvenir.',
 'https://i.etsystatic.com/11380243/r/il/cb69ad/1874664681/il_510x638.1874664681_8z4t.jpg'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Pilanesberg StanBox'),
 'Setswana Beaded Necklace','A decorative necklace inspired by Setswana beadwork. The piece celebrates the patience and skill involved in building a complete pattern from many individual beads.',
 'https://i.etsystatic.com/8176369/c/743/743/0/179/il/9d84b9/1937492909/il_600x600.1937492909_ph1a.jpg'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Pilanesberg StanBox'),
 'Curiosity Figurine','A small decorative figurine inspired by South African souvenir carving and the wildlife surrounding Pilanesberg. It gives the customer a physical reminder of the destination and its animals.',
 'https://i.etsystatic.com/6846183/r/il/51d683/5453365015/il_1080xN.5453365015_dwgz.jpg'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Pilanesberg PremBox'),
 'Handcrafted Wildlife Fine Art','A decorative artwork inspired by the wildlife of South Africa. The piece tells the story of the landscape through visual art and allows the customer to carry part of the safari experience into their home.',
 'https://elisium.art/wp-content/uploads/2025/01/South_Africa-1024x1024.png'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Pilanesberg PremBox'),
 'Master Woven Basket','A handmade-style woven basket representing Southern African basket-making traditions. Basket weaving requires repeated, careful handwork to turn natural fibres into a functional object whose pattern also gives each piece its individual character.',
 'https://basketsofafrica.com/weaving-zulu-ilala-palm-baskets-in-south-africa'
);

-- GOLDEN GATE****************************************************************************************************************************************************************************************

INSERT INTO ProductImage
    (ProductID, ItemName, ItemDescription, ImageURL)
VALUES

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Golden Gate StanBox'),
 'Basotho Beaded Bag','A beaded bag inspired by Basotho decorative craft. The piece combines practical use with detailed beadwork and represents the cultural influence of Basotho communities in the Free State and neighbouring Lesotho.',
 'https://th.bing.com/th/id/OIP.8Xp65GwtlMtoFpYxmU3K0gHaIu'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Golden Gate StanBox'),
 'Basotho Beaded Tie','A wearable beaded accessory inspired by Basotho craft. Its detailed pattern transforms a familiar item of clothing into a distinctive piece of handmade-style cultural design.',
 'https://i.etsystatic.com/29816960/r/il/ab66f1/4660944488/il_1588xN.4660944488_40ys.jpg'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Golden Gate StanBox'),
 'Traditional Basotho Clay Dish','A clay dish inspired by Basotho pottery and everyday handmade objects. Its story comes from transforming natural clay into something both functional and decorative.',
 'https://portal-images.azureedge.net/auctions-2015/srwo10029/images/73fc37d6-706e-4f9f-ead6-8951c50601ec.jpg'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Golden Gate PremBox'),
 'Traditional Basotho Mokorotlo Hat','The Mokorotlo is a distinctive conical Basotho hat and an important symbol of Basotho identity. Its form is traditionally associated with the shape of Mount Qiloane, making the hat more than a souvenir: it carries a recognisable story of Basotho landscape and heritage.',
 'https://lotshaonaka.co.za/product/mokorotlo-traditional-basotho-hat-for-men'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Golden Gate PremBox'),
 'Mohair / Karakul Wool Throw','A premium textile chosen to represent the wool and fibre craft associated with the region. The throw combines practical warmth with textile workmanship, giving the customer an item intended to remain useful long after the journey.',
 'https://portal-images.azureedge.net/auctions-2015/srwo10029/images/73fc37d6-706e-4f9f-ead6-8951c50601ec.jpg'
);

-- KGALAGADI*****************************************************************************************************************************************************************************************

INSERT INTO ProductImage
    (ProductID, ItemName, ItemDescription, ImageURL)
VALUES

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Kgalagadi StanBox'),
 'Ostrich Shell Jewellery','Jewellery inspired by the long Southern African tradition of working with ostrich eggshell. Small pieces of shell are transformed into decorative objects, connecting the souvenir to the materials and landscapes of the Kalahari.',
 'https://th.bing.com/th/id/OIP._jDmGfXwcG7k1vvYRd2nvAHaHa'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Kgalagadi StanBox'),
 'Nama Inspired Beadwork','Colourful beadwork inspired by Nama craft traditions of the Northern Cape. The item celebrates detailed handwork while connecting the box to communities shaped by the dry landscapes of the region.',
 'https://i.etsystatic.com/38645205/r/il/a03527/7810635341/il_510x638.7810635341_kzi0.jpg'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Kgalagadi StanBox'),
 'Desert Themed Souvenir','A small decorative souvenir inspired by the red dunes, open spaces and desert character of the Kalahari. It represents the landscape that forms an important part of the Kgalagadi experience.',
 'https://th.bing.com/th?q=Shien+Art+South+Africa'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Kgalagadi PremBox'),
 'Ostrich Shell Carved Ornament','A decorative ornament inspired by Southern African ostrich eggshell craft. The natural shell is used as the starting material for a keepsake that reflects the environment and traditional use of available natural materials.',
 'https://th.bing.com/th/id/OIP._jDmGfXwcG7k1vvYRd2nvAHaHa'
),

(
 (SELECT ProductID FROM [Product] WHERE ProductName='Kgalagadi PremBox'),
 'Kalahari Desert Fine Art Print','A fine-art print inspired by the colours, wildlife and open landscape of the Kalahari. Rather than simply representing a destination, the artwork gives the customer an artist''s visual interpretation of the desert environment.',
 'https://elisium.art/wp-content/uploads/2025/01/South_Africa-1024x1024.png'
);
