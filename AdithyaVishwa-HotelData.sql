use hotel;

#SELECT * FROM Amenities;
INSERT INTO Amenities (Amenity) 
VALUES
	('Microwave'),
    ('Jacuzzi'),
    ('Refrigerator'),
	('Oven')
;
#SELECT * FROM RoomType;
INSERT INTO RoomType (RoomType) 
VALUES
	('Single'),
    ('Double'),
    ('Suite')
;

#SELECT * FROM Guest;
INSERT INTO Guest (Full_Name, Address, City, State, ZIP, Phone) 
VALUES
	('Adithya Vishwamithra', '3450 Broken Spur dr.', 'Lewisville', 'TX', '75077', '214-229-6435'),
	('Mack Simmer','379 Old Shore Street', 'Council Bluffs', 'IA', '51501','(291)-553-0508'),
	('Bettyann Seery','750 Wintergreen Dr.', 'Wasilla', 'AK', '99654','(478)-277-9632'),
	('Duane Cullison','9662 Foxrun Lane', 'Harlingen', 'TX', '78552','(308)-494-0198'),
	('Karie Yang','9378 W. Augusta Ave.', 'West Deptford', 'NJ', '78552','(214)-730-0298'),
	('Aurore Lipton','762 Wild Rose Street', 'Saginaw', 'MI', '48601','(377)-507-0974'),
	('Zachery Luechtefeld','7 Poplar Dr.', 'Arvada', 'CO', '80003','(814)-485-2615'),
	('Jeremiah Pendergrass','70 Oakwood St.', 'Zion', 'IL', '60099','(279)-491-0960'),
	('Walter Holaway','7556 Arrowhead St.', 'Cumberland', 'RI', '02864','(446)-396-6785'),
	('Wilfred Vise','77 West Surrey Street', 'Oswego', 'NY', '13126','(834)-727-1001'),
	('Maritza Tilton','939 Linda Rd.', 'Burke', 'VA', '22015','(446)-351-6860'),
	('Joleen Tison','87 Queen St.', 'Drexel Hill', 'PA', '19026','(231)-893-2755')
;
#SELECT * FROM Reservation;
INSERT INTO Reservation (Full_Name, Adults, Children, Access_Date, Vacate_Date, reservation_Cost) 
VALUES
	("Adithya Vishwamithra", 1, 1, '2023-2-2', '2023-2-4', 299.98),
	("Mack Simmer", 1,	0,	'2023-2-2',	'2023-2-4',	299.98),
	("Bettyann Seery", 2,	1,	'2023-2-5',	'2023-2-10', 999.95),
	("Duane Cullison", 2,	0,	'2023-2-22', '2023-2-24', 349.98),
	("Karie Yang", 2,	2,	'2023-3-6',	'2023-3-7',	199.99),
	("Aurore Lipton", 3,	0,	'2023-3-18', '2023-3-23', 924.95),
	("Zachery Luechtefeld	", 2,	2,	'2023-3-29', '2023-3-31', 349.98),
	("Jeremiah Pendergrass", 2,	0,	'2023-3-31', '2023-4-5', 874.95),
	("Walter Holaway", 1,	0,	'2023-4-9',	'2023-4-13', 799.96),
	("Wilfred Vise", 1,	1,	'2023-4-23', '2023-4-24', 174.99),
	("Maritza Tilton", 2,	4,	'2023-5-30', '2023-6-2', 1199.97),
	("Joleen Tison", 2,	0,	'2023-6-10', '2023-6-14', 599.96),
	("Joleen Tison", 1,	0,	'2023-6-10', '2023-6-14', 599.96),
	("Aurore Lipton", 3,	0,	'2023-6-17', '2023-6-18', 184.99),
	("Adithya Vishwamithra", 2,	0,	'2023-6-28', '2023-7-2', 699.96),
	("Walter Holaway", 3,	1,	'2023-7-13', '2023-7-14', 184.99),
	("Wilfred Vise", 4,	2,	'2023-7-18', '2023-7-21', 1259.97),
	("Bettyann Seery", 2,	1,	'2023-7-28', '2023-7-29', 199.99),
    ("Bettyann Seery", 1,	0,	'2023-8-30', '2023-9-1', 349.98),
    ("Mack Simmer", 2,	0,	'2023-9-16', '2023-9-17', 149.99),
    ("Karie Yang", 2,	2,	'2023-9-13', '2023-9-15', 399.98),
    ("Duane Cullison", 2,	2,	'2023-11-22', '2023-11-25', 1199.97),
    ("Mack Simmer", 2,	0,	'2023-11-22', '2023-11-25', 449.97),
    ("Mack Simmer", 2,	2,	'2023-11-22', '2023-11-25', 599.97),
    ("Maritza Tilton", 2,	0,	'2023-12-24', '2023-12-28', 699.96)
;

#SELECT * FROM Room;
INSERT INTO Room (RoomNumber, RoomTypeID, isAccessible, StandardOccupancy, MaximumOccupancy, BasePrice, ExtraPerson) 
VALUES
	(201, 2, false, 2, 4, 199.99, 10),
    (202, 2, true, 2, 4, 174.99, 10),
    (203, 2, false, 2, 4, 199.99, 10),
    (204, 2, true, 2, 4, 174.99, 10),
    (205, 1, false, 2, 2, 174.99, NULL),
    (206, 1, true, 2, 2, 149.99, NULL),
    (207, 1, false, 2, 2, 174.99, NULL),
    (208, 1, true, 2, 2, 149.99, NULL),
    (301, 2, false, 2, 4, 199.99, 10),
    (302, 2, true, 2, 4, 174.99, 10),
    (303, 2, false, 2, 4, 199.99, 10),
    (304, 2, true, 2, 4, 174.99, 10),
    (305, 1, false, 2, 2, 174.99, NULL),
    (306, 1, true, 2, 2, 149.99, NULL),
    (307, 1, false, 2, 2, 174.99, NULL),
    (308, 1, true, 2, 2, 149.99, NULL),
    (401, 3, true, 3, 8, 399.99, 20),
    (402, 3, true, 3, 8, 399.99, 20)
;

#SELECT * FROM RoomAmenities;
INSERT INTO RoomAmenities (RoomNumber, Amenity_ID) 
VALUES
	(201,1),
    (201,2),
    (202,3),
	(203,1),
    (203,2),
    (204,3),
    (205,1),
    (205,2),
    (205,3),
    (206,1),
    (206,3),
    (207,1),
    (207,2),
    (207,3),
    (208,1),
    (208,2),
    (301,1),
    (301,2),
    (302,3),
    (303,1),
    (303,2),
    (304,3),
    (305,1),
    (305,2),
    (305,3),
    (306,1),
    (306,3),
    (307,1),
    (307,2),
    (307,3),
    (308,1),
    (308,3),
    (401,1),
    (401,3),
    (401,4),
    (402,1),
    (402,3),
    (402,4)
;


#SELECT RoomID FROM Room;
#SELECT ReservationID FROM Reservation;
#SELECT * FROM RoomReservation;
#Accidentally entered backwards, so I flipped argument order
INSERT INTO RoomReservation (Res_ID, RoomNumber) 
VALUES
	(1, 308),
    (2, 203),
    (3, 305),
    (4, 201),
    (5, 307),
    (6, 302),
    (7, 202),
    (8, 304),
    (9, 301),
    (10, 207),
    (11, 401),
    (12, 206),
    (13, 208),
    (14, 304),
    (15, 205),
    (16, 204),
    (17, 401),
    (18, 303),
    (19, 305),
    (20, 208),
    (21, 203),
    (22, 401),
    (23, 206),
    (24, 301),
    (25, 302)
;
#SELECT GuestID FROM Guest;
#SELECT ReservationID FROM Reservation;
#SELECT * FROM GuestReservation;
INSERT INTO GuestReservation (Guest_ID, Res_ID) 
VALUES
	(2,1),
    (3,2),
    (4,3),
    (5,4),
    (1,5),
    (6,6),
    (7,7),
    (8,8),
    (9,9),
    (10,10),
    (11,11),
    (12,12),
    (12,13),
    (6,14),
    (1,15),
    (9,16),
    (10,17),
    (3,18),
    (3,19),
    (2,20),
    (5,21),
    (4,22),
    (2,23),
    (2,24),
    (11,25)
;

DELETE FROM RoomReservation rr
WHERE rr.res_id = (SELECT r.res_id 
	FROM reservation r
    INNER JOIN guestreservation gr ON r.res_id = gr.res_id
    INNER JOIN guest g ON gr.guest_id = g.Guest_id
    WHERE g.Full_Name = "Jeremiah Pendergrass");

#SELECT * FROM roomreservation r WHERE r.reservationid = 8;

DELETE FROM GuestReservation gr
WHERE gr.guest_id = (SELECT g.guest_id 
	FROM guest g
    WHERE g.Full_Name = "Jeremiah Pendergrass");
    
#SELECT * FROM guestreservation gr WHERE gr.guestid = 8;

#Not safe, get additional information from clientelle.
SET SQL_SAFE_UPDATES = 0;
DELETE FROM Reservation r
WHERE r.Full_Name = "Jeremiah Pendergrass";
SET SQL_SAFE_UPDATES = 1;

#SELECT * FROM reservation r WHERE r.reservationid = 8;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM Guest g
WHERE g.Full_Name = "Jeremiah Pendergrass";
SET SQL_SAFE_UPDATES = 1;

#SELECT * FROM guest g WHERE g.guest_id = 8;

#(SELECT r.reservationID FROM guest g
#	INNER JOIN guestReservation gr ON g.guestid = gr.guestid
#    INNER JOIN reservation r ON gr.reservationid = r.reservationid
#		WHERE Name = "Jeremiah Pendergrass");

#SELECT * FROM guest INNER JOIN ZIPAddress ON guest.zipaddressid = zipaddress.zipaddressid;    
#SELECT * FROM reservation r INNER JOIN guestReservation gr ON r.reservationID = gr.reservationid
#INNER JOIN guest g ON gr.guestid = g.guestid;
#SELECT * FROM room r INNER JOIN RoomAmenities ra ON r.roomid = ra.roomid
#INNER JOIN amenities a ON ra.amenitiesid = a.amenitiesid;INSERT 
#INTO Room (RoomNumber, RoomTypeID, isAccessible, StandardOccupancy, MaximumOccupancy, BasePrice, ExtraPerson)  VALUES  (201, 2, false, 2, 4, 199.99, 10),     (202, 2, true, 2, 4, 174.99, 10),     (203, 2, false, 2, 4, 199.99, 10),     (204, 2, true, 2, 4, 174.99, 10),     (205, 1, false, 2, 2, 174.99, NULL),     (206, 1, true, 2, 2, 149.99, NULL),     (207, 1, false, 2, 2, 174.99, NULL),     (208, 1, true, 2, 2, 149.99, NULL),     (301, 2, false, 2, 4, 199.99, 10),     (302, 2, true, 2, 4, 174.99, 10),     (303, 2, false, 2, 4, 199.99, 10),     (304, 2, true, 2, 4, 174.99, 10),     (305, 1, false, 2, 2, 174.99, NULL),     (306, 1, true, 2, 2, 149.99, NULL),     (307, 1, false, 2, 2, 174.99, NULL),     (308, 1, true, 2, 2, 149.99, NULL),     (401, 3, true, 3, 8, 399.99, 20),     (402, 3, true, 3, 8, 399.99, 20)
