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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_teams_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_teams_id_seq OWNER TO freecodecamp;

--
-- Name: teams_teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_teams_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_teams_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (40, 2018, 'Final', 85, 86, 4, 2);
INSERT INTO public.games VALUES (41, 2018, 'Third Place', 87, 88, 2, 0);
INSERT INTO public.games VALUES (42, 2018, 'Semi-Final', 86, 88, 2, 1);
INSERT INTO public.games VALUES (43, 2018, 'Semi-Final', 85, 87, 1, 0);
INSERT INTO public.games VALUES (44, 2018, 'Quarter-Final', 86, 89, 3, 2);
INSERT INTO public.games VALUES (45, 2018, 'Quarter-Final', 88, 90, 2, 0);
INSERT INTO public.games VALUES (46, 2018, 'Quarter-Final', 87, 91, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Quarter-Final', 85, 92, 2, 0);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 88, 93, 2, 1);
INSERT INTO public.games VALUES (49, 2018, 'Eighth-Final', 90, 94, 1, 0);
INSERT INTO public.games VALUES (50, 2018, 'Eighth-Final', 87, 95, 3, 2);
INSERT INTO public.games VALUES (51, 2018, 'Eighth-Final', 91, 96, 2, 0);
INSERT INTO public.games VALUES (52, 2018, 'Eighth-Final', 86, 97, 2, 1);
INSERT INTO public.games VALUES (53, 2018, 'Eighth-Final', 89, 98, 2, 1);
INSERT INTO public.games VALUES (54, 2018, 'Eighth-Final', 92, 99, 2, 1);
INSERT INTO public.games VALUES (55, 2018, 'Eighth-Final', 85, 100, 4, 3);
INSERT INTO public.games VALUES (56, 2014, 'Final', 101, 100, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Third Place', 102, 91, 3, 0);
INSERT INTO public.games VALUES (58, 2014, 'Semi-Final', 100, 102, 1, 0);
INSERT INTO public.games VALUES (59, 2014, 'Semi-Final', 101, 91, 7, 1);
INSERT INTO public.games VALUES (60, 2014, 'Quarter-Final', 102, 103, 1, 0);
INSERT INTO public.games VALUES (61, 2014, 'Quarter-Final', 100, 87, 1, 0);
INSERT INTO public.games VALUES (62, 2014, 'Quarter-Final', 91, 93, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Quarter-Final', 101, 85, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 91, 104, 2, 1);
INSERT INTO public.games VALUES (65, 2014, 'Eighth-Final', 93, 92, 2, 0);
INSERT INTO public.games VALUES (66, 2014, 'Eighth-Final', 85, 105, 2, 0);
INSERT INTO public.games VALUES (67, 2014, 'Eighth-Final', 101, 106, 2, 1);
INSERT INTO public.games VALUES (68, 2014, 'Eighth-Final', 102, 96, 2, 1);
INSERT INTO public.games VALUES (69, 2014, 'Eighth-Final', 103, 107, 2, 1);
INSERT INTO public.games VALUES (70, 2014, 'Eighth-Final', 100, 94, 1, 0);
INSERT INTO public.games VALUES (71, 2014, 'Eighth-Final', 87, 108, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (85, 'France');
INSERT INTO public.teams VALUES (86, 'Croatia');
INSERT INTO public.teams VALUES (87, 'Belgium');
INSERT INTO public.teams VALUES (88, 'England');
INSERT INTO public.teams VALUES (89, 'Russia');
INSERT INTO public.teams VALUES (90, 'Sweden');
INSERT INTO public.teams VALUES (91, 'Brazil');
INSERT INTO public.teams VALUES (92, 'Uruguay');
INSERT INTO public.teams VALUES (93, 'Colombia');
INSERT INTO public.teams VALUES (94, 'Switzerland');
INSERT INTO public.teams VALUES (95, 'Japan');
INSERT INTO public.teams VALUES (96, 'Mexico');
INSERT INTO public.teams VALUES (97, 'Denmark');
INSERT INTO public.teams VALUES (98, 'Spain');
INSERT INTO public.teams VALUES (99, 'Portugal');
INSERT INTO public.teams VALUES (100, 'Argentina');
INSERT INTO public.teams VALUES (101, 'Germany');
INSERT INTO public.teams VALUES (102, 'Netherlands');
INSERT INTO public.teams VALUES (103, 'Costa Rica');
INSERT INTO public.teams VALUES (104, 'Chile');
INSERT INTO public.teams VALUES (105, 'Nigeria');
INSERT INTO public.teams VALUES (106, 'Algeria');
INSERT INTO public.teams VALUES (107, 'Greece');
INSERT INTO public.teams VALUES (108, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 71, true);


--
-- Name: teams_teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_teams_id_seq', 108, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

