
-- state 
CREATE TABLE cs_state_master (
	state_id SERIAL PRIMARY KEY,
	state_name VARCHAR(255),
	state_code VARCHAR(50)
)


INSERT INTO cs_state_master(state_id, state_name, state_code)
VALUES 
(1, 'Jammu & Kashmir', '01'),
(2, 'Himachal Pradesh', '02'),
(3, 'Punjab', '03'),
(4, 'Chandigarh', '04'),
(5, 'Uttarakhand', '05'),
(6, 'Haryana', '06'),
(7, 'Delhi', '07'),
(8, 'Rajasthan', '08'),
(9, 'Uttar Pradesh', '09'),
(10, 'Bihar', '10'),
(11, 'Sikkim', '11'),
(12, 'Arunachal Pradesh', '12'),
(13, 'Nagaland', '13'),
(14, 'Manipur', '14'),
(15, 'Mizoram', '15'),
(16, 'Tripura', '16'),
(17, 'Meghalaya', '17'),
(18, 'Assam', '18'),
(19, 'West Bengal', '19'),
(20, 'Jharkhand', '20'),
(21, 'Orissa', '21'),
(22, 'Chhattisgarh', '22'),
(23, 'Madhya Pradesh', '23'),
(24, 'Gujarat', '24'),
(26, 'Dadra & Nagar Haveli & Daman & Diu', '26'),
(27, 'Maharashtra', '27'),
(28, 'Andhra Pradesh', '28'),
(29, 'Karnataka', '29'),
(30, 'Goa', '30'),
(31, 'Lakshadweep', '31'),
(32, 'Kerala', '32'),
(33, 'Tamil Nadu', '33'),
(34, 'Puducherry', '34'),
(35, 'Andaman & Nicobar Islands', '35'),
(36, 'Telangana', '36'),
(37, 'Ladakh', '37')


-- language
CREATE TABLE cs_language_master (
	id SERIAL PRIMARY KEY,
	language VARCHAR(255),
	langCode VARCHAR(50)
)

INSERT INTO cs_language_master(id, language, langCode)
VALUES 
(1, 'Assamese', 'asm'),
(2, 'Bengali', 'ben'),
(3, 'Bodo', 'bod'),
(4, 'Dogri', 'doi'),
(5, 'English', 'en'),
(6, 'Gujarati', 'guj'),
(7, 'Hindi', 'hin'),
(8, 'Kannada', 'kan'),
(9, 'Kashmiri', 'kas'),
(10, 'Konkani', 'kok'),
(11, 'Maithili', 'mai'),
(12, 'Malayalam', 'mal'),
(13, 'Manipuri', 'mni'),
(14, 'Marathi', 'mar'),
(15, 'Nepali', 'nep'),
(16, 'Odia', 'ori'),
(17, 'Punjabi', 'pan'),
(18, 'Sanskrit', 'san'),
(19, 'Santali', 'sat'),
(20, 'Sindhi', 'snd'),
(21, 'Tamil', 'tam'),
(22, 'Telugu', 'tel'),
(23, 'Urdu', 'urd')