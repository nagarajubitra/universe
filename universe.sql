--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    y_dis integer,
    d_km integer,
    g_cl character varying(25) NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    m_k integer,
    m_y integer,
    m_t integer NOT NULL,
    name character varying(20)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_m_tab_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_m_tab_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_m_tab_seq OWNER TO freecodecamp;

--
-- Name: moon_m_tab_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_m_tab_seq OWNED BY public.moon.m_t;


--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: people; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.people (
    people_id integer NOT NULL,
    p_v boolean,
    p_c numeric NOT NULL,
    p_r text,
    p_g character varying(20),
    name character varying(25)
);


ALTER TABLE public.people OWNER TO freecodecamp;

--
-- Name: people_people_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.people_people_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.people_people_id_seq OWNER TO freecodecamp;

--
-- Name: people_people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.people_people_id_seq OWNED BY public.people.people_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(25),
    p_name boolean NOT NULL,
    p_d integer,
    p_moon character varying(20)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    s_gr character varying(25) NOT NULL,
    s_r integer,
    s_y date,
    name character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon m_t; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN m_t SET DEFAULT nextval('public.moon_m_tab_seq'::regclass);


--
-- Name: people people_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people ALTER COLUMN people_id SET DEFAULT nextval('public.people_people_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1984, 25, 'a', 1, 'a');
INSERT INTO public.galaxy VALUES (1985, 26, 'b', 2, 'b');
INSERT INTO public.galaxy VALUES (1986, 27, 'c', 3, 'c');
INSERT INTO public.galaxy VALUES (1985, 28, 'd', 4, 'd');
INSERT INTO public.galaxy VALUES (1986, 29, 'e', 5, 'e');
INSERT INTO public.galaxy VALUES (1988, 30, 'f', 6, 'f');
INSERT INTO public.galaxy VALUES (1989, 32, 'g', 7, 'g');
INSERT INTO public.galaxy VALUES (1981, 31, 'h', 8, 'h');
INSERT INTO public.galaxy VALUES (1998, 33, 'i', 9, 'i');
INSERT INTO public.galaxy VALUES (1981, 34, 'j', 10, 'j');
INSERT INTO public.galaxy VALUES (1998, 38, 'k', 11, 'k');
INSERT INTO public.galaxy VALUES (1981, 34, 'l', 12, 'l');
INSERT INTO public.galaxy VALUES (1994, 36, 'm', 13, 'm');
INSERT INTO public.galaxy VALUES (1981, 34, 'n', 14, 'n');
INSERT INTO public.galaxy VALUES (1994, 36, 'o', 15, 'o');
INSERT INTO public.galaxy VALUES (1901, 30, 'p', 16, 'p');
INSERT INTO public.galaxy VALUES (1904, 39, 'q', 17, 'q');
INSERT INTO public.galaxy VALUES (1991, 65, 'r', 18, 'r');
INSERT INTO public.galaxy VALUES (1904, 95, 's', 19, 's');
INSERT INTO public.galaxy VALUES (1941, 69, 't', 20, 't');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 34, 1874, 23, 'a');
INSERT INTO public.moon VALUES (2, 44, 1674, 13, 'b');
INSERT INTO public.moon VALUES (3, 54, 1874, 19, 'c');
INSERT INTO public.moon VALUES (4, 64, 1274, 79, 'd');
INSERT INTO public.moon VALUES (5, 74, 1974, 89, 'e');
INSERT INTO public.moon VALUES (6, 74, 1474, 39, 'f');
INSERT INTO public.moon VALUES (7, 39, 1874, 89, 'g');
INSERT INTO public.moon VALUES (8, 69, 874, 39, 'h');
INSERT INTO public.moon VALUES (9, 49, 574, 397, 'i');
INSERT INTO public.moon VALUES (10, 69, 8057, 97, 'j');
INSERT INTO public.moon VALUES (11, 89, 57, 90, 'k');
INSERT INTO public.moon VALUES (12, 34, 7057, 98, 'l');
INSERT INTO public.moon VALUES (13, 36, 8257, 58, 'm');
INSERT INTO public.moon VALUES (14, 31, 8257, 18, 'n');
INSERT INTO public.moon VALUES (15, 31, 8957, 12, 'o');
INSERT INTO public.moon VALUES (16, 1, 957, 129, 'p');
INSERT INTO public.moon VALUES (17, 9, 1957, 14, 'q');
INSERT INTO public.moon VALUES (18, 77, 1057, 59, 'r');
INSERT INTO public.moon VALUES (19, 79, 1027, 99, 's');
INSERT INTO public.moon VALUES (20, 89, 1927, 39, 't');


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.people VALUES (1, true, 28, 'm', 'm', 'a');
INSERT INTO public.people VALUES (2, true, 29, 'f', 'm', 'b');
INSERT INTO public.people VALUES (3, false, 30, 'f', 'f', 'c');
INSERT INTO public.people VALUES (4, true, 33, 'm', 'f', 'd');
INSERT INTO public.people VALUES (5, false, 34, 'm', 'm', 'e');
INSERT INTO public.people VALUES (6, false, 34, 'm', 'm', 'f');
INSERT INTO public.people VALUES (7, false, 34, 'm', 'm', 'g');
INSERT INTO public.people VALUES (8, false, 34, 'm', 'f', 'h');
INSERT INTO public.people VALUES (9, false, 34, 'm', 'm', 'i');
INSERT INTO public.people VALUES (10, false, 34, 'm', 'm', 'j');
INSERT INTO public.people VALUES (11, false, 34, 'm', 'm', 'k');
INSERT INTO public.people VALUES (12, false, 34, 'm', 'm', 'l');
INSERT INTO public.people VALUES (13, false, 34, 'm', 'f', 'm');
INSERT INTO public.people VALUES (14, false, 34, 'm', 'f', 'n');
INSERT INTO public.people VALUES (15, false, 34, 'm', 'f', 'o');
INSERT INTO public.people VALUES (16, false, 34, 'm', 'f', 'p');
INSERT INTO public.people VALUES (17, false, 34, 'm', 'f', 'q');
INSERT INTO public.people VALUES (18, false, 34, 'm', 'f', 'r');
INSERT INTO public.people VALUES (19, false, 34, 'm', 'f', 's');
INSERT INTO public.people VALUES (20, false, 34, 'm', 'f', 't');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', true, 45, 'ab');
INSERT INTO public.planet VALUES (2, 'b', false, 75, 'bc');
INSERT INTO public.planet VALUES (3, 'c', false, 65, 'cd');
INSERT INTO public.planet VALUES (4, 'd', true, 85, 'dd');
INSERT INTO public.planet VALUES (5, 'e', true, 95, 'de');
INSERT INTO public.planet VALUES (6, 'f', false, 98, 'ef');
INSERT INTO public.planet VALUES (8, 'h', true, 88, 'rf');
INSERT INTO public.planet VALUES (9, 'i', true, 788, 'pf');
INSERT INTO public.planet VALUES (10, 'j', true, 988, 'jf');
INSERT INTO public.planet VALUES (11, 'k', false, 888, 'kf');
INSERT INTO public.planet VALUES (12, 'l', false, 858, 'kl');
INSERT INTO public.planet VALUES (13, 'm', false, 458, 'mf');
INSERT INTO public.planet VALUES (14, 'n', true, 48, 'nf');
INSERT INTO public.planet VALUES (15, 'o', true, 438, 'of');
INSERT INTO public.planet VALUES (16, 'p', true, 238, 'pf');
INSERT INTO public.planet VALUES (17, 'q', true, 638, 'qf');
INSERT INTO public.planet VALUES (18, 'r', true, 38, 'rf');
INSERT INTO public.planet VALUES (19, 's', false, 39, 'sf');
INSERT INTO public.planet VALUES (20, 't', false, 69, 'tf');
INSERT INTO public.planet VALUES (7, 'g', false, 69, 'gf');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'a', 1234, '1923-10-02', 'a');
INSERT INTO public.star VALUES (2, 'b', 1244, '1123-10-02', 'b');
INSERT INTO public.star VALUES (3, 'c', 1444, '5123-10-02', 'c');
INSERT INTO public.star VALUES (4, 'd', 7444, '5023-10-02', 'd');
INSERT INTO public.star VALUES (5, 'e', 3444, '0023-10-02', 'e');
INSERT INTO public.star VALUES (6, 'f', 544, '9023-10-02', 'f');
INSERT INTO public.star VALUES (7, 'g', 9544, '6023-10-02', 'g');
INSERT INTO public.star VALUES (8, 'h', 6544, '1023-10-02', 'h');
INSERT INTO public.star VALUES (9, 'i', 4544, '2023-10-02', 'i');
INSERT INTO public.star VALUES (10, 'j', 7544, '8023-10-02', 'j');
INSERT INTO public.star VALUES (11, 'k', 8544, '2083-10-02', 'k');
INSERT INTO public.star VALUES (12, 'l', 9534, '2283-10-02', 'l');
INSERT INTO public.star VALUES (13, 'm', 2534, '6283-10-02', 'm');
INSERT INTO public.star VALUES (14, 'n', 1534, '4283-10-02', 'n');
INSERT INTO public.star VALUES (15, 'o', 6584, '7293-10-02', 'o');
INSERT INTO public.star VALUES (16, 'p', 554, '4293-10-02', 'p');
INSERT INTO public.star VALUES (17, 'q', 8504, '2393-10-02', 'q');
INSERT INTO public.star VALUES (18, 'r', 8104, '4393-10-02', 'r');
INSERT INTO public.star VALUES (19, 's', 7104, '5393-10-02', 's');
INSERT INTO public.star VALUES (20, 't', 6104, '9393-10-02', 't');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 2, true);


--
-- Name: moon_m_tab_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_m_tab_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: people_people_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.people_people_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: people people_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_name_key UNIQUE (name);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (people_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star s_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT s_key FOREIGN KEY (name) REFERENCES public.galaxy(name);


--
-- Name: planet s_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT s_key FOREIGN KEY (name) REFERENCES public.star(name);


--
-- Name: moon s_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT s_key FOREIGN KEY (name) REFERENCES public.planet(name);


--
-- Name: people s_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT s_key FOREIGN KEY (name) REFERENCES public.moon(name);


--
-- Name: galaxy s_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT s_key FOREIGN KEY (name) REFERENCES public.people(name);


--
-- PostgreSQL database dump complete
--

