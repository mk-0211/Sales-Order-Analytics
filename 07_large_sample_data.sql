TRUNCATE TABLE payments RESTART IDENTITY CASCADE;

TRUNCATE TABLE order_items RESTART IDENTITY CASCADE;

TRUNCATE TABLE orders RESTART IDENTITY CASCADE;

TRUNCATE TABLE products RESTART IDENTITY CASCADE;

TRUNCATE TABLE customers RESTART IDENTITY CASCADE;

INSERT INTO
    customers (
        customer_id,
        name,
        email,
        city,
        signup_date
    )
VALUES (
        1,
        'Alice Johnson',
        'alice.johnson@email.com',
        'New York',
        '2022-01-15'
    ),
    (
        2,
        'Bob Smith',
        'bob.smith@email.com',
        'San Francisco',
        '2022-02-20'
    ),
    (
        3,
        'Charlie Brown',
        'charlie.brown@email.com',
        'London',
        '2022-03-10'
    ),
    (
        4,
        'Diana Prince',
        'diana.prince@email.com',
        'Paris',
        '2022-04-05'
    ),
    (
        5,
        'Evan Wright',
        'evan.wright@email.com',
        'Berlin',
        '2022-05-12'
    ),
    (
        6,
        'Fiona Green',
        'fiona.green@email.com',
        'Toronto',
        '2022-06-18'
    ),
    (
        7,
        'George Hall',
        'george.hall@email.com',
        'Sydney',
        '2022-07-22'
    ),
    (
        8,
        'Hannah Lee',
        'hannah.lee@email.com',
        'Tokyo',
        '2022-08-30'
    ),
    (
        9,
        'Ivan Petrov',
        'ivan.petrov@email.com',
        'Moscow',
        '2022-09-14'
    ),
    (
        10,
        'Julia Roberts',
        'julia.roberts@email.com',
        'Los Angeles',
        '2022-10-01'
    ),
    (
        11,
        'Kevin Nash',
        'kevin.nash@email.com',
        'Chicago',
        '2022-10-15'
    ),
    (
        12,
        'Laura Kim',
        'laura.kim@email.com',
        'Seoul',
        '2022-11-03'
    ),
    (
        13,
        'Michael Scott',
        'michael.scott@email.com',
        'Scranton',
        '2022-11-20'
    ),
    (
        14,
        'Nancy Drew',
        'nancy.drew@email.com',
        'Boston',
        '2022-12-05'
    ),
    (
        15,
        'Oscar Wilde',
        'oscar.wilde@email.com',
        'Dublin',
        '2022-12-22'
    ),
    (
        16,
        'Patricia Moore',
        'patricia.moore@email.com',
        'Miami',
        '2023-01-08'
    ),
    (
        17,
        'Quincy Adams',
        'quincy.adams@email.com',
        'Washington',
        '2023-01-25'
    ),
    (
        18,
        'Rachel Green',
        'rachel.green@email.com',
        'New York',
        '2023-02-10'
    ),
    (
        19,
        'Steve Rogers',
        'steve.rogers@email.com',
        'Brooklyn',
        '2023-02-28'
    ),
    (
        20,
        'Tina Turner',
        'tina.turner@email.com',
        'Nashville',
        '2023-03-15'
    ),
    (
        21,
        'Uma Thurman',
        'uma.thurman@email.com',
        'Dallas',
        '2023-03-30'
    ),
    (
        22,
        'Victor Hugo',
        'victor.hugo@email.com',
        'Lyon',
        '2023-04-12'
    ),
    (
        23,
        'Wendy Williams',
        'wendy.williams@email.com',
        'Houston',
        '2023-04-25'
    ),
    (
        24,
        'Xavier Cruz',
        'xavier.cruz@email.com',
        'Madrid',
        '2023-05-08'
    ),
    (
        25,
        'Yuki Tanaka',
        'yuki.tanaka@email.com',
        'Osaka',
        '2023-05-20'
    ),
    (
        26,
        'Zara Ahmed',
        'zara.ahmed@email.com',
        'Dubai',
        '2023-06-02'
    ),
    (
        27,
        'Aaron Clark',
        'aaron.clark@email.com',
        'Phoenix',
        '2023-06-15'
    ),
    (
        28,
        'Bella Swan',
        'bella.swan@email.com',
        'Seattle',
        '2023-06-28'
    ),
    (
        29,
        'Carlos Diaz',
        'carlos.diaz@email.com',
        'Mexico City',
        '2023-07-10'
    ),
    (
        30,
        'Daisy Miller',
        'daisy.miller@email.com',
        'Denver',
        '2023-07-22'
    ),
    (
        31,
        'Edward Norton',
        'edward.norton@email.com',
        'Portland',
        '2023-08-05'
    ),
    (
        32,
        'Freya Andersen',
        'freya.andersen@email.com',
        'Copenhagen',
        '2023-08-18'
    ),
    (
        33,
        'Greg House',
        'greg.house@email.com',
        'Princeton',
        '2023-09-01'
    ),
    (
        34,
        'Helen Troy',
        'helen.troy@email.com',
        'Athens',
        '2023-09-14'
    ),
    (
        35,
        'Ian Fleming',
        'ian.fleming@email.com',
        'London',
        '2023-09-27'
    ),
    (
        36,
        'Jane Austen',
        'jane.austen@email.com',
        'Bath',
        '2023-10-10'
    ),
    (
        37,
        'Karl Marx',
        'karl.marx@email.com',
        'Trier',
        '2023-10-23'
    ),
    (
        38,
        'Luna Park',
        'luna.park@email.com',
        'Singapore',
        '2023-11-05'
    ),
    (
        39,
        'Marco Polo',
        'marco.polo@email.com',
        'Venice',
        '2023-11-18'
    ),
    (
        40,
        'Nina Simone',
        'nina.simone@email.com',
        'Atlanta',
        '2023-12-01'
    ),
    (
        41,
        'Oliver Twist',
        'oliver.twist@email.com',
        'Manchester',
        '2023-12-14'
    ),
    (
        42,
        'Penny Lane',
        'penny.lane@email.com',
        'Liverpool',
        '2023-12-27'
    ),
    (
        43,
        'Quinn Hughes',
        'quinn.hughes@email.com',
        'Vancouver',
        '2024-01-09'
    ),
    (
        44,
        'Rosa Parks',
        'rosa.parks@email.com',
        'Montgomery',
        '2024-01-22'
    ),
    (
        45,
        'Sam Wilson',
        'sam.wilson@email.com',
        'New York',
        '2024-02-04'
    ),
    (
        46,
        'Tracy Morgan',
        'tracy.morgan@email.com',
        'New York',
        '2024-02-17'
    ),
    (
        47,
        'Ursula King',
        'ursula.king@email.com',
        'Birmingham',
        '2024-03-01'
    ),
    (
        48,
        'Vincent Van',
        'vincent.van@email.com',
        'Amsterdam',
        '2024-03-14'
    ),
    (
        49,
        'Walter White',
        'walter.white@email.com',
        'Albuquerque',
        '2024-03-27'
    ),
    (
        50,
        'Xena Warrior',
        'xena.warrior@email.com',
        'Auckland',
        '2024-04-09'
    );

-- 20 PRODUCTS

INSERT INTO
    products (
        product_id,
        product_name,
        category,
        price,
        stock
    )
VALUES (
        101,
        'MacBook Pro 16',
        'Electronics',
        2499.00,
        50
    ),
    (
        102,
        'Wireless Mouse',
        'Electronics',
        49.99,
        200
    ),
    (
        103,
        'Ergonomic Chair',
        'Furniture',
        199.50,
        150
    ),
    (
        104,
        'Mechanical Keyboard',
        'Electronics',
        120.00,
        75
    ),
    (
        105,
        'Standing Desk',
        'Furniture',
        350.00,
        40
    ),
    (
        106,
        'iPhone 15 Pro',
        'Electronics',
        999.00,
        80
    ),
    (
        107,
        'Samsung 4K Monitor',
        'Electronics',
        450.00,
        60
    ),
    (
        108,
        'Noise Cancelling ANC',
        'Electronics',
        299.00,
        120
    ),
    (
        109,
        'Office Bookshelf',
        'Furniture',
        180.00,
        90
    ),
    (
        110,
        'Laptop Stand',
        'Accessories',
        45.00,
        300
    ),
    (
        111,
        'USB-C Hub',
        'Accessories',
        35.00,
        250
    ),
    (
        112,
        'Webcam HD 1080p',
        'Electronics',
        89.00,
        110
    ),
    (
        113,
        'LED Desk Lamp',
        'Accessories',
        55.00,
        180
    ),
    (
        114,
        'Gaming Chair',
        'Furniture',
        450.00,
        35
    ),
    (
        115,
        'iPad Pro 12.9',
        'Electronics',
        1099.00,
        45
    ),
    (
        116,
        'Logitech MX Keys',
        'Electronics',
        119.00,
        95
    ),
    (
        117,
        'Dell XPS 15 Laptop',
        'Electronics',
        1799.00,
        30
    ),
    (
        118,
        'Filing Cabinet',
        'Furniture',
        220.00,
        55
    ),
    (
        119,
        'Portable SSD 1TB',
        'Accessories',
        110.00,
        140
    ),
    (
        120,
        'Smart Watch Series 9',
        'Electronics',
        399.00,
        70
    );

INSERT INTO
    orders (
        order_id,
        customer_id,
        order_date,
        status,
        total_amount
    )
VALUES (
        1001,
        1,
        '2022-02-10',
        'COMPLETED',
        2548.99
    ),
    (
        1002,
        2,
        '2022-02-15',
        'COMPLETED',
        199.50
    ),
    (
        1003,
        3,
        '2022-03-01',
        'COMPLETED',
        470.00
    ),
    (
        1004,
        4,
        '2022-03-10',
        'COMPLETED',
        120.00
    ),
    (
        1005,
        5,
        '2022-03-20',
        'CANCELLED',
        2499.00
    ),
    (
        1006,
        6,
        '2022-04-05',
        'COMPLETED',
        999.00
    ),
    (
        1007,
        7,
        '2022-04-12',
        'COMPLETED',
        450.00
    ),
    (
        1008,
        8,
        '2022-04-22',
        'COMPLETED',
        299.00
    ),
    (
        1009,
        9,
        '2022-05-03',
        'PENDING',
        180.00
    ),
    (
        1010,
        10,
        '2022-05-15',
        'COMPLETED',
        1099.00
    ),
    (
        1011,
        11,
        '2022-05-28',
        'COMPLETED',
        119.00
    ),
    (
        1012,
        12,
        '2022-06-08',
        'COMPLETED',
        1799.00
    ),
    (
        1013,
        13,
        '2022-06-18',
        'CANCELLED',
        220.00
    ),
    (
        1014,
        14,
        '2022-06-28',
        'COMPLETED',
        399.00
    ),
    (
        1015,
        15,
        '2022-07-10',
        'COMPLETED',
        549.00
    ),
    (
        1016,
        16,
        '2022-07-20',
        'COMPLETED',
        249.00
    ),
    (
        1017,
        17,
        '2022-08-01',
        'COMPLETED',
        1249.00
    ),
    (
        1018,
        18,
        '2022-08-12',
        'COMPLETED',
        349.00
    ),
    (
        1019,
        19,
        '2022-08-22',
        'PENDING',
        899.00
    ),
    (
        1020,
        20,
        '2022-09-01',
        'COMPLETED',
        159.00
    ),
    (
        1021,
        21,
        '2022-09-12',
        'COMPLETED',
        2299.00
    ),
    (
        1022,
        22,
        '2022-09-22',
        'COMPLETED',
        499.00
    ),
    (
        1023,
        23,
        '2022-10-03',
        'COMPLETED',
        749.00
    ),
    (
        1024,
        24,
        '2022-10-14',
        'CANCELLED',
        329.00
    ),
    (
        1025,
        25,
        '2022-10-25',
        'COMPLETED',
        199.00
    ),
    (
        1026,
        26,
        '2022-11-05',
        'COMPLETED',
        1599.00
    ),
    (
        1027,
        27,
        '2022-11-15',
        'COMPLETED',
        279.00
    ),
    (
        1028,
        28,
        '2022-11-25',
        'COMPLETED',
        449.00
    ),
    (
        1029,
        29,
        '2022-12-05',
        'COMPLETED',
        899.00
    ),
    (
        1030,
        30,
        '2022-12-15',
        'COMPLETED',
        1199.00
    ),
    (
        1031,
        31,
        '2022-12-25',
        'CANCELLED',
        599.00
    ),
    (
        1032,
        32,
        '2023-01-05',
        'COMPLETED',
        349.00
    ),
    (
        1033,
        33,
        '2023-01-15',
        'COMPLETED',
        2799.00
    ),
    (
        1034,
        34,
        '2023-01-25',
        'COMPLETED',
        229.00
    ),
    (
        1035,
        35,
        '2023-02-04',
        'COMPLETED',
        799.00
    ),
    (
        1036,
        36,
        '2023-02-14',
        'PENDING',
        459.00
    ),
    (
        1037,
        37,
        '2023-02-24',
        'COMPLETED',
        1349.00
    ),
    (
        1038,
        38,
        '2023-03-06',
        'COMPLETED',
        679.00
    ),
    (
        1039,
        39,
        '2023-03-16',
        'COMPLETED',
        189.00
    ),
    (
        1040,
        40,
        '2023-03-26',
        'COMPLETED',
        999.00
    ),
    (
        1041,
        41,
        '2023-04-05',
        'COMPLETED',
        2199.00
    ),
    (
        1042,
        42,
        '2023-04-15',
        'CANCELLED',
        399.00
    ),
    (
        1043,
        43,
        '2023-04-25',
        'COMPLETED',
        549.00
    ),
    (
        1044,
        44,
        '2023-05-05',
        'COMPLETED',
        299.00
    ),
    (
        1045,
        45,
        '2023-05-15',
        'COMPLETED',
        1799.00
    ),
    (
        1046,
        46,
        '2023-05-25',
        'COMPLETED',
        449.00
    ),
    (
        1047,
        47,
        '2023-06-04',
        'COMPLETED',
        699.00
    ),
    (
        1048,
        48,
        '2023-06-14',
        'COMPLETED',
        1099.00
    ),
    (
        1049,
        49,
        '2023-06-24',
        'PENDING',
        349.00
    ),
    (
        1050,
        50,
        '2023-07-04',
        'COMPLETED',
        899.00
    ),
    (
        1051,
        1,
        '2023-07-14',
        'COMPLETED',
        499.00
    ),
    (
        1052,
        2,
        '2023-07-24',
        'COMPLETED',
        1599.00
    ),
    (
        1053,
        3,
        '2023-08-03',
        'COMPLETED',
        279.00
    ),
    (
        1054,
        4,
        '2023-08-13',
        'CANCELLED',
        749.00
    ),
    (
        1055,
        5,
        '2023-08-23',
        'COMPLETED',
        329.00
    ),
    (
        1056,
        6,
        '2023-09-02',
        'COMPLETED',
        2499.00
    ),
    (
        1057,
        7,
        '2023-09-12',
        'COMPLETED',
        199.00
    ),
    (
        1058,
        8,
        '2023-09-22',
        'COMPLETED',
        599.00
    ),
    (
        1059,
        9,
        '2023-10-02',
        'COMPLETED',
        1099.00
    ),
    (
        1060,
        10,
        '2023-10-12',
        'COMPLETED',
        449.00
    ),
    (
        1061,
        11,
        '2023-10-22',
        'COMPLETED',
        899.00
    ),
    (
        1062,
        12,
        '2023-11-01',
        'CANCELLED',
        249.00
    ),
    (
        1063,
        13,
        '2023-11-11',
        'COMPLETED',
        1799.00
    ),
    (
        1064,
        14,
        '2023-11-21',
        'COMPLETED',
        399.00
    ),
    (
        1065,
        15,
        '2023-12-01',
        'COMPLETED',
        2799.00
    ),
    (
        1066,
        16,
        '2023-12-11',
        'COMPLETED',
        549.00
    ),
    (
        1067,
        17,
        '2023-12-21',
        'COMPLETED',
        299.00
    ),
    (
        1068,
        18,
        '2024-01-01',
        'COMPLETED',
        1499.00
    ),
    (
        1069,
        19,
        '2024-01-11',
        'COMPLETED',
        799.00
    ),
    (
        1070,
        20,
        '2024-01-21',
        'PENDING',
        349.00
    ),
    (
        1071,
        21,
        '2024-02-01',
        'COMPLETED',
        649.00
    ),
    (
        1072,
        22,
        '2024-02-11',
        'COMPLETED',
        1999.00
    ),
    (
        1073,
        23,
        '2024-02-21',
        'COMPLETED',
        479.00
    ),
    (
        1074,
        24,
        '2024-03-03',
        'COMPLETED',
        899.00
    ),
    (
        1075,
        25,
        '2024-03-13',
        'CANCELLED',
        229.00
    ),
    (
        1076,
        26,
        '2024-03-23',
        'COMPLETED',
        1299.00
    ),
    (
        1077,
        27,
        '2024-04-02',
        'COMPLETED',
        449.00
    ),
    (
        1078,
        28,
        '2024-04-12',
        'COMPLETED',
        749.00
    ),
    (
        1079,
        29,
        '2024-04-22',
        'COMPLETED',
        2099.00
    ),
    (
        1080,
        30,
        '2024-05-02',
        'COMPLETED',
        599.00
    ),
    (
        1081,
        31,
        '2023-01-08',
        'COMPLETED',
        349.00
    ),
    (
        1082,
        32,
        '2023-01-18',
        'COMPLETED',
        1149.00
    ),
    (
        1083,
        33,
        '2023-01-28',
        'CANCELLED',
        499.00
    ),
    (
        1084,
        34,
        '2023-02-07',
        'COMPLETED',
        799.00
    ),
    (
        1085,
        35,
        '2023-02-17',
        'COMPLETED',
        279.00
    ),
    (
        1086,
        36,
        '2023-02-27',
        'COMPLETED',
        1999.00
    ),
    (
        1087,
        37,
        '2023-03-09',
        'COMPLETED',
        649.00
    ),
    (
        1088,
        38,
        '2023-03-19',
        'COMPLETED',
        449.00
    ),
    (
        1089,
        39,
        '2023-03-29',
        'PENDING',
        899.00
    ),
    (
        1090,
        40,
        '2023-04-08',
        'COMPLETED',
        199.00
    ),
    (
        1091,
        41,
        '2023-04-18',
        'COMPLETED',
        2499.00
    ),
    (
        1092,
        42,
        '2023-04-28',
        'COMPLETED',
        379.00
    ),
    (
        1093,
        43,
        '2023-05-08',
        'COMPLETED',
        699.00
    ),
    (
        1094,
        44,
        '2023-05-18',
        'CANCELLED',
        299.00
    ),
    (
        1095,
        45,
        '2023-05-28',
        'COMPLETED',
        1599.00
    ),
    (
        1096,
        46,
        '2023-06-07',
        'COMPLETED',
        549.00
    ),
    (
        1097,
        47,
        '2023-06-17',
        'COMPLETED',
        849.00
    ),
    (
        1098,
        48,
        '2023-06-27',
        'COMPLETED',
        1099.00
    ),
    (
        1099,
        49,
        '2023-07-07',
        'COMPLETED',
        399.00
    ),
    (
        1100,
        50,
        '2023-07-17',
        'COMPLETED',
        999.00
    ),
    (
        1101,
        1,
        '2022-08-01',
        'COMPLETED',
        1799.00
    ),
    (
        1102,
        3,
        '2022-08-15',
        'COMPLETED',
        350.00
    ),
    (
        1103,
        5,
        '2022-09-01',
        'COMPLETED',
        450.00
    ),
    (
        1104,
        7,
        '2022-09-15',
        'CANCELLED',
        120.00
    ),
    (
        1105,
        9,
        '2022-10-01',
        'COMPLETED',
        2499.00
    ),
    (
        1106,
        11,
        '2022-10-15',
        'COMPLETED',
        999.00
    ),
    (
        1107,
        13,
        '2022-11-01',
        'COMPLETED',
        299.00
    ),
    (
        1108,
        15,
        '2022-11-15',
        'COMPLETED',
        1099.00
    ),
    (
        1109,
        17,
        '2022-12-01',
        'PENDING',
        450.00
    ),
    (
        1110,
        19,
        '2022-12-15',
        'COMPLETED',
        399.00
    ),
    (
        1111,
        21,
        '2023-01-03',
        'COMPLETED',
        1799.00
    ),
    (
        1112,
        23,
        '2023-01-20',
        'COMPLETED',
        549.00
    ),
    (
        1113,
        25,
        '2023-02-05',
        'COMPLETED',
        899.00
    ),
    (
        1114,
        27,
        '2023-02-20',
        'COMPLETED',
        199.00
    ),
    (
        1115,
        29,
        '2023-03-07',
        'CANCELLED',
        2299.00
    ),
    (
        1116,
        31,
        '2023-03-22',
        'COMPLETED',
        679.00
    ),
    (
        1117,
        33,
        '2023-04-06',
        'COMPLETED',
        449.00
    ),
    (
        1118,
        35,
        '2023-04-21',
        'COMPLETED',
        1149.00
    ),
    (
        1119,
        37,
        '2023-05-06',
        'COMPLETED',
        349.00
    ),
    (
        1120,
        39,
        '2023-05-21',
        'COMPLETED',
        799.00
    ),
    (
        1121,
        41,
        '2023-06-05',
        'COMPLETED',
        2099.00
    ),
    (
        1122,
        43,
        '2023-06-20',
        'PENDING',
        299.00
    ),
    (
        1123,
        45,
        '2023-07-05',
        'COMPLETED',
        649.00
    ),
    (
        1124,
        47,
        '2023-07-20',
        'COMPLETED',
        1299.00
    ),
    (
        1125,
        49,
        '2023-08-04',
        'COMPLETED',
        499.00
    ),
    (
        1126,
        2,
        '2023-08-19',
        'COMPLETED',
        849.00
    ),
    (
        1127,
        4,
        '2023-09-03',
        'COMPLETED',
        1999.00
    ),
    (
        1128,
        6,
        '2023-09-18',
        'CANCELLED',
        379.00
    ),
    (
        1129,
        8,
        '2023-10-03',
        'COMPLETED',
        749.00
    ),
    (
        1130,
        10,
        '2023-10-18',
        'COMPLETED',
        2499.00
    ),
    (
        1131,
        12,
        '2023-11-02',
        'COMPLETED',
        449.00
    ),
    (
        1132,
        14,
        '2023-11-17',
        'COMPLETED',
        899.00
    ),
    (
        1133,
        16,
        '2023-12-02',
        'COMPLETED',
        1599.00
    ),
    (
        1134,
        18,
        '2023-12-17',
        'COMPLETED',
        249.00
    ),
    (
        1135,
        20,
        '2024-01-01',
        'COMPLETED',
        1099.00
    ),
    (
        1136,
        22,
        '2024-01-16',
        'COMPLETED',
        549.00
    ),
    (
        1137,
        24,
        '2024-01-31',
        'PENDING',
        799.00
    ),
    (
        1138,
        26,
        '2024-02-15',
        'COMPLETED',
        2299.00
    ),
    (
        1139,
        28,
        '2024-03-01',
        'COMPLETED',
        399.00
    ),
    (
        1140,
        30,
        '2024-03-16',
        'COMPLETED',
        699.00
    ),
    (
        1141,
        32,
        '2024-04-01',
        'COMPLETED',
        1499.00
    ),
    (
        1142,
        34,
        '2024-04-16',
        'CANCELLED',
        329.00
    ),
    (
        1143,
        36,
        '2024-05-01',
        'COMPLETED',
        949.00
    ),
    (
        1144,
        38,
        '2024-05-16',
        'COMPLETED',
        1799.00
    ),
    (
        1145,
        40,
        '2024-05-31',
        'COMPLETED',
        479.00
    ),
    (
        1146,
        42,
        '2022-03-15',
        'COMPLETED',
        599.00
    ),
    (
        1147,
        44,
        '2022-04-01',
        'COMPLETED',
        2499.00
    ),
    (
        1148,
        46,
        '2022-04-20',
        'COMPLETED',
        349.00
    ),
    (
        1149,
        48,
        '2022-05-05',
        'COMPLETED',
        899.00
    ),
    (
        1150,
        50,
        '2022-05-25',
        'COMPLETED',
        1199.00
    );

-- ORDER ITEMS

INSERT INTO
    order_items (
        order_item_id,
        order_id,
        product_id,
        quantity,
        unit_price
    )
VALUES (1, 1001, 101, 1, 2499.00),
    (2, 1001, 102, 1, 49.99),
    (3, 1002, 103, 1, 199.50),
    (4, 1003, 104, 1, 120.00),
    (5, 1003, 105, 1, 350.00),
    (6, 1004, 104, 1, 120.00),
    (7, 1005, 101, 1, 2499.00),
    (8, 1006, 106, 1, 999.00),
    (9, 1007, 107, 1, 450.00),
    (10, 1008, 108, 1, 299.00),
    (11, 1009, 109, 1, 180.00),
    (12, 1010, 115, 1, 1099.00),
    (13, 1011, 116, 1, 119.00),
    (14, 1012, 117, 1, 1799.00),
    (15, 1013, 118, 1, 220.00),
    (16, 1014, 120, 1, 399.00),
    (17, 1015, 108, 1, 299.00),
    (18, 1015, 110, 1, 45.00),
    (19, 1015, 111, 1, 35.00),
    (20, 1015, 113, 1, 55.00),
    (21, 1015, 119, 1, 110.00),
    (22, 1016, 102, 2, 49.99),
    (23, 1016, 111, 3, 35.00),
    (24, 1016, 113, 1, 55.00),
    (25, 1017, 115, 1, 1099.00),
    (26, 1017, 104, 1, 120.00),
    (27, 1017, 119, 1, 110.00),
    (28, 1018, 108, 1, 299.00),
    (29, 1018, 102, 1, 49.99),
    (30, 1019, 106, 1, 999.00),
    (31, 1020, 113, 1, 55.00),
    (32, 1020, 111, 1, 35.00),
    (33, 1020, 110, 1, 45.00),
    (34, 1021, 101, 1, 2499.00),
    (35, 1021, 116, 1, 119.00),
    (36, 1022, 107, 1, 450.00),
    (37, 1022, 102, 1, 49.99),
    (38, 1023, 108, 2, 299.00),
    (39, 1023, 111, 5, 35.00),
    (40, 1024, 103, 1, 199.50),
    (41, 1024, 113, 1, 55.00),
    (42, 1024, 110, 1, 45.00),
    (43, 1025, 112, 1, 89.00),
    (44, 1025, 119, 1, 110.00),
    (45, 1026, 117, 1, 1799.00),
    (46, 1027, 104, 1, 120.00),
    (47, 1027, 116, 1, 119.00),
    (48, 1027, 110, 1, 45.00),
    (49, 1028, 108, 1, 299.00),
    (50, 1028, 112, 1, 89.00),
    (51, 1028, 111, 1, 35.00),
    (52, 1029, 106, 1, 999.00),
    (53, 1030, 115, 1, 1099.00),
    (54, 1030, 112, 1, 89.00),
    (55, 1030, 110, 1, 45.00),
    (56, 1031, 107, 1, 450.00),
    (57, 1031, 104, 1, 120.00),
    (58, 1032, 103, 1, 199.50),
    (59, 1032, 113, 1, 55.00),
    (60, 1032, 111, 1, 35.00),
    (61, 1032, 110, 1, 45.00),
    (62, 1033, 101, 1, 2499.00),
    (63, 1033, 116, 1, 119.00),
    (64, 1033, 112, 1, 89.00),
    (65, 1034, 113, 2, 55.00),
    (66, 1034, 111, 2, 35.00),
    (67, 1034, 110, 2, 45.00),
    (68, 1035, 120, 2, 399.00),
    (69, 1036, 107, 1, 450.00),
    (70, 1037, 117, 1, 1799.00),
    (71, 1038, 108, 1, 299.00),
    (72, 1038, 119, 1, 110.00),
    (73, 1038, 111, 2, 35.00),
    (74, 1039, 113, 2, 55.00),
    (75, 1039, 111, 2, 35.00),
    (76, 1040, 106, 1, 999.00),
    (77, 1041, 101, 1, 2499.00),
    (78, 1042, 120, 1, 399.00),
    (79, 1043, 108, 1, 299.00),
    (80, 1043, 110, 1, 45.00),
    (81, 1043, 111, 1, 35.00),
    (82, 1043, 113, 1, 55.00),
    (83, 1043, 119, 1, 110.00),
    (84, 1044, 108, 1, 299.00),
    (85, 1045, 117, 1, 1799.00),
    (86, 1046, 107, 1, 450.00),
    (87, 1047, 114, 1, 450.00),
    (88, 1047, 119, 1, 110.00),
    (89, 1047, 111, 1, 35.00),
    (90, 1047, 113, 1, 55.00),
    (91, 1048, 115, 1, 1099.00),
    (92, 1049, 103, 1, 199.50),
    (93, 1049, 113, 1, 55.00),
    (94, 1049, 110, 1, 45.00),
    (95, 1050, 106, 1, 999.00),
    (96, 1051, 107, 1, 450.00),
    (97, 1051, 102, 1, 49.99),
    (98, 1052, 117, 1, 1799.00),
    (99, 1053, 104, 1, 120.00),
    (100, 1053, 116, 1, 119.00),
    (101, 1053, 110, 1, 45.00),
    (102, 1054, 108, 2, 299.00),
    (103, 1054, 111, 5, 35.00),
    (104, 1055, 103, 1, 199.50),
    (105, 1055, 113, 1, 55.00),
    (106, 1055, 110, 1, 45.00),
    (107, 1056, 101, 1, 2499.00),
    (108, 1057, 112, 1, 89.00),
    (109, 1057, 119, 1, 110.00),
    (110, 1058, 107, 1, 450.00),
    (111, 1058, 108, 1, 299.00),
    (112, 1059, 115, 1, 1099.00),
    (113, 1060, 107, 1, 450.00),
    (114, 1061, 106, 1, 999.00),
    (115, 1062, 103, 1, 199.50),
    (116, 1062, 102, 1, 49.99),
    (117, 1063, 117, 1, 1799.00),
    (118, 1064, 120, 1, 399.00),
    (119, 1065, 101, 1, 2499.00),
    (120, 1065, 104, 1, 120.00),
    (121, 1065, 119, 1, 110.00),
    (122, 1066, 108, 1, 299.00),
    (123, 1066, 110, 1, 45.00),
    (124, 1066, 111, 1, 35.00),
    (125, 1066, 113, 1, 55.00),
    (126, 1066, 119, 1, 110.00),
    (127, 1067, 108, 1, 299.00),
    (128, 1068, 115, 1, 1099.00),
    (129, 1068, 120, 1, 399.00),
    (130, 1069, 120, 2, 399.00),
    (131, 1070, 103, 1, 199.50),
    (132, 1070, 113, 1, 55.00),
    (133, 1070, 110, 1, 45.00),
    (134, 1071, 114, 1, 450.00),
    (135, 1071, 119, 1, 110.00),
    (136, 1071, 111, 1, 35.00),
    (137, 1071, 113, 1, 55.00),
    (138, 1072, 101, 1, 2499.00),
    (139, 1073, 107, 1, 450.00),
    (140, 1073, 102, 1, 49.99),
    (141, 1074, 106, 1, 999.00),
    (142, 1075, 103, 1, 199.50),
    (143, 1075, 113, 1, 55.00),
    (144, 1076, 117, 1, 1799.00),
    (145, 1077, 107, 1, 450.00),
    (146, 1078, 108, 2, 299.00),
    (147, 1078, 111, 5, 35.00),
    (148, 1079, 101, 1, 2499.00),
    (149, 1080, 107, 1, 450.00),
    (150, 1080, 104, 1, 120.00),
    (151, 1080, 119, 1, 29.00);

INSERT INTO
    payments (
        payment_id,
        order_id,
        payment_date,
        amount,
        payment_status
    )
SELECT
    order_id + 8000 AS payment_id,
    order_id,
    CASE
        WHEN status = 'COMPLETED' THEN order_date + 1
        WHEN status = 'CANCELLED' THEN order_date
        ELSE NULL
    END AS payment_date,
    CASE
        WHEN status IN ('COMPLETED') THEN total_amount
        ELSE 0.00
    END AS amount,
    CASE
        WHEN status = 'COMPLETED' THEN 'SUCCESS'
        WHEN status = 'CANCELLED' THEN 'FAILED'
        ELSE 'PENDING'
    END AS payment_status
FROM orders;

REFRESH MATERIALIZED VIEW mv_monthly_revenue;

SELECT 'customers' AS table_name, COUNT(*) AS row_count
FROM customers
UNION ALL
SELECT 'products', COUNT(*)
FROM products
UNION ALL
SELECT 'orders', COUNT(*)
FROM orders
UNION ALL
SELECT 'order_items', COUNT(*)
FROM order_items
UNION ALL
SELECT 'payments', COUNT(*)
FROM payments;