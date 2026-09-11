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
    (1,
     'Table Mountain StanBox','A Standard Box inspired by Table Mountain containing Rooibos Tea, Local Craft Chocolate and Cape Town Handmade Candles.',
     1899.99,'Standard'),

    (1,
     'Table Mountain PremBox','A Premium Box inspired by Table Mountain containing a Karoo Nougat Gift Set and Garden Route Handmade Bow Tie.',
     3499.99,'Premium');


-- Vilakazi Street
INSERT INTO [Product]
    (AttractionID, ProductName, Description, Price, BoxCategory)
VALUES
    (2,
     'Vilakazi Street StanBox','A Standard Box inspired by Soweto containing a Soweto-themed T-Shirt, Ndebele Beaded Bracelet and Township Wire Sculpture.',1999.99,'Standard'),

    (2,
     'Vilakazi Street PremBox','A Premium Box inspired by Soweto containing a Beaded Ndebele Necklace and African Fine Art Painting.',3999.99,
     'Premium');


-- uShaka Marine World
INSERT INTO [Product]
    (AttractionID, ProductName, Description, Price, BoxCategory)
VALUES
    (3,
     'uShaka StanBox','A Standard Box containing Zulu Beaded Earrings, Zulu Beaded Bracelet and Polished Stone Decor.',
     1799.99,'Standard'),

    (3,
     'uShaka PremBox','A Premium Box containing a Handmade Zulu Hat and Woven Ilala Palm Basket.',
     3799.99,'Premium');


-- Blyde River Canyon
INSERT INTO [Product]
    (AttractionID, ProductName, Description, Price, BoxCategory)
VALUES
    (4,
     'Blyde Canyon StanBox','A Standard Box containing a Recycled-Glass Bead Bracelet, Recycled Glass Bead Necklace and Wildlife Keychain.',
     1699.99,'Standard'),

    (4,
     'Blyde Canyon PremBox','A Premium Box containing a Hand-Carved Wooden Wildlife Statue and Hand Painted Wildlife Tablecloth.',
     3599.99,'Premium');


-- Kruger National Park
INSERT INTO [Product]
    (AttractionID, ProductName, Description, Price, BoxCategory)
VALUES
    (5,
     'Kruger National StanBox', 'A Standard Box containing Venda Clay Beads or Pot, Venda Copper Style Bracelet and Traditional Beaded Necklace.',
     1849.99,'Standard'),

    (5,
     'Kruger National PremBox','A Premium Box containing a Venda Silver-Wire Bracelet and Venda Wooden Carving.',
     3699.99,'Premium');


-- Addo Elephant National Park
INSERT INTO [Product]
    (AttractionID, ProductName, Description, Price, BoxCategory)
VALUES
    (6,
     'Addo Elephant StanBox','A Standard Box containing Xhosa Beadwork Jewellery, a Wire and Bead Animal and Handmade Cape Ceramic.',
     1749.99,'Standard'),

    (6,
     'Addo Elephant PremBox','A Premium Box containing a Telephone Wire Woven Basket and Leather Accessory.',
     3899.99,'Premium');


-- Pilanesberg National Park
INSERT INTO [Product]
    (AttractionID, ProductName, Description, Price, BoxCategory)
VALUES
    (7,
     'Pilanesberg StanBox','A Standard Box containing a Setswana Beaded Bracelet, Setswana Beaded Necklace and Curiosity Figurine.',
     1649.99,'Standard'),

    (7,
     'Pilanesberg PremBox','A Premium Box containing Handcrafted Wildlife Fine Art and a Master Woven Basket.',
     3499.99,'Premium');


-- Golden Gate Highlands National Park
INSERT INTO [Product]
    (AttractionID, ProductName, Description, Price, BoxCategory)
VALUES
    (8,
     'Golden Gate StanBox','A Standard Box containing a Basotho Beaded Bag, Basotho Beaded Tie and Traditional Basotho Clay Dish.',
     1899.99,'Standard'),

    (8,
     'Golden Gate PremBox','A Premium Box containing a Traditional Mokorotlo Hat and Mohair or Karakul Wool Throw.',
     4199.99,'Premium');


-- Kgalagadi Transfrontier Park
INSERT INTO [Product]
    (AttractionID, ProductName, Description, Price, BoxCategory)
VALUES
    (9,
     'Kgalagadi StanBox','A Standard Box containing Ostrich Shell Jewellery, Nama Inspired Beadwork and a Desert Themed Souvenir.',
     1599.99,'Standard'),

    (9,
     'Kgalagadi PremBox','A Premium Box containing an Ostrich Shell Carved Ornament and Kalahari Desert Fine Art Print.',
     3399.99,'Premium');