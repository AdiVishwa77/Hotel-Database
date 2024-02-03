use hotel;

#Write a query that returns a list of reservations that end in July 2023, including the name of the guest, the room number(s), and the reservation dates.
SELECT res.Full_Name, r.RoomNumber, res.Access_Date, res.Vacate_Date
FROM reservation res
INNER JOIN roomreservation rr ON res.Res_ID = rr.Res_ID
INNER JOIN room r ON rr.RoomNumber = r.RoomNumber
WHERE res.Vacate_Date between '2023-07-01' AND '2023-07-31';
-- results: 4 total
#Adithya Vishwamithra	205	2023-06-28	2023-07-02
#Walter Holaway	204	2023-07-13	2023-07-14
#Wilfred Vise	301	2023-07-18	2023-07-21
#Bettyann Seery	303	2023-07-28	2023-07-29

#Write a query that returns a list of all reservations for rooms with a jacuzzi, displaying the guest's name, the room number, and the dates of the reservation.
SELECT res.Full_Name, r.RoomNumber, res.Access_Date, res.Vacate_Date
FROM reservation res
INNER JOIN roomreservation rr ON res.Res_ID = rr.Res_ID
INNER JOIN room r ON rr.RoomNumber = r.RoomNumber
INNER JOIN roomamenities ra ON r.roomnumber = ra.roomnumber
INNER JOIN amenities a ON ra.Amenity_ID = a.Amenity_ID
WHERE a.Amenity = "Jacuzzi";
#Karie Yang	201	2023-03-06	2023-03-07
#Bettyann Seery	203	2023-02-05	2023-02-10
#Karie Yang	203	2023-09-13	2023-09-15
#Adithya Vishwamithra	205	2023-06-28	2023-07-02
#Wilfred Vise	207	2023-04-23	2023-04-24
#Joleen Tison	208	2023-06-10	2023-06-14
#Mack Simmer	208	2023-09-16	2023-09-17
#Walter Holaway	301	2023-04-09	2023-04-13
#Mack Simmer	301	2023-11-22	2023-11-25
#Bettyann Seery	303	2023-07-28	2023-07-29
#Duane Cullison	305	2023-02-22	2023-02-24
#Bettyann Seery	305	2023-08-30	2023-09-01
#Adithya Vishwamithra	307	2023-03-17	2023-03-20

#Write a query that returns all the rooms reserved for a specific guest, including the guest's name, the room(s) reserved, the starting date of the reservation, and how many people were included in the reservation. (Choose a guest's name from the existing data.)
SELECT g.Full_Name, r.roomNumber, res.Access_Date, res.Vacate_Date, res.Adults, res.Children
FROM guest g
INNER JOIN guestreservation gr ON g.Guest_ID = gr.Guest_ID
INNER JOIN reservation res ON gr.Res_ID = res.Res_ID
INNER JOIN roomreservation rr ON res.Res_ID = rr.Res_ID
INNER JOIN Room r ON rr.RoomNumber = r.roomNumber
WHERE g.Full_Name = "Adithya Vishwamithra";
-- results: 4 total
#Adithya Vishwamithra	307	2023-03-17	2023-03-20	1	1
#Adithya Vishwamithra	205	2023-06-28	2023-07-02	2	0


#Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation. The results should include all rooms, whether or not there is a reservation associated with the room.
SELECT r.roomNumber, res.res_ID, r.basePrice
FROM Room r
LEFT JOIN roomreservation rr ON r.RoomNumber = rr.RoomNumber
LEFT JOIN reservation res ON rr.Res_ID = res.Res_ID;
#201	4	199.99
#202	7	174.99
#203	2	199.99
#203	21	199.99
#204	16	174.99
#205	15	174.99
#206	12	149.99
#206	23	149.99
#207	10	174.99
#208	13	149.99
#208	20	149.99
#301	9	199.99
#301	24	199.99
#302	6	174.99
#302	25	174.99
#303	18	199.99
#304	14	174.99
#305	3	174.99
#305	19	174.99
#306		149.99
#307	5	174.99
#308	1	149.99
#401	11	399.99
#401	17	399.99
#401	22	399.99
#402		399.99


#Write a query that returns all the rooms accommodating at least three guests and that are reserved on any date in April 2023.
SELECT r.roomNumber, res.Full_Name
FROM Room r
INNER JOIN RoomReservation rr ON r.roomNumber = rr.roomNumber
INNER JOIN Reservation res ON rr.res_ID = res.res_ID
WHERE (res.adults + res.children) > 2 AND 
	res.Access_Date between '2023-04-01' AND '2023-04-30';
-- results: 0 total
#No Results

#Write a query that returns a list of all guest names and the number of reservations per guest, sorted starting with the guest with the most reservations and then by the guest's last name.
SELECT g.Full_Name, (COUNT(res.res_ID)) AS NumOfRes
FROM guest g
INNER JOIN guestReservation gr ON g.guest_ID = gr.guest_ID
INNER JOIN reservation res ON gr.res_ID = res.res_ID
GROUP BY g.Full_Name
ORDER BY NumOfRes DESC, Substring_index(g.Full_Name,' ',-1);
#Mack Simmer	4
#Bettyann Seery	3
#Duane Cullison	2
#Walter Holaway	2
#Aurore Lipton	2
#Adithya Vishwamithra	2
#Maritza Tilton	2
#Joleen Tison	2
#Wilfred Vise	2
#Karie Yang	2
#Zachery Luechtefeld	1

#Write a query that displays the name, address, and phone number of a guest based on their phone number. (Choose a phone number from the existing data.)
SELECT g.Full_Name, g.address, g.phone
FROM guest g
WHERE g.phone = '214-229-6435';
#Adithya Vishwamithra	#3450 Broken Spur Dr., Lewisville, Tx, 75077	214-229-6435