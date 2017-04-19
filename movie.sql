--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: movie; Type: DATABASE; Schema: -; Owner: Cwolf
--

CREATE DATABASE movie WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE movie OWNER TO "Cwolf";

\connect movie

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: genre; Type: TABLE; Schema: public; Owner: Cwolf
--

CREATE TABLE genre (
    genretype character varying(20) NOT NULL,
    genre_id integer NOT NULL
);


ALTER TABLE genre OWNER TO "Cwolf";

--
-- Name: genre_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: Cwolf
--

CREATE SEQUENCE genre_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE genre_genre_id_seq OWNER TO "Cwolf";

--
-- Name: genre_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Cwolf
--

ALTER SEQUENCE genre_genre_id_seq OWNED BY genre.genre_id;


--
-- Name: movie; Type: TABLE; Schema: public; Owner: Cwolf
--

CREATE TABLE movie (
    movietitle character varying(50),
    movie_id integer NOT NULL,
    moviedate integer NOT NULL
);


ALTER TABLE movie OWNER TO "Cwolf";

--
-- Name: movie_genre; Type: TABLE; Schema: public; Owner: Cwolf
--

CREATE TABLE movie_genre (
    moviegenre_id integer NOT NULL,
    genre_id integer NOT NULL,
    movie_id integer NOT NULL
);


ALTER TABLE movie_genre OWNER TO "Cwolf";

--
-- Name: movie_genre_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: Cwolf
--

CREATE SEQUENCE movie_genre_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movie_genre_genre_id_seq OWNER TO "Cwolf";

--
-- Name: movie_genre_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Cwolf
--

ALTER SEQUENCE movie_genre_genre_id_seq OWNED BY movie_genre.genre_id;


--
-- Name: movie_genre_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: Cwolf
--

CREATE SEQUENCE movie_genre_movie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movie_genre_movie_id_seq OWNER TO "Cwolf";

--
-- Name: movie_genre_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Cwolf
--

ALTER SEQUENCE movie_genre_movie_id_seq OWNED BY movie_genre.movie_id;


--
-- Name: movie_genre_moviegenre_id_seq; Type: SEQUENCE; Schema: public; Owner: Cwolf
--

CREATE SEQUENCE movie_genre_moviegenre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movie_genre_moviegenre_id_seq OWNER TO "Cwolf";

--
-- Name: movie_genre_moviegenre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Cwolf
--

ALTER SEQUENCE movie_genre_moviegenre_id_seq OWNED BY movie_genre.moviegenre_id;


--
-- Name: movie_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: Cwolf
--

CREATE SEQUENCE movie_movie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movie_movie_id_seq OWNER TO "Cwolf";

--
-- Name: movie_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Cwolf
--

ALTER SEQUENCE movie_movie_id_seq OWNED BY movie.movie_id;


--
-- Name: movie_person; Type: TABLE; Schema: public; Owner: Cwolf
--

CREATE TABLE movie_person (
    movieperson_id integer NOT NULL,
    movie_id integer NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE movie_person OWNER TO "Cwolf";

--
-- Name: movie_person_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: Cwolf
--

CREATE SEQUENCE movie_person_movie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movie_person_movie_id_seq OWNER TO "Cwolf";

--
-- Name: movie_person_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Cwolf
--

ALTER SEQUENCE movie_person_movie_id_seq OWNED BY movie_person.movie_id;


--
-- Name: movie_person_movieperson_id_seq; Type: SEQUENCE; Schema: public; Owner: Cwolf
--

CREATE SEQUENCE movie_person_movieperson_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movie_person_movieperson_id_seq OWNER TO "Cwolf";

--
-- Name: movie_person_movieperson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Cwolf
--

ALTER SEQUENCE movie_person_movieperson_id_seq OWNED BY movie_person.movieperson_id;


--
-- Name: movie_person_person_id_seq; Type: SEQUENCE; Schema: public; Owner: Cwolf
--

CREATE SEQUENCE movie_person_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movie_person_person_id_seq OWNER TO "Cwolf";

--
-- Name: movie_person_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Cwolf
--

ALTER SEQUENCE movie_person_person_id_seq OWNED BY movie_person.person_id;


--
-- Name: person; Type: TABLE; Schema: public; Owner: Cwolf
--

CREATE TABLE person (
    firstname character varying(20) NOT NULL,
    lastname character varying(20) NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE person OWNER TO "Cwolf";

--
-- Name: person_person_id_seq; Type: SEQUENCE; Schema: public; Owner: Cwolf
--

CREATE SEQUENCE person_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE person_person_id_seq OWNER TO "Cwolf";

--
-- Name: person_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Cwolf
--

ALTER SEQUENCE person_person_id_seq OWNED BY person.person_id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: Cwolf
--

CREATE TABLE reviews (
    movierating double precision NOT NULL,
    review_id integer NOT NULL,
    movie_id integer NOT NULL
);


ALTER TABLE reviews OWNER TO "Cwolf";

--
-- Name: reviews_review_id_seq; Type: SEQUENCE; Schema: public; Owner: Cwolf
--

CREATE SEQUENCE reviews_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reviews_review_id_seq OWNER TO "Cwolf";

--
-- Name: reviews_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Cwolf
--

ALTER SEQUENCE reviews_review_id_seq OWNED BY reviews.review_id;


--
-- Name: genre genre_id; Type: DEFAULT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY genre ALTER COLUMN genre_id SET DEFAULT nextval('genre_genre_id_seq'::regclass);


--
-- Name: movie movie_id; Type: DEFAULT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY movie ALTER COLUMN movie_id SET DEFAULT nextval('movie_movie_id_seq'::regclass);


--
-- Name: movie_genre moviegenre_id; Type: DEFAULT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY movie_genre ALTER COLUMN moviegenre_id SET DEFAULT nextval('movie_genre_moviegenre_id_seq'::regclass);


--
-- Name: movie_genre genre_id; Type: DEFAULT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY movie_genre ALTER COLUMN genre_id SET DEFAULT nextval('movie_genre_genre_id_seq'::regclass);


--
-- Name: movie_genre movie_id; Type: DEFAULT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY movie_genre ALTER COLUMN movie_id SET DEFAULT nextval('movie_genre_movie_id_seq'::regclass);


--
-- Name: movie_person movieperson_id; Type: DEFAULT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY movie_person ALTER COLUMN movieperson_id SET DEFAULT nextval('movie_person_movieperson_id_seq'::regclass);


--
-- Name: movie_person movie_id; Type: DEFAULT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY movie_person ALTER COLUMN movie_id SET DEFAULT nextval('movie_person_movie_id_seq'::regclass);


--
-- Name: movie_person person_id; Type: DEFAULT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY movie_person ALTER COLUMN person_id SET DEFAULT nextval('movie_person_person_id_seq'::regclass);


--
-- Name: person person_id; Type: DEFAULT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY person ALTER COLUMN person_id SET DEFAULT nextval('person_person_id_seq'::regclass);


--
-- Name: reviews review_id; Type: DEFAULT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY reviews ALTER COLUMN review_id SET DEFAULT nextval('reviews_review_id_seq'::regclass);


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: Cwolf
--

COPY genre (genretype, genre_id) FROM stdin;
Comedy	1
Animation	2
Thriller	3
Action	4
Drama	5
Romantic Comedy	6
Fantasy	7
Crime	8
Family	9
Adventure	10
Mystery	11
Sci-Fi	12
Musical	13
Horror	14
Independent Film	25
\.


--
-- Name: genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Cwolf
--

SELECT pg_catalog.setval('genre_genre_id_seq', 11, true);


--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: Cwolf
--

COPY movie (movietitle, movie_id, moviedate) FROM stdin;
The Dark Knight	1	2008
Spirited Away	2	2001
Spy	3	2015
Logan	4	2017
Beauty and the Beast	5	2017
Ghost in the Shell	6	2017
The Lion King	7	1994
Split	8	2016
Up	9	2009
Toy Story 3	10	2010
Finding Nemo	11	2003
\.


--
-- Data for Name: movie_genre; Type: TABLE DATA; Schema: public; Owner: Cwolf
--

COPY movie_genre (moviegenre_id, genre_id, movie_id) FROM stdin;
32	4	1
31	2	2
33	9	2
34	10	2
35	1	3
28	4	3
42	8	3
55	4	4
56	5	4
57	12	4
58	7	5
59	9	5
60	13	5
61	4	6
62	5	6
63	7	6
64	8	6
65	2	7
66	5	7
67	9	7
68	10	7
69	3	8
70	14	8
71	1	9
72	2	9
73	9	9
74	10	9
75	1	10
29	5	1
30	8	1
76	2	10
77	9	10
78	10	10
79	1	11
80	2	11
81	9	11
82	10	11
\.


--
-- Name: movie_genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Cwolf
--

SELECT pg_catalog.setval('movie_genre_genre_id_seq', 1, false);


--
-- Name: movie_genre_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Cwolf
--

SELECT pg_catalog.setval('movie_genre_movie_id_seq', 1, false);


--
-- Name: movie_genre_moviegenre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Cwolf
--

SELECT pg_catalog.setval('movie_genre_moviegenre_id_seq', 82, true);


--
-- Name: movie_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Cwolf
--

SELECT pg_catalog.setval('movie_movie_id_seq', 13, true);


--
-- Data for Name: movie_person; Type: TABLE DATA; Schema: public; Owner: Cwolf
--

COPY movie_person (movieperson_id, movie_id, person_id) FROM stdin;
34	1	1
35	1	2
36	2	3
37	2	4
38	3	5
39	3	6
40	4	7
41	4	8
42	5	9
43	5	10
44	6	11
45	7	12
46	7	13
47	8	14
48	9	15
49	9	16
50	10	17
51	10	18
52	11	19
53	11	20
\.


--
-- Name: movie_person_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Cwolf
--

SELECT pg_catalog.setval('movie_person_movie_id_seq', 33, true);


--
-- Name: movie_person_movieperson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Cwolf
--

SELECT pg_catalog.setval('movie_person_movieperson_id_seq', 53, true);


--
-- Name: movie_person_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Cwolf
--

SELECT pg_catalog.setval('movie_person_person_id_seq', 13, true);


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: Cwolf
--

COPY person (firstname, lastname, person_id) FROM stdin;
Christian	Bale	2
Rumi	Hiiragi	3
Miyu	Irino	4
Melissa	McCarthy	5
Jude	Law	6
Hugh	Jackman	7
Patrick	Stewart	8
Emma	Watson	9
Dan	Stevens	10
Scarlett	Johansson	11
Matthew	Broderick	12
James	Jones	13
James	McAvoy	14
Edward	Asner	15
Jordan	Nagai	16
Tom	Hanks	17
Tim	Allen	18
Ellen	DeGeneres	19
Albert	Brooks	20
Nathan	Poling	1
\.


--
-- Name: person_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Cwolf
--

SELECT pg_catalog.setval('person_person_id_seq', 22, true);


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: Cwolf
--

COPY reviews (movierating, review_id, movie_id) FROM stdin;
9.80000000000000071	1	1
9.69999999999999929	2	2
7.29999999999999982	3	3
8.59999999999999964	4	4
7.5	5	5
6.59999999999999964	6	6
9.90000000000000036	7	7
7.79999999999999982	8	8
8.90000000000000036	9	9
9.19999999999999929	10	10
9.90000000000000036	11	11
\.


--
-- Name: reviews_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Cwolf
--

SELECT pg_catalog.setval('reviews_review_id_seq', 11, true);


--
-- Name: genre genre_genre_id_pk; Type: CONSTRAINT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY genre
    ADD CONSTRAINT genre_genre_id_pk PRIMARY KEY (genre_id);


--
-- Name: movie_genre movie_genre_moviegenre_id_pk; Type: CONSTRAINT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY movie_genre
    ADD CONSTRAINT movie_genre_moviegenre_id_pk PRIMARY KEY (moviegenre_id);


--
-- Name: movie movie_movie_id_pk; Type: CONSTRAINT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY movie
    ADD CONSTRAINT movie_movie_id_pk PRIMARY KEY (movie_id);


--
-- Name: movie_person movie_person_pkey; Type: CONSTRAINT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY movie_person
    ADD CONSTRAINT movie_person_pkey PRIMARY KEY (movieperson_id);


--
-- Name: person person_person_id_pk; Type: CONSTRAINT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_person_id_pk PRIMARY KEY (person_id);


--
-- Name: reviews reviews_review_id_pk; Type: CONSTRAINT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT reviews_review_id_pk PRIMARY KEY (review_id);


--
-- Name: genre_genre_id_uindex; Type: INDEX; Schema: public; Owner: Cwolf
--

CREATE UNIQUE INDEX genre_genre_id_uindex ON genre USING btree (genre_id);


--
-- Name: genre_genre_type_uindex; Type: INDEX; Schema: public; Owner: Cwolf
--

CREATE UNIQUE INDEX genre_genre_type_uindex ON genre USING btree (genretype);


--
-- Name: movie_genre_moviegenre_id_uindex; Type: INDEX; Schema: public; Owner: Cwolf
--

CREATE UNIQUE INDEX movie_genre_moviegenre_id_uindex ON movie_genre USING btree (moviegenre_id);


--
-- Name: movie_movie_id_uindex; Type: INDEX; Schema: public; Owner: Cwolf
--

CREATE UNIQUE INDEX movie_movie_id_uindex ON movie USING btree (movie_id);


--
-- Name: movie_person_movieperson_id_uindex; Type: INDEX; Schema: public; Owner: Cwolf
--

CREATE UNIQUE INDEX movie_person_movieperson_id_uindex ON movie_person USING btree (movieperson_id);


--
-- Name: person_person_id_uindex; Type: INDEX; Schema: public; Owner: Cwolf
--

CREATE UNIQUE INDEX person_person_id_uindex ON person USING btree (person_id);


--
-- Name: reviews_review_id_uindex; Type: INDEX; Schema: public; Owner: Cwolf
--

CREATE UNIQUE INDEX reviews_review_id_uindex ON reviews USING btree (review_id);


--
-- Name: movie_genre movie_genre_genre_genre_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY movie_genre
    ADD CONSTRAINT movie_genre_genre_genre_id_fk FOREIGN KEY (genre_id) REFERENCES genre(genre_id);


--
-- Name: movie_genre movie_genre_movie_movie_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY movie_genre
    ADD CONSTRAINT movie_genre_movie_movie_id_fk FOREIGN KEY (movie_id) REFERENCES movie(movie_id);


--
-- Name: movie_person movie_person_movie_movie_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY movie_person
    ADD CONSTRAINT movie_person_movie_movie_id_fk FOREIGN KEY (movie_id) REFERENCES movie(movie_id);


--
-- Name: movie_person movie_person_person_fk; Type: FK CONSTRAINT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY movie_person
    ADD CONSTRAINT movie_person_person_fk FOREIGN KEY (person_id) REFERENCES person(person_id);


--
-- Name: reviews reviews_movie_movie_fk; Type: FK CONSTRAINT; Schema: public; Owner: Cwolf
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT reviews_movie_movie_fk FOREIGN KEY (movie_id) REFERENCES movie(movie_id);


--
-- PostgreSQL database dump complete
--

