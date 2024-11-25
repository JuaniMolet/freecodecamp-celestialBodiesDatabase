--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    km_from_earth integer,
    count_rings integer,
    diameter numeric,
    description text,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    km_from_earth integer,
    count_rings integer,
    diameter numeric,
    description text,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    km_from_earth integer,
    count_rings integer,
    diameter numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    km_from_earth integer,
    count_rings integer,
    diameter numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    km_from_earth integer,
    count_rings integer,
    diameter numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 1342, 0, 243.5, 'A prominent constellation visible throughout the world.', false, true);
INSERT INTO public.constellation VALUES (2, 'Cassiopeia', 5500, 3, 450.2, 'Known for its distinctive "W" shape in the sky.', false, true);
INSERT INTO public.constellation VALUES (3, 'Lyra', 1625, 0, 120.9, 'Contains the bright star Vega.', false, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'name', 100, 1, 20, 'description', true, false);
INSERT INTO public.galaxy VALUES (2, 'name2', 100, 1, 20, 'description', true, false);
INSERT INTO public.galaxy VALUES (3, 'name3', 100, 1, 20, 'description', true, false);
INSERT INTO public.galaxy VALUES (4, 'name4', 100, 1, 20, 'description', true, false);
INSERT INTO public.galaxy VALUES (5, 'name5', 100, 1, 20, 'description', true, false);
INSERT INTO public.galaxy VALUES (6, 'name6', 100, 1, 20, 'description', true, false);
INSERT INTO public.galaxy VALUES (7, 'name7', 100, 1, 20, 'description', true, false);
INSERT INTO public.galaxy VALUES (8, 'name8', 100, 1, 20, 'description', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'name', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.moon VALUES (4, 'name2', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.moon VALUES (5, 'name3', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.moon VALUES (6, 'name4', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.moon VALUES (7, 'name5', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.moon VALUES (8, 'name6', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.moon VALUES (9, 'name7', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.moon VALUES (10, 'name8', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.moon VALUES (11, 'name9', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.moon VALUES (12, 'name10', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.moon VALUES (13, 'name11', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.moon VALUES (14, 'name12', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.moon VALUES (15, 'name13', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.moon VALUES (16, 'name14', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.moon VALUES (17, 'name15', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.moon VALUES (18, 'name16', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.moon VALUES (19, 'name17', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.moon VALUES (20, 'name18', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.moon VALUES (21, 'name19', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.moon VALUES (22, 'name20', 100, 1, 20, 'description', true, false, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'name', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.planet VALUES (3, 'name2', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.planet VALUES (4, 'name3', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.planet VALUES (5, 'name4', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.planet VALUES (6, 'name5', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.planet VALUES (7, 'name6', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.planet VALUES (8, 'name7', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.planet VALUES (9, 'name8', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.planet VALUES (10, 'name9', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.planet VALUES (11, 'name10', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.planet VALUES (12, 'name11', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.planet VALUES (13, 'name12', 100, 1, 20, 'description', true, false, 2);
INSERT INTO public.planet VALUES (14, 'name13', 100, 1, 20, 'description', true, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'name', 100, 1, 20, 'description', true, false, 1);
INSERT INTO public.star VALUES (3, 'name2', 100, 1, 20, 'description', true, false, 1);
INSERT INTO public.star VALUES (4, 'name3', 100, 1, 20, 'description', true, false, 1);
INSERT INTO public.star VALUES (5, 'name4', 100, 1, 20, 'description', true, false, 1);
INSERT INTO public.star VALUES (6, 'name5', 100, 1, 20, 'description', true, false, 1);
INSERT INTO public.star VALUES (7, 'name6', 100, 1, 20, 'description', true, false, 1);
INSERT INTO public.star VALUES (8, 'name7', 100, 1, 20, 'description', true, false, 1);
INSERT INTO public.star VALUES (9, 'name8', 100, 1, 20, 'description', true, false, 1);


--
-- Name: constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 8, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 22, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 14, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 9, true);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: constellation unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: galaxy unique_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_galaxy UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

