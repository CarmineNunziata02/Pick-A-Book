-- du seguio il codice per il riempimento diei filtri genere e categoria
INSERT INTO genere (nome) VALUES 
('Azione'),
('Commedia'),
('Crimine'),
('Drammatico'),
('Fantasy'),
('Distopico'),
('Classici'),
('Giallo'),
('Thriller'),
('Narrativa'),
('Biografia'),
('Autobiografia'),
('Scienza'),
('Filosofia'),
('Satira'),
('Avventura'),
('Storia'),
('Romance'),
('Gotico');

INSERT INTO categoria (nome) VALUES
('Romanzo Sentimentale'),
('Fantascienza'),
('Saga'),
('Narrativa per ragazzi'),
('Classico'),
('Fantasy'),
('Distopico'),
('Giallo'),
('Ragazzi'),
('Biografie'),
('Saggistica'),
('Filosofia'),
('Storia'),
('Sentimentale'),
('Azione');

--di seguito il codice per il popolamento del catalogo 

-- A Song of Ice and Fire (Game of Thrones)
INSERT INTO prodotti (isbn, nome, autore, descrizione, immagine_prod, prezzo, quantita, genere_nome, categoria_nome, copie_vendute) VALUES
('10000000000000001', "A Game of Thrones - Volume 1", "George R.R. Martin", "Il primo volume della saga epica delle Cronache del Ghiaccio e del Fuoco.", './images/got_vol_1.jpg', 14.90, 30, 'Fantasy', 'Fantasy', 0),
('10000000000000002', 'A Clash of Kings - Volume 2', 'George R.R. Martin', 'La lotta per il trono continua tra intrighi e battaglie.', './images/got_vol_2.jpg', 15.90, 25, 'Fantasy', 'Fantasy', 0),
('10000000000000003', 'A Storm of Swords - Volume 3', 'George R.R. Martin', 'Tradimenti e alleanze nel terzo capitolo della saga.', './images/got_vol_3.jpg', 16.90, 20, 'Fantasy', 'Fantasy', 0),
('10000000000000004', 'A Feast for Crows - Volume 4', 'George R.R. Martin', 'La guerra ha lasciato segni, ma la battaglia per il potere è ancora viva.', './images/got_vol_4.jpg', 16.50, 20, 'Fantasy', 'Fantasy', 0),
('10000000000000005', 'A Dance with Dragons - Volume 5', 'George R.R. Martin', 'Il destino dei regni si intreccia ancora una volta.', './images/got_vol_5.jpg', 17.50, 20, 'Fantasy', 'Fantasy', 0);
-- Il Signore degli Anelli
INSERT INTO prodotti (isbn, nome, autore, descrizione, immagine_prod, prezzo, quantita, genere_nome, categoria_nome, copie_vendute) VALUES
('10000000000000006', "Il Signore degli Anelli - Volume 1: La Compagnia dell'Anello", "J.R.R. Tolkien", "L'inizio del viaggio per distruggere l'Unico Anello.", './images/ring1.jpg', 13.99, 25, 'Fantasy', 'Fantasy', 0),
('10000000000000007', 'Il Signore degli Anelli - Volume 2: Le Due Torri', 'J.R.R. Tolkien', 'La Compagnia si divide e affronta nuovi pericoli.', './images/ring2.jpg', 13.99, 25, 'Fantasy', 'Fantasy', 0),
('10000000000000008', 'Il Signore degli Anelli - Volume 3: Il Ritorno del Re', 'J.R.R. Tolkien', 'La battaglia finale per la Terra di Mezzo ha inizio.', './images/ring3.jpg', 13.99, 25, 'Fantasy', 'Fantasy', 0);
-- Lo Hobbit
INSERT INTO prodotti (isbn, nome, autore, descrizione, immagine_prod, prezzo, quantita, genere_nome, categoria_nome, copie_vendute) VALUES
('10000000000000009', 'Lo Hobbit - Volume 1', 'J.R.R. Tolkien', 'Le avventure di Bilbo Baggins in un viaggio inatteso verso Erebor.', './images/hobbit.jpg', 11.90, 30, 'Fantasy', 'Fantasy', 0);
-- Harry Potter
INSERT INTO prodotti (isbn, nome, autore, descrizione, immagine_prod, prezzo, quantita, genere_nome, categoria_nome, copie_vendute) VALUES
('10000000000000010', 'Harry Potter e la Pietra Filosofale - Volume 1', 'J.K. Rowling', 'Il giovane Harry scopre di essere un mago e inizia la scuola di magia.', './images/hp1.jpg', 10.99, 50, 'Fantasy', 'Fantasy', 0),
('10000000000000011', 'Harry Potter e la Camera dei Segreti - Volume 2', 'J.K. Rowling', 'Una nuova minaccia si aggira tra i corridoi di Hogwarts.', './images/hp2.jpg', 10.99, 50, 'Fantasy', 'Fantasy', 0),
('10000000000000012', 'Harry Potter e il Prigioniero di Azkaban - Volume 3', 'J.K. Rowling', 'Un misterioso prigioniero evade e sembra cercare Harry.', './images/hp3.jpg', 10.99, 50, 'Fantasy', 'Fantasy', 0),
('10000000000000013', 'Harry Potter e il Calice di Fuoco - Volume 4', 'J.K. Rowling', 'Harry partecipa a un pericoloso torneo tra scuole di magia.', './images/hp4.jpg', 12.99, 40, 'Fantasy', 'Fantasy', 0),
('10000000000000014', "Harry Potter e l'Ordine della Fenice - Volume 5", 'J.K. Rowling', 'Il ritorno di Voldemort viene ignorato dal Ministero della Magia.', './images/hp5.jpg', 13.99, 40, 'Fantasy', 'Fantasy', 0),
('10000000000000015', 'Harry Potter e il Principe Mezzosangue - Volume 6', 'J.K. Rowling', 'Harry scopre di più sul passato di Voldemort.', './images/hp6.jpg', 13.99, 40, 'Fantasy', 'Fantasy', 0),
('10000000000000016', 'Harry Potter e i Doni della Morte - Volume 7', 'J.K. Rowling', 'La battaglia finale tra Harry e Voldemort ha inizio.', './images/hp7.jpg', 14.99, 40, 'Fantasy', 'Fantasy', 0);
-- Hunger Games
INSERT INTO prodotti (isbn, nome, autore, descrizione, immagine_prod, prezzo, quantita, genere_nome, categoria_nome, copie_vendute) VALUES
('10000000000000017', 'Hunger Games - Volume 1', 'Suzanne Collins', 'Un reality mortale in un futuro distopico.', './images/hunger1.jpg', 9.99, 35, 'Distopico', 'Distopico', 0),
('10000000000000018', 'La Ragazza di Fuoco - Volume 2', 'Suzanne Collins', 'Katniss sfida il potere del Capitol.', './images/hunger2.jpg', 10.99, 35, 'Distopico', 'Distopico', 0),
('10000000000000019', 'Il Canto della Rivolta - Volume 3', 'Suzanne Collins', 'La rivolta contro il sistema è giunta al suo apice.', './images/hunger3.jpg', 11.99, 35, 'Distopico', 'Distopico', 0);
-- Percy Jackson
INSERT INTO prodotti (isbn, nome, autore, descrizione, immagine_prod, prezzo, quantita, genere_nome, categoria_nome, copie_vendute) VALUES
('10000000000000020', "Percy Jackson e gli Dei dell'Olimpo - Volume 1: Il Ladro di Fulmini", 'Rick Riordan', 'Il figlio di Poseidone scopre la sua vera natura.', './images/percy1.jpg', 8.99, 30, 'Fantasy', 'Fantasy', 0),
('10000000000000021', 'Il Mare dei Mostri - Volume 2', 'Rick Riordan', 'Percy e i suoi amici devono salvare il Campo Mezzosangue', './images/percy2.jpg', 8.99, 30, 'Fantasy', 'Fantasy', 0),
('10000000000000022', 'La Maledizione del Titano - Volume 3', 'Rick Riordan', "Una nuova minaccia incombe sugli dei dell'Olimpo.", './images/percy3.jpg', 8.99, 30, 'Fantasy', 'Fantasy', 0),
('10000000000000023', 'La Battaglia del Labirinto - Volume 4', 'Rick Riordan', 'Percy affronta insidie in un antico labirinto.', './images/percy4.jpg', 8.99, 30, 'Fantasy', 'Fantasy', 0),
('10000000000000024', 'Lo Scontro Finale - Volume 5', 'Rick Riordan', 'La battaglia finale contro Crono ha inizio.', './images/percy5.jpg', 8.99, 30, 'Fantasy', 'Fantasy', 0);
-- Classici della Letteratura
INSERT INTO prodotti (isbn, nome, autore, descrizione, immagine_prod, prezzo, quantita, genere_nome, categoria_nome, copie_vendute) VALUES
('10000000000000025', 'I Promessi Sposi', 'Alessandro Manzoni', "Una storia d'amore travagliata nella Lombardia del XVII secolo.", './images/promessisposi.jpg', 13.00, 15, 'Classici', 'Classico', 0),
('10000000000000026', 'Il grande Gatsby', 'F. Scott Fitzgerald', "La decadenza e l'illusione del sogno americano negli anni 20.", './images/gatsby.jpg', 12.00, 15, 'Classici', 'Classico', 0),
('10000000000000027', 'Delitto e castigo', 'Fëdor Dostoevskij', 'Un giovane studente lotta con il peso morale di un omicidio.', './images/delitto_e_castigo.jpg', 15.50, 10, 'Classici', 'Classico', 0),
('10000000000000028', 'Orgoglio e pregiudizio', 'Jane Austen', 'Le dinamiche sociali e amorose tra Elizabeth e Mr. Darcy.', './images/org_preg.jpg', 11.50, 20, 'Romance', 'Classico', 0);
-- Fantasy
INSERT INTO prodotti (isbn, nome, autore, descrizione, immagine_prod, prezzo, quantita, genere_nome, categoria_nome, copie_vendute) VALUES
('10000000000000029', 'Eragon', 'Christopher Paolini', 'Un giovane scopre di essere destinato a diventare un Cavaliere dei Draghi.', './images/eragon.jpg', 13.00, 15, 'Fantasy', 'Fantasy', 0),
('10000000000000030', "La bussola d'oro", 'Philip Pullman', 'Lyra esplora mondi paralleli per salvare il suo amico rapito.', './images/bussola.jpg', 13.50, 12, 'Fantasy', 'Fantasy', 0);
-- Fantascienza
INSERT INTO prodotti (isbn, nome, autore, descrizione, immagine_prod, prezzo, quantita, genere_nome, categoria_nome, copie_vendute) VALUES
('10000000000000031', '1984', 'George Orwell', 'Un futuro distopico dominato da un regime totalitario.', './images/1984.jpg', 12.00, 25, 'Fantasy', 'Fantascienza', 0),
('10000000000000032', 'Fahrenheit 451', 'Ray Bradbury', 'In un futuro dove i libri sono proibiti, un pompiere inizia a dubitare.', './images/fareneith.jpg', 11.00, 15, 'Fantasy', 'Fantascienza', 0),
('10000000000000033', 'Dune', 'Frank Herbert', 'Paul Atreides lotta per il controllo del deserto di Arrakis.', './images/dune.jpg', 14.00, 20, 'Fantasy', 'Fantascienza', 0),
('10000000000000034', 'Guida galattica per autostoppisti', 'Douglas Adams', 'Un improbabile viaggio spaziale dopo la distruzione della Terra.', './images/ggperauto.jpg', 12.50, 15, 'Fantasy', 'Fantascienza', 0);
-- Gialli / Thriller
INSERT INTO prodotti (isbn, nome, autore, descrizione, immagine_prod, prezzo, quantita, genere_nome, categoria_nome, copie_vendute) VALUES
('10000000000000035', "Assassinio sull'Orient Express", 'Agatha Christie', 'Poirot risolve un mistero su un treno in viaggio.', './images/orient_express.jpg', 10.99, 25, 'Giallo', 'Giallo', 0),
('10000000000000036', 'Il silenzio degli innocenti', 'Thomas Harris', 'Un killer psicopatico e un cannibale aiutano l FBI.', './images/silenzio_innocenti.jpg', 13.00, 10, 'Thriller', 'Giallo', 0),
('10000000000000037', 'Il nome della rosa', 'Umberto Eco', 'Omicidi in un monastero medievale: un mistero storico.', './images/nome della rosa.jpg', 13.99, 20, 'Giallo', 'Giallo', 0),
('10000000000000038', 'Il codice Da Vinci', 'Dan Brown', 'Un simbologo svela un mistero che minaccia la chiesa.', './images/da_vinci.jpg', 14.50, 18, 'Thriller', 'Giallo', 0);
-- Romanzi Sentimentali
INSERT INTO prodotti (isbn, nome, autore, descrizione, immagine_prod, prezzo, quantita, genere_nome, categoria_nome, copie_vendute) VALUES
('10000000000000039', 'Via col vento', 'Margaret Mitchell', "La storia d'amore e sopravvivenza durante la guerra civile americana.", './images/via_col_vento.jpg', 13.50, 15, 'Romance', 'Romanzo Sentimentale', 0),
('10000000000000040', 'Le pagine della nostra vita', 'Nicholas Sparks', "Una storia d'amore che supera il tempo e le difficoltà.", './images/pagine_vita.jpg', 11.90, 10, 'Romance', 'Romanzo Sentimentale', 0),
('10000000000000041', 'Chiamami col tuo nome', 'André Aciman', "Un'estate italiana che cambia per sempre la vita di due ragazzi.", './images/call_me.jpg', 12.50, 12, 'Romance', 'Romanzo Sentimentale', 0);
-- Narrativa per ragazzi
INSERT INTO prodotti (isbn, nome, autore, descrizione, immagine_prod, prezzo, quantita, genere_nome, categoria_nome, copie_vendute) VALUES
('10000000000000042', 'Il piccolo principe', 'Antoine de Saint-Exupéry', 'Un racconto filosofico attraverso gli occhi di un bambino.', './images/principe.jpg', 9.99, 30, 'Narrativa', 'Ragazzi', 0),
('10000000000000043', 'Storia di una gabbianella e del gatto che le insegnò a volare', 'Luis Sepúlveda', 'Una fiaba sulla solidarietà e la diversità.', './images/gabbianella.jpg', 8.50, 20, 'Narrativa', 'Ragazzi', 0),
('10000000000000044', 'Wonder', 'R.J. Palacio', 'Un ragazzo con una malformazione facciale affronta la scuola.', './images/wonder.jpg', 10.90, 25, 'Narrativa', 'Ragazzi', 0),
('10000000000000045', 'La fabbrica di cioccolato', 'Roald Dahl', 'Charlie visita la magica fabbrica del signor Wonka.', './images/fabbrica_ciocc.jpg', 9.50, 18, 'Narrativa', 'Ragazzi', 0);
-- Biografie e Autobiografie
INSERT INTO prodotti (isbn, nome, autore, descrizione, immagine_prod, prezzo, quantita, genere_nome, categoria_nome, copie_vendute) VALUES
('10000000000000046', 'Il diario di Anna Frank', 'Anne Frank', 'La testimonianza toccante di una ragazza ebrea nascosta.', './images/anna_frank.jpg', 10.50, 15, 'Biografia', 'Biografie', 0),
('10000000000000047', 'Open', 'Andre Agassi', 'La vita del tennista tra gloria e insicurezze.', './images/open.jpg', 13.00, 10, 'Autobiografia', 'Biografie', 0),
('10000000000000048', 'Long Walk to Freedom', 'Nelson Mandela', "La lotta contro l'apartheid e la vita di Mandela.", './images/mandela.jpg', 14.00, 10, 'Autobiografia', 'Biografie', 0);
-- Saggistica e Scienza
INSERT INTO prodotti (isbn, nome, autore, descrizione, immagine_prod, prezzo, quantita, genere_nome, categoria_nome, copie_vendute) VALUES
('10000000000000049', 'Breve storia del tempo', 'Stephen Hawking', "Una panoramica dell'universo, dal Big Bang ai buchi neri.", './images/stephen_hawk.jpg', 13.50, 10, 'Scienza', 'Saggistica', 0),
('10000000000000050', 'Sapiens: Da animali a dèi', 'Yuval Noah Harari', "La storia dell'umanità dalla preistoria al presente.", './images/sapiens.jpg', 15.00, 15, 'Storia', 'Saggistica', 0),
('10000000000000051', 'Il gene egoista', 'Richard Dawkins', "Una teoria evolutiva basata sull'egoismo genetico.", './images/gene_egoista.jpg', 14.50, 10, 'Scienza', 'Saggistica', 0);
-- Storia e Filosofia
INSERT INTO prodotti (isbn, nome, autore, descrizione, immagine_prod, prezzo, quantita, genere_nome, categoria_nome, copie_vendute)  VALUES
('10000000000000052', 'Il mondo di Sofia', 'Jostein Gaarder', 'Un romanzo che spiega la storia della filosofia.', './images/sofia.jpg', 13.00, 20, 'Filosofia', 'Filosofia', 0),
('10000000000000053', 'Storia contemporanea', 'Paolo Prodi', 'Un manuale di approfondimento della storia moderna.', './images/storia.jpg', 16.00, 10, 'Storia', 'Storia', 0),
('10000000000000054', 'Il contratto sociale', 'Jean-Jacques Rousseau', "L'origine della legittimità del potere e della libertà civile.", './images/contratto_sociale.jpg', 10.00, 10, 'Filosofia', 'Filosofia', 0);
-- Libri aggiuntivi: Classici e distopici
INSERT INTO prodotti (isbn, nome, autore, descrizione, immagine_prod, prezzo, quantita, genere_nome, categoria_nome, copie_vendute) VALUES
('10000000000000055', 'Alice nel Paese delle Meraviglie', 'Lewis Carroll', 'Alice cade in una tana di coniglio e scopre un mondo surreale e stravagante.', './images/alice.jpg', 10.00, 20, 'Fantasy', 'Classico', 0),
('10000000000000056', 'city', 'George Orwell', 'Un futuro distopico sotto il controllo costante del Grande Fratello.', './images/city.jpg', 12.00, 25, 'Fantasy', 'Fantascienza', 0),
('10000000000000057', 'La fattoria degli animali', 'George Orwell', 'Una satira politica in forma di favola con animali ribelli in una fattoria.', './images/fattoria.jpg', 10.50, 18, 'Satira', 'Fantascienza', 0),
('10000000000000058', 'Il giro del mondo in 80 giorni', 'Jules Verne', 'Phileas Fogg sfida il tempo e il mondo per completare un viaggio epico.', './images/80gg.jpg', 11.00, 22, 'Avventura', 'Classico', 0);
-- Libri e saghe richieste
INSERT INTO prodotti (isbn, nome, autore, descrizione, immagine_prod, prezzo, quantita, genere_nome, categoria_nome, copie_vendute) VALUES
('10000000000000059', 'After (Vol. 1)', 'Anna Todd', "La storia d'amore tormentata tra Tessa e Hardin, un successo della narrativa young adult.", './images/after_all.jpg', 13.90, 30, 'Romance', 'Sentimentale', 0),
('10000000000000060', 'After - Un cuore in mille pezzi (Vol. 2)', 'Anna Todd', 'Secondo capitolo della saga, Tessa affronta nuove sfide nel suo rapporto con Hardin.', './images/after_all.jpg', 13.90, 30, 'Romance', 'Sentimentale', 0),
('10000000000000061', 'After - Come mondi lontani (Vol. 3)', 'Anna Todd', 'Tessa e Hardin si allontanano e si avvicinano mentre il loro legame viene messo alla prova.', './images/after_all.jpg', 13.90, 30, 'Romance', 'Sentimentale', 0),
('10000000000000062', 'After - Anime perdute (Vol. 4)', 'Anna Todd', 'Il penultimo capitolo della serie che ha conquistato milioni di lettori.', './images/after_all.jpg', 13.90, 30, 'Romance', 'Sentimentale', 0),
('10000000000000063', 'After - Amore infinito (Vol. 5)', 'Anna Todd', 'Il gran finale della saga romantica.', './images/after_all.jpg', 13.90, 30, 'Romance', 'Sentimentale', 0),
('10000000000000064', 'Il ritratto di Dorian Gray', 'Oscar Wilde', 'Un giovane vende la sua anima per rimanere giovane, ma il suo ritratto invecchia al suo posto.', './images/dorian.jpg', 9.00, 20, 'Gotico', 'Classico', 0),
('10000000000000065', '            ', 'F. Scott Fitzgerald', 'La tragica storia del misterioso milionario Gatsby negli anni ruggenti americani.', './images/gatsby.jpg', 9.50, 25, 'Drammatico', 'Classico', 0),
('10000000000000066', 'Moby Dick', 'Herman Melville', 'Il capitano Ahab dà la caccia alla balena bianca, simbolo della sua ossessione.', './images/moby_dick.jpg', 11.00, 20, 'Avventura', 'Classico', 0),
('10000000000000067', 'Il conte di Montecristo', 'Alexandre Dumas', "Un uomo ingiustamente imprigionato cerca vendetta in un romanzo d'avventura epico", './images/montecristo.jpg', 12.00, 18, 'Avventura', 'Classico', 0),
('10000000000000068', 'I viaggi di Gulliver', 'Jonathan Swift', "Un marinaio visita mondi fantastici in una satira della società dell'epoca.", './images/gulliver.jpg', 10.00, 15, 'Satira', 'Classico', 0),
('10000000000000069', 'Omicidio sul ghiaccio', 'Jessica Fletcher & Donald Bain', 'Jessica Fletcher indaga su un misterioso omicidio nel suo villaggio.', './images/omicidio_sul_ghiaccio.jpg', 10.00, 15, 'Giallo', 'Giallo', 0),
('10000000000000070', 'Rum e Delitti', 'Jessica Fletcher & Donald Bain', 'Un caso di omicidio scuote una tranquilla pasticceria, Jessica è pronta a risolverlo.', './images/rum e delitti.jpg', 10.00, 15, 'Giallo', 'Giallo', 0),
('10000000000000071', 'Twilight (Vol. 1)', 'Stephenie Meyer', "La storia d'amore tra l'umana Bella e il vampiro Edward.", './images/tw1.jpg', 12.90, 30, 'Romance', 'Fantasy', 0),
('10000000000000072', 'New Moon (Vol. 2)', 'Stephenie Meyer', 'Edward lascia Bella, ma un nuovo pericolo incombe.', './images/tw2.jpg', 12.90, 30, 'Romance', 'Fantasy', 0),
('10000000000000073', 'Eclipse (Vol. 3)', 'Stephenie Meyer', 'Bella è divisa tra il vampiro Edward e il licantropo Jacob.', './images/tw3.jpg', 12.90, 30, 'Romance', 'Fantasy', 0),
('10000000000000074', 'Breaking Dawn (Vol. 4)', 'Stephenie Meyer', 'Il finale epico della saga di Twilight con matrimonio, gravidanza e battaglia finale.', './images/tw4.jpg', 12.90, 30, 'Romance', 'Fantasy', 0),
('10000000000000075', 'Ventimila leghe sotto i mari', 'Jules Verne', "L'avventura di capitano Nemo e dei suoi compagni a bordo del sottomarino nautilus diretti al polo sud con un viaggio pieno di imprevisti e avventure", './images/20kleghe.jpg', 12.90, 30, 'Fantasy', 'Fantasy', 0),
('10000000000000076', 'colpa delle stelle', 'John Green', "una sedicenne timida e intelligente affetta da una malattia terminale incontra Augustus, suo coetaneo, reduce da un cancro che gli è costata l'amputazione di una gamba", './images/stelle.jpg', 19.90, 30, 'Romance', 'Romanzo Sentimentale', 0),
('10000000000000083', 'Colpa delle stelle', 'John Green', "Una struggente storia d'amore tra due adolescenti malati di cancro.", './images/stelle.jpg', 11.50, 25, 'Romance', 'Sentimentale', 0),
('10000000000000077', 'Un giorno', 'David Nicholls', "Emma e Dexter si incontrano ogni anno lo stesso giorno, per vent'anni.", './images/un giorno.jpg', 10.90, 20, 'Romance', 'Sentimentale', 0),
('10000000000000078', 'La verità sul caso Harry Quebert', 'Joël Dicker', 'Un giovane scrittore indaga su un misterioso omicidio irrisolto.', './images/harry_quebert.jpg', 14.00, 30, 'Thriller', 'Giallo', 0),
('10000000000000079', 'La ragazza del treno', 'Paula Hawkins', 'Una donna osserva una coppia dalla finestra del treno e scopre un crimine.', './images/treno.jpg', 13.50, 28, 'Thriller', 'Giallo', 0),
('10000000000000080', 'La divina commedia: inferno', 'Dante Alighieri', "Primo cantico della Divina Commedia, narra il viaggio nell\'Inferno attraverso i nove cerchi.", './images/inferno.jpg', 10.90, 20, 'Classici', 'Classico', 0),
('10000000000000081', 'La divina commedia: inferno', 'Dante Alighieri', "Secondo cantico della Divina Commedia, descrive l'ascesa del poeta nel monte del Purgatorio.", './images/purgatorio.jpg', 14.00, 30, 'Classici', 'Classico', 0),
('10000000000000082', 'La divina commedia: inferno', 'Dante Alighieri',"Terzo cantico della Divina Commedia, rappresenta l\'ascesa spirituale e l'incontro con il divino." , './images/paradiso.jpg', 13.50, 28, 'Classici', 'Classico', 0),
-- ultimi da aggiungere
('10000000000000084', "Il libro della giungla", "Rudyard Kipling", "Le avventure del piccolo Mowgli cresciuto dai lupi nella giungla indiana.", './images/libro_della_giungla.jpg', 9.90, 20, 'Narrativa', 'Narrativa per ragazzi', 0),
('10000000000000085', "Le avventure di Tom Sawyer", "Mark Twain", "Un ragazzo ribelle e sognatore vive avventure indimenticabili lungo il Mississippi.", './images/tom_sawyer.jpg', 10.90, 20, 'Narrativa', 'Narrativa per ragazzi', 0),
('10000000000000086', "Anna dai capelli rossi", "Lucy Maud Montgomery", "Una ragazzina adottata con una fervida immaginazione cambia la vita di chi la circonda.", './images/anna_capelli_rossi.jpg', 11.50, 20, 'Narrativa', 'Narrativa per ragazzi', 0),
('10000000000000087', "Pippi Calzelunghe", "Astrid Lindgren", "Una bambina fuori dagli schemi affronta il mondo con forza, fantasia e umorismo.", './images/pippi_calzelunghe.jpg', 8.90, 20, 'Narrativa', 'Narrativa per ragazzi', 0),
('10000000000000088', "Il vento nei salici", "Kenneth Grahame", "Un racconto poetico di amicizia tra animali antropomorfi sullo sfondo della campagna inglese.", './images/vento_nei_salici.jpg', 10.90, 20, 'Narrativa', 'Narrativa per ragazzi', 0),
('10000000000000089', "Zanna Bianca", "Jack London", "Un lupo alle prese con la dura legge della sopravvivenza tra natura selvaggia e civiltà.", './images/zanna_bianca.jpg', 9.90, 20, 'Narrativa', 'Narrativa per ragazzi', 0),
('10000000000000090', "Piccole donne", "Louisa May Alcott", "Le vicende di quattro sorelle in crescita tra sogni, sfide e valori familiari.", './images/piccole_donne.jpg', 10.90, 20, 'Narrativa', 'Narrativa per ragazzi', 0),
('10000000000000092', "L'isola del tesoro", "Robert Louis Stevenson", "Una mappa misteriosa, pirati e avventure in mare alla ricerca di un tesoro nascosto.", './images/isola_del_tesoro.jpg', 11.90, 20, 'Narrativa', 'Narrativa per ragazzi', 0),
('10000000000000093', "Pollyanna", "Eleanor H. Porter", "Con il suo 'gioco della felicità', una bambina porta gioia anche nei momenti difficili.", './images/pollyanna.jpg', 9.50, 20, 'Narrativa', 'Narrativa per ragazzi', 0);
--altre aggiunte
INSERT INTO prodotti (isbn, nome, autore, descrizione, immagine_prod, prezzo, quantita, genere_nome, categoria_nome, copie_vendute) VALUES
('10000000000000094','Robinson Crusoe','Daniel Defoe','Un uomo sopravvive su un’isola deserta','./images/LavitaelestranesorprendentiavventurediRobinsonCrusoe.png',11.00,20,'Avventura','Classico',0),
('10000000000000095','I tre moschettieri','Alexandre Dumas','Onore e spade in Francia','./images/treMoschettieri.jpg',13.00,20,'Avventura','Classico',0),
('10000000000000096','Guerra e pace','Lev Tolstoj','Epico affresco della Russia napoleonica','./images/guerraEpace.jpg',18.00,15,'Classici','Classico',0),
('10000000000000097','Anna Karenina','Lev Tolstoj','Tragedia amorosa nella Russia imperiale','./images/anna.jpg',17.00,15,'Classici','Classico',0),
('10000000000000103','Il richiamo della foresta','Jack London','La natura selvatica e la sopravvivenza','./images/richiamo.jpg',9.90,20,'Avventura','Classico',0),
('10000000000000108','Il vento nei salici','Kenneth Grahame','Amicizia tra animali in campagna','./images/salici.jpg',10.90,20,'Narrativa','Narrativa per ragazzi',0),
-- Fantasy moderno
('10000000000000116','Il nome del vento','Patrick Rothfuss','Un mago racconta la sua leggenda','./images/nome.jpg',14.00,15,'Fantasy','Fantasy',0),
('10000000000000117','La via dei re','Brandon Sanderson','Eroismo e guerra in un mondo epico','./images/via.jpg',16.00,15,'Fantasy','Fantasy',0),
('10000000000000119','Il dominio del fuoco','George R.R. Martin & Gardner Dozois','Raccolta di novelle del mondo di Westeros','./images/dominio.jpg',15.00,10,'Fantasy','Fantasy',0),
('10000000000000120','The Witcher: Il guardiano degli innocenti','Andrzej Sapkowski','Le avventure del cacciatore di mostri Geralt','./images/guardiano.jpg',14.00,15,'Fantasy','Fantasy',0),
('10000000000000121','Mistborn: L’ultimo impero','Brandon Sanderson','Rivoluzione e magia in un mondo oppresso','./images/mistborn.jpg',15.00,15,'Fantasy','Fantasy',0),
('10000000000000122','Il problema dei tre corpi','Cixin Liu','Contatto alieno e fisica teorica','./images/problema.jpg',14.50,15,'Fantasy','Fantascienza',0),
('10000000000000123','La mano sinistra delle tenebre','Ursula K. Le Guin','Sesso e società su un pianeta alieno','./images/mano.jpg',13.00,15,'Fantasy','Fantascienza',0),
('10000000000000128','Neuromante','William Gibson','Cyberpunk e hacker nel cyberspazio','./images/neuromante.jpg',14.50,15,'Fantasy','Fantascienza',0),
('10000000000000129','Solaris','Stanisław Lem','Psicologia e pianeta senziente','./images/solaris.jpg',13.50,15,'Fantasy','Fantascienza',0),
('10000000000000130','The Road','Cormac McCarthy','Post‑apocalisse e relazione padre‑figlio','./images/road.jpg',14.00,20,'Narrativa','Romanzo Sentimentale',0),
('10000000000000131','Il racconto dell’ancella','Margaret Atwood','Totalitarismo contro le donne','./images/racconto.jpg',13.00,18,'Distopico','Fantascienza',0),
('10000000000000132','Brave New World','Aldous Huxley','Società futura e controllo sociale','./images/brave.jpg',12.50,20,'Fantasy','Distopico',0),
-- Thriller / Gialli moderni
('10000000000000137','Shutter Island','Dennis Lehane','Psichiatria e inganno su un’isola','./images/shutter.jpg',12.50,15,'Thriller','Giallo',0),
('10000000000000141','La scena del crimine','Michael Connelly','Polizia, sangue e indagine a Los Angeles','./images/scena.jpg',12.00,20,'Giallo','Giallo',0),
('10000000000000143','Il collezionista di ossa','Jeffery Deaver','Profili criminali e infallibilità','./images/ossa.jpg',12.50,15,'Thriller','Giallo',0),
-- Romanzi Sentimentali e Modern Romance
('10000000000000149','La cena','Hermann Koch','Amicizia, tensioni, silenzi inquietanti','./images/cena.jpg',12.00,18,'Drammatico','Romanzo Sentimentale',0),


--popolamento delle tabelle metodo_spedizione e stato_ordine
INSERT INTO `metodo_spedizione` VALUES (1,'PosteItaliane',10);
INSERT INTO `stato_ordine` VALUES (1,'Confermato'),(2,'Spedito'),(3,'Annullato'),(4,'In lavorazione');