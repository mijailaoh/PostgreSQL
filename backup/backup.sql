--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Debian 16.2-1.pgdg120+2)
-- Dumped by pg_dump version 16.2 (Debian 16.2-1.pgdg120+2)

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
-- Name: users; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.users (
    id integer NOT NULL,
    nombre character varying(100),
    email character varying(100),
    edad integer,
    token character varying(36)
);


ALTER TABLE public.users OWNER TO admin;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO admin;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.users (id, nombre, email, edad, token) FROM stdin;
1	Usuario1	usuario1@example.com	66	5af34da3-1d77-d65f-680d-31c4db1fab74
2	Usuario2	usuario2@example.com	41	f5767cd6-0638-e925-7931-5fbf7b637d05
3	Usuario3	usuario3@example.com	56	92b247c0-53ce-e56d-49e7-ae2cd82048b0
4	Usuario4	usuario4@example.com	67	75d36bf3-a0e4-c3b9-1e81-f27ca56e9cf2
5	Usuario5	usuario5@example.com	77	b824c510-3f5d-f60d-3d0a-9ccaa00946bd
6	Usuario6	usuario6@example.com	39	01590b1e-b166-53d6-d193-76e10bef1103
7	Usuario7	usuario7@example.com	56	d1f2111d-4fa9-de62-20ec-0888e78afe98
8	Usuario8	usuario8@example.com	93	7582ecaf-633a-7cb9-cd61-c932c18a9482
9	Usuario9	usuario9@example.com	78	729fdf34-0abd-5e82-7396-deb8d2155a32
10	Usuario10	usuario10@example.com	64	65cd50d3-6989-d003-9f4f-eba976384632
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.users_id_seq', 10, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

