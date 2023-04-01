--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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
-- Name: communication; Type: TABLE; Schema: public; Owner: jninn
--

CREATE TABLE public.communication (
    id integer NOT NULL,
    staff_id integer NOT NULL,
    communication_status_id integer NOT NULL,
    consumer_id integer NOT NULL,
    followup_timestamp timestamp without time zone,
    initial_call_timestamp timestamp without time zone NOT NULL,
    misc_notes character varying
);


ALTER TABLE public.communication OWNER TO jninn;

--
-- Name: communication_communication_status_id_seq; Type: SEQUENCE; Schema: public; Owner: jninn
--

CREATE SEQUENCE public.communication_communication_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.communication_communication_status_id_seq OWNER TO jninn;

--
-- Name: communication_communication_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jninn
--

ALTER SEQUENCE public.communication_communication_status_id_seq OWNED BY public.communication.communication_status_id;


--
-- Name: communication_consumer_id_seq; Type: SEQUENCE; Schema: public; Owner: jninn
--

CREATE SEQUENCE public.communication_consumer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.communication_consumer_id_seq OWNER TO jninn;

--
-- Name: communication_consumer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jninn
--

ALTER SEQUENCE public.communication_consumer_id_seq OWNED BY public.communication.consumer_id;


--
-- Name: communication_id_seq; Type: SEQUENCE; Schema: public; Owner: jninn
--

CREATE SEQUENCE public.communication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.communication_id_seq OWNER TO jninn;

--
-- Name: communication_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jninn
--

ALTER SEQUENCE public.communication_id_seq OWNED BY public.communication.id;


--
-- Name: communication_staff_id_seq; Type: SEQUENCE; Schema: public; Owner: jninn
--

CREATE SEQUENCE public.communication_staff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.communication_staff_id_seq OWNER TO jninn;

--
-- Name: communication_staff_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jninn
--

ALTER SEQUENCE public.communication_staff_id_seq OWNED BY public.communication.staff_id;


--
-- Name: communication_status; Type: TABLE; Schema: public; Owner: jninn
--

CREATE TABLE public.communication_status (
    id integer NOT NULL,
    communication_status character varying(250) NOT NULL
);


ALTER TABLE public.communication_status OWNER TO jninn;

--
-- Name: communication_status_id_seq; Type: SEQUENCE; Schema: public; Owner: jninn
--

CREATE SEQUENCE public.communication_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.communication_status_id_seq OWNER TO jninn;

--
-- Name: communication_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jninn
--

ALTER SEQUENCE public.communication_status_id_seq OWNED BY public.communication_status.id;


--
-- Name: consumer; Type: TABLE; Schema: public; Owner: jninn
--

CREATE TABLE public.consumer (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50),
    address character varying(500),
    phone_number character varying(15),
    dba_id integer,
    hmis integer,
    internet_access boolean,
    pre_screen_timestamp timestamp without time zone,
    county_id integer NOT NULL,
    pref_contact_method_id integer NOT NULL,
    misc_notes character varying
);


ALTER TABLE public.consumer OWNER TO jninn;

--
-- Name: consumer_county_id_seq; Type: SEQUENCE; Schema: public; Owner: jninn
--

CREATE SEQUENCE public.consumer_county_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.consumer_county_id_seq OWNER TO jninn;

--
-- Name: consumer_county_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jninn
--

ALTER SEQUENCE public.consumer_county_id_seq OWNED BY public.consumer.county_id;


--
-- Name: consumer_id_seq; Type: SEQUENCE; Schema: public; Owner: jninn
--

CREATE SEQUENCE public.consumer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.consumer_id_seq OWNER TO jninn;

--
-- Name: consumer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jninn
--

ALTER SEQUENCE public.consumer_id_seq OWNED BY public.consumer.id;


--
-- Name: consumer_pref_contact_method_id_seq; Type: SEQUENCE; Schema: public; Owner: jninn
--

CREATE SEQUENCE public.consumer_pref_contact_method_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.consumer_pref_contact_method_id_seq OWNER TO jninn;

--
-- Name: consumer_pref_contact_method_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jninn
--

ALTER SEQUENCE public.consumer_pref_contact_method_id_seq OWNED BY public.consumer.pref_contact_method_id;


--
-- Name: county; Type: TABLE; Schema: public; Owner: jninn
--

CREATE TABLE public.county (
    id integer NOT NULL,
    county_name character varying(250) NOT NULL
);


ALTER TABLE public.county OWNER TO jninn;

--
-- Name: county_id_seq; Type: SEQUENCE; Schema: public; Owner: jninn
--

CREATE SEQUENCE public.county_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.county_id_seq OWNER TO jninn;

--
-- Name: county_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jninn
--

ALTER SEQUENCE public.county_id_seq OWNED BY public.county.id;


--
-- Name: department; Type: TABLE; Schema: public; Owner: jninn
--

CREATE TABLE public.department (
    id integer NOT NULL,
    department_name character varying(250) NOT NULL
);


ALTER TABLE public.department OWNER TO jninn;

--
-- Name: department_id_seq; Type: SEQUENCE; Schema: public; Owner: jninn
--

CREATE SEQUENCE public.department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.department_id_seq OWNER TO jninn;

--
-- Name: department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jninn
--

ALTER SEQUENCE public.department_id_seq OWNED BY public.department.id;


--
-- Name: pref_contact_method; Type: TABLE; Schema: public; Owner: jninn
--

CREATE TABLE public.pref_contact_method (
    id integer NOT NULL,
    pref_contact_method character varying(250) NOT NULL
);


ALTER TABLE public.pref_contact_method OWNER TO jninn;

--
-- Name: pref_contact_method_id_seq; Type: SEQUENCE; Schema: public; Owner: jninn
--

CREATE SEQUENCE public.pref_contact_method_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pref_contact_method_id_seq OWNER TO jninn;

--
-- Name: pref_contact_method_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jninn
--

ALTER SEQUENCE public.pref_contact_method_id_seq OWNED BY public.pref_contact_method.id;


--
-- Name: staff; Type: TABLE; Schema: public; Owner: jninn
--

CREATE TABLE public.staff (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    department_id integer NOT NULL
);


ALTER TABLE public.staff OWNER TO jninn;

--
-- Name: staff_department_id_seq; Type: SEQUENCE; Schema: public; Owner: jninn
--

CREATE SEQUENCE public.staff_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.staff_department_id_seq OWNER TO jninn;

--
-- Name: staff_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jninn
--

ALTER SEQUENCE public.staff_department_id_seq OWNED BY public.staff.department_id;


--
-- Name: staff_id_seq; Type: SEQUENCE; Schema: public; Owner: jninn
--

CREATE SEQUENCE public.staff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.staff_id_seq OWNER TO jninn;

--
-- Name: staff_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jninn
--

ALTER SEQUENCE public.staff_id_seq OWNED BY public.staff.id;


--
-- Name: communication id; Type: DEFAULT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.communication ALTER COLUMN id SET DEFAULT nextval('public.communication_id_seq'::regclass);


--
-- Name: communication staff_id; Type: DEFAULT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.communication ALTER COLUMN staff_id SET DEFAULT nextval('public.communication_staff_id_seq'::regclass);


--
-- Name: communication communication_status_id; Type: DEFAULT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.communication ALTER COLUMN communication_status_id SET DEFAULT nextval('public.communication_communication_status_id_seq'::regclass);


--
-- Name: communication consumer_id; Type: DEFAULT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.communication ALTER COLUMN consumer_id SET DEFAULT nextval('public.communication_consumer_id_seq'::regclass);


--
-- Name: communication_status id; Type: DEFAULT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.communication_status ALTER COLUMN id SET DEFAULT nextval('public.communication_status_id_seq'::regclass);


--
-- Name: consumer id; Type: DEFAULT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.consumer ALTER COLUMN id SET DEFAULT nextval('public.consumer_id_seq'::regclass);


--
-- Name: consumer county_id; Type: DEFAULT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.consumer ALTER COLUMN county_id SET DEFAULT nextval('public.consumer_county_id_seq'::regclass);


--
-- Name: consumer pref_contact_method_id; Type: DEFAULT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.consumer ALTER COLUMN pref_contact_method_id SET DEFAULT nextval('public.consumer_pref_contact_method_id_seq'::regclass);


--
-- Name: county id; Type: DEFAULT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.county ALTER COLUMN id SET DEFAULT nextval('public.county_id_seq'::regclass);


--
-- Name: department id; Type: DEFAULT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.department ALTER COLUMN id SET DEFAULT nextval('public.department_id_seq'::regclass);


--
-- Name: pref_contact_method id; Type: DEFAULT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.pref_contact_method ALTER COLUMN id SET DEFAULT nextval('public.pref_contact_method_id_seq'::regclass);


--
-- Name: staff id; Type: DEFAULT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.staff ALTER COLUMN id SET DEFAULT nextval('public.staff_id_seq'::regclass);


--
-- Name: staff department_id; Type: DEFAULT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.staff ALTER COLUMN department_id SET DEFAULT nextval('public.staff_department_id_seq'::regclass);


--
-- Data for Name: communication; Type: TABLE DATA; Schema: public; Owner: jninn
--

COPY public.communication (id, staff_id, communication_status_id, consumer_id, followup_timestamp, initial_call_timestamp, misc_notes) FROM stdin;
\.


--
-- Data for Name: communication_status; Type: TABLE DATA; Schema: public; Owner: jninn
--

COPY public.communication_status (id, communication_status) FROM stdin;
\.


--
-- Data for Name: consumer; Type: TABLE DATA; Schema: public; Owner: jninn
--

COPY public.consumer (id, first_name, last_name, address, phone_number, dba_id, hmis, internet_access, pre_screen_timestamp, county_id, pref_contact_method_id, misc_notes) FROM stdin;
\.


--
-- Data for Name: county; Type: TABLE DATA; Schema: public; Owner: jninn
--

COPY public.county (id, county_name) FROM stdin;
\.


--
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: jninn
--

COPY public.department (id, department_name) FROM stdin;
\.


--
-- Data for Name: pref_contact_method; Type: TABLE DATA; Schema: public; Owner: jninn
--

COPY public.pref_contact_method (id, pref_contact_method) FROM stdin;
\.


--
-- Data for Name: staff; Type: TABLE DATA; Schema: public; Owner: jninn
--

COPY public.staff (id, first_name, last_name, department_id) FROM stdin;
\.


--
-- Name: communication_communication_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.communication_communication_status_id_seq', 1, false);


--
-- Name: communication_consumer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.communication_consumer_id_seq', 1, false);


--
-- Name: communication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.communication_id_seq', 1, false);


--
-- Name: communication_staff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.communication_staff_id_seq', 1, false);


--
-- Name: communication_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.communication_status_id_seq', 3, true);


--
-- Name: consumer_county_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.consumer_county_id_seq', 1, false);


--
-- Name: consumer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.consumer_id_seq', 1, false);


--
-- Name: consumer_pref_contact_method_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.consumer_pref_contact_method_id_seq', 1, false);


--
-- Name: county_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.county_id_seq', 5, true);


--
-- Name: department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.department_id_seq', 5, true);


--
-- Name: pref_contact_method_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.pref_contact_method_id_seq', 5, true);


--
-- Name: staff_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.staff_department_id_seq', 1, false);


--
-- Name: staff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.staff_id_seq', 20, true);


--
-- Name: communication communication_pkey; Type: CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.communication
    ADD CONSTRAINT communication_pkey PRIMARY KEY (id);


--
-- Name: communication_status communication_status_communication_status_key; Type: CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.communication_status
    ADD CONSTRAINT communication_status_communication_status_key UNIQUE (communication_status);


--
-- Name: communication_status communication_status_pkey; Type: CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.communication_status
    ADD CONSTRAINT communication_status_pkey PRIMARY KEY (id);


--
-- Name: consumer consumer_pkey; Type: CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.consumer
    ADD CONSTRAINT consumer_pkey PRIMARY KEY (id);


--
-- Name: county county_county_name_key; Type: CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.county
    ADD CONSTRAINT county_county_name_key UNIQUE (county_name);


--
-- Name: county county_pkey; Type: CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.county
    ADD CONSTRAINT county_pkey PRIMARY KEY (id);


--
-- Name: department department_department_name_key; Type: CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_department_name_key UNIQUE (department_name);


--
-- Name: department department_pkey; Type: CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (id);


--
-- Name: pref_contact_method pref_contact_method_pkey; Type: CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.pref_contact_method
    ADD CONSTRAINT pref_contact_method_pkey PRIMARY KEY (id);


--
-- Name: pref_contact_method pref_contact_method_pref_contact_method_key; Type: CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.pref_contact_method
    ADD CONSTRAINT pref_contact_method_pref_contact_method_key UNIQUE (pref_contact_method);


--
-- Name: staff staff_pkey; Type: CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (id);


--
-- Name: communication reference_communication_status; Type: FK CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.communication
    ADD CONSTRAINT reference_communication_status FOREIGN KEY (communication_status_id) REFERENCES public.communication_status(id) ON DELETE SET NULL;


--
-- Name: consumer reference_counties; Type: FK CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.consumer
    ADD CONSTRAINT reference_counties FOREIGN KEY (county_id) REFERENCES public.county(id) ON DELETE SET NULL;


--
-- Name: staff reference_department; Type: FK CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT reference_department FOREIGN KEY (department_id) REFERENCES public.department(id) ON DELETE SET NULL;


--
-- Name: consumer reference_pref_contact_method; Type: FK CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.consumer
    ADD CONSTRAINT reference_pref_contact_method FOREIGN KEY (pref_contact_method_id) REFERENCES public.pref_contact_method(id) ON DELETE SET NULL;


--
-- Name: communication reference_staff; Type: FK CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.communication
    ADD CONSTRAINT reference_staff FOREIGN KEY (staff_id) REFERENCES public.staff(id) ON DELETE SET NULL;


--
-- Name: communication refernece_consumer; Type: FK CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.communication
    ADD CONSTRAINT refernece_consumer FOREIGN KEY (consumer_id) REFERENCES public.consumer(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

