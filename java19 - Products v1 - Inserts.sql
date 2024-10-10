
-- Inser into Product Description table
INSERT INTO `language` VALUES 
(0, "en", "English"),
(0, "az", "Azerbaijan")
;

-- Inser into Category table
INSERT INTO `category` VALUES
(1,'Fruits'),
(2,'Vegetables')
;

-- Inser into Units of Measurement table
INSERT INTO `measure_unit` VALUES 
(1, "PCS", "Pieces"),
(2, "KG", "Kilograms"),
(3, "STLK", "Stalk")
;

-- Inser into Product table
INSERT INTO `product` VALUES 
(1,1,2,'Apple',1.5,1000),
(2,1,2,'Pomegranate',2.5,2000),
(3,1,2,'Tomato',1,1500),
(4,2,2,'Broccoli',3,800),
(5,2,3,'Greens, Coriander',0.5,100),
(6,2,3,'Greens, Dill',0.5,100),
(7,2,3,'Greens, Fennel',0.5,150),
(8,2,3,'Greens, Parsley',0.5,200),
(9,2,3,'Greens, Spinach',0.5,600)
;

-- Inser into Product Description table ENGLISH
INSERT INTO `product_description` VALUES 
(0, 1, 1, "Fuji apples from the other side of the Earth"),
(0, 1, 2, "Organic Pomegranates"),
(0, 1, 3, "Locally produced Organic Tomato"),
(0, 1, 4, "Green flowery Cruciferous vegetable"),
(0, 1, 5, "Green leafy vegetable"),
(0, 1, 6, "Green vegetable"),
(0, 1, 7, "Green vegetable"),
(0, 1, 8, "Green leafy vegetable with a lot of Oxalate ~1100 to destroy kidneys and damage health which will outweigh the benefits of its nutrients"),
(0, 1, 9, "Green leafy vegetable with a lot of Oxalate ~900 to destroy kidneys and damage health which will outweigh the benefits of its nutrients")
;

-- Inser into Product Description table AZERBAIJAN
INSERT INTO `product_description` VALUES 
(0, 2, 1, "Fuji almaları"),
(0, 2, 2, "Organik yetişdirilmiş Nar"),
(0, 2, 3, "Yerli Organik Pomidor"),
(0, 2, 4, "Cruciferous fəsiləsindən olan tərəvəz"),
(0, 2, 5, "Göyərti, Keşniş - Yekə yarpaqlı göy tərəvəz"),
(0, 2, 6, "Göyərti, Şüyüd"),
(0, 2, 7, "Göyərti, Şüyüd"),
(0, 2, 8, "Göyərti, Parsley - Yekə yarpaqlı göy tərəvəz."),
(0, 2, 9, "Göyərti, İspanaq - Böyrək ÇÖKDÜRƏN Yekə yarpaqlı göy tərəvəz")
;
