--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.3 (Ubuntu 16.3-1.pgdg23.10+1)

-- Started on 2024-06-29 22:39:31 -03

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
-- TOC entry 216 (class 1259 OID 24626)
-- Name: foods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.foods (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    ingredient_name character varying(255) NOT NULL,
    price numeric(10,2) NOT NULL,
    quantity numeric(10,3) NOT NULL,
    measurement_type character varying(10) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.foods OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24625)
-- Name: foods_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.foods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.foods_id_seq OWNER TO postgres;

--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 215
-- Name: foods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.foods_id_seq OWNED BY public.foods.id;


--
-- TOC entry 218 (class 1259 OID 24637)
-- Name: ingredients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ingredients (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    measurement_type character varying(10) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.ingredients OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24636)
-- Name: ingredients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ingredients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ingredients_id_seq OWNER TO postgres;

--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 217
-- Name: ingredients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ingredients_id_seq OWNED BY public.ingredients.id;


--
-- TOC entry 220 (class 1259 OID 24646)
-- Name: recipes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipes (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    category character varying(255) NOT NULL,
    extra_cost numeric(10,2) NOT NULL,
    yield integer NOT NULL,
    delivery_cost numeric(10,2) NOT NULL,
    selling_price numeric(10,2) NOT NULL,
    measurement_type character varying(10) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.recipes OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24645)
-- Name: recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recipes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.recipes_id_seq OWNER TO postgres;

--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 219
-- Name: recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recipes_id_seq OWNED BY public.recipes.id;


--
-- TOC entry 222 (class 1259 OID 24696)
-- Name: recipes_ingredients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipes_ingredients (
    id integer NOT NULL,
    id_recipe integer NOT NULL,
    id_ingredient integer NOT NULL,
    quantity numeric(10,3) NOT NULL
);


ALTER TABLE public.recipes_ingredients OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24695)
-- Name: recipes_ingredients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recipes_ingredients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.recipes_ingredients_id_seq OWNER TO postgres;

--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 221
-- Name: recipes_ingredients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recipes_ingredients_id_seq OWNED BY public.recipes_ingredients.id;


--
-- TOC entry 3218 (class 2604 OID 24629)
-- Name: foods id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.foods ALTER COLUMN id SET DEFAULT nextval('public.foods_id_seq'::regclass);


--
-- TOC entry 3221 (class 2604 OID 24640)
-- Name: ingredients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredients ALTER COLUMN id SET DEFAULT nextval('public.ingredients_id_seq'::regclass);


--
-- TOC entry 3224 (class 2604 OID 24649)
-- Name: recipes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes ALTER COLUMN id SET DEFAULT nextval('public.recipes_id_seq'::regclass);


--
-- TOC entry 3227 (class 2604 OID 24699)
-- Name: recipes_ingredients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_ingredients ALTER COLUMN id SET DEFAULT nextval('public.recipes_ingredients_id_seq'::regclass);


--
-- TOC entry 3384 (class 0 OID 24626)
-- Dependencies: 216
-- Data for Name: foods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.foods (id, name, ingredient_name, price, quantity, measurement_type, created_at, updated_at) FROM stdin;
1	arroz carminha, 5kg	arroz	52.25	5.000	kg	2024-06-30 00:39:22.545104+00	2024-06-30 00:39:22.545104+00
\.


--
-- TOC entry 3386 (class 0 OID 24637)
-- Dependencies: 218
-- Data for Name: ingredients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ingredients (id, name, measurement_type, created_at, updated_at) FROM stdin;
1	arroz	kg	2024-06-30 00:41:26.552213+00	2024-06-30 00:41:26.552213+00
\.


--
-- TOC entry 3388 (class 0 OID 24646)
-- Dependencies: 220
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipes (id, name, description, category, extra_cost, yield, delivery_cost, selling_price, measurement_type, created_at, updated_at) FROM stdin;
1	marmita	acompanha arroz, feijão, omelete e frango assado	marmitas	2.00	1	0.00	20.00	unit	2024-06-30 00:49:09.897018+00	2024-06-30 00:49:09.897018+00
\.


--
-- TOC entry 3390 (class 0 OID 24696)
-- Dependencies: 222
-- Data for Name: recipes_ingredients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipes_ingredients (id, id_recipe, id_ingredient, quantity) FROM stdin;
1	1	1	1.500
\.


--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 215
-- Name: foods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.foods_id_seq', 1, true);


--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 217
-- Name: ingredients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ingredients_id_seq', 1, true);


--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 219
-- Name: recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipes_id_seq', 1, true);


--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 221
-- Name: recipes_ingredients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipes_ingredients_id_seq', 1, true);


--
-- TOC entry 3229 (class 2606 OID 24635)
-- Name: foods foods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.foods
    ADD CONSTRAINT foods_pkey PRIMARY KEY (id);


--
-- TOC entry 3231 (class 2606 OID 24644)
-- Name: ingredients ingredients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredients
    ADD CONSTRAINT ingredients_pkey PRIMARY KEY (id);


--
-- TOC entry 3235 (class 2606 OID 24703)
-- Name: recipes_ingredients recipe_ingredient_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_ingredients
    ADD CONSTRAINT recipe_ingredient_unique UNIQUE (id_recipe, id_ingredient);


--
-- TOC entry 3237 (class 2606 OID 24701)
-- Name: recipes_ingredients recipes_ingredients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_ingredients
    ADD CONSTRAINT recipes_ingredients_pkey PRIMARY KEY (id);


--
-- TOC entry 3233 (class 2606 OID 24655)
-- Name: recipes recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);


--
-- TOC entry 3238 (class 2606 OID 24709)
-- Name: recipes_ingredients recipes_ingredients_id_ingredient_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_ingredients
    ADD CONSTRAINT recipes_ingredients_id_ingredient_fkey FOREIGN KEY (id_ingredient) REFERENCES public.ingredients(id);


--
-- TOC entry 3239 (class 2606 OID 24704)
-- Name: recipes_ingredients recipes_ingredients_id_recipe_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes_ingredients
    ADD CONSTRAINT recipes_ingredients_id_recipe_fkey FOREIGN KEY (id_recipe) REFERENCES public.recipes(id);


-- Completed on 2024-06-29 22:39:31 -03

--
-- PostgreSQL database dump complete
--

