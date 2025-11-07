-- ============================================
-- ✅ A1 (왕초급) Vocabulary 추가 (51~75)
-- ============================================

INSERT INTO grammar_test (id, problem, type, level)
VALUES
('00000000-0000-0000-0000-000000000051', 'A ___ is a yellow fruit. It’s small and sour.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000052', 'The opposite of ’big’ is ___.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000053', 'I write with a ___.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000054', 'My favorite color is ___.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000055', 'A cat says ’meow’, and a dog says ’___’.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000056', 'The color of the sky is ___.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000057', 'A baby dog is called a ___.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000058', 'The opposite of ’hot’ is ___.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000059', 'You use your ___ to see.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000060', 'The number after nine is ___.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000061', 'I eat ___ when I’m hungry.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000062', 'A ___ is a place where you sleep.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000063', 'A person who teaches students is a ___.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000064', 'To buy things, you need ___.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000065', 'The day after Monday is ___.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000066', 'You wear a ___ on your head.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000067', 'A ___ has four wheels and you can drive it.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000068', 'An elephant is a very ___ animal.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000069', 'We use an ___ when it rains.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000070', 'The season after winter is ___.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000071', 'You wear ___ on your feet.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000072', 'We eat ___ for breakfast.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000073', 'Your mother’s daughter is your ___.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000074', 'A ___ makes bread and cakes.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000075', 'A ___ helps sick people.', 'Vocabulary', 'A1');

-- ============================================
-- ✅ Vocabulary 정답 데이터 (51~75)
-- ============================================

-- 51
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'banana', false, '00000000-0000-0000-0000-000000000051'),
(gen_random_uuid(), 'apple', false, '00000000-0000-0000-0000-000000000051'),
(gen_random_uuid(), 'lemon', true, '00000000-0000-0000-0000-000000000051'),
(gen_random_uuid(), 'orange', false, '00000000-0000-0000-0000-000000000051');

-- 52
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'small', true, '00000000-0000-0000-0000-000000000052'),
(gen_random_uuid(), 'long', false, '00000000-0000-0000-0000-000000000052'),
(gen_random_uuid(), 'tall', false, '00000000-0000-0000-0000-000000000052'),
(gen_random_uuid(), 'short', false, '00000000-0000-0000-0000-000000000052');

-- 53
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'book', false, '00000000-0000-0000-0000-000000000053'),
(gen_random_uuid(), 'chair', false, '00000000-0000-0000-0000-000000000053'),
(gen_random_uuid(), 'pen', true, '00000000-0000-0000-0000-000000000053'),
(gen_random_uuid(), 'desk', false, '00000000-0000-0000-0000-000000000053');

-- 54
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'blue', true, '00000000-0000-0000-0000-000000000054'),
(gen_random_uuid(), 'happy', false, '00000000-0000-0000-0000-000000000054'),
(gen_random_uuid(), 'run', false, '00000000-0000-0000-0000-000000000054'),
(gen_random_uuid(), 'eat', false, '00000000-0000-0000-0000-000000000054');

-- 55
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'oink', false, '00000000-0000-0000-0000-000000000055'),
(gen_random_uuid(), 'moo', false, '00000000-0000-0000-0000-000000000055'),
(gen_random_uuid(), 'woof', true, '00000000-0000-0000-0000-000000000055'),
(gen_random_uuid(), 'chirp', false, '00000000-0000-0000-0000-000000000055');

-- 56
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'red', false, '00000000-0000-0000-0000-000000000056'),
(gen_random_uuid(), 'green', false, '00000000-0000-0000-0000-000000000056'),
(gen_random_uuid(), 'blue', true, '00000000-0000-0000-0000-000000000056'),
(gen_random_uuid(), 'yellow', false, '00000000-0000-0000-0000-000000000056');

-- 57
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'puppy', true, '00000000-0000-0000-0000-000000000057'),
(gen_random_uuid(), 'kitten', false, '00000000-0000-0000-0000-000000000057'),
(gen_random_uuid(), 'calf', false, '00000000-0000-0000-0000-000000000057'),
(gen_random_uuid(), 'chick', false, '00000000-0000-0000-0000-000000000057');

-- 58
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'warm', false, '00000000-0000-0000-0000-000000000058'),
(gen_random_uuid(), 'cold', true, '00000000-0000-0000-0000-000000000058'),
(gen_random_uuid(), 'cool', false, '00000000-0000-0000-0000-000000000058'),
(gen_random_uuid(), 'chilly', false, '00000000-0000-0000-0000-000000000058');

-- 59
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'ears', false, '00000000-0000-0000-0000-000000000059'),
(gen_random_uuid(), 'nose', false, '00000000-0000-0000-0000-000000000059'),
(gen_random_uuid(), 'eyes', true, '00000000-0000-0000-0000-000000000059'),
(gen_random_uuid(), 'mouth', false, '00000000-0000-0000-0000-000000000059');

-- 60
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'seven', false, '00000000-0000-0000-0000-000000000060'),
(gen_random_uuid(), 'eight', false, '00000000-0000-0000-0000-000000000060'),
(gen_random_uuid(), 'ten', true, '00000000-0000-0000-0000-000000000060'),
(gen_random_uuid(), 'eleven', false, '00000000-0000-0000-0000-000000000060');

-- 61
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'water', false, '00000000-0000-0000-0000-000000000061'),
(gen_random_uuid(), 'juice', false, '00000000-0000-0000-0000-000000000061'),
(gen_random_uuid(), 'food', true,  '00000000-0000-0000-0000-000000000061'),
(gen_random_uuid(), 'air', false,  '00000000-0000-0000-0000-000000000061');

-- 62
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'kitchen', false, '00000000-0000-0000-0000-000000000062'),
(gen_random_uuid(), 'bathroom', false, '00000000-0000-0000-0000-000000000062'),
(gen_random_uuid(), 'bedroom', true, '00000000-0000-0000-0000-000000000062'),
(gen_random_uuid(), 'living room', false, '00000000-0000-0000-0000-000000000062');

-- 63
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'doctor', false, '00000000-0000-0000-0000-000000000063'),
(gen_random_uuid(), 'teacher', true, '00000000-0000-0000-0000-000000000063'),
(gen_random_uuid(), 'pilot', false, '00000000-0000-0000-0000-000000000063'),
(gen_random_uuid(), 'chef', false, '00000000-0000-0000-0000-000000000063');

-- 64
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'time', false, '00000000-0000-0000-0000-000000000064'),
(gen_random_uuid(), 'friends', false, '00000000-0000-0000-0000-000000000064'),
(gen_random_uuid(), 'money', true, '00000000-0000-0000-0000-000000000064'),
(gen_random_uuid(), 'books', false, '00000000-0000-0000-0000-000000000064');

-- 65
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'Sunday', false, '00000000-0000-0000-0000-000000000065'),
(gen_random_uuid(), 'Wednesday', false, '00000000-0000-0000-0000-000000000065'),
(gen_random_uuid(), 'Friday', false, '00000000-0000-0000-0000-000000000065'),
(gen_random_uuid(), 'Tuesday', true, '00000000-0000-0000-0000-000000000065');

-- 66
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'shirt', false, '00000000-0000-0000-0000-000000000066'),
(gen_random_uuid(), 'pants', false, '00000000-0000-0000-0000-000000000066'),
(gen_random_uuid(), 'hat', true, '00000000-0000-0000-0000-000000000066'),
(gen_random_uuid(), 'shoes', false, '00000000-0000-0000-0000-000000000066');

-- 67
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'bicycle', false, '00000000-0000-0000-0000-000000000067'),
(gen_random_uuid(), 'car', true, '00000000-0000-0000-0000-000000000067'),
(gen_random_uuid(), 'boat', false, '00000000-0000-0000-0000-000000000067'),
(gen_random_uuid(), 'plane', false, '00000000-0000-0000-0000-000000000067');

-- 68
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'small', false, '00000000-0000-0000-0000-000000000068'),
(gen_random_uuid(), 'big', true, '00000000-0000-0000-0000-000000000068'),
(gen_random_uuid(), 'thin', false, '00000000-0000-0000-0000-000000000068'),
(gen_random_uuid(), 'short', false, '00000000-0000-0000-0000-000000000068');

-- 69
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'umbrella', true, '00000000-0000-0000-0000-000000000069'),
(gen_random_uuid(), 'sunglass', false, '00000000-0000-0000-0000-000000000069'),
(gen_random_uuid(), 'scarf', false, '00000000-0000-0000-0000-000000000069'),
(gen_random_uuid(), 'glove', false, '00000000-0000-0000-0000-000000000069');

-- 70
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'summer', false, '00000000-0000-0000-0000-000000000070'),
(gen_random_uuid(), 'spring', true, '00000000-0000-0000-0000-000000000070'),
(gen_random_uuid(), 'autumn', false, '00000000-0000-0000-0000-000000000070'),
(gen_random_uuid(), 'fall', false, '00000000-0000-0000-0000-000000000070');

-- 71
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'hat', false, '00000000-0000-0000-0000-000000000071'),
(gen_random_uuid(), 'shoes', true, '00000000-0000-0000-0000-000000000071'),
(gen_random_uuid(), 'shirt', false, '00000000-0000-0000-0000-000000000071'),
(gen_random_uuid(), 'ring', false, '00000000-0000-0000-0000-000000000071');

-- 72
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'shoes', false, '00000000-0000-0000-0000-000000000072'),
(gen_random_uuid(), 'eggs', true, '00000000-0000-0000-0000-000000000072'),
(gen_random_uuid(), 'books', false, '00000000-0000-0000-0000-000000000072'),
(gen_random_uuid(), 'pens', false, '00000000-0000-0000-0000-000000000072');

-- 73
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'aunt', false, '00000000-0000-0000-0000-000000000073'),
(gen_random_uuid(), 'sister', true, '00000000-0000-0000-0000-000000000073'),
(gen_random_uuid(), 'cousin', false, '00000000-0000-0000-0000-000000000073'),
(gen_random_uuid(), 'niece', false, '00000000-0000-0000-0000-000000000073');

-- 74
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'teacher', false, '00000000-0000-0000-0000-000000000074'),
(gen_random_uuid(), 'doctor', false, '00000000-0000-0000-0000-000000000074'),
(gen_random_uuid(), 'baker', true, '00000000-0000-0000-0000-000000000074'),
(gen_random_uuid(), 'driver', false, '00000000-0000-0000-0000-000000000074');

-- 75
INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'police officer', false, '00000000-0000-0000-0000-000000000075'),
(gen_random_uuid(), 'firefighter', false, '00000000-0000-0000-0000-000000000075'),
(gen_random_uuid(), 'doctor', true, '00000000-0000-0000-0000-000000000075'),
(gen_random_uuid(), 'farmer', false, '00000000-0000-0000-0000-000000000075');


-- ============================================
-- ✅ A2 (초급)
-- ============================================

-- Grammar (00000000-0000-0000-0000-000000000076 ~ 00000000-0000-0000-0000-000000000100)
INSERT INTO grammar_test (id, problem, type, level) VALUES
('00000000-0000-0000-0000-000000000076', 'Yesterday, I ___ a movie.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000077', 'She is ___ than her brother.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000078', 'Are there ___ apples in the kitchen?', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000079', 'I’m ___ to the park tomorrow.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000080', 'He can ___ English very well.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000081', 'I ___ to the cinema last night.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000082', 'She ___ TV at the moment.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000083', 'He is the ___ boy in the class.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000084', 'I am going ___ my friend tomorrow.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000085', 'There isn’t ___ milk in the fridge.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000086', 'How ___ does this book cost?', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000087', 'I was born ___ 1995.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000088', 'You ___ be quiet in the library.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000089', 'He ___ a doctor, he’s a teacher.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000090', 'They ___ to work by car every day.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000091', 'I bought a new phone ___.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000092', 'My sister is taller ___ me.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000093', '___ you ever been to Paris?', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000094', 'He sometimes ___ tennis on weekends.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000095', 'Don’t forget ___ the door.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000096', 'I’m not very good ___ sports.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000097', 'I ___ a new book tomorrow.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000098', 'There are too ___ people here.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000099', 'This is the ___ interesting book I’ve ever read.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000100', 'I ___ like chocolate.', 'Grammar', 'A2');

-- Vocabulary (101~125)
INSERT INTO grammar_test (id, problem, type, level) VALUES
('00000000-0000-0000-0000-000000000101', 'You can borrow books from a ___.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000102', 'My sister’s son is my ___.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000103', 'We usually ___ dinner at 7 p.m.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000104', 'I usually eat ___ in the morning.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000105', 'He works in an ___. He is a businessman.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000106', 'You can find many old things in a ___.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000107', 'A person who writes books is an ___.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000108', 'If you want to send a letter, you go to the ___.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000109', 'I need to ___ a flight to New York.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000110', 'My favorite ___ is science.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000111', 'He’s my colleague. We ___ together.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000112', 'Can I pay by ___ card?', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000113', 'I am going on ___ next month. I will travel to Spain.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000114', 'This food is ___. It tastes so good!', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000115', 'What’s the ___ like today? It’s sunny.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000116', 'You need a ___ to travel to another country.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000117', 'To get fit, I go to the ___ twice a week.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000118', 'I’m sorry, I don’t ___. Can you repeat that?', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000119', 'He is very ___. He always makes me laugh.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000120', 'She has a meeting, so she is wearing a formal ___.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000121', 'Can you give me some ___ on how to improve my English?', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000122', 'I’m ___ I can’t come to your party. I have other plans.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000123', 'The ___ of this movie is very famous.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000124', 'What kind of ___ do you like? I like rock and pop.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000125', 'It’s a secret, so please don’t tell ___.', 'Vocabulary', 'A2');

-- ============================================
-- ✅ 정답 데이터 (Grammar & Vocabulary)
-- ============================================

-- 76
INSERT INTO answer VALUES
(gen_random_uuid(),'watch',false,'00000000-0000-0000-0000-000000000076'),
(gen_random_uuid(),'watched',true,'00000000-0000-0000-0000-000000000076'),
(gen_random_uuid(),'watching',false,'00000000-0000-0000-0000-000000000076'),
(gen_random_uuid(),'watches',false,'00000000-0000-0000-0000-000000000076');

-- 77
INSERT INTO answer VALUES
(gen_random_uuid(),'tall',false,'00000000-0000-0000-0000-000000000077'),
(gen_random_uuid(),'taller',true,'00000000-0000-0000-0000-000000000077'),
(gen_random_uuid(),'tallest',false,'00000000-0000-0000-0000-000000000077'),
(gen_random_uuid(),'more tall',false,'00000000-0000-0000-0000-000000000077');

-- ============================================
-- ✅ Grammar (78~100)
-- ============================================

-- 78
INSERT INTO answer VALUES
(gen_random_uuid(),'any',true,'00000000-0000-0000-0000-000000000078'),
(gen_random_uuid(),'some',false,'00000000-0000-0000-0000-000000000078'),
(gen_random_uuid(),'a',false,'00000000-0000-0000-0000-000000000078'),
(gen_random_uuid(),'much',false,'00000000-0000-0000-0000-000000000078');

-- 79
INSERT INTO answer VALUES
(gen_random_uuid(),'go',false,'00000000-0000-0000-0000-000000000079'),
(gen_random_uuid(),'goes',false,'00000000-0000-0000-0000-000000000079'),
(gen_random_uuid(),'going',true,'00000000-0000-0000-0000-000000000079'),
(gen_random_uuid(),'went',false,'00000000-0000-0000-0000-000000000079');

-- 80
INSERT INTO answer VALUES
(gen_random_uuid(),'speaks',false,'00000000-0000-0000-0000-000000000080'),
(gen_random_uuid(),'speak',true,'00000000-0000-0000-0000-000000000080'),
(gen_random_uuid(),'speaking',false,'00000000-0000-0000-0000-000000000080'),
(gen_random_uuid(),'spoke',false,'00000000-0000-0000-0000-000000000080');

-- 81
INSERT INTO answer VALUES
(gen_random_uuid(),'go',false,'00000000-0000-0000-0000-000000000081'),
(gen_random_uuid(),'goes',false,'00000000-0000-0000-0000-000000000081'),
(gen_random_uuid(),'went',true,'00000000-0000-0000-0000-000000000081'),
(gen_random_uuid(),'gone',false,'00000000-0000-0000-0000-000000000081');

-- 82
INSERT INTO answer VALUES
(gen_random_uuid(),'watches',false,'00000000-0000-0000-0000-000000000082'),
(gen_random_uuid(),'is watching',true,'00000000-0000-0000-0000-000000000082'),
(gen_random_uuid(),'watched',false,'00000000-0000-0000-0000-000000000082'),
(gen_random_uuid(),'watch',false,'00000000-0000-0000-0000-000000000082');

-- 83
INSERT INTO answer VALUES
(gen_random_uuid(),'fast',false,'00000000-0000-0000-0000-000000000083'),
(gen_random_uuid(),'faster',false,'00000000-0000-0000-0000-000000000083'),
(gen_random_uuid(),'fastest',true,'00000000-0000-0000-0000-000000000083'),
(gen_random_uuid(),'most fast',false,'00000000-0000-0000-0000-000000000083');

-- 84
INSERT INTO answer VALUES
(gen_random_uuid(),'see',false,'00000000-0000-0000-0000-000000000084'),
(gen_random_uuid(),'to see',true,'00000000-0000-0000-0000-000000000084'),
(gen_random_uuid(),'saw',false,'00000000-0000-0000-0000-000000000084'),
(gen_random_uuid(),'seeing',false,'00000000-0000-0000-0000-000000000084');

-- 85
INSERT INTO answer VALUES
(gen_random_uuid(),'some',false,'00000000-0000-0000-0000-000000000085'),
(gen_random_uuid(),'any',true,'00000000-0000-0000-0000-000000000085'),
(gen_random_uuid(),'a',false,'00000000-0000-0000-0000-000000000085'),
(gen_random_uuid(),'many',false,'00000000-0000-0000-0000-000000000085');

-- 86
INSERT INTO answer VALUES
(gen_random_uuid(),'many',false,'00000000-0000-0000-0000-000000000086'),
(gen_random_uuid(),'much',true,'00000000-0000-0000-0000-000000000086'),
(gen_random_uuid(),'often',false,'00000000-0000-0000-0000-000000000086'),
(gen_random_uuid(),'long',false,'00000000-0000-0000-0000-000000000086');

-- 87
INSERT INTO answer VALUES
(gen_random_uuid(),'on',false,'00000000-0000-0000-0000-000000000087'),
(gen_random_uuid(),'at',false,'00000000-0000-0000-0000-000000000087'),
(gen_random_uuid(),'in',true,'00000000-0000-0000-0000-000000000087'),
(gen_random_uuid(),'for',false,'00000000-0000-0000-0000-000000000087');

-- 88
INSERT INTO answer VALUES
(gen_random_uuid(),'can',false,'00000000-0000-0000-0000-000000000088'),
(gen_random_uuid(),'must',true,'00000000-0000-0000-0000-000000000088'),
(gen_random_uuid(),'may',false,'00000000-0000-0000-0000-000000000088'),
(gen_random_uuid(),'do',false,'00000000-0000-0000-0000-000000000088');

-- 89
INSERT INTO answer VALUES
(gen_random_uuid(),'don’t',false,'00000000-0000-0000-0000-000000000089'),
(gen_random_uuid(),'doesn’t',false,'00000000-0000-0000-0000-000000000089'),
(gen_random_uuid(),'isn’t',true,'00000000-0000-0000-0000-000000000089'),
(gen_random_uuid(),'aren’t',false,'00000000-0000-0000-0000-000000000089');

-- 90
INSERT INTO answer VALUES
(gen_random_uuid(),'drive',true,'00000000-0000-0000-0000-000000000090'),
(gen_random_uuid(),'drives',false,'00000000-0000-0000-0000-000000000090'),
(gen_random_uuid(),'are driving',false,'00000000-0000-0000-0000-000000000090'),
(gen_random_uuid(),'drove',false,'00000000-0000-0000-0000-000000000090');

-- 91
INSERT INTO answer VALUES
(gen_random_uuid(),'yesterday',true,'00000000-0000-0000-0000-000000000091'),
(gen_random_uuid(),'tomorrow',false,'00000000-0000-0000-0000-000000000091'),
(gen_random_uuid(),'now',false,'00000000-0000-0000-0000-000000000091'),
(gen_random_uuid(),'soon',false,'00000000-0000-0000-0000-000000000091');

-- 92
INSERT INTO answer VALUES
(gen_random_uuid(),'as',false,'00000000-0000-0000-0000-000000000092'),
(gen_random_uuid(),'to',false,'00000000-0000-0000-0000-000000000092'),
(gen_random_uuid(),'than',true,'00000000-0000-0000-0000-000000000092'),
(gen_random_uuid(),'then',false,'00000000-0000-0000-0000-000000000092');

-- 93
INSERT INTO answer VALUES
(gen_random_uuid(),'Did',false,'00000000-0000-0000-0000-000000000093'),
(gen_random_uuid(),'Do',false,'00000000-0000-0000-0000-000000000093'),
(gen_random_uuid(),'Are',false,'00000000-0000-0000-0000-000000000093'),
(gen_random_uuid(),'Have',true,'00000000-0000-0000-0000-000000000093');

-- 94
INSERT INTO answer VALUES
(gen_random_uuid(),'play',false,'00000000-0000-0000-0000-000000000094'),
(gen_random_uuid(),'playing',false,'00000000-0000-0000-0000-000000000094'),
(gen_random_uuid(),'plays',true,'00000000-0000-0000-0000-000000000094'),
(gen_random_uuid(),'is playing',false,'00000000-0000-0000-0000-000000000094');

-- 95
INSERT INTO answer VALUES
(gen_random_uuid(),'to lock',true,'00000000-0000-0000-0000-000000000095'),
(gen_random_uuid(),'lock',false,'00000000-0000-0000-0000-000000000095'),
(gen_random_uuid(),'locking',false,'00000000-0000-0000-0000-000000000095'),
(gen_random_uuid(),'locked',false,'00000000-0000-0000-0000-000000000095');

-- 96
INSERT INTO answer VALUES
(gen_random_uuid(),'in',false,'00000000-0000-0000-0000-000000000096'),
(gen_random_uuid(),'on',false,'00000000-0000-0000-0000-000000000096'),
(gen_random_uuid(),'for',false,'00000000-0000-0000-0000-000000000096'),
(gen_random_uuid(),'at',true,'00000000-0000-0000-0000-000000000096');

-- 97
INSERT INTO answer VALUES
(gen_random_uuid(),'buy',false,'00000000-0000-0000-0000-000000000097'),
(gen_random_uuid(),'buys',false,'00000000-0000-0000-0000-000000000097'),
(gen_random_uuid(),'bought',false,'00000000-0000-0000-0000-000000000097'),
(gen_random_uuid(),'will buy',true,'00000000-0000-0000-0000-000000000097');

-- 98
INSERT INTO answer VALUES
(gen_random_uuid(),'much',false,'00000000-0000-0000-0000-000000000098'),
(gen_random_uuid(),'a lot',false,'00000000-0000-0000-0000-000000000098'),
(gen_random_uuid(),'many',true,'00000000-0000-0000-0000-000000000098'),
(gen_random_uuid(),'any',false,'00000000-0000-0000-0000-000000000098');

-- 99
INSERT INTO answer VALUES
(gen_random_uuid(),'more',false,'00000000-0000-0000-0000-000000000099'),
(gen_random_uuid(),'most',true,'00000000-0000-0000-0000-000000000099'),
(gen_random_uuid(),'much',false,'00000000-0000-0000-0000-000000000099'),
(gen_random_uuid(),'many',false,'00000000-0000-0000-0000-000000000099');

-- 100
INSERT INTO answer VALUES
(gen_random_uuid(),'do',true,'00000000-0000-0000-0000-000000000100'),
(gen_random_uuid(),'does',false,'00000000-0000-0000-0000-000000000100'),
(gen_random_uuid(),'am',false,'00000000-0000-0000-0000-000000000100'),
(gen_random_uuid(),'is',false,'00000000-0000-0000-0000-000000000100');

-- 101
INSERT INTO answer VALUES
(gen_random_uuid(),'supermarket',false,'00000000-0000-0000-0000-000000000101'),
(gen_random_uuid(),'library',true,'00000000-0000-0000-0000-000000000101'),
(gen_random_uuid(),'hospital',false,'00000000-0000-0000-0000-000000000101'),
(gen_random_uuid(),'bank',false,'00000000-0000-0000-0000-000000000101');

-- 102
INSERT INTO answer VALUES
(gen_random_uuid(),'brother',false,'00000000-0000-0000-0000-000000000102'),
(gen_random_uuid(),'cousin',false,'00000000-0000-0000-0000-000000000102'),
(gen_random_uuid(),'nephew',true,'00000000-0000-0000-0000-000000000102'),
(gen_random_uuid(),'niece',false,'00000000-0000-0000-0000-000000000102');

-- 103
INSERT INTO answer VALUES
(gen_random_uuid(),'have',true,'00000000-0000-0000-0000-000000000103'),
(gen_random_uuid(),'go',false,'00000000-0000-0000-0000-000000000103'),
(gen_random_uuid(),'read',false,'00000000-0000-0000-0000-000000000103'),
(gen_random_uuid(),'write',false,'00000000-0000-0000-0000-000000000103');

-- 104
INSERT INTO answer VALUES
(gen_random_uuid(),'breakfast',true,'00000000-0000-0000-0000-000000000104'),
(gen_random_uuid(),'dinner',false,'00000000-0000-0000-0000-000000000104'),
(gen_random_uuid(),'lunch',false,'00000000-0000-0000-0000-000000000104'),
(gen_random_uuid(),'snack',false,'00000000-0000-0000-0000-000000000104');

-- 105
INSERT INTO answer VALUES
(gen_random_uuid(),'office',true,'00000000-0000-0000-0000-000000000105'),
(gen_random_uuid(),'farm',false,'00000000-0000-0000-0000-000000000105'),
(gen_random_uuid(),'school',false,'00000000-0000-0000-0000-000000000105'),
(gen_random_uuid(),'kitchen',false,'00000000-0000-0000-0000-000000000105');

-- 106
INSERT INTO answer VALUES
(gen_random_uuid(),'museum',true,'00000000-0000-0000-0000-000000000106'),
(gen_random_uuid(),'cinema',false,'00000000-0000-0000-0000-000000000106'),
(gen_random_uuid(),'stadium',false,'00000000-0000-0000-0000-000000000106'),
(gen_random_uuid(),'restaurant',false,'00000000-0000-0000-0000-000000000106');

-- 107
INSERT INTO answer VALUES
(gen_random_uuid(),'artist',false,'00000000-0000-0000-0000-000000000107'),
(gen_random_uuid(),'author',true,'00000000-0000-0000-0000-000000000107'),
(gen_random_uuid(),'actor',false,'00000000-0000-0000-0000-000000000107'),
(gen_random_uuid(),'architect',false,'00000000-0000-0000-0000-000000000107');

-- 108
INSERT INTO answer VALUES
(gen_random_uuid(),'bank',false,'00000000-0000-0000-0000-000000000108'),
(gen_random_uuid(),'post office',true,'00000000-0000-0000-0000-000000000108'),
(gen_random_uuid(),'hospital',false,'00000000-0000-0000-0000-000000000108'),
(gen_random_uuid(),'school',false,'00000000-0000-0000-0000-000000000108');

-- 109
INSERT INTO answer VALUES
(gen_random_uuid(),'book',true,'00000000-0000-0000-0000-000000000109'),
(gen_random_uuid(),'cook',false,'00000000-0000-0000-0000-000000000109'),
(gen_random_uuid(),'look',false,'00000000-0000-0000-0000-000000000109'),
(gen_random_uuid(),'do',false,'00000000-0000-0000-0000-000000000109');

-- 110
INSERT INTO answer VALUES
(gen_random_uuid(),'food',false,'00000000-0000-0000-0000-000000000110'),
(gen_random_uuid(),'color',false,'00000000-0000-0000-0000-000000000110'),
(gen_random_uuid(),'sport',false,'00000000-0000-0000-0000-000000000110'),
(gen_random_uuid(),'subject',true,'00000000-0000-0000-0000-000000000110');

-- 111
INSERT INTO answer VALUES
(gen_random_uuid(),'live',false,'00000000-0000-0000-0000-000000000111'),
(gen_random_uuid(),'study',false,'00000000-0000-0000-0000-000000000111'),
(gen_random_uuid(),'work',true,'00000000-0000-0000-0000-000000000111'),
(gen_random_uuid(),'play',false,'00000000-0000-0000-0000-000000000111');

-- 112
INSERT INTO answer VALUES
(gen_random_uuid(),'credit',true,'00000000-0000-0000-0000-000000000112'),
(gen_random_uuid(),'letter',false,'00000000-0000-0000-0000-000000000112'),
(gen_random_uuid(),'business',false,'00000000-0000-0000-0000-000000000112'),
(gen_random_uuid(),'post',false,'00000000-0000-0000-0000-000000000112');

-- 113
INSERT INTO answer VALUES
(gen_random_uuid(),'holiday',true,'00000000-0000-0000-0000-000000000113'),
(gen_random_uuid(),'meeting',false,'00000000-0000-0000-0000-000000000113'),
(gen_random_uuid(),'work',false,'00000000-0000-0000-0000-000000000113'),
(gen_random_uuid(),'school',false,'00000000-0000-0000-0000-000000000113');

-- 114
INSERT INTO answer VALUES
(gen_random_uuid(),'awful',false,'00000000-0000-0000-0000-000000000114'),
(gen_random_uuid(),'delicious',true,'00000000-0000-0000-0000-000000000114'),
(gen_random_uuid(),'boring',false,'00000000-0000-0000-0000-000000000114'),
(gen_random_uuid(),'ugly',false,'00000000-0000-0000-0000-000000000114');

-- 115
INSERT INTO answer VALUES
(gen_random_uuid(),'time',false,'00000000-0000-0000-0000-000000000115'),
(gen_random_uuid(),'weather',true,'00000000-0000-0000-0000-000000000115'),
(gen_random_uuid(),'news',false,'00000000-0000-0000-0000-000000000115'),
(gen_random_uuid(),'food',false,'00000000-0000-0000-0000-000000000115');

-- 116
INSERT INTO answer VALUES
(gen_random_uuid(),'passport',true,'00000000-0000-0000-0000-000000000116'),
(gen_random_uuid(),'ticket',false,'00000000-0000-0000-0000-000000000116'),
(gen_random_uuid(),'money',false,'00000000-0000-0000-0000-000000000116'),
(gen_random_uuid(),'map',false,'00000000-0000-0000-0000-000000000116');

-- 117
INSERT INTO answer VALUES
(gen_random_uuid(),'cinema',false,'00000000-0000-0000-0000-000000000117'),
(gen_random_uuid(),'gym',true,'00000000-0000-0000-0000-000000000117'),
(gen_random_uuid(),'library',false,'00000000-0000-0000-0000-000000000117'),
(gen_random_uuid(),'cafe',false,'00000000-0000-0000-0000-000000000117');

-- 118
INSERT INTO answer VALUES
(gen_random_uuid(),'agree',false,'00000000-0000-0000-0000-000000000118'),
(gen_random_uuid(),'believe',false,'00000000-0000-0000-0000-000000000118'),
(gen_random_uuid(),'mean',false,'00000000-0000-0000-0000-000000000118'),
(gen_random_uuid(),'understand',true,'00000000-0000-0000-0000-000000000118');

-- 119
INSERT INTO answer VALUES
(gen_random_uuid(),'serious',false,'00000000-0000-0000-0000-000000000119'),
(gen_random_uuid(),'funny',true,'00000000-0000-0000-0000-000000000119'),
(gen_random_uuid(),'shy',false,'00000000-0000-0000-0000-000000000119'),
(gen_random_uuid(),'quiet',false,'00000000-0000-0000-0000-000000000119');

-- 120
INSERT INTO answer VALUES
(gen_random_uuid(),'pajamas',false,'00000000-0000-0000-0000-000000000120'),
(gen_random_uuid(),'swimsuit',false,'00000000-0000-0000-0000-000000000120'),
(gen_random_uuid(),'suit',true,'00000000-0000-0000-0000-000000000120'),
(gen_random_uuid(),'tracksuit',false,'00000000-0000-0000-0000-000000000120');

-- 121
INSERT INTO answer VALUES
(gen_random_uuid(),'advice',true,'00000000-0000-0000-0000-000000000121'),
(gen_random_uuid(),'news',false,'00000000-0000-0000-0000-000000000121'),
(gen_random_uuid(),'information',false,'00000000-0000-0000-0000-000000000121'),
(gen_random_uuid(),'data',false,'00000000-0000-0000-0000-000000000121');

-- 122
INSERT INTO answer VALUES
(gen_random_uuid(),'happy',false,'00000000-0000-0000-0000-000000000122'),
(gen_random_uuid(),'sure',false,'00000000-0000-0000-0000-000000000122'),
(gen_random_uuid(),'afraid',true,'00000000-0000-0000-0000-000000000122'),
(gen_random_uuid(),'angry',false,'00000000-0000-0000-0000-000000000122');

-- 123
INSERT INTO answer VALUES
(gen_random_uuid(),'driver',false,'00000000-0000-0000-0000-000000000123'),
(gen_random_uuid(),'actor',true,'00000000-0000-0000-0000-000000000123'),
(gen_random_uuid(),'writer',false,'00000000-0000-0000-0000-000000000123'),
(gen_random_uuid(),'painter',false,'00000000-0000-0000-0000-000000000123');

-- 124
INSERT INTO answer VALUES
(gen_random_uuid(),'movies',false,'00000000-0000-0000-0000-000000000124'),
(gen_random_uuid(),'books',false,'00000000-0000-0000-0000-000000000124'),
(gen_random_uuid(),'music',true,'00000000-0000-0000-0000-000000000124'),
(gen_random_uuid(),'sports',false,'00000000-0000-0000-0000-000000000124');

-- 125
INSERT INTO answer VALUES
(gen_random_uuid(),'someone',false,'00000000-0000-0000-0000-000000000125'),
(gen_random_uuid(),'anyone',true,'00000000-0000-0000-0000-000000000125'),
(gen_random_uuid(),'no one',false,'00000000-0000-0000-0000-000000000125'),
(gen_random_uuid(),'everyone',false,'00000000-0000-0000-0000-000000000125');


-- ============================================
-- ✅ A1 (왕초급) Grammar (126~150)
-- ============================================

INSERT INTO grammar_test (id, problem, type, level)
VALUES
('00000000-0000-0000-0000-000000000126', 'She ___ a doctor.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000127', '___ are my keys.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000128', 'I ___ from South Korea.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000129', 'He ___ have a car.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000130', 'What time ___ it?', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000131', 'I ___ a student.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000132', 'She ___ my sister.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000133', 'They ___ from Canada.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000134', '___ is a book.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000135', '___ are my shoes.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000136', 'He ___ a new car.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000137', 'We ___ have a pet.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000138', 'What ___ your name?', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000139', 'Where ___ you from?', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000140', 'I can ___ a bike.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000141', 'My brother’s name ___ David.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000142', 'She ___ English.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000143', '___ you like pizza?', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000144', 'He ___ like coffee.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000145', 'The cat is ___ the table.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000146', 'I go to school ___ bus.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000147', 'There ___ a pen on the desk.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000148', 'There ___ two apples in the bag.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000149', 'It’s ___ apple.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000150', 'That is ___ dog.', 'Grammar', 'A1');

-- ============================================
-- ✅ 정답 데이터 (126~150)
-- ============================================

-- 126
INSERT INTO answer VALUES
(gen_random_uuid(),'is',true,'00000000-0000-0000-0000-000000000126'),
(gen_random_uuid(),'am',false,'00000000-0000-0000-0000-000000000126'),
(gen_random_uuid(),'are',false,'00000000-0000-0000-0000-000000000126'),
(gen_random_uuid(),'be',false,'00000000-0000-0000-0000-000000000126');

-- 127
INSERT INTO answer VALUES
(gen_random_uuid(),'This',false,'00000000-0000-0000-0000-000000000127'),
(gen_random_uuid(),'That',false,'00000000-0000-0000-0000-000000000127'),
(gen_random_uuid(),'These',true,'00000000-0000-0000-0000-000000000127'),
(gen_random_uuid(),'It',false,'00000000-0000-0000-0000-000000000127');

-- 128
INSERT INTO answer VALUES
(gen_random_uuid(),'is',false,'00000000-0000-0000-0000-000000000128'),
(gen_random_uuid(),'are',false,'00000000-0000-0000-0000-000000000128'),
(gen_random_uuid(),'am',true,'00000000-0000-0000-0000-000000000128'),
(gen_random_uuid(),'be',false,'00000000-0000-0000-0000-000000000128');

-- 129
INSERT INTO answer VALUES
(gen_random_uuid(),'don’t',false,'00000000-0000-0000-0000-000000000129'),
(gen_random_uuid(),'isn’t',false,'00000000-0000-0000-0000-000000000129'),
(gen_random_uuid(),'doesn’t',true,'00000000-0000-0000-0000-000000000129'),
(gen_random_uuid(),'aren’t',false,'00000000-0000-0000-0000-000000000129');

-- 130
INSERT INTO answer VALUES
(gen_random_uuid(),'is',true,'00000000-0000-0000-0000-000000000130'),
(gen_random_uuid(),'are',false,'00000000-0000-0000-0000-000000000130'),
(gen_random_uuid(),'do',false,'00000000-0000-0000-0000-000000000130'),
(gen_random_uuid(),'be',false,'00000000-0000-0000-0000-000000000130');

-- 131
INSERT INTO answer VALUES
(gen_random_uuid(),'is',false,'00000000-0000-0000-0000-000000000131'),
(gen_random_uuid(),'am',true,'00000000-0000-0000-0000-000000000131'),
(gen_random_uuid(),'are',false,'00000000-0000-0000-0000-000000000131'),
(gen_random_uuid(),'be',false,'00000000-0000-0000-0000-000000000131');

-- 132
INSERT INTO answer VALUES
(gen_random_uuid(),'is',true,'00000000-0000-0000-0000-000000000132'),
(gen_random_uuid(),'am',false,'00000000-0000-0000-0000-000000000132'),
(gen_random_uuid(),'are',false,'00000000-0000-0000-0000-000000000132'),
(gen_random_uuid(),'be',false,'00000000-0000-0000-0000-000000000132');

-- 133
INSERT INTO answer VALUES
(gen_random_uuid(),'is',false,'00000000-0000-0000-0000-000000000133'),
(gen_random_uuid(),'am',false,'00000000-0000-0000-0000-000000000133'),
(gen_random_uuid(),'are',true,'00000000-0000-0000-0000-000000000133'),
(gen_random_uuid(),'be',false,'00000000-0000-0000-0000-000000000133');

-- 134
INSERT INTO answer VALUES
(gen_random_uuid(),'This',true,'00000000-0000-0000-0000-000000000134'),
(gen_random_uuid(),'These',false,'00000000-0000-0000-0000-000000000134'),
(gen_random_uuid(),'That’s',false,'00000000-0000-0000-0000-000000000134'),
(gen_random_uuid(),'Thos',false,'00000000-0000-0000-0000-000000000134');

-- 135
INSERT INTO answer VALUES
(gen_random_uuid(),'That',false,'00000000-0000-0000-0000-000000000135'),
(gen_random_uuid(),'This',false,'00000000-0000-0000-0000-000000000135'),
(gen_random_uuid(),'Those',true,'00000000-0000-0000-0000-000000000135'),
(gen_random_uuid(),'It',false,'00000000-0000-0000-0000-000000000135');

-- 136
INSERT INTO answer VALUES
(gen_random_uuid(),'have',false,'00000000-0000-0000-0000-000000000136'),
(gen_random_uuid(),'has',true,'00000000-0000-0000-0000-000000000136'),
(gen_random_uuid(),'is',false,'00000000-0000-0000-0000-000000000136'),
(gen_random_uuid(),'are',false,'00000000-0000-0000-0000-000000000136');

-- 137
INSERT INTO answer VALUES
(gen_random_uuid(),'don’t',true,'00000000-0000-0000-0000-000000000137'),
(gen_random_uuid(),'doesn’t',false,'00000000-0000-0000-0000-000000000137'),
(gen_random_uuid(),'isn’t',false,'00000000-0000-0000-0000-000000000137'),
(gen_random_uuid(),'aren’t',false,'00000000-0000-0000-0000-000000000137');

-- 138
INSERT INTO answer VALUES
(gen_random_uuid(),'are',false,'00000000-0000-0000-0000-000000000138'),
(gen_random_uuid(),'is',true,'00000000-0000-0000-0000-000000000138'),
(gen_random_uuid(),'do',false,'00000000-0000-0000-0000-000000000138'),
(gen_random_uuid(),'am',false,'00000000-0000-0000-0000-000000000138');

-- 139
INSERT INTO answer VALUES
(gen_random_uuid(),'is',false,'00000000-0000-0000-0000-000000000139'),
(gen_random_uuid(),'am',false,'00000000-0000-0000-0000-000000000139'),
(gen_random_uuid(),'do',false,'00000000-0000-0000-0000-000000000139'),
(gen_random_uuid(),'are',true,'00000000-0000-0000-0000-000000000139');

-- 140
INSERT INTO answer VALUES
(gen_random_uuid(),'ride',true,'00000000-0000-0000-0000-000000000140'),
(gen_random_uuid(),'rides',false,'00000000-0000-0000-0000-000000000140'),
(gen_random_uuid(),'to ride',false,'00000000-0000-0000-0000-000000000140'),
(gen_random_uuid(),'riding',false,'00000000-0000-0000-0000-000000000140');

-- 141
INSERT INTO answer VALUES
(gen_random_uuid(),'are',false,'00000000-0000-0000-0000-000000000141'),
(gen_random_uuid(),'is',true,'00000000-0000-0000-0000-000000000141'),
(gen_random_uuid(),'am',false,'00000000-0000-0000-0000-000000000141'),
(gen_random_uuid(),'be',false,'00000000-0000-0000-0000-000000000141');

-- 142
INSERT INTO answer VALUES
(gen_random_uuid(),'speak',false,'00000000-0000-0000-0000-000000000142'),
(gen_random_uuid(),'speaks',true,'00000000-0000-0000-0000-000000000142'),
(gen_random_uuid(),'to speak',false,'00000000-0000-0000-0000-000000000142'),
(gen_random_uuid(),'speaking',false,'00000000-0000-0000-0000-000000000142');

-- 143
INSERT INTO answer VALUES
(gen_random_uuid(),'Is',false,'00000000-0000-0000-0000-000000000143'),
(gen_random_uuid(),'Are',false,'00000000-0000-0000-0000-000000000143'),
(gen_random_uuid(),'Do',true,'00000000-0000-0000-0000-000000000143'),
(gen_random_uuid(),'Does',false,'00000000-0000-0000-0000-000000000143');

-- 144
INSERT INTO answer VALUES
(gen_random_uuid(),'don’t',false,'00000000-0000-0000-0000-000000000144'),
(gen_random_uuid(),'not',false,'00000000-0000-0000-0000-000000000144'),
(gen_random_uuid(),'no',false,'00000000-0000-0000-0000-000000000144'),
(gen_random_uuid(),'doesn’t',true,'00000000-0000-0000-0000-000000000144');

-- 145
INSERT INTO answer VALUES
(gen_random_uuid(),'in',false,'00000000-0000-0000-0000-000000000145'),
(gen_random_uuid(),'on',true,'00000000-0000-0000-0000-000000000145'),
(gen_random_uuid(),'at',false,'00000000-0000-0000-0000-000000000145'),
(gen_random_uuid(),'with',false,'00000000-0000-0000-0000-000000000145');

-- 146
INSERT INTO answer VALUES
(gen_random_uuid(),'with',false,'00000000-0000-0000-0000-000000000146'),
(gen_random_uuid(),'on',false,'00000000-0000-0000-0000-000000000146'),
(gen_random_uuid(),'by',true,'00000000-0000-0000-0000-000000000146'),
(gen_random_uuid(),'at',false,'00000000-0000-0000-0000-000000000146');

-- 147
INSERT INTO answer VALUES
(gen_random_uuid(),'is',true,'00000000-0000-0000-0000-000000000147'),
(gen_random_uuid(),'are',false,'00000000-0000-0000-0000-000000000147'),
(gen_random_uuid(),'have',false,'00000000-0000-0000-0000-000000000147'),
(gen_random_uuid(),'has',false,'00000000-0000-0000-0000-000000000147');

-- 148
INSERT INTO answer VALUES
(gen_random_uuid(),'is',false,'00000000-0000-0000-0000-000000000148'),
(gen_random_uuid(),'are',true,'00000000-0000-0000-0000-000000000148'),
(gen_random_uuid(),'has',false,'00000000-0000-0000-0000-000000000148'),
(gen_random_uuid(),'have',false,'00000000-0000-0000-0000-000000000148');

-- 149
INSERT INTO answer VALUES
(gen_random_uuid(),'a',false,'00000000-0000-0000-0000-000000000149'),
(gen_random_uuid(),'an',true,'00000000-0000-0000-0000-000000000149'),
(gen_random_uuid(),'the',false,'00000000-0000-0000-0000-000000000149'),
(gen_random_uuid(),'some',false,'00000000-0000-0000-0000-000000000149');

-- 150
INSERT INTO answer VALUES
(gen_random_uuid(),'my',true,'00000000-0000-0000-0000-000000000150'),
(gen_random_uuid(),'me',false,'00000000-0000-0000-0000-000000000150'),
(gen_random_uuid(),'I',false,'00000000-0000-0000-0000-000000000150'),
(gen_random_uuid(),'mine',false,'00000000-0000-0000-0000-000000000150');
