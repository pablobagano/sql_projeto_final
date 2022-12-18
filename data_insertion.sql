INSERT INTO charts.sub_genero (id_subgenero, nome_subgenero)
	VALUES (default, 'Proto-Rock'),
			(default, 'R&B'),
            (default, 'Rockabilly'),
            (default, 'Rock n Roll'),
            (default, 'Folk Rock'),
            (default, 'Blues Rock'),
            (default, 'Hard Rock'),
            (default, 'New Wave of British Heavy Metal'),
            (default, 'Glam Rock'),
            (default, 'Heavy Metal');
            
INSERT INTO charts.bandas (id_banda, nome_banda, discografia, integrantes, em_atividade, id_subgenero)
	VALUES (default, 'Sister Rosetta Tharpe', 'The Lonesome Road, The Gospel Truth, Strange Things Happening everyday', 'Artista Solo', 0, 1),
			(default, 'Elvis Presley', 'Elvis Presley, Love Me Tender, Peace In The Valley, Loving You, Jailhouse Rock', 'Artista Solo', 0, 2),
			(default, 'Jerry Lee Lewis', 'Jerry Lee Lewis, The Greatest Live Show on Earth, Great Balls of Fire', 'Artista Solo', 0, 3),
            (default, 'The Animals', 'The Animals, The Animals on Tour, Animal Tracks', 'Eric Burdon (vocals), Alan Price (keyboards), Chas Chandler (bass), Hilton Valentine (guitar), John Steel (drums)', '1', 4),
            (default, 'Bob Dylan', 'Bob Dylan, The Freewheelin Bob Dylan, Blonde on Blonde', 'Artista Solo', 1, 5),
            (default, 'Stevie Ray Vaughn', 'Texas Flood, Cold Shot', 'Artista Solo', 0, 6),
            (default, 'Led Zeppelin', 'Houses of The Holy, IV, In Through The Out Door, Physical Graffiti', 'Robert Plant, Jimmy Page, John Bonham, John Paul Jones', 0, 7),
            (default, 'Iron Maiden', 'Aces High, Piece of Mind, Brave New World, The Trooper', 'Bruce Dickinkson, Dave Murray, Adrian Smith, Steve Harris, Nicko McBrain', 1, 8),
            (default, 'Kiss', 'Creatures of The Night, Alive, Psycho Circus, Unmasked', 'Paul Stanley, Gene Simmons, Peter Criss, Ace Frehley', 0, 9),
            (default, 'Dio', 'Holy Diver, Sacred Heart, Magica, Evil or Divine', 'Ronnie James Dio, Doug Aldrich, Jimmy Bain, Simon Wright', 0, 10);
            
            
INSERT INTO charts.albuns (id_album, ano_lancamento, id_banda, nome_album, billboard, copias_vendidas, id_subgenero)
	VALUES (default,  '1945-01-01', 1, 'Strange Things Happening Every Day', 2, null, 1),
			(default,  '1957-10-15', 2, 'Elvis Christmas Album', 1, 17000000, 2),
            (default,  '2006-09-26', 3, 'Last Man Standing', 1, 1000000, 3),
            (default,  '1966-02-01', 4,  'The Best of The Animals', 6, 500000, 4),
            (default,  '1967-03-27', 5,  'Greatest Hits', 10, 5000000, 5),
            (default,  '1983-06-15', 6,  'Texas Flood', 38, 2000000, 6),
            (default,  '1971-11-08', 7,  'IV', 2, 40000000, 7),
            (default,  '1982-03-22', 8,  'The Number Of The Beast', null, 14000000, 8),
            (default,  '1975-09-10', 9,  'Alive!', null, 10000000, 9),
            (default,  '1983-05-25', 10, 'Holy Diver', 56, 100000, 10);


INSERT INTO charts.producao (id_album, id_banda, id_subgenero, produtor, estudio, local_estudio, numero_faixas)
	VALUES (1, 1, 1, 'Indisponível', 'Indisponível', 'Indisponível',1),
			(2, 2, 2, 'Steve Sholes', 'RCA Studio B', 'USA', 12),
			(3, 3, 3, 'Jimmy Rip', 'Phillips Studio', 'USA', 21),
			(4, 4,  4, 'Mickie Most', 'Vários', 'USA', 11),
			(5, 5,  5, 'John Hammond', 'Vários', 'Vários', 10),
			(6, 6,  6, 'Richard Mullen', 'Jackson Browne Personal Studio', 'USA', 10),
			(7, 7,  7, 'Jimmy Page', 'Headley Island Studios', 'Londres', 8),
			(8, 8,  8, 'Martin Birch', 'Battery Studio', 'Londres', 12),
			(9, 9,  9, 'Eddie Kramer', 'Vários', 'Vários', 16),
			(10, 10, 10, 'Ronnie James Dio', 'Sound City Studios', 'USA', 9);

INSERT INTO charts.musicos (id_musico, id_banda, id_album, nome_musico, instrumentos, data_nascimento, em_atividade)
	VALUES (default, 7, 7, 'Jimmy Page', 'Guitarra, violão', '1944-01-09', 1),
			(default, 7, 7, 'Robert Plant', 'Vocalista', '1948-08-20', 1),
            (default, 7, 7, 'John Paul Jones', 'Baixo, guitarra, violão, bandolim, órgão', '1946-01-03', 1),
            (default, 7, 7, 'John Bonham', 'Bateria', '1948-05-31', 0),
            (default, 6, 6, 'Stevie Ray Vaughn', 'Guitarra, violão, vocalista', '1954-10-03', 0),
            (default, 1, 1, 'Rosetta Tharpe', 'Guitarra, vocalista', '1915-03-20', 0),
            (default, 9, 9, 'Paul Stanley', 'Guitarra, violão, vocalista', '1952-01-20', 1),
            (default, 9, 9, 'Gene Simmons', 'Baixo, vocalista', '1949-08-25', 1),
            (default, 9, 9, 'Peter Criss', 'Bateria, vocalista', '1945-12-20', 0),
            (default, 9, 9, 'Ace Frehley', 'Guitarra, vocalista', '1951-04-27', 0),
            (default, 5, 5, 'Bob Dylan', 'Violão, vocalista', '1941-05-24', 1),
            (default, 2, 2, 'Elvis Presley', 'Violão, vocalista', '1935-01-08', 0),
            (default, 3, 3, 'Jerry Lee Lewis', 'Piano, vocalista', '1935-09-29', 0),
            (default, 4, 4, 'Eric Burdon', 'Vocalista', '1941-05-11', 0),
            (default, 10, 10, 'Ronnie James Dio', 'Vocalista', '1942-07-10', 0),
            (default, 10, 10, 'Vivian Campbell', 'Guitarra', '1962-08-25', 1),
            (default, 8, 8, 'Bruce Dickinson', 'Vocalista', '1958-08-07', 1),
            (default, 9, 9, 'Steve Harris', 'Baixo', '1956-03-12', 1);          

