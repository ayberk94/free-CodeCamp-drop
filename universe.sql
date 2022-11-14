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
-- Name: astro_observed; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astro_observed (
    astro_observed_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    institute character varying(40) NOT NULL
);


ALTER TABLE public.astro_observed OWNER TO freecodecamp;

--
-- Name: astro_observed_astro_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astro_observed_astro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astro_observed_astro_id_seq OWNER TO freecodecamp;

--
-- Name: astro_observed_astro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astro_observed_astro_id_seq OWNED BY public.astro_observed.astro_observed_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    num_stars integer,
    "position" text,
    has_dm boolean
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
    name character varying(30) NOT NULL,
    planet_id integer,
    mass numeric(4,1) NOT NULL,
    has_life boolean
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
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    num_moons integer,
    has_life boolean
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    mass numeric(4,1) NOT NULL,
    num_of_planets integer
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
-- Name: astro_observed astro_observed_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astro_observed ALTER COLUMN astro_observed_id SET DEFAULT nextval('public.astro_observed_astro_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: astro_observed; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astro_observed VALUES (1, 'Ayberk', 23, 'RWTH');
INSERT INTO public.astro_observed VALUES (2, 'Jones', 28, 'FH Hagen');
INSERT INTO public.astro_observed VALUES (3, 'Guiliette', 23, 'RWTH-Aachen');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 99, 'hier wo wir sind', true);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 80, '4 mil lj entfernt', true);
INSERT INTO public.galaxy VALUES (3, 'dies das', 90, 'irgendwo', false);
INSERT INTO public.galaxy VALUES (4, 'test mest', 3, 'kp', true);
INSERT INTO public.galaxy VALUES (5, 'hallo', 3, 'in narnia', true);
INSERT INTO public.galaxy VALUES (6, 'selam aleyküm', 90, 'in türkei', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mond', 1, 1.0, false);
INSERT INTO public.moon VALUES (2, 'Schmond', 1, 2.0, false);
INSERT INTO public.moon VALUES (3, 'sond', 3, 2.0, true);
INSERT INTO public.moon VALUES (4, 'abc', 4, 2.0, false);
INSERT INTO public.moon VALUES (5, 'sdsad', 2, 2.0, false);
INSERT INTO public.moon VALUES (6, 'wdp', 4, 2.0, true);
INSERT INTO public.moon VALUES (7, 'sieben', 4, 5.0, false);
INSERT INTO public.moon VALUES (8, 'acht', 5, 5.0, false);
INSERT INTO public.moon VALUES (9, 'neun', 4, 6.0, false);
INSERT INTO public.moon VALUES (10, 'zehn', 6, 2.3, false);
INSERT INTO public.moon VALUES (11, 'elf', 3, 4.0, NULL);
INSERT INTO public.moon VALUES (12, 'zwö', 3, 4.0, NULL);
INSERT INTO public.moon VALUES (13, 'drz', 3, 3.0, NULL);
INSERT INTO public.moon VALUES (14, 'virz', 4, 3.0, NULL);
INSERT INTO public.moon VALUES (15, 'fz', 4, 3.0, NULL);
INSERT INTO public.moon VALUES (16, 'sz', 6, 4.0, NULL);
INSERT INTO public.moon VALUES (17, 'siebz', 7, 5.0, NULL);
INSERT INTO public.moon VALUES (18, 'achz', 1, 4.3, NULL);
INSERT INTO public.moon VALUES (19, 'neunz', 1, 2.0, NULL);
INSERT INTO public.moon VALUES (20, 'zwnaz', 8, 1.0, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Erde', 1, 1, true);
INSERT INTO public.planet VALUES (2, 'Jupiter', 1, 4, false);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 0, false);
INSERT INTO public.planet VALUES (4, 'Proxy', 2, 3, true);
INSERT INTO public.planet VALUES (5, 'Test', 3, 3, false);
INSERT INTO public.planet VALUES (6, 'Mest', 2, 3, false);
INSERT INTO public.planet VALUES (7, 'ssdf', 2, 2, false);
INSERT INTO public.planet VALUES (8, 'asda', 3, 3, true);
INSERT INTO public.planet VALUES (9, 'heidi', 1, 3, true);
INSERT INTO public.planet VALUES (10, 'timotheus', 3, 3, true);
INSERT INTO public.planet VALUES (11, 'Lucy', 4, 2, true);
INSERT INTO public.planet VALUES (12, 'johnson', 2, 2, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sonne', 1, 1.0, 9);
INSERT INTO public.star VALUES (2, 'ergo', 2, 3.2, 5);
INSERT INTO public.star VALUES (3, 'grace', 2, 3.2, 4);
INSERT INTO public.star VALUES (4, 'urike', 1, 2.3, 6);
INSERT INTO public.star VALUES (5, 'jones', 1, 3.3, 5);
INSERT INTO public.star VALUES (6, 'sir gracedash', 2, 2.2, 4);
INSERT INTO public.star VALUES (7, 'sheeeees', 3, 99.0, 89);


--
-- Name: astro_observed_astro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astro_observed_astro_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: astro_observed astro_observed_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astro_observed
    ADD CONSTRAINT astro_observed_name_key UNIQUE (name);


--
-- Name: astro_observed astro_observed_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astro_observed
    ADD CONSTRAINT astro_observed_pkey PRIMARY KEY (astro_observed_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

