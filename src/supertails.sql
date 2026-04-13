create database supertails;
use supertails;

show tables;


-- ─── Categories ───
INSERT IGNORE INTO categories (id, name, description) VALUES
(1,  'Dry Food',     'All dry food for dogs'),
(2,  'Wet Food',     'Wet and gravy food for dogs'),
(3,  'Royal Canin',  'Royal Canin breed specific food'),
(4,  'Pedigree',     'Pedigree dog food range'),
(5,  'Farmina N&D','Grain free premium food'),
(6,  'Drools','Drools dog food range'),
(7,  'Bark Out Loud','Bark Out Loud food range'),
(8,  'Treats','Dog treats and snacks'),
(9,  'Healthcare','Medicines and healthcare'),
(10, 'Grooming','Grooming products'),
(11, 'Accessories','Dog accessories'),
(12, 'Pet Parent','Pet parent merchandise');

-- ─── Dry Food Products ───
INSERT  INTO products (id, name, description, price, stock, image_url, type, available, category_id) VALUES
(1,  'Henlo Chicken & Liver Adult Dry Dog Food','100% Human Grade ingredients. Complete nutrition for adult dogs.',2049, 100, '/images/category/dogs/goldenretriever/dry/henlo-dry-1.jpg','FOOD', true, 1),
(2,  'Henlo Chicken & Vegetable Baked Dry Food','Baked dry food for adult dogs. 100% human grade.',5647, 80,'/images/category/dogs/goldenretriever/dry/henlo-dry-2.jpg','FOOD', true, 1),
(3,  'Avanti Furs Chicken Dry Dog Food','High protein chicken dry food for adult dogs.',90,   50,'/images/category/dogs/goldenretriever/dry/avanti-dry.jpg','FOOD', true, 1),
(4,  'Homiez Ginger Grain Free Air-Dried Food','Air dried puppy and adult dog food. Premium quality.',899,  40,'/images/category/dogs/goldenretriever/dry/homiez-dry.jpg','FOOD', true, 1),
(5,  'DaiGud Chicken Brown Rice Adult Dry Food','Buy 1 Get 1 Free offer. Adult dog dry food.',247,60,'/images/category/dogs/goldenretriever/dry/daigud-dry-1.jpg','FOOD', true, 1),
(6,  'DaiGud Chicken Brown Rice Puppy Dry Food','Buy 1 Get 1 Free offer. Puppy dry food.',346,55,'/images/category/dogs/goldenretriever/dry/daigud-dry-2.jpg','FOOD', true, 1),

-- ─── Wet Food ───
(7,  'HUFT Sara Wholesome Grain Free Lamb Wet Food','Grain free wet food with lamb and apple.',389,70,'/images/category/dogs/goldenretriever/wet/sara-wet-1.jpg','FOOD', true, 2),
(8,  'Henlo Chicken & Vegetable Wet Food','Baked wet food for adult dogs. 100% human grade.',2851, 45,'/images/category/dogs/goldenretriever/wet/henlo-wet.jpg','FOOD', true, 2),
(9,  'HUFT Sara Grain Free Chicken Turkey Wet Food','Grain free classic chicken and turkey wet food.',389,  65,'/images/category/dogs/goldenretriever/wet/sara-wet-2.jpg','FOOD', true, 2),
(10, 'HUFT Sara Classic Chicken Wet Food','Grain free classic chicken wet food.',299,  50,'/images/category/dogs/goldenretriever/wet/sara-wet-3.jpg','FOOD', true, 2),

-- ─── Royal Canin ───
(11, 'Royal Canin Maxi Adult Dry Food','Complete nutrition for large breed adult dogs.',900,  90,'/images/category/dogs/goldenretriever/royal/rc-maxi.jpg','FOOD', true, 3),
(12, 'Royal Canin Veterinary Hypoallergenic Dry Food', 'Veterinary diet for dogs with food allergies.',8500, 20,'/images/category/dogs/goldenretriever/royal/rc-vet.jpg','FOOD', true, 3),
(13, 'Royal Canin Maxi Puppy Dry Food','Complete nutrition for large breed puppies.',14819,15,'/images/category/dogs/goldenretriever/royal/rc-maxi-puppy.jpg','FOOD', true, 3),
(14, 'Royal Canin Boxer Adult Dry Food','Breed specific nutrition for Boxer dogs.',2604, 25,'/images/category/dogs/goldenretriever/royal/rc-boxer.jpg','FOOD', true, 3),
(15, 'Royal Canin Giant Junior Dry Food','Nutrition for giant breed junior dogs.',3141, 18,'/images/category/dogs/goldenretriever/royal/rc-giant-junior.jpg', 'FOOD', true, 3),

-- ─── Pedigree ───
(16, 'Pedigree Chicken Vegetable Adult Dry Food','Complete dry dog food with chicken and vegetables.',3432, 100, '/images/category/dogs/goldenretriever/pedigree/pedigree-1.jpg','FOOD', true, 4),
(17, 'Pedigree Chicken Milk Puppy Dry Food','Complete dry puppy food with chicken and milk.',2191, 80,  '/images/category/dogs/goldenretriever/pedigree/pedigree-2.jpg','FOOD', true, 4),
(18, 'Pedigree 100% Vegetarian Dry Food','Complete vegetarian dry dog food.',4928, 60,  '/images/category/dogs/goldenretriever/pedigree/pedigree-veg.jpg','FOOD', true, 4),
(19, 'Pedigree PRO Expert Nutrition Large Breed','Expert nutrition for large breed adult dogs.',3214, 40,'/images/category/dogs/goldenretriever/pedigree/pedigree-pro-1.jpg','FOOD', true, 4),

-- ─── Farmina N&D ───
(20, 'Farmina N&D Pumpkin Chicken Blueberry Dry Food', 'Grain free with pumpkin, chicken and blueberry.',5022, 35,'/images/category/dogs/goldenretriever/farmina/farmina-1.jpg','FOOD', true, 5),
(21, 'Farmina N&D Pumpkin Lamb Blueberry Dry Food','Grain free with pumpkin, lamb and blueberry.',2640, 30,  '/images/category/dogs/goldenretriever/farmina/farmina-2.jpg','FOOD', true, 5),
(22, 'Farmina N&D Pumpkin Chicken Pomegranate Dry','Grain free adult maxi medium dry food.',2290, 28,  '/images/category/dogs/goldenretriever/farmina/farmina-3.jpg','FOOD', true, 5),

-- ─── Drools ───
(23, 'Drools Optimum Performance Adult Dry Food','High energy optimum performance adult dog food.',2480, 75,'/images/category/dogs/goldenretriever/drools/drools-1.jpg','FOOD', true, 6),
(24, 'Drools Real Chicken Liver Chunks Gravy Wet','Real chicken and liver chunks in gravy wet food.',3564, 60,  '/images/category/dogs/goldenretriever/drools/drools-2.jpg','FOOD', true, 6),
(25, 'Drools 100% Vegetarian Puppy Dry Food','Complete vegetarian dry food for puppies.',3360, 50,'/images/category/dogs/goldenretriever/drools/drools-veg.jpg','FOOD', true, 6),
(26, 'Drools Absolute Calcium Bones Dog Treats','Calcium enriched bone treats for dogs.',414,  90,'/images/category/dogs/goldenretriever/drools/drools-treats.jpg','FOOD', true, 6),

-- ─── Bark Out Loud ───
(27, 'Bark Out Loud Salmon Turkey Adult Dry Food','Premium salmon and turkey adult dry dog food.',1328, 40,'/images/category/dogs/goldenretriever/bol/bol-1.jpg','FOOD', true, 7),
(28, 'Bark Out Loud Thrive Chicken Dry Food','High protein chicken flavor adult dry dog food.',810,  35,'/images/category/dogs/goldenretriever/bol/bol-2.jpg','FOOD', true, 7),
(29, 'Bark Out Loud Collagen Protein Ear Chicken','Collagen protein ear chicken flat treat for dogs.',72,80,'/images/category/dogs/goldenretriever/bol/bol-treats.jpg','FOOD', true, 7),

-- ─── Healthcare ───
(30, 'Frontline Flea & Tick Spot On Dogs 10-20kg','Monthly flea and tick prevention for dogs.',1299, 50,  '/images/category/dogs/goldenretriever/health/frontline.jpg','ECOMMERCE', true, 9),
(31, 'Beaphar Dewormer Tablets','Effective deworming for dogs and puppies.',299,  60,  '/images/category/dogs/goldenretriever/health/dewormer.jpg','ECOMMERCE', true, 9),
(32, 'Himalaya Joint Aid Plus','Joint care supplement for dogs.',450,  45,  '/images/category/dogs/goldenretriever/health/joint-aid.jpg','ECOMMERCE', true, 9);



-- Henlo
UPDATE products SET brand = 'Henlo' WHERE id IN (1,2,8);

-- Avanti Furs
UPDATE products SET brand = 'Avanti Furs' WHERE id = 3;

-- Homiez
UPDATE products SET brand = 'Homiez' WHERE id = 4;

-- DaiGud
UPDATE products SET brand = 'DaiGud' WHERE id IN (5,6);

-- HUFT Sara
UPDATE products SET brand = 'HUFT Sara' WHERE id IN (7,9,10);

-- Royal Canin
UPDATE products SET brand = 'Royal Canin' WHERE id BETWEEN 11 AND 15;

-- Pedigree
UPDATE products SET brand = 'Pedigree' WHERE id BETWEEN 16 AND 19;

-- Farmina N&D
UPDATE products SET brand = 'Farmina N&D' WHERE id BETWEEN 20 AND 22;

-- Drools
UPDATE products SET brand = 'Drools' WHERE id BETWEEN 23 AND 26;

-- Bark Out Loud
UPDATE products SET brand = 'Bark Out Loud' WHERE id BETWEEN 27 AND 29;

-- Healthcare brands
UPDATE products SET brand = 'Frontline' WHERE id = 30;
UPDATE products SET brand = 'Beaphar' WHERE id = 31;
UPDATE products SET brand = 'Himalaya' WHERE id = 32;


ALTER TABLE products ADD COLUMN breed_size VARCHAR(20);



UPDATE products
SET breed_size =
CASE
    WHEN LOWER(name) LIKE '%mini%' THEN 'Mini'
    WHEN LOWER(name) LIKE '%medium%' THEN 'Medium'
    WHEN LOWER(name) LIKE '%maxi%' OR LOWER(name) LIKE '%giant%' THEN 'Maxi'
END;


UPDATE products
SET breed_size =
CASE
    WHEN LOWER(name) LIKE '%farmina%' THEN 'Medium'
    WHEN LOWER(name) LIKE '%royal%' OR LOWER(name) LIKE '%giant%' THEN 'Maxi'
    ELSE breed_size
END;


SELECT id, name, breed_size
FROM products
WHERE breed_size IS NULL;


UPDATE products SET breed_size =
CASE
    WHEN LOWER(name) LIKE '%royal%' OR LOWER(name) LIKE '%giant%' THEN 'Maxi'
    WHEN LOWER(name) LIKE '%drools%' THEN 'Maxi'
    WHEN LOWER(name) LIKE '%farmina%' THEN 'Medium'
    WHEN LOWER(name) LIKE '%pedigree%' THEN 'Medium'
    WHEN LOWER(name) LIKE '%henlo%' THEN 'Medium'
    WHEN LOWER(name) LIKE '%bark out loud%' THEN 'Medium'
    ELSE breed_size
END;



SELECT COUNT(*) 
FROM products 
WHERE breed_size IS NULL;

UPDATE products
SET breed_size='Medium'
WHERE breed_size IS NULL;


ALTER TABLE products ADD COLUMN food_type VARCHAR(10);

UPDATE products
SET food_type =
CASE
    WHEN category_id BETWEEN 1 AND 37 THEN
        CASE
            WHEN LOWER(name) LIKE '%chicken%'
              OR LOWER(name) LIKE '%lamb%'
              OR LOWER(name) LIKE '%fish%'
              OR LOWER(name) LIKE '%meat%'
              OR LOWER(name) LIKE '%egg%'
              OR LOWER(name) LIKE '%turkey%' THEN 'Non-Veg'
            ELSE 'Veg'
        END
    ELSE NULL
END;


select * from products;
select * from categories;

-- ───================================================= Services ───=====================================================
-- (33, 'Online Vet Consultation - 30 min',     'Video consultation with certified veterinarian.',299,  999, '/images/products/vet-consult.jpg',     'SERVICE', true, 9),
-- (34, 'Dog Grooming Session - Basic',  'Bath, brush, nail trim and ear cleaning.',599,  50,  '/images/products/grooming.jpg','SERVICE', true, 10);


-- ─────────────────────────────────────==================================================================
--  SHIH TZU — Dry Food (id 33 to 40)
-- ───────────────────────────────────── ==============================================
select * from products;


INSERT IGNORE INTO products (id, name, description, price, stock, image_url, type, available, category_id, breed) VALUES

(33, 'Henlo Baked Chicken And Liver Adult And Puppy Dry Dog Food 100% Human Grade',
     'Baked chicken and liver adult and puppy dry dog food. 100% human grade ingredients.',
     3005, 100, '/images/category/dogs/shihtzu/dry/henlo-baked.jpg', 'FOOD', true, 1, 'shih tzu'),

(34, 'Kennel Kitchen Air Dried Chicken And Mackerel Puppy And Adult Dog Dry Food All Life',
     'Air dried chicken and mackerel dry food for puppies and adults. All life stages.',
     1559, 60, '/images/category/dogs/shihtzu/dry/kennel-kitchen-dry.jpg', 'FOOD', true, 1, 'shih tzu'),

(35, 'Pedigree Chicken And Vegetables Adult Dog Dry Food',
     'Complete nutrition with chicken and vegetables for adult dogs.',
     3432, 80, '/images/category/dogs/shihtzu/dry/pedigree-dry.jpg', 'FOOD', true, 4, 'shih tzu'),

(36, 'Drools Optimum Performance Adult Dog Dry Food',
     'High energy optimum performance dry food for adult dogs.',
     1327, 75, '/images/category/dogs/shihtzu/dry/drools-dry.jpg', 'FOOD', true, 6, 'shih tzu'),

(37, 'Mankind Petstar Meat And Wheat Adult Dog Dry Food',
     'Meat and wheat adult dog dry food. Complete balanced nutrition.',
     3936, 40, '/images/category/dogs/shihtzu/dry/petstar-dry.jpg', 'FOOD', true, 1, 'shih tzu'),

(38, 'Farmina N&D Pumpkin Chicken And Pomegranate Grain Free Adult Mini Dog Dry Food',
     'Grain free dry food with pumpkin, chicken and pomegranate for mini adult dogs.',
     918, 35, '/images/category/dogs/shihtzu/dry/farmina-dry.jpg', 'FOOD', true, 5, 'shih tzu'),

(39, 'Bark Out Loud Essentials Real Chicken Mini And Small Breed Adult Dog Dry Food',
     'Real chicken dry food for mini and small breed adult dogs.',
     934, 50, '/images/category/dogs/shihtzu/dry/bol-dry.jpg', 'FOOD', true, 7, 'shih tzu'),

(40, 'SmartHeart Chicken Power Pack Puppy Dog Dry Food',
     'Chicken power pack puppy dry food. Complete nutrition for growing puppies.',
     375, 65, '/images/category/dogs/shihtzu/dry/smartheart-dry.jpg', 'FOOD', true, 1, 'shih tzu'),

-- ─────────────────────────────────────
--  SHIH TZU — Wet Food (id 41 to 48)
-- ─────────────────────────────────────

(41, 'Pedigree Chicken And Liver Chunks In Gravy Adult Dog Wet Food 70g',
     'Chicken and liver chunks in gravy wet food for adult dogs. All life stages.',
     2610, 80, '/images/category/dogs/shihtzu/wet/pedigree-wet.jpg', 'FOOD', true, 2, 'shih tzu'),

(42, 'Kennel Kitchen Lamb Chunks In Gravy Puppy And Adult Dog Wet Food All Life Stage',
     'Lamb chunks in gravy wet food for puppies and adult dogs. All life stages.',
     1309, 60, '/images/category/dogs/shihtzu/wet/kennel-kitchen-wet.jpg', 'FOOD', true, 2, 'shih tzu'),

(43, 'JerHigh Roasted Duck In Gravy Wet Dog Food',
     'Roasted duck in gravy wet food for dogs. High protein premium recipe.',
     1593, 50, '/images/category/dogs/shihtzu/wet/jerhigh-duck.jpg', 'FOOD', true, 2, 'shih tzu'),

(44, 'Homiez And Ginger Power Bowl Chicken And Barley Fresh Food For Dogs',
     'Fresh bowl with chicken and barley. Power packed nutrition for dogs.',
     1791, 40, '/images/category/dogs/shihtzu/wet/homiez-bowl.jpg', 'FOOD', true, 2, 'shih tzu'),

(45, 'Bruno Wild Essentials Chicken Plate Dog Wet Food',
     'Wild essentials chicken plate wet food for dogs. Natural ingredients.',
     99, 70, '/images/category/dogs/shihtzu/wet/bruno-chicken.jpg', 'FOOD', true, 2, 'shih tzu'),

(46, 'Doggos Jumbo Monster Chicken And Pumpkin Fresh Dog Wet Food All Breeds',
     'Jumbo monster chicken and pumpkin fresh wet food. Suitable for all breeds.',
     3081, 35, '/images/category/dogs/shihtzu/wet/doggos-jumbo.jpg', 'FOOD', true, 2, 'shih tzu'),

(47, 'HUFT Sara Wholesome Grain Free Chicken And Turkey Dog Wet Food',
     'Grain free wholesome chicken and turkey wet food. Premium quality.',
     389, 65, '/images/category/dogs/shihtzu/wet/sara-chicken-turkey.jpg', 'FOOD', true, 2, 'shih tzu'),

(48, 'PetStrong Lamb And Blueberry Grain Free Fresh Food For Dogs Buy 1 Get 1 Free',
     'Grain free fresh food with lamb and blueberry. Buy 1 Get 1 Free offer.',
     1071, 45, '/images/category/dogs/shihtzu/wet/petstrong-lamb.jpg', 'FOOD', true, 2, 'shih tzu'),
 
(49, 'Pedigree Chicken And Vegetables Adult Dog Dry Food',
     'Complete nutrition with chicken and vegetables for adult dogs.',
     3432, 80, '/images/category/dogs/shihtzu/pedigree/pedigree-chicken-veg.jpg', 'FOOD', true, 4, 'shih tzu'),

(50, 'Pedigree Chicken And Milk Puppy Dog Dry Food',
     'Complete nutrition with chicken and milk for growing puppies.',
     2191, 90, '/images/category/dogs/shihtzu/pedigree/pedigree-chicken-milk.jpg', 'FOOD', true, 4, 'shih tzu'),

(51, 'Pedigree 100% Vegetarian Puppy And Adult Veg Dog Dry Food',
     '100% vegetarian dry food for puppies and adult dogs. Complete balanced nutrition.',
     4928, 60, '/images/category/dogs/shihtzu/pedigree/pedigree-veg.jpg', 'FOOD', true, 4, 'shih tzu'),

(52, 'Pedigree Chicken And Liver Chunks In Gravy Adult Dog Wet Food 70g',
     'Chicken and liver chunks in gravy wet food for adult dogs.',
     2610, 70, '/images/category/dogs/shihtzu/pedigree/pedigree-gravy-adult.jpg', 'FOOD', true, 2, 'shih tzu'),

(53, 'Pedigree PRO Expert Nutrition For Large Breed Puppy 3 To 18 Months Dog Dry Food',
     'Expert nutrition for large breed puppies aged 3 to 18 months.',
     1117, 45, '/images/category/dogs/shihtzu/pedigree/pedigree-pro-large.jpg', 'FOOD', true, 4, 'shih tzu'),

(54, 'Pedigree Meat And Rice Adult Dog Dry Food',
     'Complete dry food with meat and rice for adult dogs.',
     3226, 55, '/images/category/dogs/shihtzu/pedigree/pedigree-meat-rice.jpg', 'FOOD', true, 4, 'shih tzu'),

(55, 'Pedigree Chicken And Liver Chunks In Gravy Adult Dog Wet Food 130g',
     'Chicken and liver chunks in gravy wet food for adult dogs. 130g pack.',
     180, 100, '/images/category/dogs/shihtzu/pedigree/pedigree-gravy-130.jpg', 'FOOD', true, 2, 'shih tzu'),

(56, 'Pedigree Chicken And Liver Chunks In Gravy Puppy Pouch Dog Wet Food 130g',
     'Chicken and liver chunks in gravy wet food specially for puppies. 130g pouch.',
     648, 80, '/images/category/dogs/shihtzu/pedigree/pedigree-puppy-pouch.jpg', 'FOOD', true, 2, 'shih tzu'),
 
(57, 'Royal Canin Shih Tzu Adult Dog Dry Food',
     'Breed specific dry food exclusively for Shih Tzu adult dogs. Vet approved nutrition.',
     1777, 50, '/images/category/dogs/shihtzu/royal-canin/rc-shihtzu-adult.jpg', 'FOOD', true, 3, 'shih tzu'),

(58, 'Royal Canin Shih Tzu Puppy Dry Dog Food',
     'Breed specific dry food exclusively for Shih Tzu puppies. Vet approved nutrition.',
     3660, 40, '/images/category/dogs/shihtzu/royal-canin/rc-shihtzu-puppy.jpg', 'FOOD', true, 3, 'shih tzu'),
     
(59, 'Drools Optimum Performance Adult Dog Dry Food',
     'High energy optimum performance dry food for adult dogs.',
     553, 75, '/images/category/dogs/shihtzu/drools/drools-optimum.jpg', 'FOOD', true, 6, 'shih tzu'),

(60, 'Drools Real Chicken And Chicken Liver Chunks In Gravy Adult Dog Wet Food',
     'Real chicken and chicken liver chunks in gravy wet food for adult dogs.',
     3645, 50, '/images/category/dogs/shihtzu/drools/drools-chicken-gravy-adult.jpg', 'FOOD', true, 6, 'shih tzu'),

(61, 'Drools 100% Vegetarian Puppy And Adult Veg Dog Wet Food All Life Stages',
     '100% vegetarian puppy and adult dog wet food. Suitable for all life stages.',
     3570, 45, '/images/category/dogs/shihtzu/drools/drools-veg-wet.jpg', 'FOOD', true, 6, 'shih tzu'),

(62, 'Drools Absolute Calcium Bones Dog Treats Jar 600g',
     'Calcium enriched bone treats for dogs. Jar of 600g.',
     414, 90, '/images/category/dogs/shihtzu/drools/drools-calcium-bones.jpg', 'FOOD', true, 6, 'shih tzu'),

(63, 'Drools Absolute Milk Bone Jar 500g',
     'Milk bone treats jar for dogs. 500g pack.',
     382, 80, '/images/category/dogs/shihtzu/drools/drools-milk-bone.jpg', 'FOOD', true, 6, 'shih tzu'),

(64, 'Drools Real Chicken And Chicken Liver Chunks In Gravy Puppy Dog Wet Food',
     'Real chicken and liver chunks in gravy wet food specially formulated for puppies.',
     2349, 55, '/images/category/dogs/shihtzu/drools/drools-chicken-gravy-puppy.jpg', 'FOOD', true, 6, 'shih tzu'),

(65, 'Drools Chicken And Egg Puppy Dog Dry Food',
     'Chicken and egg dry food for puppies. Complete balanced nutrition.',
     3229, 40, '/images/category/dogs/shihtzu/drools/drools-chicken-egg.jpg', 'FOOD', true, 6, 'shih tzu'),

(66, 'Drools Real Chicken And Chicken Liver Chunks In Gravy Puppy Dog Wet Food 60g',
     'Real chicken and liver chunks in gravy wet food for puppies. 60g pack.',
     232, 100, '/images/category/dogs/shihtzu/drools/drools-puppy-60g.jpg', 'FOOD', true, 6, 'shih tzu'),

(67, 'Henlo Fan Favourite Combo Chicken And Liver 5.6kg And Chicken Treats Jerky And Strips',
     'Henlo fan favourite combo with chicken and liver 5.6kg plus chicken treats jerky and strips.',
     2267, 40, '/images/category/dogs/shihtzu/henlo/henlo-combo.jpg', 'FOOD', true, 1, 'shih tzu'),

(68, 'Henlo Baked Chicken And Liver Adult And Puppy Dog Dry Food 100% Human Grade',
     'Baked chicken and liver dry food for adult and puppy dogs. 100% human grade ingredients. High quality protein. Gluten free.',
     3005, 80, '/images/category/dogs/shihtzu/henlo/henlo-baked-chicken-liver.jpg', 'FOOD', true, 1, 'shih tzu'),

(69, 'Henlo High Protein Air Dried Chicken Strips Dog Treats',
     'High protein air dried chicken strips dog treats. Natural ingredients.',
     1348, 90, '/images/category/dogs/shihtzu/henlo/henlo-chicken-strips.jpg', 'FOOD', true, 8, 'shih tzu'),

(70, 'Henlo Baked Chicken And Vegetable Dry Food For Adult Dogs High Protein 100% Human Grade',
     'Baked chicken and vegetable dry food for adult dogs. High protein, 100% human grade. Real veggies.',
     5722, 35, '/images/category/dogs/shihtzu/henlo/henlo-chicken-veg.jpg', 'FOOD', true, 1, 'shih tzu');     
     
     
     
     -- Henlo
UPDATE products SET brand = 'Henlo'
WHERE name LIKE 'Henlo%';

-- Pedigree
UPDATE products SET brand = 'Pedigree'
WHERE name LIKE 'Pedigree%';

-- Drools
UPDATE products SET brand = 'Drools'
WHERE name LIKE 'Drools%';

-- Royal Canin
UPDATE products SET brand = 'Royal Canin'
WHERE name LIKE 'Royal Canin%';

-- Farmina N&D
UPDATE products SET brand = 'Farmina N&D'
WHERE name LIKE 'Farmina%';

-- Bark Out Loud
UPDATE products SET brand = 'Bark Out Loud'
WHERE name LIKE 'Bark Out Loud%';

-- Kennel Kitchen
UPDATE products SET brand = 'Kennel Kitchen'
WHERE name LIKE 'Kennel Kitchen%';

-- HUFT Sara
UPDATE products SET brand = 'HUFT Sara'
WHERE name LIKE 'HUFT Sara%';

-- JerHigh
UPDATE products SET brand = 'JerHigh'
WHERE name LIKE 'JerHigh%';

-- Homiez
UPDATE products SET brand = 'Homiez'
WHERE name LIKE 'Homiez%';

-- Bruno
UPDATE products SET brand = 'Bruno'
WHERE name LIKE 'Bruno%';

-- Doggos
UPDATE products SET brand = 'Doggos'
WHERE name LIKE 'Doggos%';

-- PetStrong
UPDATE products SET brand = 'PetStrong'
WHERE name LIKE 'PetStrong%';

-- SmartHeart
UPDATE products SET brand = 'SmartHeart'
WHERE name LIKE 'SmartHeart%';

-- Mankind Petstar
UPDATE products SET brand = 'Mankind Petstar'
WHERE name LIKE 'Mankind%';

-- ==================================================================
select * from products;


INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed)
VALUES

-- Henlo
('Henlo Baked Chicken & Liver Adult And Puppy Dog Dry Food',
 '100% Human Grade ingredients. Suitable for adult and puppy dogs.',
 3005, 60,
 '/images/category/dogs/labrador/dry/henlo-dry-1.jpg',
 'FOOD', true, 1, 'labrador'),

-- Lickicious
('Lickicious Optima Chicken And Vegetable Adult Dog Dry Food',
 'Balanced chicken and vegetable nutrition for adult dogs.',
 474, 80,
 '/images/category/dogs/labrador/dry/lickicious.jpg',
 'FOOD', true, 1, 'labrador'),

-- Avant Furst
('Avant Furst Chicken And Vegetable Adult Dog Dry Food',
 'Affordable and nutritious chicken-based dry food.',
 247, 70,
 '/images/category/dogs/labrador/dry/avanti-dry.jpg',
 'FOOD', true, 1, 'labrador'),

-- Homiez
('Homiez & Ginger Grain Free Air Dried Puppy & Adult Dog Dry Food',
 'Grain free premium air-dried dog food.',
 899, 50,
 '/images/category/dogs/labrador/dry/homiez-dry.jpg',
 'FOOD', true, 1, 'labrador');



update products set brand="Lickicious Optima" where id= 112;
update products set brand="Avant Furst" where id= 3;

update products set brand="Merical Pet Briskit" where id= 123;
update products set brand="Cure By Design" where id= 124;
update products set brand="paw Pops" where id= 129;

update products set brand="Purpet" where id= 131;
update products set brand="Doggs" where id= 140;
update products set brand="Benny's Bowl" where id= 141;
update products set brand="GO GO" where id= 143;
update products set brand="Fidele" where id= 145;



UPDATE products SET brand = 'Homie'
WHERE name LIKE 'Homie%';

-- ─── ============================Labrador Wet Food ============================
select * from products;

INSERT INTO products (name, description, price, stock, image_url, type, available, category_id, breed) VALUES

('HUFT Sara Wholesome Grain Free Lamb & Apple Dog Wet Food',
 'Grain free lamb and apple wet food for dogs.', 
 389, 50,
 '/images/category/dogs/labrador/wet/sara-lamb-apple.jpg',
 'FOOD', true, 2, 'labrador'),

('Henlo Chicken & Vegetable Baked Dry Food with JerHigh',
 'Baked chicken and vegetable food with jerhigh for adult dogs.',
 2851, 40,
 '/images/category/dogs/labrador/wet/henlo-wet-combo.jpg',
 'FOOD', true, 2, 'labrador'),

('HUFT Sara Wholesome Grain Free Chicken & Turkey Wet Food',
 'Grain free chicken and turkey wet food.',
 389, 45,
 '/images/category/dogs/labrador/wet/sara-chicken-turkey.jpg',
 'FOOD', true, 2, 'labrador'),

('HUFT Sara Wholesome Classic Paneer & Veggies Wet Food',
 'Classic paneer and vegetables wet dog food.',
 299, 35,
 '/images/category/dogs/labrador/wet/sara-paneer-veggies.jpg',
 'FOOD', true, 2, 'labrador');


-- ─── =================---------------------------Labrador → Royal Canin ------------------───
INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed) 
VALUES

('Royal Canin Maxi Adult Dog Dry Food',
 'Complete nutrition for large breed adult dogs.',
 3160, 50,
 '/images/category/dogs/labrador/royal/rc-maxi.jpg',
 'FOOD', true, 3, 'labrador'),

('Royal Canin Veterinary Diet Hypoallergenic Dog Dry Food',
 'Special veterinary diet for dogs with food allergies.',
 8500, 30,
 '/images/category/dogs/labrador/royal/rc-hypoallergenic.jpg',
 'FOOD', true, 3, 'labrador'),

('Royal Canin Maxi Puppy Dog Dry Food',
 'Complete nutrition for large breed puppies.',
 3537, 40,
 '/images/category/dogs/labrador/royal/rc-maxi-puppy.jpg',
 'FOOD', true, 3, 'labrador'),

('Royal Canin Boxer Adult Dog Dry Food',
 'Breed-specific nutrition for Boxer dogs.',
 2604, 25,
 '/images/category/dogs/labrador/royal/rc-boxer.jpg',
 'FOOD', true, 3, 'labrador');


INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Pedigree Chicken And Vegetables Adult Dog Dry Food',
 'Complete nutrition with chicken and vegetables for adult dogs.',
 3354, 80,
 '/images/category/dogs/labrador/pedigree/pedigree-chicken-veg-adult.jpg',
 'FOOD', true, 3, 'labrador', 14, 3900),

('Pedigree Chicken And Milk Puppy Dog Dry Food',
 'Specially formulated dry food for puppies with chicken and milk.',
 2141, 75,
 '/images/category/dogs/labrador/pedigree/pedigree-chicken-milk-puppy.jpg',
 'FOOD', true, 3, 'labrador', 14, 2490),

('Pedigree 100% Vegetarian Puppy And Adult Veg Dog Dry Food',
 'Complete vegetarian dry food suitable for puppies and adult dogs.',
 4816, 60,
 '/images/category/dogs/labrador/pedigree/pedigree-veg-puppy-adult.jpg',
 'FOOD', true, 3, 'labrador', 14, 5600),

('Pedigree Chicken And Liver Chunks In Gravy Adult Dog Wet Food 70g',
 'Tasty wet food with chicken and liver chunks in gravy for adult dogs.',
 1305, 90,
 '/images/category/dogs/labrador/pedigree/pedigree-chicken-liver-wet.jpg',
 'FOOD', true, 3, 'labrador', 13, 1500);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Farmina N&D Pumpkin Chicken & Pomegranate Grain Free Adult Mini Dog Dry Food',
 'Grain free dry food with pumpkin, chicken and pomegranate for adult mini dogs.',
 2483, 60,
 '/images/category/dogs/labrador/farmina/farmina-nd-chicken-pom-mini.jpg',
 'FOOD', true, 3, 'labrador', 11, 2790),

('Farmina N&D Pumpkin Lamb & Blueberry Grain Free Adult Medium Maxi Dog Dry Food',
 'Grain free dry food with pumpkin, lamb and blueberry for adult medium to maxi dogs.',
 2640, 50,
 '/images/category/dogs/labrador/farmina/farmina-nd-lamb-blueberry-medium.jpg',
 'FOOD', true, 3, 'labrador', 18, 3220),

('Farmina N&D Pumpkin Chicken & Pomegranate Grain Free Adult Maxi Medium Dog Dry Food',
 'Grain free dry food with pumpkin, chicken and pomegranate for adult maxi medium dogs.',
 9935, 40,
 '/images/category/dogs/labrador/farmina/farmina-nd-chicken-pom-maxi.jpg',
 'FOOD', true, 3, 'labrador', 12, 11290);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Drools Optimum Performance Adult Dog Dry Food',
 'High performance dry food for adult dogs with optimum nutrition.',
 2790, 70,
 '/images/category/dogs/labrador/drools/drools-optimum-performance-adult.jpg',
 'FOOD', true, 3, 'labrador', 10, 3100),

('Drools Real Chicken & Chicken Liver Chunks In Gravy Adult Dog Wet Food',
 'Real chicken and chicken liver chunks in gravy wet food for adult dogs.',
 1822, 80,
 '/images/category/dogs/labrador/drools/drools-chicken-liver-wet.jpg',
 'FOOD', true, 3, 'labrador', 10, 2025),

('Drools 100% Vegetarian Puppy And Adult Dog Veg Dry Food All Life Stages',
 '100% vegetarian dry food suitable for puppies and adult dogs at all life stages.',
 3570, 55,
 '/images/category/dogs/labrador/drools/drools-veg-all-life-stages.jpg',
 'FOOD', true, 3, 'labrador', 15, 4200);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Bark Out Loud Collagen Protein Bar Chicken & Fish Treat For Dogs',
 'Collagen protein bar treat with chicken and fish for dogs.',
 72, 100,
 '/images/category/dogs/labrador/bol/bol-collagen-protein-bar.jpg',
 'FOOD', true, 3, 'labrador', 4, 75),

('Bark Out Loud Immunity Multi Vitamin Chew Stix For Dogs And Cats',
 'Vet approved multivitamin immunity chew stix for dogs and cats.',
 652, 90,
 '/images/category/dogs/labrador/bol/bol-immunity-chewstix.jpg',
 'FOOD', true, 3, 'labrador', 13, 750);
 
 
--  --=========================--  

INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Henlo Baked Chicken & Liver Adult And Puppy Dog Dry Food | 100% Human Grade',
 'Baked chicken and liver dry food for adult and puppy dogs. 100% human grade ingredients for all life stages.',
 3005, 60,
 '/images/category/dogs/germanshepherd/dry/henlo-baked-chicken-liver.jpg',
 'FOOD', true, 1, 'german shepherd', 22, 3839),

('Kennel Kitchen Air Dried Chicken And Mackerel Puppy & Adult Dog Dry Food All Life Stages',
 'Air dried chicken and mackerel dry food for puppies and adult dogs at all life stages.',
 311, 75,
 '/images/category/dogs/germanshepherd/dry/kennel-kitchen-air-dried-chicken-mackerel.jpg',
 'FOOD', true, 1, 'german shepherd', 22, 399);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Bruno\'s Wild Essentials Mackerel With Salmon & Vegetables Dog Wet Food',
 'Grain free wet food with mackerel, salmon and vegetables for dogs.',
 199, 80,
 '/images/category/dogs/germanshepherd/wet/brunos-mackerel-salmon-veg.jpg',
 'FOOD', true, 1, 'german shepherd', 0, NULL),

('Kennel Kitchen Lamb Chunks In Gravy Puppy & Adult Dog Wet Food All Life Stage',
 'Lamb chunks in gravy wet food for puppies and adult dogs at all life stages.',
 1152, 65,
 '/images/category/dogs/germanshepherd/wet/kennel-kitchen-lamb-chunks-gravy.jpg',
 'FOOD', true, 1, 'german shepherd', 20, 1440);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Royal Canin Maxi Puppy Dog Dry Food',
 'Vet approved complete nutrition dry food for large breed puppies.',
 3537, 50,
 '/images/category/dogs/germanshepherd/royal/rc-maxi-puppy.jpg',
 'FOOD', true, 1, 'german shepherd', 12, 4040),

('Royal Canin Mini Adult Dog Dry Food',
 'Vet approved complete nutrition dry food for mini breed adult dogs.',
 5461, 45,
 '/images/category/dogs/germanshepherd/royal/rc-mini-adult.jpg',
 'FOOD', true, 1, 'german shepherd', 18, 6660);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Pedigree Chicken And Vegetables Adult Dog Dry Food',
 'Complete nutrition with chicken and vegetables for adult dogs.',
 3354, 80,
 '/images/category/dogs/germanshepherd/pedigree/pedigree-chicken-veg-adult.jpg',
 'FOOD', true, 1, 'german shepherd', 14, 3900),

('Pedigree Chicken And Milk Puppy Dog Dry Food',
 'Specially formulated dry food for puppies with chicken and milk.',
 2191, 75,
 '/images/category/dogs/germanshepherd/pedigree/pedigree-chicken-milk-puppy.jpg',
 'FOOD', true, 1, 'german shepherd', 12, 2490);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Drools Optimum Performance Adult Dog Dry Food',
 'High performance dry food for adult dogs with optimum nutrition.',
 2790, 70,
 '/images/category/dogs/germanshepherd/drools/drools-optimum-performance-adult.jpg',
 'FOOD', true, 1, 'german shepherd', 10, 3100),

('Drools Real Chicken & Chicken Liver Chunks In Gravy Adult Dog Wet Food',
 'Real chicken and chicken liver chunks in gravy wet food for adult dogs.',
 1822, 80,
 '/images/category/dogs/germanshepherd/drools/drools-chicken-liver-wet.jpg',
 'FOOD', true, 1, 'german shepherd', 10, 2025);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Bark Out Loud Collagen Protein Bar Chicken & Fish Treat For Dogs',
 'Collagen protein bar treat with chicken and fish for dogs.',
 72, 100,
 '/images/category/dogs/germanshepherd/bol/bol-collagen-protein-bar.jpg',
 'FOOD', true, 1, 'german shepherd', 4, 75),

('Bark Out Loud Immunity Multi Vitamin Chew Stix For Dogs And Cats',
 'Vet approved multivitamin immunity chew stix for dogs and cats.',
 652, 90,
 '/images/category/dogs/germanshepherd/bol/bol-immunity-chewstix.jpg',
 'FOOD', true, 1, 'german shepherd', 13, 750);
 
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Drools Chicken And Egg Biscuit Dog Treats',
 'Tasty chicken and egg biscuit treats for dogs.',
 279, 100,
 '/images/category/dogs/pug/drools-chicken-egg-biscuit.jpg',
 'FOOD', true, 1, 'pug', 14, 325),

('Pedigree Chicken And Vegetables Adult Dog Dry Food 20kg And Intas Eazypet Dog Dewormer',
 'Pedigree adult dry food combo with Intas Eazypet dewormer tablet.',
 3777, 40,
 '/images/category/dogs/pug/pedigree-chicken-veg-intas-combo.jpg',
 'FOOD', true, 1, 'pug', 12, 4292),

('Bark Out Loud Immunity Multi Vitamin Chew Stix For Dogs And Cats',
 'Vet approved multivitamin immunity chew stix for dogs and cats.',
 652, 90,
 '/images/category/dogs/pug/bol-immunity-chewstix.jpg',
 'FOOD', true, 1, 'pug', 13, 750),

('Royal Canin Pug Adult Dog Dry Food',
 'Breed specific nutrition dry food for adult Pug dogs.',
 1602, 50,
 '/images/category/dogs/pug/rc-pug-adult.jpg',
 'FOOD', true, 1, 'pug', 18, 1950),

('Pedigree Chicken And Vegetables Adult Dog Dry Food',
 'Complete nutrition with chicken and vegetables for adult dogs.',
 3354, 80,
 '/images/category/dogs/pug/pedigree-chicken-veg-adult.jpg',
 'FOOD', true, 1, 'pug', 14, 3900),

('Lickicious Optima Chicken And Vegetable Adult Dog Dry Food',
 'Chicken and vegetable dry food for adult dogs.',
 474, 60,
 '/images/category/dogs/pug/lickicious-optima-chicken-veg.jpg',
 'FOOD', true, 1, 'pug', 5, 499),

('Purina Pro Plan Chicken Medium Breed Puppy Dog Dry Food New Improved Formula',
 'Improved formula chicken dry food for medium breed puppies.',
 9945, 30,
 '/images/category/dogs/pug/purina-proplan-chicken-medium-puppy.jpg',
 'FOOD', true, 1, 'pug', 15, 11700),

('Pedigree Chicken And Liver Chunks In Gravy Adult Dog Wet Food 70g',
 'Chicken and liver chunks in gravy wet food for adult dogs.',
 1320, 70,
 '/images/category/dogs/pug/pedigree-chicken-liver-wet.jpg',
 'FOOD', true, 1, 'pug', 12, 1500);
 
--  ===========================================================================
show tables;
select * from categories;
select * from products;

-- delete from products;
-- truncate products;

-- SET FOREIGN_KEY_CHECKS = 0;
-- TRUNCATE TABLE products;
-- SET FOREIGN_KEY_CHECKS = 1;


-- DELETE FROM categories
-- WHERE id BETWEEN 14 AND 17;

--  ===========================================================================

INSERT INTO categories (id, name) VALUES
(8,  'Vitamin Supplement'),
(9,  'Skin & Coat Supplement'),
(10, 'Joint Supplement'),
(11, 'Calcium Supplement'),
(12, 'Anti Anxiety'),
(13, 'Gut Supplement');


INSERT INTO categories (id, name, description) VALUES
(14, 'Jerky Treats',       'Air dried and jerky treats for dogs'),
(15, 'Biscuits & Cookies', 'Biscuit and cookie treats for dogs'),
(16, 'Bones & Chews',      'Bones and chew treats for dogs'),
(17, 'Creamy Treats',      'Creamy and lickable treats for dogs'),
(18, 'Dental Treats',      'Dental care treats for dogs'),
(19, 'Veg Treats',         'Vegetarian treats for dogs');

UPDATE categories SET description = 'Multivitamin and essential vitamin supplements for dogs and cats' WHERE id = 8;
UPDATE categories SET description = 'Skin and coat care supplements for healthy and shiny fur in dogs' WHERE id = 9;
UPDATE categories SET description = 'Joint care supplements for mobility and cartilage health in dogs' WHERE id = 10;
UPDATE categories SET description = 'Calcium supplements for strong bones and teeth in dogs' WHERE id = 11;
UPDATE categories SET description = 'Calming and stress relief supplements for anxious dogs' WHERE id = 12;
UPDATE categories SET description = 'Probiotic and digestive enzyme supplements for healthy gut in dogs' WHERE id = 13;


UPDATE products SET breed = 'golden retriever' WHERE id BETWEEN 1 AND 32;


--  ===========================================================================

INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Intas Zipvit Multi Vitamin Supplement For Dogs And Cats 200ml',
 'Vet approved multivitamin supplement for dogs and cats.',
 259, 80,
 '/images/category/dogs/essentials/supplements/vitamin/intas-zipvit.jpg',
 'FOOD', true, 8, 'all', 6, 275),

('Mankind Multistar Chew Tablets Multivitamin Supplement For Dogs And Cats Pack Of 30',
 'Multivitamin chew tablets supplement for dogs and cats pack of 30 tablets.',
 437, 70,
 '/images/category/dogs/essentials/supplements/vitamin/mankind-multistar.jpg',
 'FOOD', true, 8, 'all', 3, 450);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('My Beau Vet Collection Skin & Hair Food Supplement For Dogs And Cats 300ml',
 'Vet collection skin and hair food supplement for healthy coat in dogs and cats.',
 1782, 50,
 '/images/category/dogs/essentials/supplements/skin-coat/mybeau-skin-hair.jpg',
 'FOOD', true, 9, 'all', 12, 2025),

('Bark Out Loud Skin & Coat Sardine Oil For Dogs And Cats 200ml',
 'Sardine oil supplement for healthy skin and coat in dogs and cats.',
 320, 80,
 '/images/category/dogs/essentials/supplements/skin-coat/bol-sardine-oil.jpg',
 'FOOD', true, 9, 'all', 20, 400);
 
 

INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Natural Remedies Orthoron Joint Supplement Tablets For Dogs And Cats',
 'Joint supplement tablets with natural remedies for dogs and cats.',
 478, 60,
 '/images/category/dogs/essentials/supplements/joint/natural-remedies-orthoron.jpg',
 'FOOD', true, 10, 'all', 13, 550),

('Beaphar HD Hip Dysplasia & Joint Problems Supplement Tablets For Dogs',
 'Hip dysplasia and joint problems supplement tablets for dogs.',
 842, 45,
 '/images/category/dogs/essentials/supplements/joint/beaphar-hd-joint.jpg',
 'FOOD', true, 10, 'all', 14, 980);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Vetoquinol Merical Pet Briskit DS Calcium Supplement For Dogs And Cats',
 'Calcium supplement tablets for strong bones and teeth in dogs and cats.',
 363, 70,
 '/images/category/dogs/essentials/supplements/calcium/vetoquinol-merical-pet.jpg',
 'FOOD', true, 11, 'all', 7, 390);


INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Cure By Design 500mg CBD Relief Oil For Dogs And Cats 30ml',
 'CBD relief oil for calming and anti anxiety in dogs and cats.',
 1700, 40,
 '/images/category/dogs/essentials/supplements/anti-anxiety/cure-by-design-cbd-oil.jpg',
 'FOOD', true, 12, 'all', 15, 2000);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Himalaya Digestive Stimulant Digyton Plus Syrup For Dogs And Cats 100ml',
 'Digestive stimulant syrup for healthy gut and digestion in dogs and cats.',
 209, 75,
 '/images/category/dogs/essentials/supplements/gut/himalaya-digyton-plus.jpg',
 'FOOD', true, 13, 'all', 14, 243);
 
 
--  ===========================================================================

INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Henlo High Protein Air Dried Chicken Jerky Dog Treats',
 '100% chicken grain free air dried chicken jerky treats for dogs.',
 969, 80,
 '/images/category/dogs/essentials/treats/jerky/henlo-chicken-jerky.jpg',
 'FOOD', true, 14, 'all', 43, 1700);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Pedigree Chicken Flavour Biscrok Dog Biscuits Dog Treats 500g',
 'Chicken flavour biscuit dog treats for dogs.',
 510, 85,
 '/images/category/dogs/essentials/treats/biscuits-cookies/pedigree-biscrok-chicken.jpg',
 'FOOD', true, 15, 'all', 15, 600);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Drools Absolute Calcium Bone Pouch For Dogs 190g',
 'Calcium milk bone treats for strong bones and teeth in dogs.',
 687, 75,
 '/images/category/dogs/essentials/treats/bones-chews/drools-calcium-bone-pouch.jpg',
 'FOOD', true, 16, 'all', 14, 799);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Woof & Brew Ice Paw Pops Dog Treat 300g',
 'Ice paw pops creamy frozen treats for dogs.',
 347, 60,
 '/images/category/dogs/essentials/treats/creamy/woof-brew-ice-paw-pops.jpg',
 'FOOD', true, 17, 'all', 12, 395);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Bark Out Loud By Vivaldis Grain Free Chicken Dental Chews Dog Treats 100g',
 'Grain free chicken dental chews for healthy teeth and gums in dogs.',
 222, 90,
 '/images/category/dogs/essentials/treats/dental/bol-grain-free-chicken-dental-chews.jpg',
 'FOOD', true, 18, 'all', 11, 250);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Purepet 100% Vegeterian Biscuit Dog Treats 800g',
 '100% vegetarian biscuit treats for dogs.',
 282, 90,
 '/images/category/dogs/essentials/treats/veg/purepet-veg-biscuit.jpg',
 'FOOD', true, 19, 'all', 6, 300);
 -- =================================baked ===========================================
 select* from products;
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Henlo High Protein Air Dried Chicken Strips Dog Treats',
 'High protein air dried chicken strips dog treats. No added preservatives. Available in 7x70g, 5x70g, 3x70g, 2x70g and 70g packs.',
 1337, 80,
 '/images/category/dogs/essentials/baked/henlo-chicken-strips.jpg',
 'FOOD', true, 20, 'all', 44, 2380);
 
 UPDATE products
SET image_url = '/images/category/dogs/essentials/baked/henlo/henlo-chicken-strips.jpg'
WHERE id = 132;
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Henlo High Protein Air Dried Chicken Strips Dog Treats',
 'High protein air dried chicken strips dog treats. No added sugar, grain free.',
 1325, 70,
 '/images/category/dogs/essentials/baked/newlaunch/henlo-chicken-strips.jpg',
 'FOOD', true, 21, 'all', 44, 2360);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Henlo Baked Chicken & Rice Adult And Puppy Gluten Free Dog Dry Food 100% Human Grade',
 'Baked chicken and rice gluten free dry food for adult and puppy dogs. 100% human grade clean ingredients.',
 2953, 60,
 '/images/category/dogs/essentials/baked/dry/henlo-baked-chicken-rice.jpg',
 'FOOD', true, 22, 'all', 25, 3922);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Henlo Everyday Topper For Home Cooked Food Pre & Probiotic Supplements For Dogs',
 'Everyday nutrition topper for home cooked food with pre and probiotic supplements for dogs.',
 1049, 75,
 '/images/category/dogs/essentials/baked/nutrition/henlo-everyday-topper.jpg',
 'FOOD', true, 23, 'all', 25, 1398);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Henlo Chicken & Vegetable Baked Dry Food For Adult Dogs 100% Human Grade 100g',
 'Baked dry food for healthier and happier adult dogs. 100% human grade chicken and vegetables.',
 120, 90,
 '/images/category/dogs/essentials/baked/trialpack/henlo-chicken-veg-baked-trial.jpg',
 'FOOD', true, 24, 'all', 0, NULL);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Henlo Chicken & Vegetable And Chicken & Egg Baked Dry Food For Adult Dogs Combo',
 'Combo pack of chicken and vegetable and chicken and egg baked dry food for adult dogs.',
 7179, 45,
 '/images/category/dogs/essentials/baked/exclusive/henlo-chicken-veg-egg-combo.jpg',
 'FOOD', true, 25, 'all', 26, 9700);
 
 -- ==================================================================
select * from products;
 select * from categories;
 
 -- Baked sub-categories
INSERT INTO categories (id, name, description) VALUES
(20, 'Baked Henlo',          'Henlo baked dog food'),
(21, 'Baked New Launch',     'New launch baked dog food'),
(22, 'Baked Dry',            'Baked dry dog food'),
(23, 'Baked Nutrition',      'Nutrition topper baked dog food'),
(24, 'Baked Trial Pack',     'Trial pack baked dog food'),
(25, 'Baked Exclusive',      'Exclusive combo baked dog food');

-- Fresh sub-categories
INSERT INTO categories (id, name, description) VALUES
(26, 'Fresh Homie Ginger',   'Homie and Ginger fresh dog food'),
(27, 'Fresh Huft',           'Huft fresh dog food'),
(28, 'Fresh Doggs',          'Doggs fresh dog food'),
(29, 'Fresh Bennys Bowl',    'Bennys Bowl fresh dog food'),
(30, 'Fresh New Launch',     'New launch fresh dog food'),
(31, 'Fresh For Paws',       'Fresh for paws dog food');

-- Premium sub-categories
INSERT INTO categories (id, name, description) VALUES
(32, 'Premium Dry',          'Premium dry dog food'),
(33, 'Premium Wet',          'Premium wet dog food'),
(34, 'Premium New Launch',   'New launch premium dog food'),
(35, 'Premium Pedigree Pro', 'Pedigree Pro premium dog food'),
(36, 'Premium Adult',        'Premium adult dog food'),
(37, 'Premium Royal Canin',  'Royal Canin premium dog food');
 
 
 -- ======================fresh food products========================= -- 
 select * from products;
 select * from categories;
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Homiee & Ginger Grain Free Air Dried Puppy & Adult Dog Dry Food 907g',
 'Grain free air dried dry food for puppy and adult dogs.',
 899, 65,
 '/images/category/dogs/essentials/fresh/homie&ginger/homiee-ginger-grain-free-air-dried.jpg',
 'FOOD', true, 26, 'all', 10, 999);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('HUFT Sara\'s Wholesome Grain Free Lamb & Apple Dog Wet Food 300g',
 'Wholesome grain free lamb and apple wet food for dogs.',
 389, 70,
 '/images/category/dogs/essentials/fresh/huft/huft-saras-lamb-apple-wet.jpg',
 'FOOD', true, 27, 'all', 0, NULL);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Doggs Jumbo Monster Chicken And Pumpkin Fresh Dog Wet Food All Breeds 30x200g',
 'Jumbo monster chicken and pumpkin fresh wet food for all breed dogs. Pack of 30 meals.',
 3358, 40,
 '/images/category/dogs/essentials/fresh/doggs/doggs-jumbo-monster-chicken-pumpkin.jpg',
 'FOOD', true, 28, 'all', 15, 3950);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Bennys Bowl Lamb And French Beans Dog Fresh And Wet Food 100g',
 'Grain free lamb and french beans fresh and wet food for dogs.',
 119, 80,
 '/images/category/dogs/essentials/fresh/bennysbowl/bennys-bowl-lamb-french-beans.jpg',
 'FOOD', true, 29, 'all', 8, 130);


INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Homiee & Ginger Power Bowl Chicken & Barley Fresh Food For Dogs 10x200g',
 'Power bowl chicken and barley fresh food for dogs. Protein cooked and ready to serve.',
 1791, 55,
 '/images/category/dogs/essentials/fresh/newlaunch/homiee-ginger-power-bowl.jpg',
 'FOOD', true, 30, 'all', 10, 1990);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Fresh For Paws Go Go Cottage Cheese Dog Wet Food 100g',
 'Grain free cottage cheese wet food for dogs.',
 115, 85,
 '/images/category/dogs/essentials/fresh/freshpaws/fresh-for-paws-cottage-cheese.jpg',
 'FOOD', true, 31, 'all', 8, 125);
 
 -- =============================================premium==================================================== 
 
 select * from products;
 select * from categories;
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Fidele Plus Large Puppy Dry Food 1kg',
 'Premium dry food for large breed puppies.',
 698, 60,
 '/images/category/dogs/essentials/premium/dry/fidele-plus-large-puppy.jpg',
 'FOOD', true, 32, 'all', 10, 775);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Royal Canin Maxi Adult Dog Wet Food 10x140g',
 'Vet approved premium wet food for maxi adult dogs.',
 2801, 45,
 '/images/category/dogs/essentials/premium/wet/royal-canin-maxi-adult-wet.jpg',
 'FOOD', true, 33, 'all', 13, 3220);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Kennel Kitchen Chicken With Superfoods Pumpkin And Turmeric Adult Dog Dry Food 9kg',
 'Premium chicken with superfoods pumpkin and turmeric dry food for adult dogs.',
 1527, 55,
 '/images/category/dogs/essentials/premium/newlaunch/kennel-kitchen-chicken-pumpkin-turmeric.jpg',
 'FOOD', true, 34, 'all', 15, 1797);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Pedigree PRO Expert Nutrition Active Adult 18 Months Onwards Large Breed Dog Dry Food',
 'Expert nutrition dry food for active adult large breed dogs 18 months and onwards.',
 1147, 65,
 '/images/category/dogs/essentials/premium/pedigree/pedigree-pro-expert-nutrition-large-breed.jpg',
 'FOOD', true, 35, 'all', 6, 1220);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Royal Canin Maxi Adult Dog Dry Food 4kg',
 'Vet approved premium dry food for maxi adult dogs.',
 3177, 50,
 '/images/category/dogs/essentials/premium/adult/royal-canin-maxi-adult-dry.jpg',
 'FOOD', true, 36, 'all', 12, 3610);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Royal Canin Mini Adult Dog Dry Food 8kg',
 'Vet approved premium dry food for mini adult dogs.',
 5861, 40,
 '/images/category/dogs/essentials/premium/royal/royal-canin-mini-adult-dry.jpg',
 'FOOD', true, 37, 'all', 12, 6660);
 
 
 -- ====================================fashion==================================================
 select * from categories;
 select * from products;
 
-- Boots & Socks sub-categories
INSERT INTO categories (id, name, description) VALUES
(38, 'Boots Tshirts Shirts',   'Tshirts and shirts for dogs boots section'),
(39, 'Boots Printed Clothing', 'Printed clothing for dogs boots section'),
(40, 'Boots Cooling Vests',    'Cooling vests and bandana for dogs'),
(41, 'Boots 100% Cotton',      '100% cotton wear for dogs');
 
 
 -- Clothes & Costumes sub-categories
INSERT INTO categories (id, name, description) VALUES
(42, 'Clothes Tshirts',    'Tshirts for dogs'),
(43, 'Clothes Socks',      'Socks for dogs'),
(44, 'Clothes Jewellery',  'Jewellery for dogs'),
(45, 'Clothes Lint Roller','Lint roller for dogs');
 
 -- Chew Toys sub-categories
INSERT INTO categories (id, name, description) VALUES
(46, 'Chew Toys',          'Chew toys for dogs'),
(47, 'Interactive Toys',   'Interactive toys for dogs'),
(48, 'Ball & Fetch Toys',  'Ball and fetch toys for dogs'),
(49, 'Electronic Toys',    'Electronic toys for dogs'),
(50, 'Soft Toys',          'Soft toys for dogs');
 
 -- Shampoo & Conditioner sub-categories
INSERT INTO categories (id, name, description) VALUES
(51, 'Shampoo & Conditioner', 'Shampoo and conditioner for dogs'),
(52, 'Anti Tick & Flea',      'Anti tick and flea shampoo for dogs'),
(53, 'Dry Shampoo',           'Dry shampoo for dogs'),
(54, 'Wipes Towels',          'Wipes and towels for dogs');

-- Harnesses & Belts sub-categories
INSERT INTO categories (id, name, description) VALUES
(55, 'Dog Collars',        'Dog collars for dogs'),
(56, 'Cat Collars',        'Cat collars for cats'),
(57, 'Puppy Accessories',  'Puppy accessories for dogs'),
(58, 'Leashes',            'Leashes for dogs'),
(59, 'Harnesses',          'Harnesses for dogs');


-- Diapers & Cleaning sub-category
INSERT INTO categories (id, name, description) VALUES
(60, 'Diapers & Cleaning', 'Diapers and cleaning products for dogs');
 
 -- Ethnic Wear sub-categories
INSERT INTO categories (id, name, description) VALUES
(61, 'Ethnic Kurta',    'Kurta ethnic wear for dogs'),
(62, 'Ethnic Sherwani', 'Sherwani ethnic wear for dogs'),
(63, 'Ethnic Dresses',  'Dresses ethnic wear for dogs'),
(64, 'Ethnic Tuxedo',   'Tuxedo ethnic wear for dogs');
 
 
 -- Beds sub-categories
INSERT INTO categories (id, name, description) VALUES
(65, 'Beds',                'Beds for dogs'),
(66, 'Cushions & Blankets', 'Cushions and blankets for dogs'),
(67, 'Mats',                'Mats for dogs'),
(68, 'Elevated Beds',       'Elevated beds for dogs');



INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Truelove Reflective Waterproof And TPR Sole Shoes For Dogs Pinecone Glazed Ginger',
 'Reflective waterproof shoes with TPR sole for dogs. Available in multiple sizes.',
 2655, 50,
 '/images/category/dogs/fashion/boots/tshirts-shirts/truelove-reflective-waterproof-shoes.jpg',
 'ECOMMERCE', true, 38, 'all', 10, 2950);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('15buttons Paws-Tive Love Shirt For Dogs',
 'Paws and love print shirt for dogs. Available in multiple sizes.',
 719, 65,
 '/images/category/dogs/fashion/boots/tshirts-shirts/15buttons-paws-tive-love-shirt.jpg',
 'ECOMMERCE', true, 38, 'all', 55, 1598);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('15 Furries Kitty Dreams Shirt For Cats Multicolour',
 'Kitty dreams multicolour printed shirt for cats.',
 449, 70,
 '/images/category/dogs/fashion/boots/printed-clothing/15furries-kitty-dreams-shirt.jpg',
 'ECOMMERCE', true, 39, 'all', 55, 998);
 
INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Pawgypets Christmas Bandana For Dogs And Cats',
 'Christmas themed bandana for dogs and cats.',
 399, 80,
 '/images/category/dogs/fashion/boots/cooling-vests/pawgypets-christmas-bandana.jpg',
 'ECOMMERCE', true, 40, 'all', 0, NULL);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Pet Set Go Pooh Cotton Shirt For Dogs Red',
 '100% cotton Pooh print shirt for dogs. Available in multiple sizes.',
 750, 60,
 '/images/category/dogs/fashion/boots/cotton/pet-set-go-pooh-cotton-shirt.jpg',
 'ECOMMERCE', true, 41, 'all', 0, NULL);
 
 
 --  --------------------------------------------------------------
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Hoomans Anti Social Dog Moms Club T Shirt For Women Powder Blue',
 'Anti social dog moms club printed t shirt for women in powder blue.',
 1632, 55,
 '/images/category/dogs/fashion/clothes/tshirts/hoomans-anti-social-dog-moms-tshirt.jpg',
 'ECOMMERCE', true, 42, 'all', 20, 2040);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('SocksXpress Looney Tunes Cartoon Lowcut Socks For Women Pack Of 3',
 'Looney Tunes cartoon lowcut socks for women pack of 3.',
 539, 80,
 '/images/category/dogs/fashion/clothes/socks/socksxpress-looney-tunes-socks.jpg',
 'ECOMMERCE', true, 43, 'all', 10, 599);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Jenni & Janki Handcrafted Miyuki Sun Bee Earrings',
 'Handcrafted miyuki sun bee earrings for dog lovers.',
 810, 60,
 '/images/category/dogs/fashion/clothes/jewellery/jenni-janki-miyuki-sun-bee-earrings.jpg',
 'ECOMMERCE', true, 44, 'all', 10, 900);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Basil Lint Roller For Dogs And Cats Green 60 Sheets',
 'Lint roller for removing pet hair from clothes and furniture. 60 sheets.',
 225, 90,
 '/images/category/dogs/fashion/clothes/lint-roller/basil-lint-roller-green.jpg',
 'ECOMMERCE', true, 45, 'all', 10, 250);
 
 
 UPDATE products
SET brand = CASE
    WHEN name LIKE 'Truelove%' THEN 'Truelove'
    WHEN name LIKE '15buttons%' THEN '15buttons'
    WHEN name LIKE '15 Furries%' THEN '15 Furries'
    WHEN name LIKE 'Pawgypets%' THEN 'Pawgypets'
    WHEN name LIKE 'Pet Set Go%' THEN 'Pet Set Go'
    WHEN name LIKE 'Hoomans%' THEN 'Hoomans'
    WHEN name LIKE 'SocksXpress%' THEN 'SocksXpress'
    WHEN name LIKE 'Jenni & Janki%' THEN 'Jenni & Janki'
    WHEN name LIKE 'Basil%' THEN 'Basil'
END
WHERE category_id IN (38,39,40,41,42,43,44,45);
 
 
-- ---------------------------------------------- ------------------------

select * from products;
select * from categories;

INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Skatrs Dummy Knotted Rope Chew Toy For Dogs And Cats Pink Green 18cm',
 'Dummy knotted rope chew toy for dogs and cats in pink and green color.',
 99, 100,
 '/images/category/dogs/fashion/chewtoys/chew-toys/skatrs-dummy-knotted-rope.jpg',
 'ECOMMERCE', true, 46, 'all', 50, 199);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Barkbutler X Fofos Cuddle Bear Heart Beat Toy For Dogs For Medium Chewers Brown 27x13.5cm',
 'Cuddle bear heart beat interactive toy for medium chewer dogs.',
 1259, 50,
 '/images/category/dogs/fashion/chewtoys/interactive/barkbutler-fofos-cuddle-bear.jpg',
 'ECOMMERCE', true, 47, 'all', 10, 1399);

INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Drools Non Toxic Rubber Hole Ball Teething Toy For Puppies And Dogs For Aggressive Chewers 3in',
 'Non toxic rubber hole ball teething toy for puppies and dogs. Safe for aggressive chewers.',
 169, 85,
 '/images/category/dogs/fashion/chewtoys/ball-fetch/drools-rubber-hole-ball.jpg',
 'ECOMMERCE', true, 48, 'all', 15, 199);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Talking Dog Club Flashing Light Collar For Dogs Yellow 70cm',
 'Flashing light LED collar for dogs for night visibility and safety.',
 1061, 65,
 '/images/category/dogs/fashion/chewtoys/electronic/talking-dog-club-flashing-collar.jpg',
 'ECOMMERCE', true, 49, 'all', 40, 1769);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Goofy Tails Food Buddies Pizza Slice Plush Toy For Dogs For Soft Chewers Yellow 15x12cm',
 'Food buddies pizza slice plush soft toy for soft chewer dogs.',
 270, 75,
 '/images/category/dogs/fashion/chewtoys/soft-toys/goofy-tails-pizza-slice-plush.jpg',
 'ECOMMERCE', true, 50, 'all', 10, 300);
 
 UPDATE products
SET brand = CASE
    WHEN name LIKE 'Skatrs%' THEN 'Skatrs'
    WHEN name LIKE 'Barkbutler%' THEN 'Barkbutler'
    WHEN name LIKE 'Drools%' THEN 'Drools'
    WHEN name LIKE 'Talking Dog Club%' THEN 'Talking Dog Club'
    WHEN name LIKE 'Goofy Tails%' THEN 'Goofy Tails'
END
WHERE category_id IN (46,47,48,49,50);
 
 -- ----------------------------------------------------
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Himalaya Erina Shampoo & Conditioner For Puppies 200ml',
 'Puppy shampoo and conditioner for gentle cleansing and conditioning.',
 273, 80,
 '/images/category/dogs/fashion/shampoo/shampoo-conditioner/himalaya-erina-shampoo-conditioner.jpg',
 'ECOMMERCE', true, 51, 'all', 7, 294);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Virbac Clinar M Anti Tick & Flea And Antifungal Shampoo For Dogs 200ml',
 'Medicated anti tick and flea antifungal shampoo for dogs.',
 295, 70,
 '/images/category/dogs/fashion/shampoo/anti-tick-flea/virbac-clinar-m-anti-tick-flea.jpg',
 'ECOMMERCE', true, 52, 'all', 2, 301);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Natural Remedies Fresh Me Up Bloom Dry Shampoo For Dogs And Cats 160ml',
 'Dry shampoo spray for dogs and cats for fresh and clean coat.',
 256, 75,
 '/images/category/dogs/fashion/shampoo/dry-shampoo/natural-remedies-fresh-me-up-dry-shampoo.jpg',
 'ECOMMERCE', true, 53, 'all', 10, 285);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Skatrs Antibacterial Cleaning Wipes For Dogs And Cats 30pcs',
 'Antibacterial cleaning wipes for dogs and cats.',
 99, 100,
 '/images/category/dogs/fashion/shampoo/wipes-towels/skatrs-antibacterial-cleaning-wipes.jpg',
 'ECOMMERCE', true, 54, 'all', 93, 1499);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Skatrs Adjustable Collar For Dogs Red',
 'Adjustable collar for dogs available in multiple neck sizes.',
 249, 90,
 '/images/category/dogs/fashion/harness/dog-collars/skatrs-adjustable-collar-red.jpg',
 'ECOMMERCE', true, 55, 'all', 64, 699);

INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Basil Printed Collar For Cats & Puppies Purple 18-28cm',
 'Printed collar for cats and puppies in purple color.',
 113, 85,
 '/images/category/dogs/fashion/harness/cat-collars/basil-printed-collar-cats-puppies.jpg',
 'ECOMMERCE', true, 56, 'all', 10, 125);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Skatrs Adjustable Collar With Bell For Cats & Kittens Buy 1 Get 1 Pack of 2',
 'Adjustable collar with bell for cats and kittens. Buy 1 get 1 free pack of 2.',
 119, 100,
 '/images/category/dogs/fashion/harness/puppy-accessories/skatrs-adjustable-collar-bell-cats.jpg',
 'ECOMMERCE', true, 57, 'all', 40, 199);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Glucklich Heavy Duty Leash For Dogs Black 25mm Width',
 'Heavy duty leash for dogs available in multiple width sizes.',
 383, 70,
 '/images/category/dogs/fashion/harness/leashes/glucklich-heavy-duty-leash-black.jpg',
 'ECOMMERCE', true, 58, 'all', 15, 450);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Truelove Escape Proof Harness For Dogs Pool Blue',
 'Escape proof harness for dogs in pool blue color. Available in multiple sizes.',
 4050, 45,
 '/images/category/dogs/fashion/harness/harnesses/truelove-escape-proof-harness-blue.jpg',
 'ECOMMERCE', true, 59, 'all', 10, 4500);
 
 
 UPDATE products
SET brand = CASE
    WHEN name LIKE 'Himalaya%' THEN 'Himalaya'
    WHEN name LIKE 'Virbac%' THEN 'Virbac'
    WHEN name LIKE 'Natural Remedies%' THEN 'Natural Remedies'
    WHEN name LIKE 'Skatrs%' THEN 'Skatrs'
    WHEN name LIKE 'Basil%' THEN 'Basil'
    WHEN name LIKE 'Glucklich%' THEN 'Glucklich'
    WHEN name LIKE 'Truelove%' THEN 'Truelove'
END
WHERE category_id IN (51,52,53,54,55,56,57,58,59);
 
 -- ==================================diapers category 60===============
 select * from products;
 select * from categories;
 
 ALTER TABLE products DROP COLUMN brand;
 ALTER TABLE products ADD COLUMN brand VARCHAR(255);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Simple Solution Stain & Odor Remover Spray For Dogs 500ml',
 'Stain and odor remover spray for dogs.',
 833, 60,
 '/images/category/dogs/fashion/diapers/simple-solution-stain-odor.jpg',
 'ECOMMERCE', true, 60, 'all', 10, 925),

('Odo Rite Pet Area Cleaner With Odour Neutralizer 500ml',
 'Pet area cleaner with odour neutralizer.',
 380, 75,
 '/images/category/dogs/fashion/diapers/odo-rite-pet-area-cleaner.jpg',
 'ECOMMERCE', true, 60, 'all', 20, 475),

('Nature\'s Miracle Orange Oxy Stain And Odor Remover For Dogs 709ml',
 'Orange oxy stain and odor remover for dogs.',
 1166, 45,
 '/images/category/dogs/fashion/diapers/natures-miracle-orange-oxy.jpg',
 'ECOMMERCE', true, 60, 'all', 12, 1325),

('Born Good Plant Based Turkish Applewood Fragrance Disinfecting Liquid 5L',
 'Plant based turkish applewood fragrance disinfecting liquid.',
 1123, 40,
 '/images/category/dogs/fashion/diapers/born-good-disinfecting-liquid.jpg',
 'ECOMMERCE', true, 60, 'all', 18, 1369);
 
 
 UPDATE products
SET brand = CASE
    WHEN name LIKE 'Simple Solution%' THEN 'Simple Solution'
    WHEN name LIKE 'Odo Rite%' THEN 'Odo Rite'
    WHEN name LIKE 'Nature''s Miracle%' THEN 'Nature''s Miracle'
    WHEN name LIKE 'Born Good%' THEN 'Born Good'
END
WHERE category_id = 60;
 -- ========================================================
 
 UPDATE products 
SET image_url = REPLACE(image_url, '/images/category/dog/', '/images/category/dogs/')
WHERE image_url LIKE '/images/category/dog/%';
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('15 Furries Rangeela Kurta For Dogs',
 'Rangeela printed kurta for dogs. Available in multiple sizes.',
 629, 70,
 '/images/category/dogs/fashion/ethnic/kurta/15furries-rangeela-kurta.jpg',
 'ECOMMERCE', true, 61, 'all', 55, 1396);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Skatrs Brocade Gold Printed Sherwani For Dogs And Cats Yellow',
 'Brocade gold printed sherwani for dogs and cats. Available in multiple sizes.',
 599, 65,
 '/images/category/dogs/fashion/ethnic/sherwani/sherwani.jpg',
 'ECOMMERCE', true, 62, 'all', 70, 1999);
 

 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('15 Furries Fruits Tropical Printed Cotton Shirts For Dogs',
 'Fruits tropical printed cotton shirts for dogs. Available in multiple sizes.',
 699, 60,
 '/images/category/dogs/fashion/ethnic/dresses/15furries-fruits-tropical-printed-shirt.jpg',
 'ECOMMERCE', true, 63, 'all', 50, 1399);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Dogobow Tuxedo Suit For Dogs And Cats Black Get A Bow Free',
 'Tuxedo suit for dogs and cats in black color with free bow.',
 1260, 55,
 '/images/category/dogs/fashion/ethnic/tuxedo/dogobow-tuxedo-suit-black.jpg',
 'ECOMMERCE', true, 64, 'all', 28, 1750);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Fluffy\'s Luxurious Reversible Bed For Dogs And Cats Beige',
 'Luxurious reversible bed for dogs and cats in beige color.',
 1899, 50,
 '/images/category/dogs/fashion/beds/beds/fluffys-luxurious-reversible-bed-beige.jpg',
 'ECOMMERCE', true, 65, 'all', 46, 3499);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Talking Dog Club Bone Print Viscose Blanket For Dogs Yellow And Grey Bone 100x120cm',
 'Bone print viscose blanket for dogs in yellow and grey bone color.',
 1999, 60,
 '/images/category/dogs/fashion/beds/cushions-blankets/talking-dog-club-bone-print-blanket.jpg',
 'ECOMMERCE', true, 66, 'all', 5, 2099);
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Petter World Multipurpose Breathable Summer Mat For Dogs Brown Stripes',
 'Multipurpose breathable summer mat for dogs in brown stripes.',
 1199, 55,
 '/images/category/dogs/fashion/beds/mats/petter-world-breathable-summer-mat.jpg',
 'ECOMMERCE', true, 67, 'all', 10, 1332);
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES
('Skatrs Black Elevated Bed & Barkbutler X Fofos Glove Plush Fox Toy Dog Combo',
 'Black elevated bed combo with Barkbutler X Fofos glove plush fox toy for dogs.',
 2098, 40,
 '/images/category/dogs/fashion/beds/elevated-beds/skatrs-black-elevated-bed-combo.jpg',
 'ECOMMERCE', true, 68, 'all', 52, 4329);
 
 UPDATE products
SET brand = CASE
    WHEN name LIKE '15 Furries%' THEN '15 Furries'
    WHEN name LIKE 'Skatrs%' THEN 'Skatrs'
    WHEN name LIKE 'Dogobow%' THEN 'Dogobow'
    WHEN name LIKE 'Fluffy''s%' THEN 'Fluffy''s'
    WHEN name LIKE 'Talking Dog Club%' THEN 'Talking Dog Club'
    WHEN name LIKE 'Petter World%' THEN 'Petter World'
END
WHERE category_id IN (61,62,63,64,65,66,67,68);
 
 -- ===================================================================== healt====================================================
 select * from categories;
 select * from products;
 
 INSERT INTO categories (id, name, description) VALUES
(69, 'Skincare',   'Skin care products for dogs'),
(70, 'Dewormer',   'Deworming products for dogs'),
(71, 'Tick & Flea','Tick and flea control products'),
(72, 'Joint Care', 'Joint health supplements for dogs'),
(73, 'Kidney Care','Kidney care products for dogs'),
(74, 'Cardiac',    'Heart care products for dogs'),
(75, 'Combos',     'Healthcare combo products for dogs');
 
 
 INSERT INTO products 
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price) 
VALUES

-- 1. Intas Kiskin Lotion
('Intas Kiskin Lotion For Dogs And Cats',
 'Antifungal and antibacterial skin lotion for dogs and cats. Helps treat skin infections.',
 90, 100,
 '/images/category/dogs/health/skin1.jpg',
 'ECOMMERCE', true, 69, 'all', 2, 92),

-- 2. Virbac Ketochlor Shampoo
('Virbac Ketochlor Shampoo Antifungal & Antiseptic For Dogs And Cats',
 'Medicated antifungal shampoo for treating skin infections and maintaining coat hygiene.',
 349, 80,
 '/images/category/dogs/health/skin2.jpg',
 'ECOMMERCE', true, 69, 'all', 2, 356);
 
 
 INSERT INTO products
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price)
VALUES

('Drontal Plus Tasty Dog Deworming Tablet (Pack Of 6 Tablets)',
 'Broad-spectrum dewormer for dogs. Kills roundworms, hookworms and tapeworms. Tasty bone-shaped tablet.',
 796, 150,
 '/images/category/dogs/health/dewormer1.jpg',
 'ECOMMERCE', true, 70, 'all', 5, 838),

('Intas Eazypet Dog Deworming Tablet (Pack Of 10 Tablets)',
 'Contains Praziquantel, Pyrantel Pamoate and Fenbendazole. Effective against all major worm types.',
 368, 200,
 '/images/category/dogs/health/dewormer2.jpg',
 'ECOMMERCE', true, 70, 'all', 6, 392);
 
 INSERT INTO products
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price)
VALUES

('MSD Animal Health Bravecto (Fluralaner) Dog Tick & Flea Control Tablet (1 Tablet)',
 'Fluralaner 1000mg chewable tablet. Provides up to 12 weeks protection against ticks and fleas. Vet approved.',
 1754, 100,
 '/images/category/dogs/health/tick1.jpg',
 'ECOMMERCE', true, 71, 'all', 15, 2063),

('Savavet Fiprofort Plus (Fipronil) Tick & Flea Control Spot On For Dogs',
 'Fipronil and S-methoprene spot-on solution. Kills ticks, fleas and eggs. Vet approved.',
 181, 150,
 '/images/category/dogs/health/tick2.jpg',
 'ECOMMERCE', true, 71, 'all', 8, 197);
 
 
 INSERT INTO products
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price)
VALUES

('Vivaldis Condrovet Force HA Joint Support Tablets For Dogs',
 'HA joint support tablets for dogs. Helps maintain healthy joints and cartilage. Vet approved.',
 590, 120,
 '/images/category/dogs/health/joint1.jpg',
 'ECOMMERCE', true, 72, 'all', 0, 590),

('Bayer Elanco Megaflex Powder',
 'Joint care powder supplement for dogs. Supports joint mobility and flexibility.',
 565, 100,
 '/images/category/dogs/health/joint2.jpg',
 'ECOMMERCE', true, 72, 'all', 1, 571);
 
 INSERT INTO products
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price)
VALUES

-- Kidney Care (category_id = 73)
('Virbac Pronefra Syrup For Dogs & Cats',
 'Supports normal kidney function in dogs and cats. Vet approved supplement for kidney care.',
 1940, 80,
 '/images/category/dogs/health/kidney1.jpg',
 'ECOMMERCE', true, 73, 'all', 3, 2000),

('Vivaldis CK Reno Tablet For Dogs (Pack Of 60 Tablets)',
 'Professional veterinary formula to support normal kidney function. For use in dogs only.',
 1552, 90,
 '/images/category/dogs/health/kidney2.jpg',
 'ECOMMERCE', true, 73, 'all', 3, 1600),

-- Cardiac (category_id = 74)
('Vetina Cardio Support Tablet For Dogs And Cats (Pack Of 30 Tablets)',
 'Cardiac care supplement for dogs and cats. Supports heart health. Vet approved.',
 713, 100,
 '/images/category/dogs/health/cardiac1.jpg',
 'ECOMMERCE', true, 74, 'all', 5, 750),

('Royal Canin Veterinary Diet Cardiac Dog Wet Food',
 'Exclusive veterinary diet wet food formulated for dogs with cardiac conditions.',
 650, 60,
 '/images/category/dogs/health/cardiac2.jpg',
 'ECOMMERCE', true, 74, 'all', 0, 650);
 
 
 INSERT INTO products
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price)
VALUES

('Intas Pomisol Ear Drops (15ml) And Virbac Epiotic Ear Cleanser For Dogs & Cats (50ml) Combo',
 'Combo pack of Pomisol ear drops and Virbac Epiotic ear cleanser. Complete ear care solution for dogs and cats.',
 190, 80,
 '/images/category/dogs/health/combo1.jpg',
 'ECOMMERCE', true, 75, 'all', 10, 211),

('MSD Animal Health Bravecto (20-40kg) Tablet Combo (2 Tablets)',
 'Fluralaner 1000mg chewable tablet combo pack of 2. Long-lasting tick and flea protection. Vet approved.',
 3383, 60,
 '/images/category/dogs/health/combo2.jpg',
 'ECOMMERCE', true, 75, 'all', 18, 4126);
 
 
 UPDATE products
SET brand = CASE
    WHEN name LIKE 'Intas%' THEN 'Intas'
    WHEN name LIKE 'Virbac%' THEN 'Virbac'
    WHEN name LIKE 'Drontal%' THEN 'Drontal'
    WHEN name LIKE 'MSD Animal Health%' THEN 'MSD Animal Health'
    WHEN name LIKE 'Savavet%' THEN 'Savavet'
    WHEN name LIKE 'Vivaldis%' THEN 'Vivaldis'
    WHEN name LIKE 'Bayer Elanco%' THEN 'Bayer Elanco'
    WHEN name LIKE 'Vetina%' THEN 'Vetina'
    WHEN name LIKE 'Royal Canin%' THEN 'Royal Canin'
END
WHERE category_id BETWEEN 69 AND 75;
 
 
 -- =====================================================petparent============================================
 
 select * from products;
 select * from categories;

describe products;
 ALTER TABLE products DROP COLUMN created_at;
 
 INSERT IGNORE INTO categories (id, name, description) VALUES
(76, 'Tshirts',         'Pet parent tshirts and clothing'),
(77, 'Key Chains',      'Pet themed key chains and keyrings'),
(78, 'Charms',          'Pet themed charms and jewellery'),
(79, 'Coasters',        'Pet themed coasters and home decor'),
(80, 'Accessories',     'Pet parent accessories and caps'),
(81, 'Mugs',            'Pet themed mugs and drinkware'),
(82, 'Pet-safe Plants', 'Plants that are safe for pets'),
(83, 'Everyday Carry',  'Pet parent everyday carry bags and accessories');
 
 
 INSERT INTO products
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price)
VALUES
(
  'Hoomans Anti Social Dog Moms Club T Shirt For Women (Powder Blue)',
  'Anti Social Dog Moms Club printed oversized t-shirt for women in powder blue color.',
  1632, 50,
  '/images/category/dogs/petparent/tshirt1.jpg',
  'ECOMMERCE', true, 76, 'all', 20, 2040
),
(
  'ThePack Indie Merch Home Oversized T Shirt For Men And Women (Lavender)',
  'Indie Merch Home oversized t-shirt for men and women in lavender color. Available in sizes S, M, L, XL.',
  722, 50,
  '/images/category/dogs/petparent/tshirt2.jpg',
  'ECOMMERCE', true, 76, 'all', 15, 849
);
 
 
 INSERT INTO products
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price)
VALUES
(
  'Talking Dog Club French Bulldog Hair Keepsake Capsule Key Chain',
  'French Bulldog hair keepsake capsule key chain by Talking Dog Club. Dimensions: 21.5x14.5cm.',
  299, 50,
  '/images/category/dogs/petparent/keychain1.jpg',
  'ECOMMERCE', true, 77, 'all', 15, 352
),
(
  'Furry Tales Ollie Snuggles Mom Acrylic Key Chain',
  'Ollie Snuggles Mom acrylic key chain by Furry Tales. Size: 2.5 inches.',
  350, 50,
  '/images/category/dogs/petparent/keychain1.jpg',
  'ECOMMERCE', true, 77, 'all', 0, 350
);

INSERT INTO products
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price)
VALUES
(
  'SocksXpress Limited Edition Pet Lover Themed Ankle Socks For Women (Pack Of 3)',
  'Limited edition pet lover themed ankle socks for women by SocksXpress. Pack of 3 pairs. Size: UK 4-7.',
  449, 50,
  '/images/category/dogs/petparent/charms1.jpg',
  'ECOMMERCE', true, 78, 'all', 10, 499
),
(
  'Talking Dog Club Leash Holder For Pets (Brown)',
  'Wooden leash holder for pets in brown by Talking Dog Club. Size: 21.5x14.5cm.',
  2025, 50,
  '/images/category/dogs/petparent/1charms2.jpg',
  'ECOMMERCE', true, 78, 'all', 10, 2250
);

INSERT INTO products
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price)
VALUES
(
  'Furry Tales Waffles Chick Handtufted Coaster',
  'Waffles Chick handtufted coaster by Furry Tales. Size: 5 inch diameter.',
  605, 50,
  '/images/category/dogs/petparent/coasters1.jpg',
  'ECOMMERCE', true, 79, 'all', 0, 605
),
(
  'Furry Tales Rusk Cat Handtufted Coaster',
  'Rusk Cat handtufted coaster by Furry Tales. Size: 5 inch diameter.',
  605, 50,
  '/images/category/dogs/petparent/coasters2.jpg',
  'ECOMMERCE', true, 79, 'all', 0, 605
);


INSERT INTO products
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price)
VALUES
(
  'EverythingBoho Cat Barista Baseball Cap',
  'Cat Barista themed embroidered baseball cap by EverythingBoho. Stylish pet parent accessory.',
  999, 50,
  '/images/category/dogs/petparent/accessories1.jpg',
  'ECOMMERCE', true, 80, 'all', 9, 1099
),
(
  'EverythingBoho Cat Stamp Baseball Cap',
  'Cat Stamp themed embroidered baseball cap by EverythingBoho. Stylish pet parent accessory.',
  999, 50,
  '/images/category/dogs/petparent/accessories2.jpg',
  'ECOMMERCE', true, 80, 'all', 9, 1099
);

INSERT INTO products
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price)
VALUES
(
  'EverythingBoho Cat Mom Coffee Mug (Dark Blue)',
  'Cat Mom themed coffee mug in dark blue by EverythingBoho. Capacity: 325ml.',
  499, 50,
  '/images/category/dogs/petparent/mugs1.jpg',
  'ECOMMERCE', true, 81, 'all', 17, 599
),
(
  'EverythingBoho Cat Lover Coffee Mug',
  'Cat Lover themed coffee mug by EverythingBoho. Capacity: 325ml.',
  449, 50,
  '/images/category/dogs/petparent/mugs2.jpg',
  'ECOMMERCE', true, 81, 'all', 25, 599
);


INSERT INTO products
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price)
VALUES
(
  'Ugaoo Bamboo Palm Pet Safe Plant With Self Watering Pot',
  'Bamboo Palm pet safe plant with self watering pot by Ugaoo. Pet safe and non-toxic. Size: 30-40cm.',
  349, 50,
  '/images/category/dogs/petparent/plants1.jpg',
  'ECOMMERCE', true, 82, 'all', 56, 799
),
(
  'Ugaoo Fittonia Green Pet Safe Plant With Self Watering Pot (Nerve Plant)',
  'Fittonia Green (Nerve Plant) pet safe plant with self watering pot by Ugaoo. Pet safe and non-toxic. Size: 20-25cm.',
  249, 50,
  '/images/category/dogs/petparent/plants2.jpg',
  'ECOMMERCE', true, 82, 'all', 50, 499
);

INSERT INTO products
(name, description, price, stock, image_url, type, available, category_id, breed, discount_percent, original_price)
VALUES
(
  'Talking Dog Club Dog Ma Carry All Tote Bag For Women (Blue)',
  'Dog Ma printed carry all tote bag for women in blue by Talking Dog Club. Size: 14x16 inches.',
  804, 50,
  '/images/category/dogs/petparent/everyday1.jpg',
  'ECOMMERCE', true, 83, 'all', 10, 893
),
(
  'EverythingBoho Catitude Zipped Tote Bag (White)',
  'Catitude themed zipped tote bag in white by EverythingBoho. Size: 15x13x3.5 inches.',
  599, 50,
  '/images/category/dogs/petparent/everyday2jpg',
  'ECOMMERCE', true, 83, 'all', 14, 697
);


UPDATE products
SET brand = CASE
    WHEN name LIKE 'Hoomans%' THEN 'Hoomans'
    WHEN name LIKE 'ThePack%' THEN 'ThePack'
    WHEN name LIKE 'Talking Dog Club%' THEN 'Talking Dog Club'
    WHEN name LIKE 'Furry Tales%' THEN 'Furry Tales'
    WHEN name LIKE 'SocksXpress%' THEN 'SocksXpress'
    WHEN name LIKE 'EverythingBoho%' THEN 'EverythingBoho'
    WHEN name LIKE 'Ugaoo%' THEN 'Ugaoo'
END
WHERE category_id BETWEEN 76 AND 83;

ALTER TABLE products ADD COLUMN pet_type  VARCHAR(255);


-- =============================================================================================================================================== 
-- =============================================cats products =======================================
-- =============================================================================================================================================== 
select * from products;

INSERT INTO categories (id, name, description) VALUES
(84, 'Cat Dry Food', 'All dry food for cats');

INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id)
VALUES

('Whiskas Ocean Fish Flavour Adult Cat Dry Food',
 'Ocean fish flavour dry food for adult cats',
 4950.00, 5500.00, 10, 'Whiskas', 'Persian', 'Dry', 'Cat', 'Maxi', 50, 'FOOD', 1,
 '/images/category/cats/breeds/whiskas-ocean-fish.jpg', 84),

('Sheba Chicken Flavour Irresistible All Life Stage Cat Dry Food',
 'Chicken flavour premium dry food for all life stages',
 3066.00, 3300.00, 7, 'Sheba', 'Persian', 'Dry', 'Cat', 'Medium', 50, 'FOOD', 1,
 '/images/category/cats/breeds/sheba-chicken.jpg', 84),

('Royal Canin Persian Adult Cat Dry Food',
 'Breed specific dry food for Persian adult cats',
 9240.00, 10500.00, 12, 'Royal Canin', 'Persian', 'Dry', 'Cat', 'Medium', 50, 'FOOD', 1,
 '/images/category/cats/breeds/royal-canin-persian.jpg', 84),

('Signature Grain Zero Ocean Fish Sardine and Mackerel Long Coat Persian Adult Cat Dry Food',
 'Grain free dry food with ocean fish sardine and mackerel for Persian adult cats',
 4370.00, 4800.00, 9, 'Drools', 'Persian', 'Dry', 'Cat', 'Maxi', 50, 'FOOD', 1,
 '/images/category/cats/breeds/signature-grain-zero.jpg', 84);
 
 
 INSERT INTO categories (id, name, description) VALUES
(85, 'Cat Wet Food', 'Wet and gravy food for cats');

INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id)
VALUES

('Whiskas Tuna In Jelly Meal Adult Cat Wet Food',
 'Tuna in jelly wet food for adult cats',
 4928.00, 5600.00, 12, 'Whiskas', 'Persian', 'Wet', 'Cat', 'Medium', 50, 'FOOD', 1,
 '/images/category/cats/breeds/whiskas-tuna-jelly.jpg', 85),

('Royal Canin Hair & Skin Care Adult Gravy Cat Wet Food',
 'Hair and skin care gravy wet food for adult cats. Vet approved.',
 4896.00, 5760.00, 15, 'Royal Canin', 'Persian', 'Wet', 'Cat', 'Medium', 50, 'FOOD', 1,
 '/images/category/cats/breeds/royal-canin-hair-skin.jpg', 85);
 
 
 INSERT INTO categories (id, name, description) VALUES
(92, 'Cat Scented Litter', 'Scented cat litter');


INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id)
VALUES

('Scoopy Cat Litter Lavender Scented 100% Natural Indian Brown Sand',
 'Lavender scented cat litter made from 100% natural Indian brown sand',
 569.00, 1600.00, 64, 'Scoopy', 'All Breeds', 'Litter', 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/breeds/scoopy-litter-brown.jpg', 92),

('Scoopy Cat Litter Lavender Scented Quick Clumping 100% Natural Bentonite White Litter',
 'Lavender scented quick clumping cat litter made from 100% natural bentonite white',
 549.00, 1990.00, 73, 'Scoopy', 'All Breeds', 'Litter', 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/breeds/scoopy-litter-white.jpg', 92);
 
 
 INSERT INTO categories (id, name, description) VALUES

(86, 'Cat Treats', 'Treats and snacks for cats');

INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id)
VALUES

('Sheba Duo Contains 3 Variants Tuna & Chicken Salmon & Tuna Chicken & Salmon Crunchy Treats',
 'Duo treat pack containing 3 variants - Tuna & Chicken, Salmon & Tuna, Chicken & Salmon crunchy treats for cats',
 270.00, 300.00, 10, 'Sheba', 'All Breeds', 'Treats', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/breeds/sheba-duo-treats.jpg', 86);
 
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id)
VALUES

('Sheba Tuna Pumpkin & Carrot In Gravy Rich Premium Adult Fine Cat Wet Food',
 'Tuna with pumpkin and carrot in gravy premium wet food for adult cats',
 9254.00, 10059.00, 8, 'Sheba', 'All Breeds', 'Wet', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/breeds/sheba-tuna-pumpkin.jpg', 85);
 
INSERT INTO categories (id, name, description) VALUES
(90, 'Cat Kitten Food', 'Specially formulated food for kittens');

INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id)
VALUES

('Drools Ocean Fish Kitten Cat Dry Food',
 'Ocean fish flavour dry food specially formulated for kittens',
 1838.00, 1998.00, 8, 'Drools', 'All Breeds', 'Dry', 'Cat', 'Mini', 50, 'FOOD', 1,
 '/images/category/cats/breeds/drools-ocean-fish-kitten.jpg', 90);


select *from products;

 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id)
VALUES

('Royal Canin Persian Adult Cat Dry Food',
 'Breed specific dry food formulated for Persian adult cats. Vet approved.',
 9240.00, 10500.00, 12, 'Royal Canin', 'Persian', 'Dry', 'Cat', 'Maxi', 50, 'FOOD', 1,
 '/images/category/cats/breeds/royal-canin-persian.jpg', 84);
 
 INSERT INTO categories (id, name, description) VALUES
(87, 'Cat Prescription Food', 'Veterinary prescription food for cats');

INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id)
VALUES

('Royal Canin Veterinary Diet Satiety Adult Cat Dry Food',
 'Veterinary diet satiety weight management dry food for adult cats',
 12600.00, 12600.00, 0, 'Royal Canin', 'All Breeds', 'Dry', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/breeds/royal-canin-satiety.jpg', 87);
 
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id)
VALUES

('Signature Grain Zero Ocean Fish Sardine And Mackerel Long Coat & Persian Adult Cat Dry Food',
 'Grain free dry food with ocean fish sardine and mackerel for long coat and Persian adult cats. Supertails Choice.',
 4370.00, 4370.00, 8, 'Drools', 'Persian', 'Dry', 'Cat', 'Maxi', 50, 'FOOD', 1,
 '/images/category/cats/breeds/signature-grain-zero1.jpg', 84);
 
 
 select * from products;
 update products set image_url='/images/category/cats/breeds/signature-grain-zero1.jpg' where name ='Signature Grain Zero Ocean Fish Sardine And Mackerel Long Coat & Persian Adult Cat Dry Food';
 
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id)
VALUES

('Me O Persian Kitten Cat Dry Food',
 'Complete and balanced dry food specially formulated for Persian kittens',
 1978.00, 2150.00, 8, 'Me-O', 'Persian', 'Dry', 'Cat', 'Mini', 50, 'FOOD', 1,
 '/images/category/cats/breeds/meo-persian-kitten.jpg', 90);
 
 -- ====================================siamese============================== 
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id)
VALUES

('Royal Canin Fit 32 Regular For Adult Cat Dry Food',
 'Regular dry food formulated for active adult cats. Vet approved.',
 14995.00, 17040.00, 12, 'Royal Canin', 'Siamese', 'Dry', 'Cat', 'Medium', 50, 'FOOD', 1,
 '/images/category/cats/breeds/royal-canin-fit32.jpg', 84),

('Farmina N&D Prime Chicken & Pomegranate Grain Free Adult Cat Dry Food',
 'Grain free adult cat dry food with chicken and pomegranate',
 12510.00, 13900.00, 10, 'Farmina N&D', 'Siamese', 'Dry', 'Cat', 'Medium', 50, 'FOOD', 1,
 '/images/category/cats/breeds/farmina-nd-chicken-adult.jpg', 84),

('Carniwel Fresh Fish And Shrimp For Kitten Cat Dry Food',
 'Fresh fish and shrimp dry food specially formulated for kittens',
 1563.00, 1737.00, 10, 'Carniwel', 'Siamese', 'Dry', 'Cat', 'Mini', 50, 'FOOD', 1,
 '/images/category/cats/breeds/carniwel-fish-shrimp-kitten.jpg', 90),

('Farmina N&D Prime Chicken & Pomegranate Grain Free Adult Cat Dry Food 300g',
 'Grain free adult cat dry food with chicken and pomegranate. 300g trial pack.',
 855.00, 950.00, 10, 'Farmina N&D', 'Siamese', 'Dry', 'Cat', 'Mini', 50, 'FOOD', 1,
 '/images/category/cats/breeds/farmina-nd-chicken-300g.jpg', 84);
 
 
 INSERT IGNORE INTO categories (id, name, description) VALUES
(112, 'Cat Royal Canin', 'Royal Canin food range for cats'),
(116, 'Cat Farmina N&D', 'Farmina N&D grain free food for cats'),
(121, 'Cat Carniwel',    'Carniwel food range for cats');
 
 
 -- ==================bengal cats======
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id)
VALUES

('Whiskas Ocean Fish Flavour Adult Cat Dry Food',
 'Ocean fish flavour dry food for adult cats',
 4950.00, 5500.00, 10, 'Whiskas', 'Bengal', 'Dry', 'Cat', 'Maxi', 50, 'FOOD', 1,
 '/images/category/cats/breeds/whiskas-ocean-fish-bengal.jpg', 84),

('Sheba Chicken Flavour Irresistible All Life Stage Cat Dry Food',
 'Chicken flavour premium dry food for all life stages',
 3066.00, 3297.00, 7, 'Sheba', 'Bengal', 'Dry', 'Cat', 'Medium', 50, 'FOOD', 1,
 '/images/category/cats/breeds/sheba-chicken-bengal.jpg', 84),

('Royal Canin Persian Adult Cat Dry Food',
 'Breed specific dry food for Persian adult cats. Vet approved.',
 9240.00, 10500.00, 12, 'Royal Canin', 'Bengal', 'Dry', 'Cat', 'Maxi', 50, 'FOOD', 1,
 '/images/category/cats/breeds/royal-canin-persian.jpg', 84);
 
 -- ================================= 
 
 select * from products;
 DELETE FROM products WHERE id BETWEEN 244 AND 249;
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id)
VALUES

('Whiskas Ocean Fish Kitten Cat Dry Food',
 'Ocean fish flavour dry food specially formulated for kittens. Supertails Choice.',
 1908.00, 2120.00, 10, 'Whiskas', 'All Breeds', 'Dry', 'Cat', 'Mini', 50, 'FOOD', 1,
 '/images/category/cats/essentials/whiskas-ocean-fish-kitten.jpg', 90);
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id)
VALUES

('Purepet Ocean Fish Adult Cat Dry Food',
 'Ocean fish flavour dry food for adult cats',
 1160.00, 1319.00, 12, 'Purepet', 'All Breeds', 'Dry', 'Cat', 'Medium', 50, 'FOOD', 1,
 '/images/category/cats/essentials/purepet-ocean-fish-adult.jpg', 84);
 
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id)
VALUES

('Signature Grain Zero Chicken & Vegetable All Breed Adult Cat Dry Food',
 'Grain free chicken and vegetable dry food for all breed adult cats',
 425.00, 425.00, 8, 'Drools', 'All Breeds', 'Dry', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/essentials/signature-grain-zero-chicken-veg.jpg', 84);
 
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id)
VALUES

('Calibra VD Cat Gastrointestinal & Pancreas Dry Food',
 'Veterinary diet dry food for cats with gastrointestinal and pancreas conditions. Vet approved.',
 2750.00, 2750.00, 0, 'Calibra', 'All Breeds', 'Dry', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/essentials/calibra-vd-gastrointestinal.jpg', 87);
 
 select * from products;
select * from products where category_id=87;
 
 DELETE FROM products WHERE id=226;
 
 INSERT INTO categories (id, name, description) VALUES
(93, 'Cat Unscented Litter', 'Unscented cat litter');
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id)
VALUES

('Intersand Cat\'s Exclusive Sodium Bentonite Clumping Unscented Cat Litter',
 'Sodium bentonite clumping unscented cat litter',
 1305.00, 1450.00, 10, 'Intersand', 'All Breeds', 'Litter', 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/breeds/intersand-unscented-litter.jpg', 93);
 
 INSERT IGNORE INTO categories (id, name, description) VALUES
(112, 'Cat Royal Canin',  'Royal Canin food range for cats'),
(115, 'Cat Signature',    'Signature grain zero food range for cats'),
(118, 'Cat Me-O',         'Me-O food range for cats');
 
 INSERT  INTO categories (id, name, description) VALUES
(114, 'Cat Sheba',  'Sheba food range for cats'),
(115, 'Cat Drools', 'Drools food range for cats');

INSERT IGNORE INTO categories (id, name, description) VALUES
(119, 'Cat Smudges',              'Smudges food range for cats'),
(120, 'Cat Brunos Wild Essentials','Brunos Wild Essentials food range for cats');



INSERT IGNORE INTO categories (id, name, description) VALUES
(122, 'Cat Dry Food New Launch', 'New launch dry food for cats');


INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id)
VALUES
('Active Ocean Fish Kitten Cat Dry Food Buy 1 Get 1',
 'Ocean fish kitten cat dry food. Buy 1 Get 1 offer. 1.2kg + 1.2kg pack.',
 423.00, 450.00, 6, 'Active', 'All Breeds', 'Dry', 'Cat', 'Mini', 50, 'FOOD', 1,
 '/images/category/cats/essentials/active-ocean-fish-kitten.jpg', 90);
 
 
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id)
VALUES
('Purepet Ocean Fish Adult Cat Dry Food',
 'Ocean fish dry food for adult cats',
 1160.00, 1319.00, 12, 'Purepet', 'All Breeds', 'Dry', 'Cat', 'Medium', 50, 'FOOD', 1,
 '/images/category/cats/essentials/purepet-ocean-fish-adult.jpg', 84);
 
 
 
 
 ALTER TABLE products ADD COLUMN tags VARCHAR(255) DEFAULT NULL;
 
 UPDATE products SET tags = 'new-launch' 
WHERE name IN (
  'Signature Grain Zero Chicken & Vegetable All Breed Adult Cat Dry Food',
  'Me O Mackerel Adult Cat Dry Food'
);

UPDATE products SET tags = 'prescription'
WHERE name IN (
  'Royal Canin Veterinary Diet Satiety Adult Cat Dry Food',
  'Calibra VD Cat Gastrointestinal & Pancreas Dry Food'
);

UPDATE products SET tags = 'kitten'
WHERE name IN (
  'Whiskas Ocean Fish Kitten Cat Dry Food',
  'Drools Ocean Fish Kitten Cat Dry Food',
  'Me O Persian Kitten Cat Dry Food',
  'Active Ocean Fish Kitten Cat Dry Food Buy 1 Get 1'
);

UPDATE products SET tags = 'premium'
WHERE brand IN ('Royal Canin', 'Farmina N&D', 'Sheba', 'Calibra');


UPDATE products 
SET tags = 'prescription'
WHERE name = 'Calibra VD Cat Gastrointestinal & Pancreas Dry Food';


INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES
('Royal Canin Skin & Hair Care For Adult Cats Dry Food',
 'Skin and hair care dry food for adult cats. Vet approved.',
 6178.00, 7020.00, 12, 'Royal Canin', 'All Breeds', 'Dry', 'Cat', 'Medium', 50, 'FOOD', 1,
 '/images/category/cats/essentials/royal-canin-skin-hair.jpg', 84, 'premium');
 
 
 
 UPDATE products 
SET tags = 'adult'
WHERE name = 'Whiskas Tuna In Jelly Meal Adult Cat Wet Food';

INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES
('Sheba Chicken With Tuna In Gravy Rich Premium Adult Fine Cat Wet Food',
 'Chicken with tuna in gravy premium wet food for adult cats',
 9254.00, 10059.00, 8, 'Sheba', 'All Breeds', 'Wet', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/essentials/sheba-chicken-tuna.jpg', 85, 'adult,premium');
 
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Calibra VD Dog And Cat Can Recovery Wet Food',
 'Veterinary diet recovery wet food for dogs and cats. Vet approved.',
 650.00, 650.00, 0, 'Calibra', 'All Breeds', 'Wet', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/essentials/calibra-recovery-wet.jpg', 85, 'prescription'),

('Royal Canin Veterinary Diet Renal Fish Adult Cat Wet Food',
 'Veterinary diet renal fish wet food for adult cats.',
 1980.00, 1980.00, 0, 'Royal Canin', 'All Breeds', 'Wet', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/essentials/royal-canin-renal-fish-wet.jpg', 85, 'prescription');
 
 
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Sheba Soup With Chicken Adult Cat Wet Food',
 'Soup with chicken wet food for adult cats',
 612.00, 720.00, 15, 'Sheba', 'All Breeds', 'Wet', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/essentials/sheba-soup-chicken.jpg', 85, 'new-launch'),

('Smylo Hydration Rich Chicken With Carrot Kale And Cranberry Bone Broth For Cats',
 'Hydration rich chicken with carrot kale and cranberry bone broth for cats',
 101.00, 120.00, 16, 'Smylo', 'All Breeds', 'Wet', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/essentials/smylo-chicken-bone-broth.jpg', 85, 'new-launch');
 
 
 
 -- ======================== 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Royal Canin Sterilised/Neutered Gravy Adult Cat Wet Food',
 'Sterilised and neutered gravy wet food for adult cats. Vet approved.',
 4896.00, 5760.00, 15, 'Royal Canin', 'All Breeds', 'Wet', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/essentials/royal-canin-sterilised-gravy.jpg', 85, 'premium'),

('Royal Canin Persian Adult Loaf Cat Wet Food',
 'Persian breed specific loaf wet food for adult cats. Vet approved.',
 5100.00, 6000.00, 15, 'Royal Canin', 'Persian', 'Wet', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/essentials/royal-canin-persian-loaf.jpg', 85, 'premium');
 
 
 -- ======================================treats==================
 select * from products;
 
 DELETE FROM products WHERE id BETWEEN 265 AND 266;
 
 INSERT IGNORE INTO categories (id, name, description) VALUES
(123, 'Cat Creamy Treats', 'Creamy treats for cats'),
(124, 'Cat Jerky Treats',  'Jerky treats for cats'),
(125, 'Cat Crunchy Treats','Crunchy treats for cats');


INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Sheba Tuna Flavor And Tuna & Prawn Maguro Selection Melty Premium Cat Treats',
 'Tuna flavor and tuna and prawn maguro selection melty premium treats for cats',
 503.00, 529.00, 5, 'Sheba', 'All Breeds', 'Treats', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/essentials/sheba-maguro-melty.jpg', 123, 'treats'),

('Cataholic Neko Chicken & Tuna Cat Treats',
 'Chicken and tuna jerky treats for cats',
 601.00, 675.00, 11, 'Cataholic', 'All Breeds', 'Treats', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/essentials/cataholic-chicken-tuna.jpg', 124, 'treats');
 
 INSERT IGNORE INTO categories (id, name, description) VALUES
(114, 'Cat Sheba', 'Sheba food range for cats');
 
 UPDATE products 
SET category_id = 114, tags = 'treats'
WHERE name = 'Sheba Duo Contains 3 Variants Tuna & Chicken Salmon & Tuna Chicken & Salmon Crunchy Treats';
 
 
-- ====================================prescription

INSERT IGNORE INTO categories (id, name, description) VALUES
(126, 'Cat Prescription Skin & Coat',       'Skin and coat prescription food for cats'),
(127, 'Cat Prescription Urinary Care',      'Urinary care prescription food for cats'),
(128, 'Cat Prescription Gastrointestinal',  'Gastrointestinal prescription food for cats');


INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Royal Canin Veterinary Hypoallergenic Cat Dry Food',
 'Veterinary hypoallergenic dry food for cats. Vet approved. Exclusive.',
 10050.00, 10050.00, 0, 'Royal Canin', 'All Breeds', 'Dry', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/essentials/royal-canin-hypoallergenic.jpg', 126, 'prescription'),

('Vivaldis V Diet Gastrointestinal Diet Cat Wet Food',
 'Gastrointestinal diet wet food for cats. Vet approved.',
 3600.00, 3600.00, 0, 'Vivaldis', 'All Breeds', 'Wet', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/essentials/vivaldis-gastrointestinal-wet.jpg', 128, 'prescription');


UPDATE products 
SET category_id = 127, tags = 'prescription'
WHERE name = 'Royal Canin Veterinary Diet Renal Fish Adult Cat Wet Food';



-- =================================== 


-- Sheba Chicken dry food
UPDATE products SET tags = 'premium'
WHERE name = 'Sheba Chicken Flavour Irresistible All Life Stage Cat Dry Food';

-- Whiskas wet food
UPDATE products SET tags = 'adult,premium'
WHERE name = 'Whiskas Tuna In Jelly Meal Adult Cat Wet Food';


INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Friskies Meaty Grills Adult Cat Dry Food',
 'Meaty grills dry food for adult cats',
 168.00, 185.00, 9, 'Friskies', 'All Breeds', 'Dry', 'Cat', 'Medium', 50, 'FOOD', 1,
 '/images/category/cats/essentials/friskies-meaty-grills.jpg', 84, 'new-launch,premium');
 
 -- =============================================supplement=========================
 
 select * from products;
 
 
 INSERT IGNORE INTO categories (id, name, description) VALUES
(129, 'Cat Calcium Supplement',          'Calcium supplements for cats'),
(130, 'Cat Immunity Boosters',           'Immunity booster supplements for cats'),
(131, 'Cat Skin & Coat Supplement',      'Skin and coat supplements for cats');



INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Skyec Sky Cal Calcium Supplement Syrup For Dogs And Cats',
 'Calcium supplement syrup for stronger bones, teeth and growth in cats and dogs',
 202.00, 210.00, 4, 'Skyec', 'All Breeds', 'Supplement', 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/essentials/skyec-skycal.jpg', 129, 'supplements'),

('Savavet Leh Yum Paste Nutritional Supplement For Cats',
 'High calorie nutritional paste immunity booster supplement for cats',
 427.00, 445.00, 4, 'Savavet', 'All Breeds', 'Supplement', 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/essentials/savavet-leh-yum.jpg', 130, 'supplements'),

('Venttura Omega 3 Plus Skin & Coat Syrup For Dogs',
 'Omega 3 plus skin and coat supplement syrup for dogs and cats',
 1109.00, 1245.00, 11, 'Venttura', 'All Breeds', 'Supplement', 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/essentials/venttura-omega3.jpg', 131, 'supplements');
 -- ==========================================kitten============================= 
 
 
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Whiskas Junior Mackerel Flavour Kitten 2-12 Months Cat Wet Food',
 'Mackerel flavour wet food for kittens aged 2 to 12 months',
 4928.00, 5600.00, 12, 'Whiskas', 'All Breeds', 'Wet', 'Cat', 'Mini', 50, 'FOOD', 1,
 '/images/category/cats/essentials/whiskas-junior-mackerel-wet.jpg', 85, 'kitten'),

('Basil Purrfect Tuna And Cranberry Dental Stick Cat Treat',
 'Tuna and cranberry dental stick treats for cats',
 154.00, 175.00, 12, 'Basil', 'All Breeds', 'Treats', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/essentials/basil-purrfect-dental.jpg', 86, 'kitten,new-launch'),

('INABA Juicy Bites Scallop And Crab Flavoured Cat Treats',
 'Scallop and crab flavoured juicy bites treats for cats',
 411.00, 438.00, 6, 'INABA', 'All Breeds', 'Treats', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/essentials/inaba-juicy-bites.jpg', 86, 'kitten');


-- ===============================combos=============
INSERT IGNORE INTO categories (id, name, description) VALUES
(113, 'Cat Whiskas', 'Whiskas food range for cats');

INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Farmina N&D Prime Lamb & Blueberry Grain Free Adult Cat Dry Food',
 'Grain free lamb and blueberry dry food for adult cats',
 6255.00, 6950.00, 10, 'Farmina N&D', 'All Breeds', 'Dry', 'Cat', 'Medium', 50, 'FOOD', 1,
 '/images/category/cats/essentials/farmina-nd-lamb-blueberry.jpg', 84, 'premium'),

('Sheba Maguro & Bream Fish Skipjack & Salmon Fish And Fish With Sasami Mix Premium Cat Wet Food',
 'Mix of maguro bream fish skipjack salmon and sasami premium wet food for cats',
 3312.00, 3600.00, 8, 'Sheba', 'All Breeds', 'Wet', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/essentials/sheba-maguro-bream-mix.jpg', 85, 'premium'),

('Me O Creamy Chicken & Liver Salmon And Bonito Cat Treat Combo',
 'Creamy chicken liver salmon and bonito cat treat combo pack',
 1160.00, 1275.00, 9, 'Me-O', 'All Breeds', 'Treats', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/essentials/meo-creamy-combo.jpg', 86, 'treats'),

('Whiskas Tuna In Jelly Chicken And Salmon In Gravy Meal Adult Cat Wet Food',
 'Combo of tuna in jelly chicken and salmon in gravy wet food for adult cats',
 1869.00, 2100.00, 11, 'Whiskas', 'All Breeds', 'Wet', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/essentials/whiskas-combo-wet.jpg', 113, 'premium'); 
 
 
 select * from products where category_id=126;
 delete from products where id=273;
 -- ===================================litter=---=======================
 select * from categories;
 
 INSERT IGNORE INTO categories (id, name, description) VALUES
(92,  'Cat Scented Litter',        'Scented cat litter'),
(93,  'Cat Unscented Litter',      'Unscented cat litter'),
(94,  'Cat Litter Boxes',          'Litter boxes and scoopers for cats'),
(95,  'Cat Litter Mats',           'Mats and accessories for cat litter'),
(134, 'Cat Odor & Stain Removal',  'Odor and stain removal products for cats');
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Intersand Cat\'s Exclusive Baby Powder Scent Clumping Cat Litter',
 'Baby powder scent clumping cat litter',
 1305.00, 1450.00, 10, 'Intersand', 'All Breeds', 'Litter', 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/litter/intersand-baby-powder.jpg', 92, 'litter'),

('Pet Pattern Natural Unscented Clay Quick Clumping Cat Litter',
 'Natural unscented clay quick clumping cat litter',
 1008.00, 1260.00, 20, 'Pet Pattern', 'All Breeds', 'Litter', 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/litter/pet-pattern-unscented.jpg', 93, 'litter'),

('Born Good Plant Based Turkish Applewood Fragrance Disinfecting Liquid Floor Surface Cleaner',
 'Plant based Turkish applewood fragrance disinfecting liquid floor and surface cleaner',
 351.00, 399.00, 12, 'Born Good', 'All Breeds', 'Litter', 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/litter/born-good-floor-cleaner.jpg', 134, 'litter');
 
 
 -- ====================================life style==============
 
 INSERT IGNORE INTO categories (id, name, description) VALUES
(96, 'Cat Summer Wear', 'Summer wear and cooling products for cats');

INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Skatrs Duck Duck Duck Cotton T Shirt For Dogs And Cats',
 'Duck Duck Duck printed cotton t shirt for dogs and cats',
 299.00, 599.00, 50, 'Skatrs', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/skatrs-duck-tshirt.jpg', 96, 'lifestyle'),

('Skatrs Peekaboo Cotton T Shirt For Dogs And Cats',
 'Peekaboo printed cotton t shirt for dogs and cats',
 349.00, 599.00, 42, 'Skatrs', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/skatrs-peekaboo-tshirt.jpg', 96, 'lifestyle'),

('Skatrs Sleeping Panda Cotton T Shirt For Dogs And Cats',
 'Sleeping panda printed cotton t shirt for dogs and cats',
 349.00, 562.00, 38, 'Skatrs', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/skatrs-panda-tshirt.jpg', 96, 'lifestyle'),

('Pets Way Royal Canines Bengaluru Team Jersey Vest For Dogs Indian Pet League',
 'Royal Canines Bengaluru team jersey vest for dogs. Indian Pet League edition.',
 599.00, 999.00, 40, 'Pets Way', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/petsway-bengaluru-jersey.jpg', 96, 'lifestyle');
 
 
 
 INSERT IGNORE INTO categories (id, name, description) VALUES
(135, 'Cat Skin & Coat',    'Skin and coat care products for cats'),
(136, 'Cat Health Supplements', 'Health supplements for cats'),
(137, 'Cat Shampoos',       'Shampoos for cats'),
(138, 'Cat Sprays',         'Sprays for cats'),
(139, 'Cat Ointments',      'Ointments for cats');

INSERT IGNORE INTO categories (id, name, description) VALUES
(140, 'Cat Blankets & Cushions', 'Blankets and cushions for cats'),
(141, 'Cat Designer Beds',       'Designer beds for cats'),
(142, 'Cat Elevated Beds',       'Elevated beds for cats');
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Fluffy\'s Pawsome Artificial Leather Sofa Bed For Dogs And Cats Brown & Black',
 'Artificial leather sofa bed for dogs and cats in brown and black. Supertails Choice.',
 1399.00, 2499.00, 44, 'Fluffy\'s', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/fluffys-sofa-bed.jpg', 140, 'lifestyle'),

('Talking Dog Club Fleece Blanket For Dogs And Cats Dark Green',
 'Fleece blanket for dogs and cats in dark green',
 629.00, 1049.00, 40, 'Talking Dog Club', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/tdc-fleece-blanket.jpg', 140, 'lifestyle'),

('Skatrs Sunshine Snuggle Blanket For Dogs & Cats Yellow',
 'Sunshine snuggle blanket for dogs and cats in yellow',
 549.00, 1999.00, 73, 'Skatrs', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/skatrs-snuggle-blanket.jpg', 141, 'lifestyle');
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Fluffy\'s Pawsome Waterproof Elevated Sides Camping Bed For Dogs Black',
 'Waterproof elevated sides camping bed for dogs in black',
 2699.00, 3499.00, 23, 'Fluffy\'s', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/fluffys-elevated-bed.jpg', 142, 'lifestyle');
 
 
 INSERT IGNORE INTO categories (id, name, description) VALUES
(145, 'Cat Teasers', 'Teaser toys for cats');


INSERT IGNORE INTO categories (id, name, description) VALUES
(143, 'Cat Catnip Toys', 'Catnip toys for cats'),
(144, 'Cat Trees',       'Cat trees and scratching posts'),
(145, 'Cat Teasers',     'Teaser toys for cats');

INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Barkbutler X Fofos Rattle Mouse Chew Toy For Cats',
 'Rattle mouse chew toy for cats',
 126.00, 140.00, 10, 'Barkbutler', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/barkbutler-rattle-mouse.jpg', 143, 'lifestyle'),

('Skatrs Fur Fabric Ladder Jute Rope Scratching Post Cat Tree For Cats And Kittens Beige',
 'Fur fabric ladder jute rope scratching post cat tree for cats and kittens in beige',
 1999.00, 4999.00, 60, 'Skatrs', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/skatrs-cat-tree-beige.jpg', 144, 'lifestyle');
 
 
 INSERT IGNORE INTO categories (id, name, description) VALUES
(146, 'Cats Collars',          'Collars for cats'),
(147, 'Cats Harness',          'Harnesses for cats'),
(148, 'Cats Leash Harness Set','Leash and harness sets for cats'),
(149, 'Cats Retractable Leash','Retractable leashes for cats');
 
  INSERT  INTO categories (id, name, description) VALUES
(146, 'Cats Collars',          'Collars for cats');

 select * from categories where id =146;
 
 SELECT id, name FROM categories WHERE name IN ('Cat Collars', 'Cat Harnesses', 'Cat Harnesses Mesh');
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Skatrs Collar With Bow For Dogs And Cats Blue',
 'Collar with bow for dogs and cats in blue',
 129.00, 199.00, 35, 'Skatrs', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/skatrs-collar-bow.jpg', 146, 'lifestyle'),

('Zoivane Harness For Cats Black',
 'Harness for cats in black. 23cm.',
 999.00, 999.00, 0, 'Zoivane', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/zoivane-harness-black.jpg', 147, 'lifestyle'),

('Truelove Floral Printed Breathable Air Mesh Harness With Dual D Rings For Cats',
 'Floral printed breathable air mesh harness with dual D rings for cats',
 1080.00, 1200.00, 10, 'Truelove', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/truelove-mesh-harness.jpg', 148, 'lifestyle');
 
 
 
 
 
 
 
 
 
 
 
 INSERT IGNORE INTO categories (id, name, description) VALUES
(150, 'Cat Water Fountain', 'Water fountains for cats'),
(151, 'Cat Anti-Skid Bowls','Anti-skid bowls for cats'),
(152, 'Cat Designer Bowls', 'Designer bowls for cats');


INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Skatrs Water Fountain With Adapter For Dogs And Cats White',
 'Water fountain with adapter for dogs and cats in white. 2L. Supertails Choice.',
 899.00, 1999.00, 55, 'Skatrs', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/skatrs-water-fountain.jpg', 150, 'lifestyle'),

('Kibbo Anti Skid Stainless Steel Bowl For Dogs And Cats Green',
 'Anti skid stainless steel bowl for dogs and cats in green',
 319.00, 399.00, 20, 'Kibbo', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/kibbo-antiskid-bowl.jpg', 151, 'lifestyle');
 
 
 INSERT IGNORE INTO categories (id, name, description) VALUES
(153, 'Cat Trees & Scratchers', 'Cat trees and scratching posts');

INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Pawpourri Melange Winter Jacket For Dogs And Cats Grey',
 'Melange winter jacket for dogs and cats in grey',
 1842.00, 2219.00, 17, 'Pawpourri', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/pawpourri-winter-jacket.jpg', 96, 'lifestyle'),

('HUFT Pet Safe Floor Cleaner For Dogs And Cats',
 'Pet safe floor cleaner for dogs and cats. 1 litre.',
 449.00, 499.00, 10, 'HUFT', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/huft-floor-cleaner.jpg', 153, 'lifestyle');
 
 
 INSERT IGNORE INTO categories (id, name, description) VALUES
(154, 'Brushes & Combs', 'Brushes and combs for pets'),
(155, 'Shampoos & Conditioners', 'Shampoos and conditioners for pets');
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES
('Skatrs Self Clean Slicker With Metal Bristles Brush For Dogs And Cats (Grey)',
 'Self clean slicker brush with metal bristles for dogs and cats in grey. Pack of 1.',
 299.00, 749.00, 60, 'Skatrs', 'All Breeds', NULL, 'Dog,Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/skatrs-self-clean-slicker-brush-grey.jpg', 154, 'grooming'),

('Himalaya Erina EP Tick And Flea Shampoo For Dogs And Cats',
 'Tick and flea shampoo for dogs and cats. Available in 200mL, 2x200mL, and 450mL.',
 235.00, 286.00, 18, 'Himalaya', 'All Breeds', NULL, 'Dog,Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/himalaya-erina-ep-tick-flea-shampoo.jpg', 155, 'grooming');
 
 
 
 INSERT IGNORE INTO categories (id, name, description) VALUES
(156, 'Crates & Carriers', 'Crates and carriers for pets'),
(157, 'Car Seat Covers', 'Car seat covers for pets');
 
 
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES
('Savic Trotter 1 IATA Approved Travel Carrier For Dogs And Cats (Nordic Blue)',
 'IATA air travel approved carrier for dogs and cats in Nordic Blue. Size S.',
 2168.00, 2550.00, 15, 'Savic', 'All Breeds', NULL, 'Dog,Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/savic-trotter-1-iata-carrier-nordic-brown.jpg', 156, 'travel'),

('Fluffy''s Kozi Pet Hatchback Car Seat Cover For Dogs And Cats (Black)',
 'Hatchback car seat cover for dogs and cats in white. Size 54x58in.',
 1299.00, 1699.00, 24, 'Fluffy''s', 'All Breeds', NULL, 'Dog,Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/fluffys-kozi-hatchback-car-seat-cover-black.jpg', 157, 'travel');


 INSERT IGNORE INTO categories (id, name, description) VALUES
(158, 'Kittens', 'Dewormer products for kittens');

INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES
('Areion Vet Feli D Kitten Deworming Suspension 15ml',
 'Pyrantel Pamoate and Febantel oral suspension dewormer for kittens. 15mL.',
 135.00, 141.00, 4, 'Areion Vet', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/areion-vet-feli-d-kitten-deworming-suspension.jpg', 158, 'dewormer');
 
 
INSERT IGNORE INTO categories (id, name, description) VALUES
(159, 'Powder', 'Tick and flea powder for pets'); 
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES
('Veko Radicate (Selamectin) Tick And Flea Control Spot On For Cats',
 'Selamectin tick and flea control spot on for cats. 0.75mL.',
 431.00, 490.00, 12, 'Veko', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/veko-radicate-selamectin-spot-on-cats.jpg', 159, 'tickflea');
 
 
 select * from categories;
 
 
 
INSERT IGNORE INTO categories (id, name, description) VALUES
(160, 'Pain Medication', 'Pain medication for pets');
INSERT IGNORE INTO categories (id, name, description) VALUES
(161, 'Cat Pain Medication', 'Pain medication for Cat');




SELECT id, name FROM categories WHERE name = 'Calcium Supplement';

INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES
('Intas Melonex (Meloxicam) Oral Suspension (Syrup)',
 'Meloxicam oral suspension syrup for pain relief. 10mL.',
 77.00, 77.00, 0, 'Intas', 'All Breeds', NULL, 'Dog,Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/intas-melonex-meloxicam-oral-suspension.jpg', 160, 'jointcare'),

('Drools Absolute Calcium Dog Supplement Tablets',
 'Calcium supplement tablets for dogs. Available in 50pcs and 110pcs.',
 230.00, 265.00, 13, 'Drools', 'All Breeds', NULL, 'Dog', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/drools-absolute-calcium-supplement-tablets.jpg', 11, 'jointcare,calcium'); 
 
 
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES ('Drools Absolute Calcium Dog Supplement Tablets',
 'Calcium supplement tablets for dogs. Available in 50pcs and 110pcs.',
 230.00, 265.00, 13, 'Drools', 'All Breeds', NULL, 'Dog', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/drools-absolute-calcium-supplement-tablets.jpg', 161, 'jointcare,calcium');
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES
('Vetina Cardio Support Tablet For Dogs And Cats (Pack Of 30 Tablets)',
 'Cardiac care support tablets for dogs and cats. 1 Bottle (30 tablets).',
 713.00, 750.00, 5, 'Vetina', 'All Breeds', NULL, 'Dog,Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/vetina-cardio-support-tablet.jpg', 162, 'cardiac'),

('Savavet Strongbeat Advance Tablet For Dogs & Cats (Pack Of 30 Tablets)',
 'Cardiac care advance tablets for dogs and cats. 1 Bottle (30 tablets).',
 689.00, 703.00, 2, 'Savavet', 'All Breeds', NULL, 'Dog,Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/savavet-strongbeat-advance-tablet.jpg', 162, 'cardiac');
 
 
 -- ==============================fish========================== 
 
 
 INSERT IGNORE INTO categories (id, name, description) VALUES
(163, 'Fish Food', 'Food products for fish');


INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES
('Boltz Healthy Fish Food',
 'High protein and fiber floating pellets for fish. Enhances color and keeps water clean. 400g.',
 359.00, 399.00, 10, 'Boltz', 'All Breeds', NULL, 'Fish', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/fish/boltz-healthy-fish-food.jpg', 163, 'fish-food'),

('Tetra Bits Complete Fish Food',
 'Complete nutrition fish food bits. Available in 300g, 93g, 30g.',
 1620.00, 1800.00, 10, 'Tetra', 'All Breeds', NULL, 'Fish', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/fish/tetra-bits-complete-fish-food.jpg', 163, 'fish-food'),

('Tunai Shipp\'s 3in1 Pellets Small And Medium Adult Fish Food',
 '3-in-1 pellets for small and medium adult fish. 250g.',
 238.00, 399.00, 40, 'Tunai', 'All Breeds', NULL, 'Fish', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/fish/tunai-shipps-3in1-pellets-fish-food.jpg', 163, 'fish-food'),

('Growel Rainbow Small 3.5mm Floating Pellet For Fish',
 'Rainbow floating pellets 3.5mm for fish. 100g.',
 126.00, 140.00, 10, 'Growel', 'All Breeds', NULL, 'Fish', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/fish/growel-rainbow-small-floating-pellet.jpg', 163, 'fish-food');
 
 
 select * from products where category_id=163;
 
 update products set image_url='/images/category/fish/boltz-healthy-fish-food.jpg' where id = 335;
 update products set image_url='/images/category/fish/tetra-bits-complete-fish-food.jpg' where id = 336;
 update products set image_url='/images/category/fish/tunai-shipps-3in1-pellets-fish-food.jpg' where id = 337;
 update products set image_url='/images/category/fish/growel-rainbow-small-floating-pellet.jpg' where id = 338;
 -- =========================================Rabbits========================= -- 
 
 update products set image_url='/images/category/rabbits/oxbow-western-timothy-hay.jpg' where id = 339;
 update products set image_url='/images/category/rabbits/science-selective-timothy-hay.jpg' where id = 340;
 update products set image_url='/images/category/rabbits/boltz-premium-rabbit-food.jpg' where id = 341;
 update products set image_url='/images/category/rabbits/value-nest-rabbit-pellets-food.jpg' where id = 342;
 
 INSERT IGNORE INTO categories (id, name, description) VALUES
(164, 'Rabbit Food', 'Food products for rabbits and small animals');

INSERT INTO products
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES
('Oxbow Western Timothy Hay Dry Food For Rabbits And Guinea Pigs',
 'Western Timothy Hay dry food for rabbits and guinea pigs. 425g.',
 630.00, 700.00, 10, 'Oxbow', 'All Breeds', 'Veg', 'Rabbit', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/oxbow-western-timothy-hay.jpg', 164, 'rabbit-food'),

('Science Selective Timothy Hay For Rabbits And Guinea Pigs',
 'Timothy hay for rabbits and guinea pigs. Available in 400g and 2kg.',
 773.00, 850.00, 9, 'Science Selective', 'All Breeds', 'Veg', 'Rabbit', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/science-selective-timothy-hay.jpg', 164, 'rabbit-food'),

('Boltz Premium Rabbit Food',
 'Premium rabbit food. 1.2kg.',
 449.00, 499.00, 10, 'Boltz', 'All Breeds', 'Veg', 'Rabbit', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/boltz-premium-rabbit-food.jpg', 164, 'rabbit-food'),

('Value Nest Rabbit Pellets Food',
 'Rabbit pellets food. Available in 500g and 150g.',
 180.00, 220.00, 18, 'Value Nest', 'All Breeds', 'Veg', 'Rabbit', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/value-nest-rabbit-pellets-food.jpg', 164, 'rabbit-food');
 
 -- ========================birds========================= 
 
 select * from products where category_id=165;
 
 update products set image_url='/images/category/birds/versele-laga-prestige-food-parrots.jpg' where id = 343;
 update products set image_url='/images/category/birds/vitapol-economic-food-budgies.jpg' where id = 344;
 update products set image_url='/images/category/birds/zupreem-fruitblend-large-bird-food.jpg' where id = 345;
 update products set image_url='/images/category/birds/versele-laga-nutribird-a19-supplement.jpg' where id = 346;
 
 
 INSERT IGNORE INTO categories (id, name, description) VALUES
(165, 'Bird Food', 'Food products for birds');

INSERT INTO products
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES
('Versele Laga Prestige Food For Parrots',
 'Prestige food for parrots. Available in 3kg and 1kg.',
 2250.00, 2500.00, 10, 'Versele Laga', 'All Breeds', NULL, 'Bird', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/versele-laga-prestige-food-parrots.jpg', 165, 'bird-food'),

('Vitapol Economic Food For Budgies',
 'Economic food for budgies. 1.2kg.',
 518.00, 575.00, 10, 'Vitapol', 'All Breeds', NULL, 'Bird', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/vitapol-economic-food-budgies.jpg', 165, 'bird-food'),

('ZuPreem FruitBlend Flavor With Natural Flavors Avian Diets Large Bird Food',
 'FruitBlend flavor avian diets for large birds. Available in 907g and 1.6kg.',
 1350.00, 1500.00, 10, 'ZuPreem', 'All Breeds', NULL, 'Bird', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/zupreem-fruitblend-large-bird-food.jpg', 165, 'bird-food'),

('Versele Laga Nutribird A19 Supplement For Birds',
 'Nutribird A19 supplement for birds. Available in 800g and 250g.',
 2228.00, 2475.00, 10, 'Versele Laga', 'All Breeds', NULL, 'Bird', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/versele-laga-nutribird-a19-supplement.jpg', 165, 'bird-food');
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


 
 
 select * from categories;
select * from products;















 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Fluffy\'s Pawsome Waterproof Elevated Sides Camping Bed For Dogs Black',
 'Waterproof elevated sides camping bed for dogs in black',
 2699.00, 3499.00, 23, 'Fluffy\'s', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/lifestyle/fluffys-elevated-bed.jpg', 142, 'lifestyle');
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Royal Canin Veterinary Hypoallergenic Cat Dry Food',
 'Veterinary hypoallergenic dry food for cats. Vet approved. Exclusive.',
 10050.00, 10050.00, 0, 'Royal Canin', 'All Breeds', 'Dry', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/health/royal-canin-hypoallergenic.jpg', 135, 'health,prescription'),

('Bark Out Loud Skin & Coat Sardine Oil For Dogs And Cats',
 'Skin and coat sardine oil supplement for dogs and cats',
 328.00, 400.00, 18, 'Bark Out Loud', 'All Breeds', 'Supplement', 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/health/bol-sardine-oil.jpg', 136, 'health'),

('Virbac Episoothe Oatmeal Shampoo For Dogs & Cats',
 'Oatmeal shampoo for dogs and cats. 200ml.',
 283.00, 298.00, 5, 'Virbac', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/health/virbac-episoothe-shampoo.jpg', 137, 'health');
 
 
 
 
 -- ===========================health============== 
 
 INSERT IGNORE INTO categories (id, name, description) VALUES
(135, 'Cat Skin & Coat',    'Skin and coat care products for cats'),
(136, 'Cat Health Supplements', 'Health supplements for cats'),
(137, 'Cat Shampoos',       'Shampoos for cats'),
(138, 'Cat Sprays',         'Sprays for cats'),
(139, 'Cat Ointments',      'Ointments for cats');
 
 INSERT INTO products 
(name, description, price, original_price, discount_percent, brand, breed, food_type, pet_type, breed_size, stock, type, available, image_url, category_id, tags)
VALUES

('Royal Canin Veterinary Hypoallergenic Cat Dry Food',
 'Veterinary hypoallergenic dry food for cats. Vet approved. Exclusive.',
 10050.00, 10050.00, 0, 'Royal Canin', 'All Breeds', 'Dry', 'Cat', 'All Sizes', 50, 'FOOD', 1,
 '/images/category/cats/health/royal-canin-hypoallergenic.jpg', 135, 'health,prescription'),

('Bark Out Loud Skin & Coat Sardine Oil For Dogs And Cats',
 'Skin and coat sardine oil supplement for dogs and cats',
 328.00, 400.00, 18, 'Bark Out Loud', 'All Breeds', 'Supplement', 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/health/bol-sardine-oil.jpg', 136, 'health'),

('Virbac Episoothe Oatmeal Shampoo For Dogs & Cats',
 'Oatmeal shampoo for dogs and cats. 200ml.',
 283.00, 298.00, 5, 'Virbac', 'All Breeds', NULL, 'Cat', 'All Sizes', 50, 'ECOMMERCE', 1,
 '/images/category/cats/health/virbac-episoothe-shampoo.jpg', 137, 'health');
 
 
 
 
 
 
 
 
 
 