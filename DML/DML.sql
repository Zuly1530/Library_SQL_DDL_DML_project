
-- `Insert data`

INSERT INTO authors (firstname, lastname)
VALUES
('Stephen', 'King'),
('Erich Maria', 'Remarque'),
('Alexandre', 'Dumas'),
('Isaac', 'Asimov'),
('Arthur', 'Clarke'),
('Ray', 'Bradbury'),
('Paulo', 'Coelho'),
('Agatha', 'Christie'),
('Jack', 'London'),
('Jules', 'Verne'),
('Graham', 'Green'),
('John', 'le Carré'),
('Sidney', 'Sheldon'),
('Margaret', 'Atwood'),
('Dean', 'Kuntz'),
('Fyodor', 'Dostoevsky'),
('William', 'Thackeray'),
('Theodore', 'Dreiser'),
('Mikhail', 'Bulgakov');


INSERT INTO genre (genre_name)
VALUES 
('thriller'),
('mystery'),
('drama'),
('science fiction'),
('romance'),
('adventure'),
('travel'),
('detective story'),
('satire'),
('prose'),
('dystopia'),
('parable'),
('realism'),
('horror');


ALTER TABLE books MODIFY COLUMN publish_year SMALLINT;


INSERT INTO books (title, publish_year, pages, author_id, genre_id)
VALUES
-- Stephen King (author_id = 1)
('It', 1986, 1184, 1, 14),
('The Shining', 1977, 447, 1, 1),
('Misery', 1987, 310, 1, 14),

-- Erich Maria Remarque (author_id = 2)
('All Quiet on the Western Front', 1929, 296, 2, 3),
('Three Comrades', 1936, 496, 2, 5),
('Arch of Triumph', 1945, 455, 2, 3),

-- Alexandre Dumas (author_id = 3)
('The Three Musketeers', 1844, 700, 3, 6),
('The Count of Monte Cristo', 1844, 1276, 3, 6),
('The Man in the Iron Mask', 1850, 578, 3, 6),

-- Isaac Asimov (author_id = 4)
('Foundation', 1951, 255, 4, 4),
('I, Robot', 1950, 253, 4, 4),
('The Caves of Steel', 1953, 224, 4, 4),

-- Arthur Clarke (author_id = 5)
('2001: A Space Odyssey', 1968, 297, 5, 4),
('Rendezvous with Rama', 1973, 256, 5, 4),
('Childhoods End', 1953, 224, 5, 4),

-- Ray Bradbury (author_id = 6)
('Fahrenheit 451', 1953, 249, 6, 11),
('The Martian Chronicles', 1950, 222, 6, 4),
('Something Wicked This Way Comes', 1962, 293, 6, 14),

-- Paulo Coelho (author_id = 7)
('The Alchemist', 1988, 208, 7, 12),
('Brida', 1990, 240, 7, 12),
('Veronika Decides to Die', 1998, 210, 7, 3),

-- Agatha Christie (author_id = 8)
('Murder on the Orient Express', 1934, 256, 8, 8),
('And Then There Were None', 1939, 272, 8, 2),
('The Murder of Roger Ackroyd', 1926, 288, 8, 8),

-- Jack London (author_id = 9)
('The Call of the Wild', 1903, 232, 9, 6),
('White Fang', 1906, 298, 9, 6),
('Martin Eden', 1909, 432, 9, 13),

-- Jules Verne (author_id = 10)
('Twenty Thousand Leagues Under the Sea', 1870, 464, 10, 6),
('Around the World in Eighty Days', 1872, 312, 10, 7),
('Journey to the Center of the Earth', 1864, 384, 10, 6),

-- Graham Green (author_id = 11)
('The Power and the Glory', 1940, 272, 11, 3),
('The Quiet American', 1955, 208, 11, 1),
('Our Man in Havana', 1958, 272, 11, 9),

-- John le Carré (author_id = 12)
('The Spy Who Came in from the Cold', 1963, 224, 12, 1),
('Tinker Tailor Soldier Spy', 1974, 408, 12, 1),
('The Constant Gardener', 2001, 608, 12, 1),

-- Sidney Sheldon (author_id = 13)
('The Other Side of Midnight', 1973, 504, 13, 5),
('If Tomorrow Comes', 1985, 512, 13, 1),
('Master of the Game', 1982, 480, 13, 3),

-- Margaret Atwood (author_id = 14)
('The Handmaids Tale', 1985, 311, 14, 11),
('Oryx and Crake', 2003, 376, 14, 11),
('The Testaments', 2019, 432, 14, 11),

-- Dean Kuntz (author_id = 15)
('Watchers', 1987, 352, 15, 14),
('Phantoms', 1983, 352, 15, 14),
('Intensity', 1995, 436, 15, 14),

-- Fyodor Dostoevsky (author_id = 16)
('Crime and Punishment', 1866, 671, 16, 13),
('The Brothers Karamazov', 1880, 796, 16, 13),
('The Idiot', 1869, 656, 16, 13),

-- William Thackeray (author_id = 17)
('Vanity Fair', 1848, 672, 17, 9),
('The History of Pendennis', 1848, 624, 17, 10),
('The Luck of Barry Lyndon', 1844, 288, 17, 9),

-- Theodore Dreiser (author_id = 18)
('Sister Carrie', 1900, 557, 18, 13),
('An American Tragedy', 1925, 840, 18, 3),
('Jennie Gerhardt', 1911, 560, 18, 13),

-- Mikhail Bulgakov (author_id = 19)
('The Master and Margarita', 1967, 384, 19, 9),
('Heart of a Dog', 1925, 128, 19, 9),
('The White Guard', 1925, 352, 19, 3);


-- Modify an existing record in the table
INSERT INTO authors (firstname, lastname)
VALUES ('Ivan', 'Smith');

UPDATE authors
SET firstname = 'John'
WHERE id = 20;

-- Delete the existing record in the table
DELETE FROM authors
WHERE id = 20;


