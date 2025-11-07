-- ============================================
-- A1 (왕초급)
-- ============================================
INSERT INTO grammar_test (id, problem, type, level)
VALUES
('00000000-0000-0000-0000-000000000001', 'She ___ a doctor.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000002', '___ are my keys.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000003', 'I ___ from South Korea.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000004', 'He ___ have a car.', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000005', 'What time ___ it?', 'Grammar', 'A1'),
('00000000-0000-0000-0000-000000000006', 'A ___ is a red fruit. It’s small and sweet.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000007', 'The opposite of "big" is ___.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000008', 'I write with a ___.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000009', 'My favorite color is ___.', 'Vocabulary', 'A1'),
('00000000-0000-0000-0000-000000000010', 'A cat says "meow", and a dog says "___".', 'Vocabulary', 'A1');

INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
-- She ___ a doctor.
(gen_random_uuid(), 'is', true,  '00000000-0000-0000-0000-000000000001'),
(gen_random_uuid(), 'am', false, '00000000-0000-0000-0000-000000000001'),
(gen_random_uuid(), 'are', false,'00000000-0000-0000-0000-000000000001'),
(gen_random_uuid(), 'be', false, '00000000-0000-0000-0000-000000000001'),

-- ___ are my keys.
(gen_random_uuid(), 'This', false, '00000000-0000-0000-0000-000000000002'),
(gen_random_uuid(), 'That', false, '00000000-0000-0000-0000-000000000002'),
(gen_random_uuid(), 'These', true, '00000000-0000-0000-0000-000000000002'),
(gen_random_uuid(), 'It', false, '00000000-0000-0000-0000-000000000002'),

-- I ___ from South Korea.
(gen_random_uuid(), 'is', false, '00000000-0000-0000-0000-000000000003'),
(gen_random_uuid(), 'are', false,'00000000-0000-0000-0000-000000000003'),
(gen_random_uuid(), 'am', true,  '00000000-0000-0000-0000-000000000003'),
(gen_random_uuid(), 'be', false, '00000000-0000-0000-0000-000000000003'),

-- He ___ have a car.
(gen_random_uuid(), 'don’t', false,'00000000-0000-0000-0000-000000000004'),
(gen_random_uuid(), 'isn’t', false,'00000000-0000-0000-0000-000000000004'),
(gen_random_uuid(), 'doesn’t', true,'00000000-0000-0000-0000-000000000004'),
(gen_random_uuid(), 'aren’t', false,'00000000-0000-0000-0000-000000000004'),

-- What time ___ it?
(gen_random_uuid(), 'is', true,  '00000000-0000-0000-0000-000000000005'),
(gen_random_uuid(), 'are', false,'00000000-0000-0000-0000-000000000005'),
(gen_random_uuid(), 'do', false, '00000000-0000-0000-0000-000000000005'),
(gen_random_uuid(), 'be', false, '00000000-0000-0000-0000-000000000005'),

-- A ___ is a red fruit...
(gen_random_uuid(), 'banana', false,'00000000-0000-0000-0000-000000000006'),
(gen_random_uuid(), 'apple', true,  '00000000-0000-0000-0000-000000000006'),
(gen_random_uuid(), 'lemon', false, '00000000-0000-0000-0000-000000000006'),
(gen_random_uuid(), 'orange', false,'00000000-0000-0000-0000-000000000006'),

-- The opposite of 'big'
(gen_random_uuid(), 'small', true,  '00000000-0000-0000-0000-000000000007'),
(gen_random_uuid(), 'long', false, '00000000-0000-0000-0000-000000000007'),
(gen_random_uuid(), 'tall', false, '00000000-0000-0000-0000-000000000007'),
(gen_random_uuid(), 'short', false,'00000000-0000-0000-0000-000000000007'),

-- I write with a ___
(gen_random_uuid(), 'book', false,'00000000-0000-0000-0000-000000000008'),
(gen_random_uuid(), 'chair', false,'00000000-0000-0000-0000-000000000008'),
(gen_random_uuid(), 'pen', true,  '00000000-0000-0000-0000-000000000008'),
(gen_random_uuid(), 'desk', false,'00000000-0000-0000-0000-000000000008'),

-- My favorite color is ___
(gen_random_uuid(), 'blue', true,  '00000000-0000-0000-0000-000000000009'),
(gen_random_uuid(), 'happy', false,'00000000-0000-0000-0000-000000000009'),
(gen_random_uuid(), 'run', false,  '00000000-0000-0000-0000-000000000009'),
(gen_random_uuid(), 'eat', false,  '00000000-0000-0000-0000-000000000009'),

-- A cat says meow...
(gen_random_uuid(), 'oink', false, '00000000-0000-0000-0000-000000000010'),
(gen_random_uuid(), 'moo', false,  '00000000-0000-0000-0000-000000000010'),
(gen_random_uuid(), 'woof', true,  '00000000-0000-0000-0000-000000000010'),
(gen_random_uuid(), 'chirp', false,'00000000-0000-0000-0000-000000000010');

-- ============================================
-- ✅ A2 (초급)
-- ============================================

INSERT INTO grammar_test (id, problem, type, level)
VALUES
('00000000-0000-0000-0000-000000000011', 'Yesterday, I ___ a movie.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000012', 'She is ___ than her brother.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000013', 'Are there ___ apples in the kitchen?', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000014', 'I’m ___ to the park tomorrow.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000015', 'He can ___ English very well.', 'Grammar', 'A2'),
('00000000-0000-0000-0000-000000000016', 'You can borrow books from a ___.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000017', 'My father’s brother is my ___.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000018', 'I feel sick. I should see a ___.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000019', 'I usually eat ___ in the morning.', 'Vocabulary', 'A2'),
('00000000-0000-0000-0000-000000000020', 'He works in an ___. He is a businessman.', 'Vocabulary', 'A2');

INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
-- Yesterday, I ___ a movie.
(gen_random_uuid(), 'watch', false, '00000000-0000-0000-0000-000000000011'),
(gen_random_uuid(), 'watched', true, '00000000-0000-0000-0000-000000000011'),
(gen_random_uuid(), 'watching', false, '00000000-0000-0000-0000-000000000011'),
(gen_random_uuid(), 'watches', false, '00000000-0000-0000-0000-000000000011'),

-- She is ___ than her brother.
(gen_random_uuid(), 'tall', false, '00000000-0000-0000-0000-000000000012'),
(gen_random_uuid(), 'taller', true, '00000000-0000-0000-0000-000000000012'),
(gen_random_uuid(), 'tallest', false, '00000000-0000-0000-0000-000000000012'),
(gen_random_uuid(), 'more tall', false, '00000000-0000-0000-0000-000000000012'),

-- Are there ___ apples in the kitchen?
(gen_random_uuid(), 'any', true, '00000000-0000-0000-0000-000000000013'),
(gen_random_uuid(), 'some', false, '00000000-0000-0000-0000-000000000013'),
(gen_random_uuid(), 'a', false, '00000000-0000-0000-0000-000000000013'),
(gen_random_uuid(), 'much', false, '00000000-0000-0000-0000-000000000013'),

-- I'm ___ to the park tomorrow.
(gen_random_uuid(), 'go', false, '00000000-0000-0000-0000-000000000014'),
(gen_random_uuid(), 'goes', false, '00000000-0000-0000-0000-000000000014'),
(gen_random_uuid(), 'going', true, '00000000-0000-0000-0000-000000000014'),
(gen_random_uuid(), 'went', false, '00000000-0000-0000-0000-000000000014'),

-- He can ___ English very well.
(gen_random_uuid(), 'speaks', false, '00000000-0000-0000-0000-000000000015'),
(gen_random_uuid(), 'speak', true, '00000000-0000-0000-0000-000000000015'),
(gen_random_uuid(), 'speaking', false, '00000000-0000-0000-0000-000000000015'),
(gen_random_uuid(), 'spoke', false, '00000000-0000-0000-0000-000000000015'),

-- You can borrow books from a ___.
(gen_random_uuid(), 'supermarket', false, '00000000-0000-0000-0000-000000000016'),
(gen_random_uuid(), 'library', true, '00000000-0000-0000-0000-000000000016'),
(gen_random_uuid(), 'hospital', false, '00000000-0000-0000-0000-000000000016'),
(gen_random_uuid(), 'bank', false, '00000000-0000-0000-0000-000000000016'),

-- My father’s brother is my ___.
(gen_random_uuid(), 'aunt', false, '00000000-0000-0000-0000-000000000017'),
(gen_random_uuid(), 'cousin', false, '00000000-0000-0000-0000-000000000017'),
(gen_random_uuid(), 'nephew', false, '00000000-0000-0000-0000-000000000017'),
(gen_random_uuid(), 'uncle', true, '00000000-0000-0000-0000-000000000017'),

-- I feel sick. I should see a ___.
(gen_random_uuid(), 'teacher', false, '00000000-0000-0000-0000-000000000018'),
(gen_random_uuid(), 'doctor', true, '00000000-0000-0000-0000-000000000018'),
(gen_random_uuid(), 'police officer', false, '00000000-0000-0000-0000-000000000018'),
(gen_random_uuid(), 'chef', false, '00000000-0000-0000-0000-000000000018'),

-- I usually eat ___ in the morning.
(gen_random_uuid(), 'breakfast', true, '00000000-0000-0000-0000-000000000019'),
(gen_random_uuid(), 'dinner', false, '00000000-0000-0000-0000-000000000019'),
(gen_random_uuid(), 'lunch', false, '00000000-0000-0000-0000-000000000019'),
(gen_random_uuid(), 'snack', false, '00000000-0000-0000-0000-000000000019'),

-- He works in an ___.
(gen_random_uuid(), 'office', true, '00000000-0000-0000-0000-000000000020'),
(gen_random_uuid(), 'farm', false, '00000000-0000-0000-0000-000000000020'),
(gen_random_uuid(), 'school', false, '00000000-0000-0000-0000-000000000020'),
(gen_random_uuid(), 'kitchen', false, '00000000-0000-0000-0000-000000000020');

-- ============================================
-- ✅ B1 (중급)
-- ============================================

INSERT INTO grammar_test (id, problem, type, level)
VALUES
('00000000-0000-0000-0000-000000000021', 'I ___ to Japan three times.', 'Grammar', 'B1'),
('00000000-0000-0000-0000-000000000022', 'If I ___ more money, I would buy a new car.', 'Grammar', 'B1'),
('00000000-0000-0000-0000-000000000023', 'You ___ finish your homework before you go out.', 'Grammar', 'B1'),
('00000000-0000-0000-0000-000000000024', 'While I ___ for the bus, it started to rain.', 'Grammar', 'B1'),
('00000000-0000-0000-0000-000000000025', 'This is the book ___ I was telling you about.', 'Grammar', 'B1'),
('00000000-0000-0000-0000-000000000026', 'He was ___ because he failed the exam.', 'Vocabulary', 'B1'),
('00000000-0000-0000-0000-000000000027', 'It is important to set realistic ___ for yourself.', 'Vocabulary', 'B1'),
('00000000-0000-0000-0000-000000000028', 'Could you please ___ the volume? It’s too loud.', 'Vocabulary', 'B1'),
('00000000-0000-0000-0000-000000000029', 'You need at least three years of relevant ___.', 'Vocabulary', 'B1'),
('00000000-0000-0000-0000-000000000030', 'She is a very ___ person.', 'Vocabulary', 'B1');

INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'have been', true, '00000000-0000-0000-0000-000000000021'),
(gen_random_uuid(), 'was', false, '00000000-0000-0000-0000-000000000021'),
(gen_random_uuid(), 'went', false, '00000000-0000-0000-0000-000000000021'),
(gen_random_uuid(), 'have went', false, '00000000-0000-0000-0000-000000000021'),

(gen_random_uuid(), 'have', false, '00000000-0000-0000-0000-000000000022'),
(gen_random_uuid(), 'had', true, '00000000-0000-0000-0000-000000000022'),
(gen_random_uuid(), 'would have', false, '00000000-0000-0000-0000-000000000022'),
(gen_random_uuid(), 'will have', false, '00000000-0000-0000-0000-000000000022'),

(gen_random_uuid(), 'must', true, '00000000-0000-0000-0000-000000000023'),
(gen_random_uuid(), 'can', false, '00000000-0000-0000-0000-000000000023'),
(gen_random_uuid(), 'may', false, '00000000-0000-0000-0000-000000000023'),
(gen_random_uuid(), 'would', false, '00000000-0000-0000-0000-000000000023'),

(gen_random_uuid(), 'waited', false, '00000000-0000-0000-0000-000000000024'),
(gen_random_uuid(), 'was waiting', true, '00000000-0000-0000-0000-000000000024'),
(gen_random_uuid(), 'am waiting', false, '00000000-0000-0000-0000-000000000024'),
(gen_random_uuid(), 'wait', false, '00000000-0000-0000-0000-000000000024'),

(gen_random_uuid(), 'who', false, '00000000-0000-0000-0000-000000000025'),
(gen_random_uuid(), 'which', true, '00000000-0000-0000-0000-000000000025'),
(gen_random_uuid(), 'where', false, '00000000-0000-0000-0000-000000000025'),
(gen_random_uuid(), 'when', false, '00000000-0000-0000-0000-000000000025'),

(gen_random_uuid(), 'excited', false, '00000000-0000-0000-0000-000000000026'),
(gen_random_uuid(), 'disappointed', true, '00000000-0000-0000-0000-000000000026'),
(gen_random_uuid(), 'confused', false, '00000000-0000-0000-0000-000000000026'),
(gen_random_uuid(), 'proud', false, '00000000-0000-0000-0000-000000000026'),

(gen_random_uuid(), 'goals', true, '00000000-0000-0000-0000-000000000027'),
(gen_random_uuid(), 'rules', false, '00000000-0000-0000-0000-000000000027'),
(gen_random_uuid(), 'hobbies', false, '00000000-0000-0000-0000-000000000027'),
(gen_random_uuid(), 'limits', false, '00000000-0000-0000-0000-000000000027'),

(gen_random_uuid(), 'increase', false, '00000000-0000-0000-0000-000000000028'),
(gen_random_uuid(), 'reduce', true, '00000000-0000-0000-0000-000000000028'),
(gen_random_uuid(), 'repeat', false, '00000000-0000-0000-0000-000000000028'),
(gen_random_uuid(), 'remove', false, '00000000-0000-0000-0000-000000000028'),

(gen_random_uuid(), 'experience', true, '00000000-0000-0000-0000-000000000029'),
(gen_random_uuid(), 'opinion', false, '00000000-0000-0000-0000-000000000029'),
(gen_random_uuid(), 'knowledge', false, '00000000-0000-0000-0000-000000000029'),
(gen_random_uuid(), 'permission', false, '00000000-0000-0000-0000-000000000029'),

(gen_random_uuid(), 'reliable', false, '00000000-0000-0000-0000-000000000030'),
(gen_random_uuid(), 'selfish', false, '00000000-0000-0000-0000-000000000030'),
(gen_random_uuid(), 'considerate', true, '00000000-0000-0000-0000-000000000030'),
(gen_random_uuid(), 'lazy', false, '00000000-0000-0000-0000-000000000030');

-- ============================================
-- ✅ B2 (중고급)
-- ============================================

INSERT INTO grammar_test (id, problem, type, level)
VALUES
('00000000-0000-0000-0000-000000000031', 'The Mona Lisa ___ by Leonardo da Vinci.', 'Grammar', 'B2'),
('00000000-0000-0000-0000-000000000032', 'If I had known you were coming, I ___ a cake.', 'Grammar', 'B2'),
('00000000-0000-0000-0000-000000000033', 'He denied ___ the money.', 'Grammar', 'B2'),
('00000000-0000-0000-0000-000000000034', 'By the time we arrived, the movie ___.', 'Grammar', 'B2'),
('00000000-0000-0000-0000-000000000035', 'I wish I ___ so much money on clothes last month.', 'Grammar', 'B2'),
('00000000-0000-0000-0000-000000000036', 'After running a marathon, she was completely ___.', 'Vocabulary', 'B2'),
('00000000-0000-0000-0000-000000000037', 'The government’s new policy has ___ a lot of controversy.', 'Vocabulary', 'B2'),
('00000000-0000-0000-0000-000000000038', 'I can’t ___ his rude behavior any longer.', 'Vocabulary', 'B2'),
('00000000-0000-0000-0000-000000000039', 'The company is known for its commitment to environmental ___.', 'Vocabulary', 'B2'),
('00000000-0000-0000-0000-000000000040', 'The politician’s sudden resignation was quite ___ to the public.', 'Vocabulary', 'B2');

INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'was painted', true, '00000000-0000-0000-0000-000000000031'),
(gen_random_uuid(), 'painted', false, '00000000-0000-0000-0000-000000000031'),
(gen_random_uuid(), 'is painting', false, '00000000-0000-0000-0000-000000000031'),
(gen_random_uuid(), 'had painted', false, '00000000-0000-0000-0000-000000000031'),

(gen_random_uuid(), 'would bake', false, '00000000-0000-0000-0000-000000000032'),
(gen_random_uuid(), 'baked', false, '00000000-0000-0000-0000-000000000032'),
(gen_random_uuid(), 'would have baked', true, '00000000-0000-0000-0000-000000000032'),
(gen_random_uuid(), 'will bake', false, '00000000-0000-0000-0000-000000000032'),

(gen_random_uuid(), 'to steal', false, '00000000-0000-0000-0000-000000000033'),
(gen_random_uuid(), 'stealing', true, '00000000-0000-0000-0000-000000000033'),
(gen_random_uuid(), 'that he steal', false, '00000000-0000-0000-0000-000000000033'),
(gen_random_uuid(), 'to have stolen', false, '00000000-0000-0000-0000-000000000033'),

(gen_random_uuid(), 'already started', false, '00000000-0000-0000-0000-000000000034'),
(gen_random_uuid(), 'had already started', true, '00000000-0000-0000-0000-000000000034'),
(gen_random_uuid(), 'was already starting', false, '00000000-0000-0000-0000-000000000034'),
(gen_random_uuid(), 'starts', false, '00000000-0000-0000-0000-000000000034'),

(gen_random_uuid(), 'didn’t spend', false, '00000000-0000-0000-0000-000000000035'),
(gen_random_uuid(), 'wouldn’t spend', false, '00000000-0000-0000-0000-000000000035'),
(gen_random_uuid(), 'hadn’t spent', true, '00000000-0000-0000-0000-000000000035'),
(gen_random_uuid(), 'don’t spend', false, '00000000-0000-0000-0000-000000000035'),

(gen_random_uuid(), 'tired', false, '00000000-0000-0000-0000-000000000036'),
(gen_random_uuid(), 'exhausted', true, '00000000-0000-0000-0000-000000000036'),
(gen_random_uuid(), 'bored', false, '00000000-0000-0000-0000-000000000036'),
(gen_random_uuid(), 'calm', false, '00000000-0000-0000-0000-000000000036'),

(gen_random_uuid(), 'generated', true, '00000000-0000-0000-0000-000000000037'),
(gen_random_uuid(), 'solved', false, '00000000-0000-0000-0000-000000000037'),
(gen_random_uuid(), 'reduced', false, '00000000-0000-0000-0000-000000000037'),
(gen_random_uuid(), 'avoided', false, '00000000-0000-0000-0000-000000000037'),

(gen_random_uuid(), 'put up with', true, '00000000-0000-0000-0000-000000000038'),
(gen_random_uuid(), 'look forward to', false, '00000000-0000-0000-0000-000000000038'),
(gen_random_uuid(), 'get along with', false, '00000000-0000-0000-0000-000000000038'),
(gen_random_uuid(), 'come up with', false, '00000000-0000-0000-0000-000000000038'),

(gen_random_uuid(), 'sustainability', true, '00000000-0000-0000-0000-000000000039'),
(gen_random_uuid(), 'ability', false, '00000000-0000-0000-0000-000000000039'),
(gen_random_uuid(), 'probability', false, '00000000-0000-0000-0000-000000000039'),
(gen_random_uuid(), 'responsibility', false, '00000000-0000-0000-0000-000000000039'),

(gen_random_uuid(), 'predictable', false, '00000000-0000-0000-0000-000000000040'),
(gen_random_uuid(), 'baffling', true, '00000000-0000-0000-0000-000000000040'),
(gen_random_uuid(), 'obvious', false, '00000000-0000-0000-0000-000000000040'),
(gen_random_uuid(), 'satisfying', false, '00000000-0000-0000-0000-000000000040');

-- ============================================
-- ✅ C1 (고급)
-- ============================================

INSERT INTO grammar_test (id, problem, type, level)
VALUES
('00000000-0000-0000-0000-000000000041', '___ had I arrived home than the phone rang.', 'Grammar', 'C1'),
('00000000-0000-0000-0000-000000000042', '___ he is rich and famous, he is not happy.', 'Grammar', 'C1'),
('00000000-0000-0000-0000-000000000043', 'The project needs to be finished, ___ of the cost.', 'Grammar', 'C1'),
('00000000-0000-0000-0000-000000000044', 'She insisted on ___ for the meal herself.', 'Grammar', 'C1'),
('00000000-0000-0000-0000-000000000045', 'Not only ___ sing, but she also plays the guitar.', 'Grammar', 'C1'),
('00000000-0000-0000-0000-000000000046', 'Smartphones have become ___ in modern society.', 'Vocabulary', 'C1'),
('00000000-0000-0000-0000-000000000047', 'The new manager tried to ___ the negative effects of the scandal.', 'Vocabulary', 'C1'),
('00000000-0000-0000-0000-000000000048', 'Her arguments were so ___ that we were all convinced.', 'Vocabulary', 'C1'),
('00000000-0000-0000-0000-000000000049', 'The two countries finally agreed to a ___ after years of conflict.', 'Vocabulary', 'C1'),
('00000000-0000-0000-0000-000000000050', 'He has a very ___ sense of humor.', 'Vocabulary', 'C1');

INSERT INTO answer (id, content, correct, grammar_test_id) VALUES
(gen_random_uuid(), 'No sooner', true, '00000000-0000-0000-0000-000000000041'),
(gen_random_uuid(), 'Not only', false, '00000000-0000-0000-0000-000000000041'),
(gen_random_uuid(), 'Hardly', false, '00000000-0000-0000-0000-000000000041'),
(gen_random_uuid(), 'Never', false, '00000000-0000-0000-0000-000000000041'),

(gen_random_uuid(), 'Despite', false, '00000000-0000-0000-0000-000000000042'),
(gen_random_uuid(), 'However', false, '00000000-0000-0000-0000-000000000042'),
(gen_random_uuid(), 'Although', true, '00000000-0000-0000-0000-000000000042'),
(gen_random_uuid(), 'In spite of', false, '00000000-0000-0000-0000-000000000042'),

(gen_random_uuid(), 'regardless', true, '00000000-0000-0000-0000-000000000043'),
(gen_random_uuid(), 'regarding', false, '00000000-0000-0000-0000-000000000043'),
(gen_random_uuid(), 'in case', false, '00000000-0000-0000-0000-000000000043'),
(gen_random_uuid(), 'due to', false, '00000000-0000-0000-0000-000000000043'),

(gen_random_uuid(), 'paying', true, '00000000-0000-0000-0000-000000000044'),
(gen_random_uuid(), 'to pay', false, '00000000-0000-0000-0000-000000000044'),
(gen_random_uuid(), 'paid', false, '00000000-0000-0000-0000-000000000044'),
(gen_random_uuid(), 'be paid', false, '00000000-0000-0000-0000-000000000044'),

(gen_random_uuid(), 'she can', false, '00000000-0000-0000-0000-000000000045'),
(gen_random_uuid(), 'can she', true, '00000000-0000-0000-0000-000000000045'),
(gen_random_uuid(), 'she could', false, '00000000-0000-0000-0000-000000000045'),
(gen_random_uuid(), 'could she', false, '00000000-0000-0000-0000-000000000045'),

(gen_random_uuid(), 'ubiquitous', true, '00000000-0000-0000-0000-000000000046'),
(gen_random_uuid(), 'scarce', false, '00000000-0000-0000-0000-000000000046'),
(gen_random_uuid(), 'optional', false, '00000000-0000-0000-0000-000000000046'),
(gen_random_uuid(), 'obsolete', false, '00000000-0000-0000-0000-000000000046'),

(gen_random_uuid(), 'mitigate', true, '00000000-0000-0000-0000-000000000047'),
(gen_random_uuid(), 'exacerbate', false, '00000000-0000-0000-0000-000000000047'),
(gen_random_uuid(), 'initiate', false, '00000000-0000-0000-0000-000000000047'),
(gen_random_uuid(), 'delegate', false, '00000000-0000-0000-0000-000000000047'),

(gen_random_uuid(), 'tenuous', false, '00000000-0000-0000-0000-000000000048'),
(gen_random_uuid(), 'ambiguous', false, '00000000-0000-0000-0000-000000000048'),
(gen_random_uuid(), 'cogent', true, '00000000-0000-0000-0000-000000000048'),
(gen_random_uuid(), 'superficial', false, '00000000-0000-0000-0000-000000000048'),

(gen_random_uuid(), 'treaty', false, '00000000-0000-0000-0000-000000000049'),
(gen_random_uuid(), 'truce', true, '00000000-0000-0000-0000-000000000049'),
(gen_random_uuid(), 'trial', false, '00000000-0000-0000-0000-000000000049'),
(gen_random_uuid(), 'tribute', false, '00000000-0000-0000-0000-000000000049'),

(gen_random_uuid(), 'subtle', false, '00000000-0000-0000-0000-000000000050'),
(gen_random_uuid(), 'sardonic', true, '00000000-0000-0000-0000-000000000050'),
(gen_random_uuid(), 'sincere', false, '00000000-0000-0000-0000-000000000050'),
(gen_random_uuid(), 'somber', false, '00000000-0000-0000-0000-000000000050');
