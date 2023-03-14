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
-- Name: bridge; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.bridge (
    bridge_id integer NOT NULL,
    spare_row1 integer NOT NULL,
    spare_row2 integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.bridge OWNER TO freecodecamp;

--
-- Name: bridge_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.bridge_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bridge_id_seq OWNER TO freecodecamp;

--
-- Name: bridge_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.bridge_id_seq OWNED BY public.bridge.bridge_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age integer,
    aprx_age_billions integer,
    aprx_start_billions integer
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
    name character varying(255) NOT NULL,
    type character varying(255),
    planet_id integer NOT NULL,
    distance integer,
    age integer,
    columnindex numeric
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
    name character varying(255) NOT NULL,
    type character varying(255),
    star_id integer,
    age integer,
    size integer,
    description text,
    availableforleaving boolean
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
    name character varying(255) NOT NULL,
    type character varying(255),
    galaxy_id integer,
    age integer,
    size integer,
    columnvisibleonaearth boolean
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
-- Name: bridge bridge_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bridge ALTER COLUMN bridge_id SET DEFAULT nextval('public.bridge_id_seq'::regclass);


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
-- Data for Name: bridge; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.bridge VALUES (1, 2, 3, NULL);
INSERT INTO public.bridge VALUES (2, 2, 4, NULL);
INSERT INTO public.bridge VALUES (3, 3, 4, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'milkyWay', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'whirlpool', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'fake1', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'fake2', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'fake3', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', NULL, 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'lunaBeta', NULL, 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'lunaGamma', NULL, 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'fake1', NULL, 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'fake2', NULL, 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'fake3', NULL, 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'fake4', NULL, 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'fake5', NULL, 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'fake6', NULL, 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'fake7', NULL, 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'fake8', NULL, 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'fake9', NULL, 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'fake10', NULL, 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'fake11', NULL, 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'fake12', NULL, 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'fake13', NULL, 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'fake14', NULL, 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'fake15', NULL, 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'fake16', NULL, 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'fake17', NULL, 2, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'earth', NULL, 4, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, '64planetA', NULL, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'sn_planetA', NULL, 6, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'fake1', NULL, 4, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'fake2', NULL, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'fake3', NULL, 6, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'fake4', NULL, 4, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'fake5', NULL, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'fake6', NULL, 6, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'fake7', NULL, 4, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'fake8', NULL, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'fake9', NULL, 6, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 'sun', NULL, 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, '64', NULL, 3, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'supernovae', NULL, 4, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'fake1', NULL, 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 'fake2', NULL, 3, NULL, NULL, NULL);
INSERT INTO public.star VALUES (9, 'fake3', NULL, 4, NULL, NULL, NULL);


--
-- Name: bridge_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.bridge_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 9, true);


--
-- Name: bridge bridge_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bridge
    ADD CONSTRAINT bridge_pkey PRIMARY KEY (bridge_id);


--
-- Name: planet const_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT const_unique UNIQUE (planet_id);


--
-- Name: bridge const_unique_bridge; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bridge
    ADD CONSTRAINT const_unique_bridge UNIQUE (bridge_id);


--
-- Name: galaxy const_unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT const_unique_galaxy UNIQUE (galaxy_id);


--
-- Name: moon const_unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT const_unique_moon UNIQUE (moon_id);


--
-- Name: star const_unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT const_unique_star UNIQUE (star_id);


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
-- Name: galaxy new_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT new_constraint UNIQUE (galaxy_id);


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

