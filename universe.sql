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
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types text,
    age_in_millions_of_years integer,
    mass numeric
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
-- Name: info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.info (
    description text NOT NULL,
    author text,
    date date,
    name character varying,
    info_id integer NOT NULL
);


ALTER TABLE public.info OWNER TO freecodecamp;

--
-- Name: info_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.info_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.info_info_id_seq OWNER TO freecodecamp;

--
-- Name: info_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.info_info_id_seq OWNED BY public.info.info_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    mass_in_earth numeric,
    radius numeric
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
    name character varying(30),
    star_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean
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
    name character varying(30),
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer,
    mass numeric
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
-- Name: info info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info ALTER COLUMN info_id SET DEFAULT nextval('public.info_info_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Sb', 12600, 1150000000000);
INSERT INTO public.galaxy VALUES (3, 'Messier 51a', 'SA(s)bc', 400, 160000000000);
INSERT INTO public.galaxy VALUES (4, 'Messier 81', 'SA(s)bc', 13310, 670000000000);
INSERT INTO public.galaxy VALUES (5, 'Black Eye Galaxy', '(R)SA(s)ab', 13280, 400000000);
INSERT INTO public.galaxy VALUES (6, 'Messier 63', 'SAbc', 13280, 110000000000);
INSERT INTO public.galaxy VALUES (7, 'Messier 101', 'SAB(rs)cd', 21, 1000000000000);


--
-- Data for Name: info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.info VALUES ('create a celestial database', 'Jingwei Li', '2022-12-30', NULL, 1);
INSERT INTO public.info VALUES ('finished galaxy table', 'Jingwei Li', '2023-01-06', NULL, 2);
INSERT INTO public.info VALUES ('finished star table', 'Jingwei Li', '2023-01-06', NULL, 3);
INSERT INTO public.info VALUES ('finished planet table', 'Jingwei Li', '2023-01-07', NULL, 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 5, 0.0123, 1737.4);
INSERT INTO public.moon VALUES (2, 'Phobos', 6, 1.784, 11.27);
INSERT INTO public.moon VALUES (3, 'Deimos', 6, 0.2472, 6.2);
INSERT INTO public.moon VALUES (4, 'Europa', 7, 0.008, 1560.8);
INSERT INTO public.moon VALUES (5, 'Ganymede', 7, 0.025, 2634.1);
INSERT INTO public.moon VALUES (6, 'Io', 7, 0.015, 1821.6);
INSERT INTO public.moon VALUES (7, 'Callisto', 7, 0.018, 2410.3);
INSERT INTO public.moon VALUES (8, 'Amalthea', 7, 0.000000348, 83.5);
INSERT INTO public.moon VALUES (9, 'Titan', 8, 0.0225, 2574.73);
INSERT INTO public.moon VALUES (10, 'Enceladus', 8, 0.000018, 252.1);
INSERT INTO public.moon VALUES (11, 'Mimas', 8, 0.0000063, 198.2);
INSERT INTO public.moon VALUES (12, 'Lapetus', 8, 0.000302, 734.5);
INSERT INTO public.moon VALUES (13, 'Dione', 8, 0.0001834, 561.4);
INSERT INTO public.moon VALUES (14, 'Tethys', 8, 0.000103, 531.1);
INSERT INTO public.moon VALUES (15, 'Hperion', 8, 0.000000941, 135);
INSERT INTO public.moon VALUES (16, 'Miranda', 9, 0.0000107, 235.8);
INSERT INTO public.moon VALUES (17, 'Titania', 9, 0.000569, 788.4);
INSERT INTO public.moon VALUES (18, 'Oberon', 9, 0.000515, 761.4);
INSERT INTO public.moon VALUES (19, 'Triton', 10, 0.00359, 1353.4);
INSERT INTO public.moon VALUES (20, 'Galatea', 10, 0.000000355, 87.4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Mercury', 5, false, true);
INSERT INTO public.planet VALUES (4, 'Venus', 5, false, true);
INSERT INTO public.planet VALUES (5, 'Earth', 5, true, true);
INSERT INTO public.planet VALUES (6, 'Mars', 5, false, false);
INSERT INTO public.planet VALUES (7, 'Jupiter', 5, false, true);
INSERT INTO public.planet VALUES (8, 'Saturn', 5, false, false);
INSERT INTO public.planet VALUES (9, 'Uranus', 5, false, true);
INSERT INTO public.planet VALUES (10, 'Neptune', 5, false, false);
INSERT INTO public.planet VALUES (11, 'Kepler-444a', 7, false, NULL);
INSERT INTO public.planet VALUES (12, 'Kepler-444b', 7, false, NULL);
INSERT INTO public.planet VALUES (13, 'Kepler-444c', 7, false, NULL);
INSERT INTO public.planet VALUES (14, 'Kepler-444d', 7, false, NULL);
INSERT INTO public.planet VALUES (15, 'Kepler-444e', 7, false, NULL);
INSERT INTO public.planet VALUES (16, 'Kepler-444f', 7, false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Betelgeuse', 1, 10, 16.5);
INSERT INTO public.star VALUES (2, 'Antares', 1, 11, 11);
INSERT INTO public.star VALUES (3, 'Vega', 1, 455, 2.135);
INSERT INTO public.star VALUES (4, 'Sirius', 1, 230, 2.063);
INSERT INTO public.star VALUES (5, 'Sun', 1, 4603, 1);
INSERT INTO public.star VALUES (6, 'Canopus', 1, 25, 8);
INSERT INTO public.star VALUES (7, 'Kepler-444', 1, 1124, 0.754);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: info_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.info_info_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: info info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT info_pkey PRIMARY KEY (info_id);


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
-- Name: info unique_info_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT unique_info_id UNIQUE (info_id);


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

