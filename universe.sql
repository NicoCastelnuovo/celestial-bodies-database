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
    id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean,
    age numeric NOT NULL,
    distance integer NOT NULL,
    size integer NOT NULL,
    galaxy_id integer NOT NULL
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

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.id;


--
-- Name: galaxy_galaxy_id_seq1; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq1 OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq1 OWNED BY public.galaxy.galaxy_id;


--
-- Name: humans; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.humans (
    name character varying(30) NOT NULL,
    n integer NOT NULL,
    is_human boolean NOT NULL,
    age integer,
    moltiplication numeric,
    humans_id integer NOT NULL
);


ALTER TABLE public.humans OWNER TO freecodecamp;

--
-- Name: humans_humans_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.humans_humans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.humans_humans_id_seq OWNER TO freecodecamp;

--
-- Name: humans_humans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.humans_humans_id_seq OWNED BY public.humans.humans_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    volume integer NOT NULL,
    mass integer NOT NULL,
    age numeric,
    has_life boolean,
    id integer,
    moon_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    volume integer NOT NULL,
    mass integer NOT NULL,
    distance numeric,
    id integer,
    planet_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    description text,
    is_spherical boolean NOT NULL,
    age numeric NOT NULL,
    distance integer NOT NULL,
    temp integer NOT NULL,
    id integer,
    star_id integer NOT NULL
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
-- Name: galaxy id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq1'::regclass);


--
-- Name: humans humans_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.humans ALTER COLUMN humans_id SET DEFAULT nextval('public.humans_humans_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'The Milky Way', 'Our Galaxy!', true, 13610000000, 0, 52850, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, 129399124, 55555, 192847, 2);
INSERT INTO public.galaxy VALUES (3, 'NGC 7814', NULL, NULL, 3784262034, 123425, 98776, 3);
INSERT INTO public.galaxy VALUES (4, 'NGC 4151', NULL, NULL, 74653469534, 365237, 9876, 4);
INSERT INTO public.galaxy VALUES (5, 'Messier 82', NULL, NULL, 23454676453, 1345, 24356, 5);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', NULL, NULL, 2134567856432, 32456, 343567, 6);


--
-- Data for Name: humans; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.humans VALUES ('Nic', 1, true, NULL, NULL, 1);
INSERT INTO public.humans VALUES ('Leni', 1, true, NULL, NULL, 2);
INSERT INTO public.humans VALUES ('Loki', 1, false, NULL, NULL, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('MoonOne', 2345, 65432, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('MoonTwo', 213456, 32456, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES ('Moon3', 2345, 543239, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES ('Moon4', 2345, 76543, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES ('Moon5', 23456, 66543, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES ('Moon6', 23456, 76543, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('Moon7', 2345, 7654, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('Moon8', 22, 9, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES ('Moon9', 1, 2, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES ('Moon10', 2, 3, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES ('Mon11', 3, 4, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES ('Moon12', 5, 6, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES ('Moon13', 2345, 7654, NULL, NULL, NULL, 13);
INSERT INTO public.moon VALUES ('Moon14', 22, 9, NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES ('Moon15', 1, 2, NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES ('Moon116', 2, 3, NULL, NULL, NULL, 16);
INSERT INTO public.moon VALUES ('Mon17', 3, 4, NULL, NULL, NULL, 17);
INSERT INTO public.moon VALUES ('Moon18', 5, 6, NULL, NULL, NULL, 18);
INSERT INTO public.moon VALUES ('Moo2345', 2345, 7654, NULL, NULL, NULL, 19);
INSERT INTO public.moon VALUES ('Moo334', 22, 9, NULL, NULL, NULL, 20);
INSERT INTO public.moon VALUES ('Moo5', 1, 2, NULL, NULL, NULL, 21);
INSERT INTO public.moon VALUES ('Moon26', 2, 3, NULL, NULL, NULL, 22);
INSERT INTO public.moon VALUES ('Mon20', 3, 4, NULL, NULL, NULL, 23);
INSERT INTO public.moon VALUES ('Moon19', 5, 6, NULL, NULL, NULL, 24);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Uranus', 234534, 4356, NULL, NULL, 1);
INSERT INTO public.planet VALUES ('Neptune', 2349587, 5678, NULL, NULL, 2);
INSERT INTO public.planet VALUES ('Earth', 234534, 4356, NULL, NULL, 3);
INSERT INTO public.planet VALUES ('Jupiter', 2349587, 5678, NULL, NULL, 4);
INSERT INTO public.planet VALUES ('Mercury', 9876, 134, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('Venus', 2345, 6543, NULL, NULL, 6);
INSERT INTO public.planet VALUES ('Mars', 23456, 65432, NULL, NULL, 7);
INSERT INTO public.planet VALUES ('Saturn', 3456, 2345, NULL, NULL, 8);
INSERT INTO public.planet VALUES ('Nico', 1234, 456, NULL, NULL, 9);
INSERT INTO public.planet VALUES ('Leni', 987, 56789, NULL, NULL, 10);
INSERT INTO public.planet VALUES ('Gio', 23456, 567, NULL, NULL, 11);
INSERT INTO public.planet VALUES ('Nic', 23456, 346, NULL, NULL, 12);
INSERT INTO public.planet VALUES ('Poncho', 2345, 654, NULL, NULL, 13);
INSERT INTO public.planet VALUES ('Leti', 2345, 7544, NULL, NULL, 14);
INSERT INTO public.planet VALUES ('Alessia', 2345, 76544, NULL, NULL, 15);
INSERT INTO public.planet VALUES ('Alice', 123, 432, NULL, NULL, 16);
INSERT INTO public.planet VALUES ('Sara', 3456, 765, NULL, NULL, 17);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Bellatrix', NULL, true, 25220000, 4002, 22000, NULL, 1);
INSERT INTO public.star VALUES ('Rigel', NULL, true, 1232456534, 2345, 64334, NULL, 2);
INSERT INTO public.star VALUES ('45 Orionis', NULL, true, 2345675453, 123456, 6543, NULL, 3);
INSERT INTO public.star VALUES ('31 Orionis', NULL, false, 6543234567, 3456, 2435567, NULL, 4);
INSERT INTO public.star VALUES ('Betelgeuse', NULL, true, 4576543, 256, 7543, NULL, 5);
INSERT INTO public.star VALUES ('Alnitak', NULL, true, 2345678543, 4567, 76543, NULL, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq1', 6, true);


--
-- Name: humans_humans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.humans_humans_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: humans humans_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.humans
    ADD CONSTRAINT humans_name_key UNIQUE (name);


--
-- Name: humans humans_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.humans
    ADD CONSTRAINT humans_pkey PRIMARY KEY (humans_id);


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
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (id);


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
    ADD CONSTRAINT star_star_id_key UNIQUE (id);


--
-- Name: moon moon_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_fkey FOREIGN KEY (id) REFERENCES public.planet(id);


--
-- Name: planet planet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_fkey FOREIGN KEY (id) REFERENCES public.star(id);


--
-- PostgreSQL database dump complete
--

