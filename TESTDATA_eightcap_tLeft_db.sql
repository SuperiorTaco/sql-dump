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
    communication_status_id integer NOT NULL,
    issue_id integer NOT NULL,
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
-- Name: communication_issue_id_seq; Type: SEQUENCE; Schema: public; Owner: jninn
--

CREATE SEQUENCE public.communication_issue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.communication_issue_id_seq OWNER TO jninn;

--
-- Name: communication_issue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jninn
--

ALTER SEQUENCE public.communication_issue_id_seq OWNED BY public.communication.issue_id;


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
-- Name: issue; Type: TABLE; Schema: public; Owner: jninn
--

CREATE TABLE public.issue (
    id integer NOT NULL,
    issue_resolved boolean NOT NULL,
    consumer_id integer NOT NULL,
    staff_id integer NOT NULL
);


ALTER TABLE public.issue OWNER TO jninn;

--
-- Name: issue_consumer_id_seq; Type: SEQUENCE; Schema: public; Owner: jninn
--

CREATE SEQUENCE public.issue_consumer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.issue_consumer_id_seq OWNER TO jninn;

--
-- Name: issue_consumer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jninn
--

ALTER SEQUENCE public.issue_consumer_id_seq OWNED BY public.issue.consumer_id;


--
-- Name: issue_id_seq; Type: SEQUENCE; Schema: public; Owner: jninn
--

CREATE SEQUENCE public.issue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.issue_id_seq OWNER TO jninn;

--
-- Name: issue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jninn
--

ALTER SEQUENCE public.issue_id_seq OWNED BY public.issue.id;


--
-- Name: issue_staff_id_seq; Type: SEQUENCE; Schema: public; Owner: jninn
--

CREATE SEQUENCE public.issue_staff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.issue_staff_id_seq OWNER TO jninn;

--
-- Name: issue_staff_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jninn
--

ALTER SEQUENCE public.issue_staff_id_seq OWNED BY public.issue.staff_id;


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
-- Name: communication communication_status_id; Type: DEFAULT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.communication ALTER COLUMN communication_status_id SET DEFAULT nextval('public.communication_communication_status_id_seq'::regclass);


--
-- Name: communication issue_id; Type: DEFAULT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.communication ALTER COLUMN issue_id SET DEFAULT nextval('public.communication_issue_id_seq'::regclass);


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
-- Name: issue id; Type: DEFAULT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.issue ALTER COLUMN id SET DEFAULT nextval('public.issue_id_seq'::regclass);


--
-- Name: issue consumer_id; Type: DEFAULT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.issue ALTER COLUMN consumer_id SET DEFAULT nextval('public.issue_consumer_id_seq'::regclass);


--
-- Name: issue staff_id; Type: DEFAULT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.issue ALTER COLUMN staff_id SET DEFAULT nextval('public.issue_staff_id_seq'::regclass);


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

COPY public.communication (id, communication_status_id, issue_id, followup_timestamp, initial_call_timestamp, misc_notes) FROM stdin;
2	2	626	2020-07-16 00:00:00	2018-11-21 00:00:00	in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit
3	2	64	2021-01-23 00:00:00	2019-04-25 00:00:00	at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient
4	1	143	2022-09-29 00:00:00	2018-11-29 00:00:00	ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum
5	1	208	2020-10-28 00:00:00	2018-12-15 00:00:00	mauris non ligula pellentesque ultrices phasellus id sapien in sapien
6	2	291	2021-07-19 00:00:00	2019-02-25 00:00:00	bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed
7	2	419	2020-07-02 00:00:00	2019-03-21 00:00:00	justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus
8	1	666	2020-08-09 00:00:00	2019-01-17 00:00:00	metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean
9	1	995	2022-07-12 00:00:00	2019-01-23 00:00:00	quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus
10	2	295	2021-05-11 00:00:00	2018-12-07 00:00:00	est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla
11	2	5	2021-12-30 00:00:00	2019-04-04 00:00:00	libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum
12	1	489	2020-08-23 00:00:00	2019-02-05 00:00:00	sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus
13	1	280	2022-11-16 00:00:00	2018-09-15 00:00:00	fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi
14	2	227	2021-05-23 00:00:00	2019-02-21 00:00:00	turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut
15	2	541	2021-05-25 00:00:00	2018-12-14 00:00:00	eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue
16	1	946	2022-01-16 00:00:00	2018-11-20 00:00:00	porttitor id consequat in consequat ut nulla sed accumsan felis
17	2	6	2021-03-25 00:00:00	2019-03-03 00:00:00	ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla
18	1	4	2022-09-09 00:00:00	2018-10-20 00:00:00	vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in
19	2	313	2022-05-23 00:00:00	2019-02-22 00:00:00	nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum
20	2	493	2022-02-04 00:00:00	2018-10-09 00:00:00	vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia
21	2	859	2021-08-20 00:00:00	2018-11-29 00:00:00	suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem
22	2	531	2021-12-30 00:00:00	2019-04-05 00:00:00	ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit
23	2	807	2021-01-25 00:00:00	2019-02-01 00:00:00	semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam
24	1	573	2020-09-24 00:00:00	2018-09-06 00:00:00	id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio
25	1	234	2022-09-16 00:00:00	2019-02-26 00:00:00	a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id
26	1	19	2021-02-18 00:00:00	2019-04-16 00:00:00	metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere
27	1	753	2022-05-07 00:00:00	2018-09-03 00:00:00	ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus
28	1	202	2021-11-24 00:00:00	2019-04-19 00:00:00	nulla eget eros elementum pellentesque quisque porta volutpat erat quisque
29	2	857	2022-06-16 00:00:00	2018-11-17 00:00:00	aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et
30	1	1001	2022-04-15 00:00:00	2018-11-05 00:00:00	fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien
31	1	511	2021-05-13 00:00:00	2019-04-24 00:00:00	cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus
32	2	754	2022-06-27 00:00:00	2018-12-05 00:00:00	elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum
33	1	979	2021-04-25 00:00:00	2018-12-17 00:00:00	duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus
34	2	528	2022-06-12 00:00:00	2018-12-02 00:00:00	odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam
35	2	908	2020-07-06 00:00:00	2018-12-09 00:00:00	pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis
36	1	603	2021-08-13 00:00:00	2019-03-16 00:00:00	mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue
37	2	180	2022-07-13 00:00:00	2018-11-28 00:00:00	nunc rhoncus dui vel sem sed sagittis nam congue risus semper
38	2	158	2022-04-27 00:00:00	2018-12-25 00:00:00	justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula
39	1	805	2022-04-29 00:00:00	2018-11-30 00:00:00	accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut
40	2	249	2022-10-25 00:00:00	2018-09-04 00:00:00	a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique
41	1	272	2021-06-28 00:00:00	2019-04-04 00:00:00	tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis
42	2	481	2020-06-25 00:00:00	2018-10-09 00:00:00	imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor
43	1	246	2022-02-21 00:00:00	2018-10-16 00:00:00	fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui
44	1	92	2022-02-03 00:00:00	2019-02-21 00:00:00	purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor
45	2	173	2021-07-10 00:00:00	2019-03-11 00:00:00	congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl
46	1	98	2020-12-14 00:00:00	2019-04-07 00:00:00	pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti
47	2	961	2021-10-05 00:00:00	2018-10-01 00:00:00	nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus
48	1	801	2021-07-12 00:00:00	2018-09-14 00:00:00	morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet
49	1	646	2022-12-02 00:00:00	2019-04-22 00:00:00	orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor
50	1	327	2021-03-30 00:00:00	2018-10-14 00:00:00	consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis
51	1	862	2021-12-12 00:00:00	2019-03-31 00:00:00	curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu
52	2	173	2022-09-04 00:00:00	2019-03-13 00:00:00	eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl
53	2	660	2021-04-28 00:00:00	2018-11-12 00:00:00	ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia
54	2	17	2021-10-11 00:00:00	2019-01-04 00:00:00	in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien
55	1	189	2021-01-08 00:00:00	2019-01-26 00:00:00	turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at
56	1	74	2022-02-20 00:00:00	2019-03-07 00:00:00	cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra
57	1	694	2020-11-30 00:00:00	2018-10-24 00:00:00	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est
58	2	35	2022-03-10 00:00:00	2018-11-11 00:00:00	dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut
59	2	191	2020-09-04 00:00:00	2019-04-09 00:00:00	rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc
60	1	913	2021-06-08 00:00:00	2018-12-08 00:00:00	vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus
61	2	841	2020-12-20 00:00:00	2018-11-26 00:00:00	convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris
62	2	84	2022-03-28 00:00:00	2018-11-08 00:00:00	sollicitudin mi sit amet lobortis sapien sapien non mi integer
63	1	484	2021-08-13 00:00:00	2019-03-02 00:00:00	dui vel sem sed sagittis nam congue risus semper porta
64	2	874	2021-11-25 00:00:00	2019-03-23 00:00:00	ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque
65	2	275	2022-03-07 00:00:00	2018-12-29 00:00:00	nibh ligula nec sem duis aliquam convallis nunc proin at turpis a
66	2	969	2022-08-22 00:00:00	2018-10-31 00:00:00	sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate
67	1	738	2020-07-03 00:00:00	2019-04-02 00:00:00	nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat
68	2	665	2021-06-05 00:00:00	2018-09-23 00:00:00	ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare
69	1	825	2022-07-14 00:00:00	2019-04-12 00:00:00	cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien
70	1	606	2022-04-20 00:00:00	2019-04-29 00:00:00	est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue
71	2	694	2022-09-17 00:00:00	2019-02-10 00:00:00	sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque
72	2	986	2021-05-17 00:00:00	2019-04-04 00:00:00	nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae
73	2	129	2020-08-01 00:00:00	2018-11-29 00:00:00	libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna
74	1	209	2021-07-27 00:00:00	2019-02-23 00:00:00	duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in
75	2	309	2021-12-04 00:00:00	2019-02-01 00:00:00	risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum
76	1	440	2022-10-24 00:00:00	2018-09-20 00:00:00	morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit
77	2	797	2022-06-17 00:00:00	2018-09-26 00:00:00	primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam
78	2	655	2021-06-07 00:00:00	2018-12-08 00:00:00	elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc
79	2	991	2020-11-29 00:00:00	2018-11-26 00:00:00	sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque
80	2	399	2021-06-30 00:00:00	2019-01-26 00:00:00	aliquam sit amet diam in magna bibendum imperdiet nullam orci pede
81	2	937	2022-03-13 00:00:00	2019-04-12 00:00:00	vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in
82	1	751	2022-11-17 00:00:00	2019-02-15 00:00:00	quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus
83	1	478	2022-01-26 00:00:00	2019-02-15 00:00:00	ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit
84	1	153	2021-06-15 00:00:00	2019-03-24 00:00:00	mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit
85	2	826	2021-06-29 00:00:00	2019-02-22 00:00:00	etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut
86	2	913	2022-04-10 00:00:00	2019-03-09 00:00:00	vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat
87	2	663	2022-11-01 00:00:00	2018-10-31 00:00:00	nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum
88	1	747	2021-01-14 00:00:00	2018-09-05 00:00:00	viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero
89	2	797	2022-09-04 00:00:00	2019-03-14 00:00:00	et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis
90	2	558	2020-05-28 00:00:00	2019-02-25 00:00:00	rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce
91	1	759	2022-11-07 00:00:00	2019-02-16 00:00:00	volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus
92	2	919	2021-09-24 00:00:00	2018-10-25 00:00:00	cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec
93	2	615	2021-01-11 00:00:00	2019-02-10 00:00:00	dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est
94	2	480	2022-04-09 00:00:00	2018-12-07 00:00:00	magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque
95	1	246	2020-11-06 00:00:00	2018-12-19 00:00:00	volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam
96	1	639	2020-08-20 00:00:00	2019-04-08 00:00:00	dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet
97	2	339	2020-08-24 00:00:00	2018-12-21 00:00:00	rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut
98	1	216	2021-03-24 00:00:00	2019-04-03 00:00:00	mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget
99	1	795	2020-10-16 00:00:00	2018-12-23 00:00:00	augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna
100	1	250	2020-10-12 00:00:00	2018-10-21 00:00:00	velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat
101	1	149	2022-03-31 00:00:00	2018-12-25 00:00:00	odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec
102	2	958	2021-05-13 00:00:00	2019-02-10 00:00:00	purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus
103	2	341	2022-09-12 00:00:00	2019-03-07 00:00:00	odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis
104	1	984	2020-12-15 00:00:00	2019-04-16 00:00:00	ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet
105	2	36	2021-08-30 00:00:00	2018-11-11 00:00:00	in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere
106	1	829	2021-10-13 00:00:00	2019-01-21 00:00:00	magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum
107	1	881	2021-10-07 00:00:00	2018-09-04 00:00:00	mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse
108	1	265	2021-04-28 00:00:00	2019-03-10 00:00:00	vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis
109	1	24	2021-08-13 00:00:00	2018-10-03 00:00:00	erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue
110	2	948	2022-04-13 00:00:00	2019-04-22 00:00:00	ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien
111	2	133	2021-04-03 00:00:00	2018-09-29 00:00:00	risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh
112	1	416	2022-07-16 00:00:00	2018-10-26 00:00:00	et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis
113	2	695	2021-02-10 00:00:00	2018-09-23 00:00:00	dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est
114	1	837	2020-12-13 00:00:00	2019-02-11 00:00:00	magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien
115	1	660	2022-08-29 00:00:00	2019-01-25 00:00:00	id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et
116	1	382	2021-05-04 00:00:00	2018-11-08 00:00:00	curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend
117	2	436	2022-03-06 00:00:00	2019-03-04 00:00:00	felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc
118	2	962	2020-12-13 00:00:00	2018-12-18 00:00:00	nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel
119	1	601	2022-08-27 00:00:00	2019-04-23 00:00:00	in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec
120	1	96	2021-12-15 00:00:00	2018-10-04 00:00:00	at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante
121	2	515	2022-08-17 00:00:00	2018-11-22 00:00:00	potenti in eleifend quam a odio in hac habitasse platea dictumst
122	1	176	2022-05-02 00:00:00	2018-12-07 00:00:00	enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris
123	1	951	2020-12-01 00:00:00	2019-04-05 00:00:00	erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer
124	1	701	2021-05-25 00:00:00	2019-02-23 00:00:00	nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum
125	1	935	2021-06-16 00:00:00	2018-11-12 00:00:00	in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae
126	1	276	2022-03-24 00:00:00	2019-04-01 00:00:00	montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur
127	1	497	2022-06-15 00:00:00	2018-12-25 00:00:00	sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur
128	1	43	2020-08-31 00:00:00	2018-09-15 00:00:00	ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis
129	1	558	2020-08-15 00:00:00	2019-01-04 00:00:00	proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante
130	2	727	2022-09-23 00:00:00	2019-01-16 00:00:00	nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus
131	1	795	2022-10-31 00:00:00	2019-01-17 00:00:00	ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis
132	1	672	2021-12-02 00:00:00	2019-02-06 00:00:00	sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer
133	2	152	2021-04-14 00:00:00	2018-09-20 00:00:00	dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo
134	2	545	2020-05-22 00:00:00	2018-12-23 00:00:00	nulla quisque arcu libero rutrum ac lobortis vel dapibus at
135	1	117	2022-01-18 00:00:00	2019-01-27 00:00:00	sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique
136	1	31	2020-08-13 00:00:00	2019-05-03 00:00:00	sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse
137	2	580	2021-05-28 00:00:00	2018-12-21 00:00:00	ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur
138	1	199	2020-10-13 00:00:00	2018-10-30 00:00:00	orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt
139	1	1001	2020-06-18 00:00:00	2019-03-27 00:00:00	leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor
140	2	820	2020-07-10 00:00:00	2018-11-03 00:00:00	non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus
141	1	37	2021-07-10 00:00:00	2018-10-06 00:00:00	nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum
142	2	661	2022-07-26 00:00:00	2018-12-12 00:00:00	eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat
143	2	17	2020-06-22 00:00:00	2018-09-12 00:00:00	faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices
144	1	895	2021-06-29 00:00:00	2019-01-17 00:00:00	pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere
145	1	482	2022-05-21 00:00:00	2018-09-18 00:00:00	nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat
146	1	493	2021-02-18 00:00:00	2019-02-16 00:00:00	id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu
147	2	51	2021-05-21 00:00:00	2018-12-13 00:00:00	id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo
148	1	855	2021-11-15 00:00:00	2018-10-20 00:00:00	risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam
149	2	464	2022-01-21 00:00:00	2018-11-07 00:00:00	pede libero quis orci nullam molestie nibh in lectus pellentesque
150	2	475	2022-08-09 00:00:00	2018-11-13 00:00:00	vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit
151	2	872	2021-11-08 00:00:00	2018-11-22 00:00:00	morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus
152	2	48	2021-05-03 00:00:00	2018-12-15 00:00:00	ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus
153	2	969	2022-07-13 00:00:00	2018-10-13 00:00:00	magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet
154	2	86	2021-03-22 00:00:00	2019-03-07 00:00:00	nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci
155	1	332	2021-03-25 00:00:00	2019-03-27 00:00:00	nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem
156	1	23	2022-10-21 00:00:00	2019-01-02 00:00:00	posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat
157	2	351	2022-03-29 00:00:00	2019-01-29 00:00:00	libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt
158	1	888	2021-10-02 00:00:00	2019-02-21 00:00:00	ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in
159	1	641	2022-11-09 00:00:00	2019-02-16 00:00:00	ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non
160	2	98	2021-08-05 00:00:00	2019-01-07 00:00:00	hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis
161	1	309	2022-11-02 00:00:00	2019-01-25 00:00:00	vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus
162	1	828	2022-03-28 00:00:00	2019-02-23 00:00:00	convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque
163	2	445	2021-08-23 00:00:00	2019-02-06 00:00:00	eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique
164	2	791	2022-03-24 00:00:00	2018-12-21 00:00:00	justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla
165	2	222	2022-04-14 00:00:00	2018-11-04 00:00:00	fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel
166	1	135	2022-01-06 00:00:00	2018-11-01 00:00:00	augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae
167	2	328	2020-11-04 00:00:00	2018-11-15 00:00:00	amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam
168	1	656	2021-07-16 00:00:00	2018-10-11 00:00:00	ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque
169	1	654	2021-07-02 00:00:00	2018-11-17 00:00:00	rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet
170	1	564	2021-11-12 00:00:00	2019-02-25 00:00:00	quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices
171	1	240	2022-06-08 00:00:00	2019-02-24 00:00:00	cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc
172	2	877	2022-07-09 00:00:00	2018-10-11 00:00:00	justo sollicitudin ut suscipit a feugiat et eros vestibulum ac
173	2	330	2020-07-28 00:00:00	2018-10-28 00:00:00	enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper
174	2	430	2020-12-06 00:00:00	2019-02-10 00:00:00	ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut
175	2	726	2021-03-05 00:00:00	2019-01-22 00:00:00	id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et
176	2	502	2021-09-09 00:00:00	2018-10-19 00:00:00	condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu
177	2	579	2020-12-27 00:00:00	2019-01-22 00:00:00	enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum
178	2	743	2021-07-26 00:00:00	2018-11-15 00:00:00	mi pede malesuada in imperdiet et commodo vulputate justo in
179	2	340	2020-11-12 00:00:00	2019-03-11 00:00:00	neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit
180	1	896	2022-04-12 00:00:00	2019-02-22 00:00:00	eros vestibulum ac est lacinia nisi venenatis tristique fusce congue
181	1	102	2021-05-16 00:00:00	2019-04-06 00:00:00	convallis nunc proin at turpis a pede posuere nonummy integer
182	2	646	2022-08-11 00:00:00	2019-04-10 00:00:00	sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor
183	1	148	2022-11-17 00:00:00	2018-09-14 00:00:00	diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat
184	2	508	2020-11-24 00:00:00	2018-10-29 00:00:00	aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra
185	2	613	2022-06-27 00:00:00	2019-02-07 00:00:00	nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in
186	2	270	2020-05-29 00:00:00	2018-11-01 00:00:00	ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros
187	2	357	2020-10-26 00:00:00	2019-01-15 00:00:00	suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus
188	2	693	2021-07-07 00:00:00	2018-10-11 00:00:00	at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam
189	1	54	2021-02-17 00:00:00	2018-10-22 00:00:00	nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae
190	2	42	2020-09-15 00:00:00	2018-12-07 00:00:00	tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus
191	1	421	2021-04-22 00:00:00	2018-09-15 00:00:00	tellus semper interdum mauris ullamcorper purus sit amet nulla quisque
192	2	637	2021-03-03 00:00:00	2019-04-06 00:00:00	placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis
193	2	999	2021-12-16 00:00:00	2018-09-29 00:00:00	eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien
194	1	33	2021-01-03 00:00:00	2018-11-16 00:00:00	posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti
195	1	23	2020-05-26 00:00:00	2019-02-14 00:00:00	nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi
196	2	115	2021-12-25 00:00:00	2019-01-14 00:00:00	nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet
197	2	874	2022-02-19 00:00:00	2018-11-14 00:00:00	curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla
198	2	299	2022-10-13 00:00:00	2018-09-05 00:00:00	integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum
199	2	262	2022-06-26 00:00:00	2018-10-05 00:00:00	amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate
200	1	348	2022-01-17 00:00:00	2018-12-13 00:00:00	ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac
201	1	682	2021-11-12 00:00:00	2018-12-31 00:00:00	pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper
202	2	322	2021-12-19 00:00:00	2019-02-16 00:00:00	non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum
203	1	488	2020-10-23 00:00:00	2019-03-28 00:00:00	donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla
204	1	278	2021-02-21 00:00:00	2019-04-01 00:00:00	platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum
205	1	695	2020-09-25 00:00:00	2019-04-24 00:00:00	nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam
206	1	461	2020-11-12 00:00:00	2018-12-05 00:00:00	volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in
207	2	750	2022-08-23 00:00:00	2018-09-12 00:00:00	in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt
208	1	105	2021-10-22 00:00:00	2018-12-30 00:00:00	ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien
209	1	274	2020-12-16 00:00:00	2018-10-22 00:00:00	morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est
210	2	61	2022-08-30 00:00:00	2018-11-11 00:00:00	a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel
211	1	816	2020-08-22 00:00:00	2018-09-12 00:00:00	vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet
212	1	549	2021-06-12 00:00:00	2018-10-25 00:00:00	platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque
213	2	307	2022-10-08 00:00:00	2019-02-21 00:00:00	malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin
214	2	618	2022-09-06 00:00:00	2018-09-20 00:00:00	in sagittis dui vel nisl duis ac nibh fusce lacus
215	1	394	2021-05-17 00:00:00	2019-04-28 00:00:00	lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt
216	1	793	2020-12-02 00:00:00	2018-10-31 00:00:00	maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque
217	2	356	2021-02-04 00:00:00	2018-09-28 00:00:00	rutrum neque aenean auctor gravida sem praesent id massa id nisl
218	2	269	2022-08-11 00:00:00	2018-10-23 00:00:00	aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit
219	2	40	2020-08-10 00:00:00	2019-02-21 00:00:00	magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes
220	2	467	2021-01-01 00:00:00	2018-10-12 00:00:00	etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id
221	2	366	2022-07-21 00:00:00	2019-02-23 00:00:00	lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat
222	1	597	2022-01-24 00:00:00	2018-11-06 00:00:00	amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus
223	1	609	2022-06-09 00:00:00	2018-12-05 00:00:00	in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis
224	1	128	2021-07-27 00:00:00	2019-01-21 00:00:00	ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper
225	1	60	2021-12-06 00:00:00	2019-01-20 00:00:00	sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac
226	2	592	2022-04-13 00:00:00	2019-03-24 00:00:00	lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu
227	2	979	2021-02-08 00:00:00	2018-10-13 00:00:00	nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in
228	2	798	2021-09-24 00:00:00	2019-03-12 00:00:00	tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat
229	1	944	2020-09-04 00:00:00	2018-09-08 00:00:00	vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra
230	2	446	2021-08-11 00:00:00	2019-02-22 00:00:00	amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor
231	1	193	2021-04-06 00:00:00	2018-10-29 00:00:00	cursus urna ut tellus nulla ut erat id mauris vulputate elementum
232	2	504	2020-10-28 00:00:00	2018-11-09 00:00:00	lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien
233	2	944	2020-12-11 00:00:00	2018-10-27 00:00:00	semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis
234	2	516	2020-07-21 00:00:00	2019-04-15 00:00:00	a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices
235	1	399	2022-05-14 00:00:00	2018-11-11 00:00:00	ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae
236	1	853	2021-04-27 00:00:00	2019-02-23 00:00:00	augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id
237	2	981	2021-02-17 00:00:00	2019-04-12 00:00:00	morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue
238	2	985	2022-01-05 00:00:00	2018-12-23 00:00:00	nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non
239	2	526	2021-05-17 00:00:00	2019-01-15 00:00:00	luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas
240	1	163	2020-07-30 00:00:00	2019-03-23 00:00:00	risus semper porta volutpat quam pede lobortis ligula sit amet
241	2	510	2022-06-20 00:00:00	2018-12-06 00:00:00	ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus
242	2	364	2020-11-30 00:00:00	2019-03-07 00:00:00	rutrum ac lobortis vel dapibus at diam nam tristique tortor eu
243	1	950	2022-10-27 00:00:00	2018-10-26 00:00:00	in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus
244	1	514	2020-08-22 00:00:00	2019-04-04 00:00:00	aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie
245	2	454	2021-06-13 00:00:00	2019-04-27 00:00:00	luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec
246	2	469	2022-06-13 00:00:00	2019-02-05 00:00:00	facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus
247	2	794	2022-06-16 00:00:00	2018-09-06 00:00:00	aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam
248	1	540	2020-05-16 00:00:00	2018-12-17 00:00:00	quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices
249	2	667	2022-03-11 00:00:00	2019-04-05 00:00:00	pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis
250	1	371	2021-11-21 00:00:00	2018-12-09 00:00:00	accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa
251	1	961	2021-02-17 00:00:00	2018-11-07 00:00:00	lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet
252	1	36	2022-08-15 00:00:00	2018-12-04 00:00:00	penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis
253	2	288	2021-11-09 00:00:00	2019-04-27 00:00:00	molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur
254	1	565	2022-03-31 00:00:00	2019-01-13 00:00:00	nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh
255	1	443	2021-01-27 00:00:00	2018-12-04 00:00:00	vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient
256	1	610	2020-07-15 00:00:00	2018-09-17 00:00:00	varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit
257	2	903	2021-02-01 00:00:00	2019-04-07 00:00:00	praesent id massa id nisl venenatis lacinia aenean sit amet justo
258	1	627	2022-02-05 00:00:00	2018-10-28 00:00:00	ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh
259	2	531	2021-10-14 00:00:00	2018-12-03 00:00:00	feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa
260	1	590	2022-07-17 00:00:00	2018-09-14 00:00:00	rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus
261	1	223	2021-09-10 00:00:00	2019-03-23 00:00:00	est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id
262	2	608	2022-01-21 00:00:00	2019-02-18 00:00:00	in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus
263	2	811	2022-12-03 00:00:00	2018-11-20 00:00:00	etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut
264	1	13	2022-04-20 00:00:00	2018-11-17 00:00:00	ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at
265	2	787	2022-11-28 00:00:00	2018-10-08 00:00:00	porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque
266	1	29	2022-01-21 00:00:00	2018-10-16 00:00:00	non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci
267	2	384	2021-05-16 00:00:00	2018-11-16 00:00:00	cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit
268	2	993	2020-11-22 00:00:00	2018-12-07 00:00:00	quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus
269	1	23	2021-12-16 00:00:00	2018-10-26 00:00:00	vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum
270	2	364	2022-02-06 00:00:00	2019-03-11 00:00:00	id sapien in sapien iaculis congue vivamus metus arcu adipiscing
271	1	466	2020-10-26 00:00:00	2018-09-07 00:00:00	nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate
272	2	88	2020-07-04 00:00:00	2018-10-23 00:00:00	nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices
273	2	503	2021-11-17 00:00:00	2019-02-02 00:00:00	felis eu sapien cursus vestibulum proin eu mi nulla ac enim in
274	2	846	2021-01-03 00:00:00	2018-10-08 00:00:00	quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum
275	1	247	2022-05-01 00:00:00	2019-01-07 00:00:00	vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget
276	2	86	2021-02-28 00:00:00	2019-01-05 00:00:00	lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit
277	1	198	2020-07-28 00:00:00	2018-10-22 00:00:00	sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae
278	1	466	2022-04-26 00:00:00	2019-03-27 00:00:00	vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere
279	1	546	2021-12-19 00:00:00	2019-01-19 00:00:00	est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum
280	1	616	2021-10-24 00:00:00	2019-02-19 00:00:00	vestibulum sed magna at nunc commodo placerat praesent blandit nam
281	1	93	2022-02-05 00:00:00	2019-02-26 00:00:00	neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia
282	2	125	2021-06-29 00:00:00	2019-01-04 00:00:00	id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate
283	1	555	2022-02-09 00:00:00	2018-10-23 00:00:00	vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio
284	2	124	2021-03-13 00:00:00	2019-01-25 00:00:00	quam suspendisse potenti nullam porttitor lacus at turpis donec posuere
285	2	446	2021-09-16 00:00:00	2019-02-25 00:00:00	sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus
286	1	96	2021-05-15 00:00:00	2018-10-14 00:00:00	diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat
287	1	86	2021-07-08 00:00:00	2018-09-30 00:00:00	volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas
288	2	212	2021-03-01 00:00:00	2018-12-30 00:00:00	erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin
289	2	156	2022-05-03 00:00:00	2018-09-28 00:00:00	vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci
290	2	537	2021-08-29 00:00:00	2018-09-16 00:00:00	habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie
291	1	704	2020-05-26 00:00:00	2019-03-03 00:00:00	faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor
292	2	644	2022-03-20 00:00:00	2019-04-04 00:00:00	lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in
293	1	727	2020-08-23 00:00:00	2018-11-15 00:00:00	viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper
294	1	332	2021-12-07 00:00:00	2018-12-17 00:00:00	sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus
295	1	24	2022-03-13 00:00:00	2018-09-04 00:00:00	ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum
296	1	268	2022-09-03 00:00:00	2018-11-11 00:00:00	leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis
297	2	286	2022-01-06 00:00:00	2019-01-24 00:00:00	erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a
298	2	235	2022-01-21 00:00:00	2019-02-10 00:00:00	vel est donec odio justo sollicitudin ut suscipit a feugiat et
299	1	137	2020-07-23 00:00:00	2018-10-12 00:00:00	pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus
300	1	13	2021-06-25 00:00:00	2018-10-25 00:00:00	curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae
301	1	351	2021-10-03 00:00:00	2018-12-03 00:00:00	proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius
302	1	129	2022-05-27 00:00:00	2018-09-14 00:00:00	duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum
303	1	13	2021-09-05 00:00:00	2019-03-30 00:00:00	eget massa tempor convallis nulla neque libero convallis eget eleifend luctus
304	2	350	2021-08-14 00:00:00	2019-02-07 00:00:00	lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed
305	1	809	2022-02-19 00:00:00	2019-03-29 00:00:00	tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer
306	1	123	2021-08-18 00:00:00	2019-03-31 00:00:00	in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis
307	2	589	2022-09-26 00:00:00	2019-03-06 00:00:00	quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae
308	2	94	2022-01-29 00:00:00	2018-09-15 00:00:00	maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis
309	2	758	2022-11-22 00:00:00	2018-10-21 00:00:00	euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem
310	1	175	2020-10-15 00:00:00	2018-09-18 00:00:00	nisl venenatis lacinia aenean sit amet justo morbi ut odio
311	1	623	2022-04-11 00:00:00	2018-11-26 00:00:00	consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer
312	2	558	2021-05-30 00:00:00	2019-03-16 00:00:00	sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla
313	1	651	2021-10-02 00:00:00	2018-09-20 00:00:00	augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in
314	1	301	2020-06-11 00:00:00	2019-01-03 00:00:00	in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi
315	1	174	2021-05-01 00:00:00	2018-12-12 00:00:00	vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in
316	1	405	2020-07-25 00:00:00	2019-04-18 00:00:00	in est risus auctor sed tristique in tempus sit amet sem
317	2	201	2021-07-03 00:00:00	2018-10-31 00:00:00	eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis
318	2	321	2020-07-07 00:00:00	2018-10-15 00:00:00	primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan
319	1	544	2020-12-11 00:00:00	2018-09-10 00:00:00	pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis
320	2	486	2022-09-21 00:00:00	2019-03-10 00:00:00	eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras
321	2	833	2021-06-21 00:00:00	2018-11-30 00:00:00	ullamcorper purus sit amet nulla quisque arcu libero rutrum ac
322	1	626	2020-11-21 00:00:00	2019-01-07 00:00:00	dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa
323	1	619	2022-07-17 00:00:00	2018-11-29 00:00:00	sit amet nulla quisque arcu libero rutrum ac lobortis vel
324	1	881	2021-06-20 00:00:00	2018-10-04 00:00:00	tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis
325	2	478	2022-10-30 00:00:00	2019-02-24 00:00:00	cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi
326	1	538	2020-12-04 00:00:00	2018-09-16 00:00:00	convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien
327	2	886	2020-10-09 00:00:00	2019-01-09 00:00:00	purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes
328	1	920	2022-02-23 00:00:00	2019-01-27 00:00:00	blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula
329	2	732	2022-04-23 00:00:00	2019-01-02 00:00:00	erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst
330	2	949	2021-02-17 00:00:00	2019-03-01 00:00:00	magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus
331	2	626	2022-09-18 00:00:00	2019-04-30 00:00:00	convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit
332	1	284	2022-07-24 00:00:00	2019-01-02 00:00:00	risus praesent lectus vestibulum quam sapien varius ut blandit non
333	2	688	2022-01-31 00:00:00	2018-12-01 00:00:00	ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id
334	2	186	2022-05-04 00:00:00	2019-03-14 00:00:00	mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta
335	1	921	2021-11-16 00:00:00	2018-11-05 00:00:00	odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui
336	1	187	2021-12-06 00:00:00	2019-05-04 00:00:00	et tempus semper est quam pharetra magna ac consequat metus
337	2	290	2021-02-23 00:00:00	2019-05-07 00:00:00	tellus nisi eu orci mauris lacinia sapien quis libero nullam
338	2	992	2020-09-02 00:00:00	2018-11-21 00:00:00	erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla
339	1	661	2021-03-11 00:00:00	2019-04-21 00:00:00	in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque
340	2	915	2020-12-27 00:00:00	2018-10-01 00:00:00	vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum
341	2	666	2021-04-04 00:00:00	2019-01-31 00:00:00	purus phasellus in felis donec semper sapien a libero nam dui
342	2	964	2022-09-03 00:00:00	2019-02-27 00:00:00	orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum
343	2	831	2022-09-18 00:00:00	2018-11-06 00:00:00	erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi
344	2	499	2020-08-13 00:00:00	2019-03-19 00:00:00	curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt
345	1	583	2021-07-23 00:00:00	2018-09-29 00:00:00	non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus
346	1	512	2020-10-29 00:00:00	2018-12-07 00:00:00	ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue
347	1	937	2022-11-07 00:00:00	2019-02-09 00:00:00	neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo
348	1	76	2021-07-04 00:00:00	2019-02-26 00:00:00	sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue
349	1	102	2022-09-02 00:00:00	2018-10-14 00:00:00	erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales
350	2	900	2022-09-04 00:00:00	2019-02-04 00:00:00	natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien
351	2	243	2020-08-19 00:00:00	2019-02-17 00:00:00	ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula
352	1	625	2022-04-03 00:00:00	2019-01-10 00:00:00	donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo
353	1	690	2022-11-27 00:00:00	2018-10-16 00:00:00	dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo
354	1	500	2022-03-14 00:00:00	2018-11-28 00:00:00	sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus
355	1	913	2021-10-05 00:00:00	2019-04-02 00:00:00	imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum
356	1	289	2022-05-11 00:00:00	2018-10-05 00:00:00	nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate
357	1	145	2021-03-26 00:00:00	2018-11-12 00:00:00	lectus aliquam sit amet diam in magna bibendum imperdiet nullam
358	2	337	2022-11-12 00:00:00	2018-09-05 00:00:00	mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur
359	1	681	2022-06-10 00:00:00	2018-12-28 00:00:00	nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor
360	1	192	2020-10-01 00:00:00	2018-12-17 00:00:00	pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in
361	1	440	2021-11-12 00:00:00	2018-11-11 00:00:00	quisque porta volutpat erat quisque erat eros viverra eget congue eget semper
362	2	716	2021-03-18 00:00:00	2019-02-04 00:00:00	ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis
363	1	574	2021-01-12 00:00:00	2019-04-30 00:00:00	hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius
364	1	422	2022-10-12 00:00:00	2018-10-14 00:00:00	quis lectus suspendisse potenti in eleifend quam a odio in hac
365	2	180	2021-06-08 00:00:00	2019-01-05 00:00:00	habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla
366	2	26	2021-02-23 00:00:00	2019-01-01 00:00:00	lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi
367	2	696	2020-10-11 00:00:00	2019-04-04 00:00:00	purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu pede
368	2	768	2021-06-17 00:00:00	2018-10-10 00:00:00	sed augue aliquam erat volutpat in congue etiam justo etiam
369	2	922	2021-11-26 00:00:00	2018-10-09 00:00:00	luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis
370	2	249	2021-03-10 00:00:00	2019-01-09 00:00:00	platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie
371	1	452	2022-11-03 00:00:00	2019-01-11 00:00:00	sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit
372	2	467	2021-08-13 00:00:00	2019-04-01 00:00:00	bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere
373	1	10	2022-03-18 00:00:00	2019-03-25 00:00:00	sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla
374	1	599	2021-10-16 00:00:00	2018-10-29 00:00:00	amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis
375	2	434	2022-11-06 00:00:00	2019-02-24 00:00:00	dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia
376	1	593	2021-10-05 00:00:00	2019-03-17 00:00:00	pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit
377	2	137	2021-06-09 00:00:00	2018-12-11 00:00:00	in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est
378	2	376	2020-10-07 00:00:00	2018-12-07 00:00:00	eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis
379	1	417	2020-11-14 00:00:00	2019-01-28 00:00:00	elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in
380	2	637	2021-02-12 00:00:00	2018-10-31 00:00:00	volutpat in congue etiam justo etiam pretium iaculis justo in hac
381	1	495	2021-06-02 00:00:00	2019-02-16 00:00:00	sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at
382	2	40	2020-07-06 00:00:00	2019-04-10 00:00:00	curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere
383	1	867	2020-06-07 00:00:00	2019-02-02 00:00:00	sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus
384	2	216	2022-06-25 00:00:00	2018-12-17 00:00:00	tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla
385	2	911	2022-04-10 00:00:00	2018-11-12 00:00:00	imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit
386	1	836	2020-10-21 00:00:00	2019-01-03 00:00:00	ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate
387	1	616	2022-05-27 00:00:00	2018-11-03 00:00:00	mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus
388	2	620	2022-05-12 00:00:00	2018-11-06 00:00:00	elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis
389	2	41	2021-11-28 00:00:00	2019-01-18 00:00:00	porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet
390	1	985	2020-11-18 00:00:00	2019-01-31 00:00:00	velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla
391	1	368	2020-06-10 00:00:00	2018-12-02 00:00:00	semper rutrum nulla nunc purus phasellus in felis donec semper sapien a
392	2	649	2022-08-10 00:00:00	2019-01-19 00:00:00	justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet
393	1	1000	2021-01-17 00:00:00	2019-04-01 00:00:00	id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at
394	2	770	2022-10-03 00:00:00	2019-03-17 00:00:00	erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer
395	2	912	2022-03-31 00:00:00	2018-10-22 00:00:00	erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis
396	2	444	2020-12-10 00:00:00	2019-04-26 00:00:00	amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi
397	1	357	2021-01-10 00:00:00	2019-04-07 00:00:00	cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes
398	1	24	2020-11-23 00:00:00	2018-12-10 00:00:00	congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in
399	1	15	2022-02-07 00:00:00	2018-11-10 00:00:00	hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis
400	2	221	2020-06-28 00:00:00	2018-09-16 00:00:00	ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia
401	2	890	2020-08-20 00:00:00	2019-04-05 00:00:00	orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat
402	1	524	2021-10-07 00:00:00	2018-09-13 00:00:00	vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet
403	1	482	2022-02-12 00:00:00	2018-10-21 00:00:00	id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet
404	2	954	2022-09-10 00:00:00	2019-02-26 00:00:00	nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac
405	2	465	2022-02-27 00:00:00	2019-01-26 00:00:00	non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque
406	1	55	2021-11-30 00:00:00	2018-09-17 00:00:00	non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis
407	2	322	2022-05-13 00:00:00	2019-03-05 00:00:00	praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis
408	1	420	2021-04-07 00:00:00	2019-04-30 00:00:00	aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum
409	2	926	2020-07-12 00:00:00	2018-10-11 00:00:00	interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at
410	2	424	2022-10-19 00:00:00	2018-11-04 00:00:00	bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis
411	1	197	2020-07-12 00:00:00	2019-03-08 00:00:00	scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed
412	2	297	2022-09-23 00:00:00	2019-02-26 00:00:00	tellus nisi eu orci mauris lacinia sapien quis libero nullam sit
413	2	587	2022-04-09 00:00:00	2019-01-20 00:00:00	aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend
414	2	210	2020-10-24 00:00:00	2018-12-09 00:00:00	varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis
415	2	134	2020-10-31 00:00:00	2018-09-19 00:00:00	nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem
416	1	126	2020-09-19 00:00:00	2018-11-04 00:00:00	proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem
417	2	690	2021-05-16 00:00:00	2019-03-27 00:00:00	orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum
418	1	932	2020-10-21 00:00:00	2019-01-28 00:00:00	vestibulum ac est lacinia nisi venenatis tristique fusce congue diam
419	1	849	2020-05-29 00:00:00	2019-03-19 00:00:00	integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id
420	2	692	2021-01-25 00:00:00	2018-10-16 00:00:00	lectus pellentesque at nulla suspendisse potenti cras in purus eu
421	2	622	2021-07-03 00:00:00	2019-04-10 00:00:00	praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget
422	1	178	2022-07-02 00:00:00	2019-02-02 00:00:00	semper est quam pharetra magna ac consequat metus sapien ut nunc
423	1	285	2021-10-09 00:00:00	2018-09-27 00:00:00	primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra
424	2	569	2021-06-27 00:00:00	2019-03-31 00:00:00	lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in
425	1	803	2020-12-22 00:00:00	2018-12-28 00:00:00	eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo
426	2	594	2021-06-09 00:00:00	2018-11-12 00:00:00	interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est
427	1	579	2022-01-29 00:00:00	2018-09-14 00:00:00	mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus
428	2	90	2021-09-07 00:00:00	2019-03-12 00:00:00	ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit
429	1	12	2021-10-28 00:00:00	2018-11-23 00:00:00	quam sapien varius ut blandit non interdum in ante vestibulum ante
430	2	881	2020-08-23 00:00:00	2019-03-13 00:00:00	at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc
431	2	555	2022-06-05 00:00:00	2018-11-21 00:00:00	arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci
432	2	388	2022-07-05 00:00:00	2019-02-19 00:00:00	metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus
433	1	531	2022-06-03 00:00:00	2019-03-01 00:00:00	accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum
434	1	381	2021-10-16 00:00:00	2019-01-15 00:00:00	curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi
435	1	768	2022-04-07 00:00:00	2018-10-24 00:00:00	cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam
436	2	68	2020-05-20 00:00:00	2019-03-12 00:00:00	eu magna vulputate luctus cum sociis natoque penatibus et magnis
437	1	167	2021-11-11 00:00:00	2019-01-05 00:00:00	eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus
438	1	115	2022-06-16 00:00:00	2019-02-22 00:00:00	pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat
439	2	994	2021-11-04 00:00:00	2018-12-09 00:00:00	vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia
440	2	817	2020-11-04 00:00:00	2019-02-16 00:00:00	rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede
441	2	468	2021-05-19 00:00:00	2019-01-25 00:00:00	ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et
442	2	502	2022-11-14 00:00:00	2019-02-25 00:00:00	aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque
443	2	613	2022-04-13 00:00:00	2018-10-11 00:00:00	venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem
444	1	217	2021-02-13 00:00:00	2018-09-03 00:00:00	tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus
445	1	540	2021-05-06 00:00:00	2018-12-02 00:00:00	amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo
446	1	366	2022-02-25 00:00:00	2019-03-27 00:00:00	pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas
447	1	828	2020-07-04 00:00:00	2019-03-26 00:00:00	bibendum felis sed interdum venenatis turpis enim blandit mi in
448	1	276	2020-06-03 00:00:00	2018-09-06 00:00:00	in hac habitasse platea dictumst morbi vestibulum velit id pretium
449	2	229	2022-06-08 00:00:00	2018-09-11 00:00:00	amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel
450	2	177	2022-11-22 00:00:00	2019-04-05 00:00:00	venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam
451	1	228	2021-05-04 00:00:00	2018-11-27 00:00:00	volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla
452	1	817	2021-10-27 00:00:00	2019-04-10 00:00:00	lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa
453	1	62	2021-09-25 00:00:00	2019-01-23 00:00:00	diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue
454	1	936	2020-07-28 00:00:00	2019-02-21 00:00:00	vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a
455	1	265	2021-06-06 00:00:00	2019-03-04 00:00:00	amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis
456	1	576	2021-01-20 00:00:00	2019-03-12 00:00:00	ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean
457	2	877	2022-09-09 00:00:00	2019-02-20 00:00:00	lectus pellentesque at nulla suspendisse potenti cras in purus eu
458	2	428	2020-06-08 00:00:00	2018-09-10 00:00:00	in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus
459	1	840	2020-08-14 00:00:00	2019-01-28 00:00:00	mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus
460	1	697	2020-07-11 00:00:00	2019-03-03 00:00:00	molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam
461	1	400	2022-08-17 00:00:00	2018-09-07 00:00:00	integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi
462	1	464	2021-01-31 00:00:00	2019-02-19 00:00:00	quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna
463	2	393	2022-10-27 00:00:00	2018-11-29 00:00:00	facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at
464	2	595	2021-10-30 00:00:00	2019-03-09 00:00:00	ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit
465	2	827	2020-10-17 00:00:00	2019-01-13 00:00:00	quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien
466	2	629	2020-09-07 00:00:00	2019-04-23 00:00:00	integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo
467	2	65	2021-11-04 00:00:00	2018-11-22 00:00:00	mi integer ac neque duis bibendum morbi non quam nec
468	1	432	2022-03-22 00:00:00	2019-02-14 00:00:00	volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus
469	2	691	2021-07-23 00:00:00	2018-09-12 00:00:00	quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus
470	2	995	2022-01-12 00:00:00	2019-03-09 00:00:00	quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec
471	2	843	2022-02-16 00:00:00	2019-02-05 00:00:00	nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat
472	2	658	2022-08-03 00:00:00	2019-02-03 00:00:00	augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus
473	1	599	2022-03-17 00:00:00	2018-11-15 00:00:00	mi in porttitor pede justo eu massa donec dapibus duis at velit
474	2	589	2021-01-20 00:00:00	2019-04-25 00:00:00	elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum
475	1	288	2022-03-29 00:00:00	2018-12-26 00:00:00	maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo
620	1	260	2022-09-06 00:00:00	2019-01-28 00:00:00	est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum
476	1	763	2021-12-28 00:00:00	2019-03-12 00:00:00	augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat
477	2	745	2020-08-27 00:00:00	2018-11-12 00:00:00	rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi
478	2	510	2022-06-06 00:00:00	2019-01-23 00:00:00	vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum
479	1	774	2022-07-22 00:00:00	2019-03-23 00:00:00	ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec
480	2	764	2022-01-01 00:00:00	2018-09-21 00:00:00	mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis
481	1	946	2022-03-16 00:00:00	2019-03-06 00:00:00	a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas
482	1	633	2020-07-28 00:00:00	2018-09-04 00:00:00	sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus
483	2	768	2022-01-26 00:00:00	2018-11-30 00:00:00	ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit
484	1	115	2021-06-19 00:00:00	2018-09-14 00:00:00	auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi
485	1	940	2022-05-17 00:00:00	2019-02-09 00:00:00	parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum
486	1	370	2022-01-27 00:00:00	2019-01-05 00:00:00	habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt
487	2	337	2021-10-27 00:00:00	2018-12-18 00:00:00	vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam
488	1	324	2020-09-20 00:00:00	2019-05-01 00:00:00	tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat
489	1	228	2022-03-28 00:00:00	2018-10-27 00:00:00	et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at
490	1	394	2021-10-12 00:00:00	2018-12-29 00:00:00	hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem
491	2	500	2022-01-29 00:00:00	2018-09-23 00:00:00	eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna
492	1	765	2021-12-27 00:00:00	2019-01-29 00:00:00	eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut
493	1	70	2021-12-12 00:00:00	2018-12-20 00:00:00	morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum
494	1	663	2022-04-14 00:00:00	2019-02-28 00:00:00	nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet
495	1	532	2022-09-03 00:00:00	2018-12-25 00:00:00	molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque
496	2	120	2021-07-14 00:00:00	2019-04-07 00:00:00	amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus
497	1	792	2021-09-29 00:00:00	2019-05-02 00:00:00	molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in
498	2	387	2022-09-06 00:00:00	2019-02-20 00:00:00	duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium
499	2	469	2021-12-05 00:00:00	2018-11-18 00:00:00	rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet
500	2	105	2022-05-31 00:00:00	2019-04-27 00:00:00	amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in
501	2	697	2020-09-28 00:00:00	2019-01-22 00:00:00	magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci
502	1	288	2020-12-09 00:00:00	2019-03-24 00:00:00	cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam
503	2	640	2022-03-21 00:00:00	2019-02-24 00:00:00	at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi
504	2	634	2022-05-02 00:00:00	2019-01-23 00:00:00	malesuada in imperdiet et commodo vulputate justo in blandit ultrices
505	2	567	2021-11-05 00:00:00	2018-10-24 00:00:00	congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna
506	1	568	2021-06-27 00:00:00	2019-02-14 00:00:00	non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit
507	2	860	2021-05-20 00:00:00	2019-01-02 00:00:00	libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla
508	2	716	2020-07-08 00:00:00	2018-12-28 00:00:00	nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec
509	1	411	2022-10-02 00:00:00	2018-10-05 00:00:00	libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in
510	1	119	2021-07-10 00:00:00	2019-03-04 00:00:00	nibh in lectus pellentesque at nulla suspendisse potenti cras in
511	1	781	2020-09-07 00:00:00	2019-04-07 00:00:00	phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit
512	1	449	2021-04-13 00:00:00	2018-10-24 00:00:00	erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit
513	1	495	2022-08-23 00:00:00	2018-10-05 00:00:00	mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit
514	1	877	2022-02-02 00:00:00	2019-05-01 00:00:00	nunc purus phasellus in felis donec semper sapien a libero nam
515	2	593	2022-07-12 00:00:00	2019-03-29 00:00:00	nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis
516	1	811	2021-08-28 00:00:00	2018-11-17 00:00:00	donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit
517	2	492	2021-12-26 00:00:00	2018-09-23 00:00:00	sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis
518	1	431	2022-02-12 00:00:00	2018-10-30 00:00:00	turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin
519	1	676	2021-11-16 00:00:00	2019-05-02 00:00:00	neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere
520	1	644	2022-04-20 00:00:00	2018-10-26 00:00:00	platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate
521	2	556	2020-09-30 00:00:00	2018-12-06 00:00:00	morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet
522	1	999	2021-01-29 00:00:00	2018-11-09 00:00:00	ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet
621	1	831	2021-02-22 00:00:00	2018-11-11 00:00:00	pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel
523	2	431	2022-09-12 00:00:00	2019-04-16 00:00:00	etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris
524	2	53	2020-06-24 00:00:00	2018-10-15 00:00:00	suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce
525	2	918	2021-06-13 00:00:00	2018-12-12 00:00:00	enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit
526	2	17	2020-10-16 00:00:00	2019-01-07 00:00:00	rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent
527	2	830	2020-07-24 00:00:00	2018-09-17 00:00:00	odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit
528	1	890	2022-07-27 00:00:00	2018-11-05 00:00:00	eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan
529	1	298	2022-11-02 00:00:00	2018-09-23 00:00:00	aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan
530	1	741	2021-07-19 00:00:00	2018-11-20 00:00:00	gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin
531	2	324	2022-10-16 00:00:00	2019-04-20 00:00:00	cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat
532	2	959	2022-07-20 00:00:00	2019-04-21 00:00:00	gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin
533	1	442	2022-11-29 00:00:00	2018-11-14 00:00:00	nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor
534	1	876	2021-03-30 00:00:00	2019-04-28 00:00:00	augue luctus tincidunt nulla mollis molestie lorem quisque ut erat
535	1	354	2022-06-18 00:00:00	2019-03-20 00:00:00	vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo
536	2	19	2022-01-24 00:00:00	2018-12-03 00:00:00	lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien
537	1	750	2020-09-29 00:00:00	2019-02-28 00:00:00	in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor
538	2	264	2021-02-15 00:00:00	2018-09-15 00:00:00	integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem
539	2	600	2021-10-28 00:00:00	2018-09-06 00:00:00	orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a
540	1	996	2021-07-16 00:00:00	2018-11-05 00:00:00	in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh
541	1	363	2021-04-09 00:00:00	2018-12-19 00:00:00	duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus
542	2	291	2021-08-01 00:00:00	2019-04-15 00:00:00	elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at
543	1	978	2021-02-08 00:00:00	2019-04-08 00:00:00	et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti
544	1	634	2022-04-09 00:00:00	2018-09-27 00:00:00	in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus
545	2	663	2022-07-04 00:00:00	2019-02-12 00:00:00	tellus in sagittis dui vel nisl duis ac nibh fusce lacus
546	1	590	2020-09-27 00:00:00	2018-11-04 00:00:00	eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu
547	2	255	2020-12-13 00:00:00	2019-02-09 00:00:00	viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus
548	1	677	2021-01-27 00:00:00	2019-04-24 00:00:00	curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas
549	2	301	2021-04-22 00:00:00	2019-03-12 00:00:00	nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum
550	1	306	2021-10-04 00:00:00	2018-12-08 00:00:00	vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae
551	1	510	2021-05-07 00:00:00	2018-11-29 00:00:00	a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed
552	1	622	2021-03-27 00:00:00	2018-10-06 00:00:00	enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus
553	1	685	2021-05-29 00:00:00	2018-10-26 00:00:00	habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque
554	1	570	2021-10-21 00:00:00	2018-10-01 00:00:00	elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing
555	2	359	2021-09-14 00:00:00	2018-10-09 00:00:00	donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer
556	2	215	2020-09-06 00:00:00	2019-03-12 00:00:00	vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec
557	1	103	2021-03-06 00:00:00	2018-11-12 00:00:00	pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus
558	1	669	2022-07-28 00:00:00	2018-12-19 00:00:00	in eleifend quam a odio in hac habitasse platea dictumst maecenas
559	1	866	2022-08-25 00:00:00	2019-04-24 00:00:00	consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo
560	1	76	2021-03-30 00:00:00	2018-09-10 00:00:00	bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere
561	2	308	2021-12-07 00:00:00	2018-11-28 00:00:00	curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor
562	1	910	2021-02-07 00:00:00	2018-11-16 00:00:00	morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh
563	2	243	2022-09-09 00:00:00	2019-01-10 00:00:00	tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo
564	1	8	2020-08-18 00:00:00	2018-10-21 00:00:00	habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat
565	2	938	2021-10-17 00:00:00	2019-02-25 00:00:00	dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus
566	1	722	2022-11-21 00:00:00	2018-11-04 00:00:00	id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate
567	1	472	2021-08-23 00:00:00	2019-04-14 00:00:00	proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum
568	2	731	2020-08-21 00:00:00	2018-09-12 00:00:00	eros vestibulum ac est lacinia nisi venenatis tristique fusce congue
569	1	204	2021-08-16 00:00:00	2018-12-27 00:00:00	id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat
570	1	26	2020-07-23 00:00:00	2019-02-16 00:00:00	tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque
571	2	389	2021-03-17 00:00:00	2019-04-21 00:00:00	adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget
572	1	87	2020-11-17 00:00:00	2019-05-06 00:00:00	cursus vestibulum proin eu mi nulla ac enim in tempor
573	1	758	2020-09-08 00:00:00	2019-01-02 00:00:00	libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in
574	1	532	2021-09-24 00:00:00	2018-10-31 00:00:00	consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar
575	1	87	2021-05-11 00:00:00	2018-09-10 00:00:00	rhoncus dui vel sem sed sagittis nam congue risus semper
576	2	598	2021-02-25 00:00:00	2019-01-15 00:00:00	proin at turpis a pede posuere nonummy integer non velit donec diam
577	1	810	2020-07-12 00:00:00	2018-10-17 00:00:00	erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer
578	1	289	2021-10-25 00:00:00	2018-12-16 00:00:00	sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis
579	2	611	2020-10-05 00:00:00	2019-02-18 00:00:00	at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas
580	2	602	2022-05-18 00:00:00	2019-02-16 00:00:00	risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in
581	1	353	2022-04-01 00:00:00	2019-03-30 00:00:00	metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci
582	2	344	2020-05-26 00:00:00	2018-10-16 00:00:00	convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam
583	1	711	2022-03-09 00:00:00	2018-10-06 00:00:00	amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper
584	2	82	2021-04-03 00:00:00	2018-10-07 00:00:00	ut volutpat sapien arcu sed augue aliquam erat volutpat in congue
585	2	709	2021-09-20 00:00:00	2019-03-06 00:00:00	pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus
586	2	715	2021-11-02 00:00:00	2018-11-26 00:00:00	pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in
587	1	386	2022-08-25 00:00:00	2019-03-16 00:00:00	eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in
588	2	977	2022-08-08 00:00:00	2018-12-07 00:00:00	ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla
589	2	534	2021-03-28 00:00:00	2018-11-23 00:00:00	nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium
590	2	668	2020-06-27 00:00:00	2018-10-20 00:00:00	nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue
591	1	593	2022-03-01 00:00:00	2018-10-23 00:00:00	luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend
592	1	763	2021-05-27 00:00:00	2019-04-06 00:00:00	vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci
593	2	736	2020-07-08 00:00:00	2019-04-07 00:00:00	ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et
594	1	99	2020-07-27 00:00:00	2019-02-19 00:00:00	mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus
595	2	76	2022-08-13 00:00:00	2018-10-05 00:00:00	id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce
596	2	467	2022-09-02 00:00:00	2019-05-02 00:00:00	parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa
597	1	914	2022-04-19 00:00:00	2018-10-18 00:00:00	rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus
598	2	112	2020-12-17 00:00:00	2019-04-06 00:00:00	nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam
599	1	467	2020-09-17 00:00:00	2018-09-08 00:00:00	quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse
600	1	766	2022-11-28 00:00:00	2018-12-19 00:00:00	nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus
601	1	386	2020-05-19 00:00:00	2019-03-15 00:00:00	ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean
602	2	212	2022-03-21 00:00:00	2018-10-13 00:00:00	ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo
603	2	558	2022-03-29 00:00:00	2019-02-20 00:00:00	quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque
604	2	73	2021-06-29 00:00:00	2019-03-30 00:00:00	quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non
605	1	928	2021-10-03 00:00:00	2019-03-08 00:00:00	ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices
606	1	173	2022-10-24 00:00:00	2019-01-07 00:00:00	porttitor lorem id ligula suspendisse ornare consequat lectus in est risus
607	1	520	2021-10-15 00:00:00	2018-09-06 00:00:00	pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna
608	2	871	2022-11-06 00:00:00	2018-09-19 00:00:00	parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum
609	1	342	2022-11-23 00:00:00	2018-11-17 00:00:00	ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat
610	1	517	2020-09-21 00:00:00	2018-09-17 00:00:00	blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non
611	2	571	2021-01-03 00:00:00	2019-03-27 00:00:00	rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat
612	1	475	2022-03-18 00:00:00	2019-04-19 00:00:00	tortor sollicitudin mi sit amet lobortis sapien sapien non mi
613	2	577	2021-11-28 00:00:00	2018-10-03 00:00:00	elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla
614	2	330	2022-07-06 00:00:00	2018-12-08 00:00:00	fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis
615	2	394	2022-11-25 00:00:00	2019-05-05 00:00:00	felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu
616	1	982	2021-05-27 00:00:00	2018-10-16 00:00:00	sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum
617	1	10	2021-09-18 00:00:00	2019-04-11 00:00:00	felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc
618	1	976	2021-05-27 00:00:00	2019-04-21 00:00:00	nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique
619	2	6	2022-10-17 00:00:00	2018-10-09 00:00:00	in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer
622	1	640	2021-05-24 00:00:00	2019-04-22 00:00:00	venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue
623	1	980	2020-06-23 00:00:00	2018-11-24 00:00:00	platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat
624	1	324	2021-09-19 00:00:00	2019-02-13 00:00:00	vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper
625	2	925	2021-04-30 00:00:00	2018-12-08 00:00:00	risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula
626	1	121	2022-03-31 00:00:00	2018-09-18 00:00:00	nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut
627	1	316	2020-06-02 00:00:00	2019-03-07 00:00:00	et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec
628	1	427	2021-08-18 00:00:00	2018-10-14 00:00:00	ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam
629	1	506	2022-11-12 00:00:00	2019-01-11 00:00:00	eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed
630	1	685	2022-07-28 00:00:00	2019-04-22 00:00:00	maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh
631	1	816	2022-10-13 00:00:00	2019-04-01 00:00:00	felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus
632	2	808	2020-07-01 00:00:00	2018-09-28 00:00:00	vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum
633	2	579	2020-06-17 00:00:00	2018-09-24 00:00:00	volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum
634	1	135	2022-08-15 00:00:00	2018-12-13 00:00:00	libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis
635	2	625	2021-05-13 00:00:00	2019-04-04 00:00:00	id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus
636	1	445	2022-06-19 00:00:00	2018-12-16 00:00:00	ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut
637	1	147	2022-04-07 00:00:00	2018-11-04 00:00:00	pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit
638	1	513	2022-04-07 00:00:00	2018-12-17 00:00:00	orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed
639	1	447	2021-02-12 00:00:00	2019-04-21 00:00:00	proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum
640	1	12	2020-12-15 00:00:00	2018-11-03 00:00:00	diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat
641	1	284	2021-01-14 00:00:00	2018-09-03 00:00:00	interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in
642	2	285	2022-04-03 00:00:00	2018-09-30 00:00:00	fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget
643	1	266	2021-09-26 00:00:00	2019-01-23 00:00:00	fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh
644	1	539	2022-05-14 00:00:00	2018-10-21 00:00:00	cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus
645	1	287	2021-11-15 00:00:00	2018-11-20 00:00:00	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae
646	1	588	2020-07-14 00:00:00	2018-09-25 00:00:00	ac nulla sed vel enim sit amet nunc viverra dapibus nulla
647	1	809	2021-03-12 00:00:00	2019-04-30 00:00:00	lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus
648	1	467	2021-10-08 00:00:00	2018-11-04 00:00:00	ultrices aliquet maecenas leo odio condimentum id luctus nec molestie
649	1	854	2022-10-16 00:00:00	2018-12-30 00:00:00	nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis
650	1	590	2022-01-31 00:00:00	2019-02-06 00:00:00	tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae
651	2	576	2021-07-20 00:00:00	2019-05-01 00:00:00	scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin
652	1	229	2022-07-27 00:00:00	2019-04-28 00:00:00	dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia
653	2	772	2021-08-08 00:00:00	2018-09-16 00:00:00	massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur
654	1	352	2021-07-16 00:00:00	2019-02-08 00:00:00	nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla
655	1	454	2020-08-02 00:00:00	2019-04-15 00:00:00	nunc commodo placerat praesent blandit nam nulla integer pede justo
656	2	509	2022-07-29 00:00:00	2019-04-26 00:00:00	in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque
657	2	648	2022-03-28 00:00:00	2019-01-10 00:00:00	sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel
658	1	714	2021-01-30 00:00:00	2019-01-01 00:00:00	aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et
659	2	812	2021-05-04 00:00:00	2019-01-10 00:00:00	tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor
660	1	945	2022-10-01 00:00:00	2019-02-13 00:00:00	amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis
661	1	371	2021-02-27 00:00:00	2018-11-23 00:00:00	lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl
662	2	176	2020-09-23 00:00:00	2018-11-23 00:00:00	nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa
663	2	524	2022-08-15 00:00:00	2019-02-08 00:00:00	lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum
664	1	117	2021-08-02 00:00:00	2019-03-13 00:00:00	nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien
665	2	918	2021-03-24 00:00:00	2018-11-21 00:00:00	nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo
666	1	61	2021-01-10 00:00:00	2019-05-07 00:00:00	nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget
667	1	897	2022-03-22 00:00:00	2019-01-11 00:00:00	quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent
668	1	187	2021-06-24 00:00:00	2019-03-13 00:00:00	mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy
669	2	850	2021-07-15 00:00:00	2019-04-12 00:00:00	malesuada in imperdiet et commodo vulputate justo in blandit ultrices
670	2	573	2020-08-25 00:00:00	2018-12-26 00:00:00	mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel
671	1	314	2021-07-03 00:00:00	2019-03-18 00:00:00	massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit
672	2	787	2020-10-10 00:00:00	2019-01-09 00:00:00	duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor
673	2	154	2022-04-11 00:00:00	2019-01-15 00:00:00	donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet
674	2	932	2022-01-23 00:00:00	2018-10-22 00:00:00	ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit
675	1	845	2020-12-28 00:00:00	2019-01-05 00:00:00	maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum
676	2	432	2021-10-09 00:00:00	2019-04-02 00:00:00	commodo placerat praesent blandit nam nulla integer pede justo lacinia eget
677	1	244	2020-07-21 00:00:00	2018-12-08 00:00:00	libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu
678	1	302	2022-03-07 00:00:00	2019-01-19 00:00:00	sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper
679	2	326	2020-07-18 00:00:00	2019-01-03 00:00:00	aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra
680	2	843	2021-08-11 00:00:00	2019-02-06 00:00:00	consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu
681	1	762	2022-03-08 00:00:00	2019-03-18 00:00:00	montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum
682	1	741	2020-10-03 00:00:00	2019-04-27 00:00:00	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est
683	1	335	2021-09-27 00:00:00	2019-05-06 00:00:00	nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis
684	2	681	2020-11-10 00:00:00	2019-03-24 00:00:00	vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at
685	2	464	2021-01-28 00:00:00	2018-09-19 00:00:00	turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at
686	2	719	2021-12-19 00:00:00	2018-11-12 00:00:00	odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat
687	1	609	2022-02-03 00:00:00	2018-09-26 00:00:00	leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis
688	2	441	2021-07-26 00:00:00	2019-04-17 00:00:00	congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu
689	2	752	2021-11-28 00:00:00	2018-12-10 00:00:00	duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non
690	2	691	2022-07-07 00:00:00	2019-01-18 00:00:00	bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt
691	2	602	2021-09-22 00:00:00	2018-11-24 00:00:00	nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque
692	1	918	2021-12-12 00:00:00	2019-01-11 00:00:00	in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat
693	2	377	2021-11-23 00:00:00	2018-11-06 00:00:00	ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam
694	1	65	2022-11-01 00:00:00	2018-09-06 00:00:00	sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at
695	1	370	2021-07-05 00:00:00	2019-04-02 00:00:00	vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis
696	2	447	2020-07-12 00:00:00	2019-01-08 00:00:00	sapien urna pretium nisl ut volutpat sapien arcu sed augue
697	2	557	2021-10-10 00:00:00	2019-04-04 00:00:00	consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis
698	2	902	2021-09-11 00:00:00	2018-12-07 00:00:00	turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque
699	2	881	2021-11-29 00:00:00	2019-01-27 00:00:00	adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy
700	2	885	2021-03-24 00:00:00	2019-03-04 00:00:00	massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis
701	2	312	2021-06-17 00:00:00	2019-04-22 00:00:00	vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id
702	2	466	2021-03-03 00:00:00	2018-11-20 00:00:00	praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat
703	2	277	2021-07-21 00:00:00	2019-04-12 00:00:00	sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque
704	2	776	2020-10-03 00:00:00	2019-03-24 00:00:00	morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo
705	2	521	2020-08-17 00:00:00	2018-12-07 00:00:00	in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id
706	2	54	2020-05-20 00:00:00	2018-12-17 00:00:00	sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius
707	1	56	2022-02-08 00:00:00	2019-04-02 00:00:00	diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis
708	2	362	2022-04-04 00:00:00	2018-12-06 00:00:00	integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare
709	2	964	2021-04-29 00:00:00	2018-10-12 00:00:00	libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum
710	1	195	2021-12-01 00:00:00	2019-02-17 00:00:00	nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta
711	2	944	2020-07-18 00:00:00	2019-01-02 00:00:00	pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate
712	1	467	2021-02-08 00:00:00	2018-09-20 00:00:00	sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus
713	2	657	2020-12-14 00:00:00	2018-12-29 00:00:00	maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id
714	1	567	2022-02-19 00:00:00	2018-10-28 00:00:00	lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis
715	1	797	2021-05-27 00:00:00	2019-02-24 00:00:00	venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis
716	2	719	2020-07-21 00:00:00	2018-12-22 00:00:00	praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia
717	1	696	2021-10-11 00:00:00	2019-05-03 00:00:00	quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus
718	2	401	2022-11-03 00:00:00	2018-10-15 00:00:00	odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem
719	2	724	2021-10-31 00:00:00	2019-01-30 00:00:00	ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a
720	2	190	2022-04-16 00:00:00	2019-04-11 00:00:00	vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero
721	1	54	2022-01-20 00:00:00	2019-04-03 00:00:00	ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam
722	2	296	2022-11-20 00:00:00	2019-03-10 00:00:00	vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat
723	2	130	2022-02-01 00:00:00	2019-01-05 00:00:00	lacus at turpis donec posuere metus vitae ipsum aliquam non
724	1	192	2021-05-19 00:00:00	2018-09-22 00:00:00	sollicitudin mi sit amet lobortis sapien sapien non mi integer
725	1	895	2022-08-19 00:00:00	2019-03-24 00:00:00	ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at
726	1	747	2020-07-27 00:00:00	2019-03-27 00:00:00	consequat varius integer ac leo pellentesque ultrices mattis odio donec
727	1	477	2021-10-02 00:00:00	2018-10-19 00:00:00	pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus
728	1	194	2021-01-25 00:00:00	2018-12-28 00:00:00	platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante
729	2	495	2020-11-08 00:00:00	2018-10-20 00:00:00	pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique
730	1	5	2021-04-06 00:00:00	2018-11-22 00:00:00	dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula
731	2	279	2022-05-10 00:00:00	2018-12-28 00:00:00	pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut
732	1	277	2021-11-28 00:00:00	2019-03-03 00:00:00	sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus
733	1	250	2022-10-07 00:00:00	2018-11-24 00:00:00	iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit
734	1	683	2021-03-31 00:00:00	2018-12-05 00:00:00	mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem
735	2	68	2022-06-06 00:00:00	2018-10-18 00:00:00	vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam
736	1	690	2021-09-03 00:00:00	2019-02-26 00:00:00	sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus
737	2	899	2021-10-08 00:00:00	2019-04-22 00:00:00	curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros
738	2	279	2021-01-23 00:00:00	2019-02-16 00:00:00	suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in
739	1	269	2022-09-03 00:00:00	2018-11-03 00:00:00	donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede
740	1	477	2020-11-07 00:00:00	2018-12-11 00:00:00	metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus
741	1	837	2022-01-05 00:00:00	2019-03-11 00:00:00	a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla
742	1	856	2021-06-24 00:00:00	2019-04-25 00:00:00	pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla
743	2	937	2021-03-07 00:00:00	2018-11-10 00:00:00	eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et
744	2	226	2020-07-14 00:00:00	2019-01-22 00:00:00	dapibus duis at velit eu est congue elementum in hac habitasse platea
745	1	397	2021-06-01 00:00:00	2019-05-01 00:00:00	elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy
746	1	262	2020-11-23 00:00:00	2018-09-25 00:00:00	nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat
747	1	926	2021-10-16 00:00:00	2018-09-13 00:00:00	in est risus auctor sed tristique in tempus sit amet sem fusce
748	2	678	2022-04-28 00:00:00	2018-11-23 00:00:00	curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus
749	2	344	2020-10-30 00:00:00	2018-10-11 00:00:00	neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris
750	2	472	2022-06-23 00:00:00	2019-03-30 00:00:00	commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris
751	1	748	2020-05-19 00:00:00	2019-01-04 00:00:00	posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum
752	1	760	2022-03-15 00:00:00	2018-12-08 00:00:00	volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse
753	1	547	2022-08-06 00:00:00	2019-03-07 00:00:00	ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices
754	1	568	2020-09-12 00:00:00	2018-12-25 00:00:00	eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit
755	2	684	2021-03-14 00:00:00	2019-01-22 00:00:00	dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat
756	2	937	2021-09-02 00:00:00	2019-02-19 00:00:00	pede malesuada in imperdiet et commodo vulputate justo in blandit
757	1	420	2020-09-30 00:00:00	2018-11-25 00:00:00	mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis
758	2	577	2022-07-08 00:00:00	2018-09-26 00:00:00	in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non
759	1	874	2021-11-14 00:00:00	2018-10-19 00:00:00	ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat
760	2	807	2020-07-17 00:00:00	2018-12-29 00:00:00	purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat
761	2	8	2020-06-05 00:00:00	2019-03-18 00:00:00	sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet
762	2	480	2022-02-09 00:00:00	2019-04-20 00:00:00	ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit
763	2	159	2020-10-09 00:00:00	2018-11-25 00:00:00	suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris
764	1	142	2022-11-28 00:00:00	2018-11-16 00:00:00	tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat
765	2	858	2022-08-24 00:00:00	2019-03-21 00:00:00	dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula
766	2	25	2020-11-24 00:00:00	2019-03-27 00:00:00	feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa
767	2	522	2021-04-10 00:00:00	2019-01-07 00:00:00	mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec
768	1	686	2021-08-17 00:00:00	2019-02-21 00:00:00	suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla
769	2	276	2022-07-22 00:00:00	2018-09-05 00:00:00	mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus
770	2	853	2021-03-01 00:00:00	2019-04-04 00:00:00	purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu
771	1	367	2021-05-09 00:00:00	2018-09-28 00:00:00	tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh
772	1	546	2022-05-29 00:00:00	2018-11-08 00:00:00	cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere
773	2	749	2020-05-24 00:00:00	2018-11-19 00:00:00	in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices
774	2	361	2020-09-28 00:00:00	2018-09-23 00:00:00	sed sagittis nam congue risus semper porta volutpat quam pede
775	2	660	2020-10-19 00:00:00	2019-04-06 00:00:00	in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque
776	1	172	2021-02-25 00:00:00	2019-04-13 00:00:00	egestas metus aenean fermentum donec ut mauris eget massa tempor
777	1	837	2020-06-24 00:00:00	2018-10-30 00:00:00	odio in hac habitasse platea dictumst maecenas ut massa quis augue
778	1	240	2022-07-15 00:00:00	2018-10-13 00:00:00	volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in
779	2	468	2022-01-04 00:00:00	2018-09-12 00:00:00	nibh ligula nec sem duis aliquam convallis nunc proin at
780	1	834	2022-07-13 00:00:00	2019-03-23 00:00:00	in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis
781	2	845	2021-11-09 00:00:00	2019-02-08 00:00:00	viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit
782	1	287	2021-02-12 00:00:00	2018-12-22 00:00:00	interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio
783	1	360	2022-07-01 00:00:00	2018-12-12 00:00:00	nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus
784	2	831	2022-09-04 00:00:00	2019-02-23 00:00:00	cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum
785	2	709	2020-11-19 00:00:00	2018-10-18 00:00:00	aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero
786	2	990	2022-05-12 00:00:00	2018-12-14 00:00:00	curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu
787	1	660	2021-10-27 00:00:00	2018-12-10 00:00:00	est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim
788	2	101	2021-04-13 00:00:00	2019-04-09 00:00:00	at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam
789	1	966	2021-06-21 00:00:00	2019-04-17 00:00:00	non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at
790	1	631	2022-04-07 00:00:00	2019-01-23 00:00:00	lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat
791	1	146	2021-04-23 00:00:00	2018-11-12 00:00:00	tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet
792	2	5	2021-04-26 00:00:00	2018-12-23 00:00:00	justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis
793	2	187	2021-11-02 00:00:00	2019-02-11 00:00:00	vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed
794	1	449	2021-10-03 00:00:00	2018-11-17 00:00:00	justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin
795	2	502	2021-02-04 00:00:00	2018-09-03 00:00:00	in imperdiet et commodo vulputate justo in blandit ultrices enim
796	1	40	2022-10-26 00:00:00	2018-12-05 00:00:00	quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis
797	1	47	2021-04-15 00:00:00	2019-01-12 00:00:00	condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales
798	2	743	2020-12-04 00:00:00	2019-04-06 00:00:00	pede ullamcorper augue a suscipit nulla elit ac nulla sed vel
799	2	322	2021-06-17 00:00:00	2019-04-27 00:00:00	pede justo eu massa donec dapibus duis at velit eu est
800	1	350	2022-07-05 00:00:00	2019-04-29 00:00:00	amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper
801	1	813	2020-06-09 00:00:00	2018-11-25 00:00:00	augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac
802	2	27	2022-03-18 00:00:00	2019-03-20 00:00:00	cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna
803	2	488	2020-12-31 00:00:00	2018-11-13 00:00:00	nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus
804	1	906	2021-08-16 00:00:00	2018-12-21 00:00:00	ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel
805	1	103	2020-08-18 00:00:00	2018-12-27 00:00:00	justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem
806	2	430	2021-12-28 00:00:00	2019-02-16 00:00:00	odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus
807	2	260	2021-03-16 00:00:00	2019-04-12 00:00:00	elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus
808	2	411	2022-05-04 00:00:00	2018-09-22 00:00:00	aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui
809	1	38	2021-12-18 00:00:00	2018-09-28 00:00:00	volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque
810	1	398	2021-03-13 00:00:00	2018-12-25 00:00:00	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra
811	2	601	2021-03-14 00:00:00	2019-02-21 00:00:00	nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam
812	2	715	2022-01-23 00:00:00	2018-10-19 00:00:00	consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum
813	2	482	2020-08-28 00:00:00	2019-01-08 00:00:00	tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra
814	1	213	2021-08-01 00:00:00	2018-10-15 00:00:00	donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque
815	2	569	2021-05-27 00:00:00	2018-09-23 00:00:00	cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam
816	1	631	2021-05-19 00:00:00	2019-02-23 00:00:00	quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor
817	1	237	2020-06-29 00:00:00	2018-12-09 00:00:00	et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit
818	1	494	2022-05-30 00:00:00	2018-11-13 00:00:00	at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst
819	2	963	2021-08-04 00:00:00	2018-09-15 00:00:00	in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero
820	1	137	2021-07-09 00:00:00	2018-09-17 00:00:00	orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo
821	1	934	2022-06-06 00:00:00	2018-12-11 00:00:00	nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec
822	1	850	2022-10-11 00:00:00	2019-03-24 00:00:00	donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum
823	2	643	2021-11-02 00:00:00	2019-03-25 00:00:00	eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula
824	2	649	2022-03-15 00:00:00	2019-01-06 00:00:00	id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem
825	2	773	2021-11-02 00:00:00	2019-03-19 00:00:00	lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat
826	2	21	2021-10-04 00:00:00	2018-10-14 00:00:00	ac diam cras pellentesque volutpat dui maecenas tristique est et
827	2	478	2022-04-10 00:00:00	2018-09-07 00:00:00	ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in
828	1	990	2022-06-12 00:00:00	2019-01-05 00:00:00	faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor
829	1	583	2022-02-05 00:00:00	2019-01-06 00:00:00	elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper
830	1	300	2021-06-10 00:00:00	2018-11-13 00:00:00	ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna
831	2	586	2021-01-30 00:00:00	2019-02-15 00:00:00	mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in
832	2	496	2021-04-09 00:00:00	2019-04-16 00:00:00	a ipsum integer a nibh in quis justo maecenas rhoncus
833	2	20	2022-08-18 00:00:00	2018-11-10 00:00:00	mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis
834	1	97	2021-08-06 00:00:00	2018-10-03 00:00:00	luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis
835	2	68	2022-11-30 00:00:00	2018-10-18 00:00:00	nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros
836	2	86	2022-03-28 00:00:00	2018-11-07 00:00:00	consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus
837	2	250	2020-12-12 00:00:00	2019-04-20 00:00:00	molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est
838	1	415	2021-04-13 00:00:00	2018-09-23 00:00:00	consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque
839	1	985	2022-11-28 00:00:00	2018-10-09 00:00:00	placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris
840	1	511	2021-03-11 00:00:00	2018-09-06 00:00:00	nisl nunc nisl duis bibendum felis sed interdum venenatis turpis
841	1	224	2022-08-28 00:00:00	2019-02-06 00:00:00	nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed
842	2	624	2020-08-31 00:00:00	2019-04-06 00:00:00	ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam
843	1	534	2020-06-04 00:00:00	2018-11-13 00:00:00	nec dui luctus rutrum nulla tellus in sagittis dui vel
844	2	279	2021-11-20 00:00:00	2018-12-20 00:00:00	in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam
845	1	980	2020-06-07 00:00:00	2018-10-26 00:00:00	ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam
846	2	302	2021-06-10 00:00:00	2018-12-18 00:00:00	felis eu sapien cursus vestibulum proin eu mi nulla ac enim in
847	2	232	2021-05-17 00:00:00	2018-11-17 00:00:00	vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque
848	2	196	2021-06-27 00:00:00	2019-01-08 00:00:00	pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante
849	1	528	2022-10-13 00:00:00	2018-09-04 00:00:00	in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum
850	2	282	2022-08-18 00:00:00	2018-12-23 00:00:00	ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci
851	1	911	2021-05-16 00:00:00	2018-09-23 00:00:00	elementum ligula vehicula consequat morbi a ipsum integer a nibh in
852	1	902	2021-12-06 00:00:00	2019-04-03 00:00:00	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia
853	1	19	2022-08-26 00:00:00	2019-03-02 00:00:00	ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida
854	2	874	2022-04-14 00:00:00	2018-09-22 00:00:00	donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam
855	2	587	2022-02-07 00:00:00	2018-12-30 00:00:00	id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras
856	1	682	2022-08-13 00:00:00	2018-10-12 00:00:00	at dolor quis odio consequat varius integer ac leo pellentesque ultrices
857	1	587	2021-05-22 00:00:00	2019-03-04 00:00:00	ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes
858	1	13	2021-06-21 00:00:00	2019-02-21 00:00:00	eu magna vulputate luctus cum sociis natoque penatibus et magnis
859	2	755	2021-11-22 00:00:00	2018-09-07 00:00:00	amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor
860	2	700	2022-11-26 00:00:00	2019-03-25 00:00:00	ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris
861	2	527	2021-02-05 00:00:00	2018-09-29 00:00:00	quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam
862	2	215	2021-01-29 00:00:00	2019-02-08 00:00:00	amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam
863	1	37	2020-10-09 00:00:00	2018-12-14 00:00:00	donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue
864	1	230	2020-09-19 00:00:00	2019-05-04 00:00:00	dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat
865	2	48	2022-04-19 00:00:00	2018-12-02 00:00:00	in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod
866	2	988	2022-05-22 00:00:00	2018-09-28 00:00:00	congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in
867	1	574	2020-08-12 00:00:00	2018-09-16 00:00:00	eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae
868	2	125	2021-08-05 00:00:00	2019-04-03 00:00:00	faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan
869	2	81	2020-06-06 00:00:00	2019-03-05 00:00:00	adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula
870	2	119	2022-08-13 00:00:00	2018-10-26 00:00:00	platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat
871	2	212	2022-09-30 00:00:00	2018-12-12 00:00:00	nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum
872	1	80	2022-07-15 00:00:00	2018-09-17 00:00:00	congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo
873	2	315	2020-08-28 00:00:00	2018-11-24 00:00:00	lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis
874	1	721	2021-05-10 00:00:00	2019-01-30 00:00:00	hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat
875	2	897	2020-11-16 00:00:00	2019-03-22 00:00:00	felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo
876	1	885	2022-07-23 00:00:00	2019-01-10 00:00:00	vel ipsum praesent blandit lacinia erat vestibulum sed magna at
877	1	973	2022-03-08 00:00:00	2018-10-11 00:00:00	turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis
878	1	552	2020-07-03 00:00:00	2019-03-10 00:00:00	magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes
879	1	286	2021-10-27 00:00:00	2018-09-06 00:00:00	at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque
880	2	366	2020-06-29 00:00:00	2019-03-06 00:00:00	sapien sapien non mi integer ac neque duis bibendum morbi
881	1	838	2020-06-13 00:00:00	2019-04-03 00:00:00	mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices
882	2	192	2020-06-26 00:00:00	2019-04-13 00:00:00	sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien
883	1	426	2020-07-18 00:00:00	2018-11-18 00:00:00	nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in
884	1	728	2022-11-04 00:00:00	2019-02-14 00:00:00	ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices
885	1	680	2021-01-10 00:00:00	2019-01-30 00:00:00	quam nec dui luctus rutrum nulla tellus in sagittis dui
886	1	873	2021-10-17 00:00:00	2018-10-15 00:00:00	nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus
887	2	115	2021-12-30 00:00:00	2019-03-20 00:00:00	leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio
888	1	954	2021-06-08 00:00:00	2018-09-21 00:00:00	nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium
889	2	824	2020-12-22 00:00:00	2018-09-30 00:00:00	id massa id nisl venenatis lacinia aenean sit amet justo morbi ut
890	1	822	2020-07-07 00:00:00	2018-12-01 00:00:00	aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna
891	2	478	2020-10-26 00:00:00	2019-05-05 00:00:00	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec
892	2	989	2022-04-19 00:00:00	2018-11-16 00:00:00	tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis
893	1	926	2021-12-31 00:00:00	2018-10-01 00:00:00	pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate
894	1	521	2020-07-16 00:00:00	2019-02-09 00:00:00	tristique in tempus sit amet sem fusce consequat nulla nisl nunc
895	2	663	2020-10-02 00:00:00	2019-03-25 00:00:00	porttitor lorem id ligula suspendisse ornare consequat lectus in est
896	2	783	2021-09-20 00:00:00	2018-11-07 00:00:00	vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum
897	2	630	2020-06-16 00:00:00	2019-03-24 00:00:00	id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer
898	2	636	2022-04-20 00:00:00	2019-03-09 00:00:00	eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare
899	2	934	2020-12-01 00:00:00	2018-11-24 00:00:00	ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec
900	2	764	2021-03-28 00:00:00	2018-11-02 00:00:00	ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula
901	1	658	2022-11-03 00:00:00	2018-10-04 00:00:00	in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer
902	2	291	2021-02-12 00:00:00	2019-02-09 00:00:00	nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper
903	2	913	2022-01-08 00:00:00	2018-09-19 00:00:00	interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus
904	2	73	2021-05-29 00:00:00	2019-04-02 00:00:00	sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum
905	1	307	2022-11-30 00:00:00	2018-12-25 00:00:00	in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor
906	2	455	2022-05-04 00:00:00	2019-01-17 00:00:00	lorem id ligula suspendisse ornare consequat lectus in est risus auctor
907	2	162	2022-06-12 00:00:00	2018-10-18 00:00:00	eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque
908	1	15	2020-07-29 00:00:00	2018-09-28 00:00:00	interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet
909	2	830	2021-09-07 00:00:00	2019-01-14 00:00:00	non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit
910	1	838	2022-09-18 00:00:00	2019-04-22 00:00:00	sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar
911	1	368	2022-04-27 00:00:00	2019-01-02 00:00:00	aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt
912	2	783	2021-09-24 00:00:00	2019-02-08 00:00:00	cras mi pede malesuada in imperdiet et commodo vulputate justo in
913	1	696	2022-09-21 00:00:00	2018-10-13 00:00:00	luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo
914	1	412	2022-07-25 00:00:00	2019-03-07 00:00:00	vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus
915	1	354	2022-02-09 00:00:00	2018-09-14 00:00:00	pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a
916	1	661	2022-08-19 00:00:00	2018-11-21 00:00:00	sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum
917	1	778	2021-07-10 00:00:00	2018-10-28 00:00:00	accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec
918	2	683	2022-02-05 00:00:00	2018-09-07 00:00:00	aliquet maecenas leo odio condimentum id luctus nec molestie sed justo
919	2	161	2020-10-03 00:00:00	2018-12-01 00:00:00	lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh
920	1	927	2021-07-20 00:00:00	2019-02-20 00:00:00	risus semper porta volutpat quam pede lobortis ligula sit amet
921	1	569	2020-05-16 00:00:00	2019-01-06 00:00:00	penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum
922	2	950	2022-09-26 00:00:00	2019-04-06 00:00:00	ultrices mattis odio donec vitae nisi nam ultrices libero non mattis
923	1	39	2022-05-01 00:00:00	2019-01-05 00:00:00	quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin
924	2	635	2022-09-04 00:00:00	2018-12-13 00:00:00	risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci
925	2	757	2021-05-24 00:00:00	2019-04-17 00:00:00	massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac
926	1	190	2022-06-13 00:00:00	2018-10-16 00:00:00	hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla
927	2	953	2021-09-13 00:00:00	2018-11-24 00:00:00	pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate
928	1	484	2021-02-13 00:00:00	2019-05-06 00:00:00	habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi
929	2	926	2020-10-06 00:00:00	2018-11-18 00:00:00	mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus
930	1	994	2021-07-24 00:00:00	2018-09-19 00:00:00	id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci
931	1	209	2022-10-03 00:00:00	2018-12-07 00:00:00	ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis
932	1	121	2022-03-13 00:00:00	2018-11-26 00:00:00	non mi integer ac neque duis bibendum morbi non quam nec dui
933	2	881	2021-12-09 00:00:00	2019-01-08 00:00:00	lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus
934	2	469	2022-10-20 00:00:00	2019-03-13 00:00:00	ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros
935	1	295	2022-06-10 00:00:00	2019-02-10 00:00:00	ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat
936	1	240	2022-05-22 00:00:00	2018-11-23 00:00:00	orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in
937	2	109	2020-09-25 00:00:00	2018-10-02 00:00:00	ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo
938	1	851	2020-08-21 00:00:00	2018-12-29 00:00:00	aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis
939	2	533	2022-06-18 00:00:00	2018-09-07 00:00:00	diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum
940	2	839	2021-06-25 00:00:00	2018-09-11 00:00:00	consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi
941	2	692	2022-09-13 00:00:00	2019-02-18 00:00:00	ac nibh fusce lacus purus aliquet at feugiat non pretium
942	2	6	2022-07-09 00:00:00	2018-11-29 00:00:00	quisque ut erat curabitur gravida nisi at nibh in hac habitasse
943	2	894	2020-09-15 00:00:00	2019-03-13 00:00:00	lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada
944	1	297	2022-07-28 00:00:00	2018-11-28 00:00:00	mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non
945	1	259	2022-01-28 00:00:00	2018-11-25 00:00:00	molestie nibh in lectus pellentesque at nulla suspendisse potenti cras
946	1	47	2020-09-13 00:00:00	2019-05-02 00:00:00	dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris
947	1	821	2022-06-27 00:00:00	2019-01-03 00:00:00	diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed
948	1	692	2021-01-08 00:00:00	2018-09-18 00:00:00	diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere
949	1	509	2022-05-11 00:00:00	2018-10-31 00:00:00	viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin
950	1	103	2022-03-14 00:00:00	2018-11-30 00:00:00	cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis
951	2	417	2022-03-21 00:00:00	2018-10-25 00:00:00	blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare
952	2	362	2021-01-21 00:00:00	2019-04-20 00:00:00	nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo
953	2	752	2021-03-21 00:00:00	2018-10-23 00:00:00	tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl
954	2	742	2022-09-22 00:00:00	2018-09-23 00:00:00	ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi
955	1	378	2021-02-24 00:00:00	2019-01-11 00:00:00	ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi
956	1	751	2021-08-03 00:00:00	2018-09-07 00:00:00	amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus
957	1	901	2020-10-17 00:00:00	2018-12-27 00:00:00	ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec
958	1	365	2022-09-29 00:00:00	2019-04-21 00:00:00	venenatis lacinia aenean sit amet justo morbi ut odio cras mi
959	1	815	2021-03-31 00:00:00	2019-03-13 00:00:00	cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis
960	2	467	2021-03-14 00:00:00	2019-01-05 00:00:00	vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet
961	1	6	2022-11-21 00:00:00	2018-10-05 00:00:00	dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non
962	1	887	2021-01-13 00:00:00	2019-05-04 00:00:00	et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum
963	1	982	2020-10-17 00:00:00	2019-04-09 00:00:00	molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus
964	2	339	2021-07-25 00:00:00	2019-03-02 00:00:00	donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien
965	2	384	2022-11-24 00:00:00	2019-03-03 00:00:00	consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in
966	1	622	2022-09-25 00:00:00	2019-02-11 00:00:00	ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis
967	1	990	2022-04-10 00:00:00	2019-02-10 00:00:00	non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu
968	2	243	2021-10-11 00:00:00	2018-12-28 00:00:00	luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et
969	2	361	2020-06-15 00:00:00	2018-10-14 00:00:00	id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet
970	2	267	2022-04-15 00:00:00	2019-03-21 00:00:00	odio curabitur convallis duis consequat dui nec nisi volutpat eleifend
971	1	665	2022-08-23 00:00:00	2019-03-01 00:00:00	morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit
972	2	531	2021-10-30 00:00:00	2018-12-29 00:00:00	mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula
973	2	265	2021-10-10 00:00:00	2018-09-22 00:00:00	molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci
974	2	211	2022-09-29 00:00:00	2018-09-13 00:00:00	commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt
975	2	35	2020-09-18 00:00:00	2019-03-17 00:00:00	in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in
976	2	846	2022-04-01 00:00:00	2018-09-29 00:00:00	scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc
977	1	758	2021-09-18 00:00:00	2018-09-07 00:00:00	nulla tellus in sagittis dui vel nisl duis ac nibh
978	1	417	2022-04-21 00:00:00	2019-01-27 00:00:00	etiam faucibus cursus urna ut tellus nulla ut erat id
979	2	764	2020-11-27 00:00:00	2019-01-08 00:00:00	justo in blandit ultrices enim lorem ipsum dolor sit amet
980	1	381	2022-05-22 00:00:00	2019-01-31 00:00:00	natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor
981	2	208	2021-08-26 00:00:00	2018-10-05 00:00:00	nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec
982	2	754	2022-11-10 00:00:00	2019-04-27 00:00:00	proin leo odio porttitor id consequat in consequat ut nulla sed
983	2	289	2022-03-09 00:00:00	2019-04-24 00:00:00	lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci
984	1	427	2021-07-08 00:00:00	2018-10-14 00:00:00	quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a
985	1	844	2021-11-12 00:00:00	2019-02-22 00:00:00	turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante
986	2	584	2020-07-14 00:00:00	2018-10-22 00:00:00	odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar
987	2	703	2021-09-08 00:00:00	2018-11-28 00:00:00	mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum
988	1	337	2020-06-20 00:00:00	2018-09-12 00:00:00	turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum
989	2	17	2022-02-12 00:00:00	2018-11-21 00:00:00	in consequat ut nulla sed accumsan felis ut at dolor
990	1	931	2020-12-23 00:00:00	2019-03-11 00:00:00	magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce
991	2	410	2022-08-04 00:00:00	2018-10-30 00:00:00	duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit
992	1	179	2020-07-23 00:00:00	2019-01-24 00:00:00	nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin
993	2	272	2022-06-18 00:00:00	2019-03-12 00:00:00	vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec
994	1	887	2022-05-27 00:00:00	2018-09-30 00:00:00	varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget
995	2	593	2021-07-24 00:00:00	2018-12-04 00:00:00	pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus
996	1	83	2022-05-16 00:00:00	2019-04-27 00:00:00	pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis
997	1	523	2021-09-14 00:00:00	2018-11-13 00:00:00	nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula
998	1	219	2021-09-26 00:00:00	2018-12-31 00:00:00	lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus
999	1	590	2020-11-11 00:00:00	2019-04-03 00:00:00	posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut
1000	1	840	2022-07-20 00:00:00	2018-10-09 00:00:00	molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et
1001	1	42	2021-01-16 00:00:00	2019-05-05 00:00:00	praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante
\.


--
-- Data for Name: communication_status; Type: TABLE DATA; Schema: public; Owner: jninn
--

COPY public.communication_status (id, communication_status) FROM stdin;
1	Called back
2	Need a call back
\.


--
-- Data for Name: consumer; Type: TABLE DATA; Schema: public; Owner: jninn
--

COPY public.consumer (id, first_name, last_name, address, phone_number, dba_id, hmis, internet_access, pre_screen_timestamp, county_id, pref_contact_method_id, misc_notes) FROM stdin;
2	Keen	Jermey	439 Anthes Way	182-349-7509	2	2	t	2022-06-19 00:00:00	5	4	\N
3	Torrin	Balsillie	8151 Holmberg Road	215-143-5592	3	3	t	2022-09-22 00:00:00	1	1	\N
4	Caren	Eskell	08443 Shelley Trail	736-635-8815	4	4	t	2022-09-06 00:00:00	5	5	\N
5	Anestassia	Shevels	84 Mockingbird Street	126-586-9694	5	5	f	2023-03-26 00:00:00	3	5	\N
6	Major	Mewett	1969 Center Plaza	564-121-9545	6	6	f	2023-02-26 00:00:00	1	4	\N
7	Jeniffer	Diem	6757 Dryden Plaza	212-940-5105	7	7	t	2022-12-26 00:00:00	4	4	\N
8	Kristyn	Hyett	46 Emmet Way	474-334-3298	8	8	t	2022-11-02 00:00:00	5	4	\N
9	Malynda	Braunston	7716 Marquette Trail	926-700-8359	9	9	f	2022-12-26 00:00:00	3	3	\N
10	Hugo	Forkan	615 Green Ridge Junction	204-152-1249	10	10	t	2023-01-26 00:00:00	4	2	\N
11	Artie	Upstell	743 Muir Center	918-173-7099	11	11	t	2022-11-26 00:00:00	3	4	\N
12	Shirleen	Bussel	2 Jenna Street	313-986-8808	12	12	f	2023-01-17 00:00:00	4	1	\N
13	Sumner	Gosnall	08677 Warrior Terrace	322-986-1764	13	13	f	2022-09-15 00:00:00	1	3	\N
14	Cindelyn	Leport	9833 Fisk Parkway	264-241-5561	14	14	t	2022-10-25 00:00:00	4	4	\N
15	Charmane	Macconachy	8834 Moose Parkway	778-745-2505	15	15	t	2023-03-06 00:00:00	2	3	\N
16	Marchelle	Piffe	072 Kedzie Avenue	853-297-0641	16	16	t	2022-10-17 00:00:00	3	5	\N
17	Boigie	Rizzetti	7978 Montana Plaza	650-911-0711	17	17	t	2022-05-12 00:00:00	4	3	\N
18	Sissie	Lewzey	82 Sundown Lane	883-124-2043	18	18	t	2023-02-13 00:00:00	1	1	\N
19	Raimundo	Barck	40491 Dawn Center	320-658-2181	19	19	t	2022-11-16 00:00:00	2	1	\N
20	Sheelah	Nan Carrow	233 Hintze Drive	238-917-0904	20	20	t	2022-12-15 00:00:00	4	5	\N
21	Pris	Mallia	56 Continental Hill	945-812-7712	21	21	f	2023-03-04 00:00:00	3	4	\N
22	Giana	Theis	61202 Westerfield Court	207-583-1371	22	22	t	2023-03-08 00:00:00	2	2	\N
23	Fairlie	Wigley	4206 Havey Plaza	860-616-3149	23	23	f	2022-04-03 00:00:00	1	4	\N
24	Adelheid	Tranmer	6520 Upham Court	283-789-7168	24	24	f	2022-04-02 00:00:00	5	5	\N
25	Evered	Rolfi	19786 Grasskamp Center	678-157-0968	25	25	t	2022-09-16 00:00:00	4	1	\N
26	Star	Callinan	75 Buhler Junction	103-716-0009	26	26	f	2022-04-16 00:00:00	3	1	\N
27	Charo	Coolican	320 Bunting Point	792-631-1644	27	27	t	2022-09-20 00:00:00	3	1	\N
28	Donnie	Vellacott	05 Twin Pines Alley	407-738-7413	28	28	t	2023-03-23 00:00:00	2	2	\N
29	Sandro	Meijer	0 Bartelt Alley	392-275-7464	29	29	t	2022-06-08 00:00:00	3	5	\N
30	Agatha	De Goey	89279 Dwight Alley	861-985-9599	30	30	f	2022-10-10 00:00:00	4	2	\N
31	Justinian	Aitken	03780 Fair Oaks Terrace	300-124-0382	31	31	f	2022-05-21 00:00:00	5	3	\N
32	Vaclav	Avramow	09 Alpine Hill	453-550-5130	32	32	f	2023-03-08 00:00:00	5	2	\N
33	Rand	Bridgstock	5275 Bunker Hill Lane	144-202-4997	33	33	f	2022-04-16 00:00:00	2	1	\N
34	Burch	Pavlenko	163 Ridgeway Point	388-988-9581	34	34	f	2022-09-25 00:00:00	2	3	\N
35	Shawn	Pattemore	2825 Logan Pass	848-651-5919	35	35	f	2022-10-31 00:00:00	5	3	\N
36	Nicholle	Croughan	5 Luster Junction	632-235-8044	36	36	f	2022-10-23 00:00:00	1	1	\N
37	Julie	Bourne	11266 Northland Way	909-405-4571	37	37	f	2022-12-25 00:00:00	2	3	\N
38	Drake	MacGragh	5950 Truax Circle	424-212-4081	38	38	f	2022-06-19 00:00:00	2	1	\N
39	Royce	Marishenko	706 Bobwhite Court	751-340-4956	39	39	f	2023-03-20 00:00:00	4	2	\N
40	Byron	Jobbins	4684 Sugar Plaza	697-739-2139	40	40	f	2022-06-21 00:00:00	5	3	\N
41	Erick	Bursnell	5535 Continental Junction	356-241-2082	41	41	f	2023-03-22 00:00:00	4	2	\N
42	Irwinn	Cluett	219 Warner Road	285-727-7758	42	42	f	2023-02-05 00:00:00	3	3	\N
43	Chiquita	Paynter	9 Crescent Oaks Junction	325-497-8478	43	43	f	2023-02-20 00:00:00	3	1	\N
44	Erina	Haighton	94 Spaight Trail	140-648-4624	44	44	t	2022-08-15 00:00:00	1	1	\N
45	Yasmeen	Plumridge	6 Marcy Terrace	127-557-4901	45	45	t	2023-03-04 00:00:00	5	4	\N
46	Sapphire	Lieber	379 Riverside Parkway	749-952-0386	46	46	t	2022-07-31 00:00:00	3	1	\N
47	Aurilia	Ebbens	284 School Circle	637-678-9343	47	47	f	2022-08-18 00:00:00	4	5	\N
48	Layne	Saby	4112 Heffernan Point	615-604-9639	48	48	t	2022-06-10 00:00:00	1	2	\N
49	Xever	Mayell	86 Dorton Terrace	748-502-5081	49	49	t	2022-07-08 00:00:00	2	4	\N
50	Chrissy	Belton	36284 Karstens Alley	358-690-2200	50	50	f	2022-04-08 00:00:00	1	3	\N
51	Sandi	McGiff	7 Bashford Center	929-714-4043	51	51	t	2023-01-16 00:00:00	4	1	\N
52	Sylvester	Spours	2110 Manley Junction	928-798-3216	52	52	f	2022-06-11 00:00:00	2	1	\N
53	Lonna	Cavozzi	9 Autumn Leaf Road	462-935-3742	53	53	t	2022-07-19 00:00:00	4	2	\N
54	Diahann	Coffey	99323 Starling Street	951-102-0954	54	54	t	2022-09-25 00:00:00	1	1	\N
55	Randolf	Bernt	445 Magdeline Place	289-165-0893	55	55	f	2022-09-25 00:00:00	5	3	\N
56	Bonita	Conquer	03 Randy Hill	388-183-8347	56	56	t	2022-06-11 00:00:00	5	3	\N
57	Leanna	Andrelli	731 Porter Point	399-196-0170	57	57	f	2022-11-27 00:00:00	5	2	\N
58	Sheilah	Cappel	896 Harper Center	246-363-4930	58	58	f	2022-03-30 00:00:00	5	3	\N
59	Angel	Selesnick	03 Spohn Way	896-648-8346	59	59	f	2022-12-02 00:00:00	5	4	\N
60	Grethel	Holdin	935 Rusk Avenue	173-420-3088	60	60	t	2023-03-27 00:00:00	1	1	\N
61	Merrel	Cottam	7 Eliot Pass	770-380-6583	61	61	f	2022-06-26 00:00:00	3	1	\N
62	Ronny	Carlucci	553 Mockingbird Junction	191-575-6947	62	62	f	2023-01-19 00:00:00	1	4	\N
63	Hale	Bellocht	78665 Annamark Parkway	108-209-0419	63	63	t	2022-04-18 00:00:00	2	5	\N
64	Cort	MacNeely	8488 Blaine Lane	494-760-1549	64	64	t	2022-04-12 00:00:00	2	2	\N
65	Vi	Geraldi	975 Kensington Alley	266-585-2915	65	65	f	2023-02-09 00:00:00	4	4	\N
66	Angela	Loukes	4 Cherokee Place	590-445-7175	66	66	t	2022-10-31 00:00:00	3	1	\N
67	Che	Derry	70 4th Alley	390-705-0486	67	67	t	2023-02-23 00:00:00	2	1	\N
68	Sayre	Bettesworth	62461 Park Meadow Street	634-295-5857	68	68	t	2022-06-29 00:00:00	1	4	\N
69	Alley	Clever	8 Granby Drive	469-698-2257	69	69	f	2022-08-17 00:00:00	1	4	\N
70	Delbert	Crosland	246 Utah Point	106-458-1736	70	70	t	2022-05-04 00:00:00	3	2	\N
71	Nicol	Cerie	35000 Duke Avenue	696-595-1663	71	71	f	2022-05-06 00:00:00	1	4	\N
72	Sloan	Pearmain	469 Menomonie Terrace	416-794-5017	72	72	f	2022-09-26 00:00:00	4	2	\N
73	Wally	Treharne	5539 Summit Street	406-391-1324	73	73	f	2022-10-17 00:00:00	4	5	\N
74	Cosette	Dibben	42779 Sundown Trail	383-133-9417	74	74	t	2022-11-01 00:00:00	4	1	\N
75	Shannon	Dennerly	52041 Northfield Road	818-681-8465	75	75	t	2022-04-19 00:00:00	5	5	\N
76	Milena	Van der Spohr	921 Algoma Terrace	516-507-6744	76	76	t	2022-06-07 00:00:00	2	4	\N
77	Maire	Breeton	06268 Anthes Trail	439-751-1208	77	77	f	2023-03-09 00:00:00	2	1	\N
78	Mayor	Jephson	9318 Northfield Trail	943-234-1924	78	78	t	2022-11-22 00:00:00	4	4	\N
79	Anallese	Meuse	40 Fieldstone Court	312-221-4715	79	79	t	2022-10-20 00:00:00	1	1	\N
80	Rolf	Cortes	39 Debs Lane	571-277-6972	80	80	t	2022-11-17 00:00:00	5	1	\N
81	Hanna	Wrintmore	2025 Bartelt Street	112-179-7278	81	81	f	2022-12-26 00:00:00	3	4	\N
82	Clarita	Jewar	3 Gateway Court	110-892-2097	82	82	t	2022-03-29 00:00:00	2	2	\N
83	Ula	Pitsall	8532 Roth Terrace	434-437-8480	83	83	t	2023-03-26 00:00:00	4	2	\N
84	Arnold	Ruscoe	83729 Eggendart Crossing	195-255-8869	84	84	t	2022-12-24 00:00:00	5	4	\N
85	Lisbeth	Troup	25476 Bunker Hill Plaza	472-628-9147	85	85	t	2023-01-21 00:00:00	2	3	\N
86	Diahann	Amoss	53299 Goodland Trail	631-379-2769	86	86	t	2022-07-18 00:00:00	3	2	\N
87	Bat	Brickett	61608 Buena Vista Avenue	453-148-0122	87	87	f	2022-10-09 00:00:00	3	3	\N
88	Hetti	MacNelly	2165 Burrows Crossing	131-751-7817	88	88	f	2022-05-22 00:00:00	1	3	\N
89	Hedvige	Shale	82469 Twin Pines Drive	226-709-0278	89	89	t	2022-08-01 00:00:00	4	3	\N
90	Vanda	Horsfield	825 Clove Road	913-285-5345	90	90	f	2023-03-11 00:00:00	1	2	\N
91	Cherri	Dummer	4847 Chive Circle	520-708-5508	91	91	f	2022-12-13 00:00:00	3	3	\N
92	Chaunce	Karpmann	1201 Algoma Court	292-473-0855	92	92	f	2023-03-11 00:00:00	4	5	\N
93	Kelci	Maior	7 Green Ridge Place	558-357-2044	93	93	t	2022-05-23 00:00:00	5	5	\N
94	Chlo	Coulman	7353 Merrick Avenue	473-345-5341	94	94	f	2022-10-04 00:00:00	3	1	\N
95	Abe	Whatson	3044 Huxley Park	484-906-3246	95	95	t	2022-08-07 00:00:00	1	2	\N
96	Alfy	Wignall	610 Mitchell Junction	243-373-3302	96	96	f	2022-06-13 00:00:00	4	3	\N
97	Cindee	Waby	17976 Duke Road	661-494-9783	97	97	f	2023-01-31 00:00:00	3	2	\N
98	Estrella	Ainslie	69240 Rusk Lane	509-877-8043	98	98	t	2022-10-29 00:00:00	1	2	\N
99	Ambrosi	Whipp	3423 Canary Way	598-444-2536	99	99	f	2022-10-11 00:00:00	1	4	\N
100	Arabella	Tribble	8 Holy Cross Point	627-988-5975	100	100	t	2022-09-15 00:00:00	5	4	\N
101	Anthe	Fromant	302 Cody Crossing	704-691-6911	101	101	t	2022-04-30 00:00:00	4	3	\N
102	Aimee	McGerr	50308 Nelson Point	834-587-6092	102	102	t	2022-04-11 00:00:00	4	4	\N
103	Misty	Mawby	407 Chive Point	869-543-2952	103	103	t	2022-09-06 00:00:00	4	3	\N
104	Karlotta	Bazylets	5103 Holy Cross Court	380-519-7067	104	104	t	2023-01-17 00:00:00	2	1	\N
105	Eleonore	Longwood	57 Kingsford Lane	771-500-2354	105	105	t	2022-07-18 00:00:00	4	1	\N
106	Hyacinthe	Guiness	064 Eastwood Drive	750-163-6792	106	106	t	2022-04-01 00:00:00	4	2	\N
107	Riva	Easum	5560 Kinsman Point	667-172-8930	107	107	t	2022-07-24 00:00:00	4	1	\N
108	Roana	Dumingo	796 Miller Alley	944-858-2841	108	108	f	2023-03-09 00:00:00	1	3	\N
109	Ulric	Danskine	41 Macpherson Circle	447-450-0050	109	109	t	2022-09-02 00:00:00	1	4	\N
110	Eldon	Baxstar	15887 Independence Center	873-708-9789	110	110	t	2022-06-11 00:00:00	2	4	\N
111	Carlie	Monck	66763 Scofield Place	487-706-1132	111	111	f	2022-05-26 00:00:00	4	1	\N
112	Rubina	Klemz	3361 Dawn Hill	188-691-9138	112	112	t	2023-03-13 00:00:00	2	1	\N
113	Leupold	Grimm	23 Armistice Plaza	654-924-0696	113	113	t	2023-03-15 00:00:00	5	4	\N
114	Templeton	Yendall	6 Laurel Way	799-495-7373	114	114	t	2023-03-22 00:00:00	4	2	\N
115	Towny	Raggitt	768 Mosinee Avenue	631-281-6570	115	115	t	2023-03-20 00:00:00	2	2	\N
116	Blake	Duce	60 Dawn Avenue	499-398-1840	116	116	t	2023-01-09 00:00:00	2	3	\N
117	Tamra	Dobble	38750 Katie Terrace	423-261-6212	117	117	f	2022-07-14 00:00:00	2	3	\N
118	Rutherford	Speed	163 Menomonie Junction	617-470-4768	118	118	t	2022-09-21 00:00:00	4	5	\N
119	Dee dee	Cavey	1 Fairfield Court	447-206-3368	119	119	t	2022-05-23 00:00:00	5	1	\N
120	Pietra	Childs	81 Carberry Junction	126-322-8463	120	120	t	2022-11-04 00:00:00	3	2	\N
121	Reine	Chiddy	2220 2nd Court	224-381-5811	121	121	t	2022-11-09 00:00:00	5	3	\N
122	Atlanta	Battrum	56 Superior Lane	462-706-5753	122	122	f	2023-01-23 00:00:00	4	3	\N
123	Giacinta	Ash	40517 Eastlawn Pass	928-177-7317	123	123	t	2022-09-30 00:00:00	3	4	\N
124	Catie	Alonso	0695 Sauthoff Crossing	200-831-7305	124	124	t	2023-03-09 00:00:00	3	1	\N
125	Conney	Klampt	430 Waubesa Point	811-142-7940	125	125	t	2023-02-23 00:00:00	2	3	\N
126	Tilly	Cleyne	48070 Maple Pass	113-292-8998	126	126	f	2022-05-13 00:00:00	2	2	\N
127	Wallis	McCarlich	39237 Pearson Crossing	320-153-1828	127	127	t	2022-06-17 00:00:00	5	5	\N
128	Grady	Roach	79 New Castle Circle	843-576-8388	128	128	f	2022-09-01 00:00:00	2	4	\N
129	Brena	Raffin	59 Fuller Park	279-301-1520	129	129	f	2022-10-21 00:00:00	5	1	\N
130	Osbourne	Caulcutt	75158 Troy Alley	704-991-9319	130	130	t	2022-12-22 00:00:00	3	2	\N
131	Joann	Gibling	175 Mayer Lane	957-883-4880	131	131	f	2022-12-27 00:00:00	1	3	\N
132	Philbert	Fouracres	9 Doe Crossing Trail	415-727-0657	132	132	t	2022-06-27 00:00:00	3	1	\N
133	Virgil	Stickland	920 Mosinee Alley	374-308-9128	133	133	f	2022-06-12 00:00:00	5	4	\N
134	Rosina	Mobley	4010 Rowland Park	392-242-5810	134	134	f	2022-04-29 00:00:00	2	4	\N
135	Emalia	Amiss	2 Memorial Street	155-376-3096	135	135	t	2023-01-17 00:00:00	2	1	\N
136	Gabey	Spelman	3 American Ash Parkway	765-671-3912	136	136	t	2022-10-23 00:00:00	3	4	\N
137	Gabi	Pollock	915 Northfield Lane	677-745-2121	137	137	f	2022-09-09 00:00:00	3	5	\N
138	Alverta	Chown	778 Vernon Plaza	397-445-7478	138	138	f	2022-04-27 00:00:00	2	5	\N
139	Leela	Robberts	5 Monterey Crossing	169-915-5691	139	139	t	2022-08-09 00:00:00	4	4	\N
140	Dorita	Petts	59 Bunker Hill Hill	506-622-6349	140	140	f	2023-03-27 00:00:00	2	4	\N
141	Evelyn	Goode	663 Algoma Way	291-465-8235	141	141	t	2023-01-19 00:00:00	1	2	\N
142	Aleda	Staddon	0 Superior Place	508-869-2981	142	142	t	2022-08-06 00:00:00	2	4	\N
143	Rob	Loughlin	093 Comanche Circle	853-580-4349	143	143	f	2023-02-13 00:00:00	2	5	\N
144	Tris	Lune	11 Susan Avenue	187-645-5823	144	144	f	2022-06-23 00:00:00	2	5	\N
145	Paulette	De Filippo	1005 Jana Junction	388-171-7594	145	145	t	2022-11-30 00:00:00	4	3	\N
146	Anthiathia	Maywood	602 Ryan Crossing	676-169-0480	146	146	f	2022-11-27 00:00:00	3	4	\N
147	Brittni	Besantie	036 Moose Point	467-402-1908	147	147	f	2022-12-12 00:00:00	3	5	\N
148	Cyndi	Ingolotti	4 Atwood Road	805-685-8258	148	148	t	2022-08-13 00:00:00	4	4	\N
149	Jared	Clelle	7457 High Crossing Lane	977-153-0706	149	149	t	2023-02-04 00:00:00	5	1	\N
150	Eduino	Pering	602 Union Parkway	681-495-6640	150	150	f	2022-10-04 00:00:00	3	3	\N
151	Sandra	Vye	2 Melvin Plaza	252-414-1117	151	151	f	2022-06-11 00:00:00	1	1	\N
152	King	Sach	134 Summerview Parkway	114-155-3265	152	152	t	2022-08-06 00:00:00	1	4	\N
153	Nonna	Spitell	44380 Monica Trail	952-574-3091	153	153	t	2023-02-26 00:00:00	4	5	\N
154	Fair	Tunnicliff	73 Eggendart Road	579-322-2893	154	154	f	2022-12-27 00:00:00	4	2	\N
155	Mord	Boden	460 Vidon Road	578-228-1087	155	155	f	2023-01-22 00:00:00	4	3	\N
156	Dosi	Vaggs	60423 Sundown Parkway	423-154-3832	156	156	t	2023-02-06 00:00:00	1	2	\N
157	Sig	Sapey	90 Hermina Avenue	845-349-5408	157	157	t	2022-04-03 00:00:00	3	5	\N
158	Augusta	Jozefczak	52985 Stoughton Alley	221-865-6257	158	158	f	2022-07-20 00:00:00	3	2	\N
159	Danna	Petett	0306 1st Alley	216-231-8613	159	159	f	2023-02-20 00:00:00	1	4	\N
160	Maureen	Tym	234 4th Crossing	319-629-1546	160	160	t	2022-05-10 00:00:00	2	5	\N
161	Melantha	Lakey	50 Sachs Trail	816-323-4924	161	161	f	2022-06-27 00:00:00	3	1	\N
162	Jamey	Dimond	974 Holy Cross Alley	481-170-7166	162	162	t	2022-04-25 00:00:00	1	4	\N
163	Kirsteni	Disbury	241 Dixon Plaza	302-884-0452	163	163	f	2023-02-05 00:00:00	2	2	\N
164	Cordell	Whittock	001 Tony Lane	115-311-5296	164	164	t	2022-09-16 00:00:00	3	3	\N
165	Craggie	Bagott	89122 Kedzie Street	690-412-8305	165	165	t	2022-05-15 00:00:00	1	3	\N
166	Taffy	Petrasek	58 Valley Edge Way	195-541-2415	166	166	t	2022-09-29 00:00:00	2	4	\N
167	Janet	Philippault	94 Corry Trail	987-909-6881	167	167	t	2022-09-08 00:00:00	4	1	\N
168	Ignaz	Youings	7853 Fuller Park	312-735-6100	168	168	f	2022-05-17 00:00:00	2	2	\N
169	Francyne	Caygill	9838 Towne Alley	538-755-7180	169	169	t	2023-03-25 00:00:00	4	1	\N
170	Cherilynn	Gabitis	7303 Corry Road	407-711-9355	170	170	f	2022-05-24 00:00:00	4	5	\N
171	Cooper	Murcott	0 Walton Terrace	645-137-0546	171	171	t	2022-06-08 00:00:00	5	4	\N
172	Mildrid	Nourse	78360 Sunfield Park	424-140-4951	172	172	t	2023-01-12 00:00:00	3	1	\N
173	Othilia	Dencs	27 Butterfield Point	447-879-3154	173	173	t	2022-09-03 00:00:00	4	2	\N
174	Elinore	Everwin	5 Meadow Valley Plaza	164-540-5774	174	174	f	2023-03-15 00:00:00	2	5	\N
175	Karly	Fussey	86877 Spohn Crossing	159-540-3406	175	175	f	2022-06-26 00:00:00	5	2	\N
176	Eileen	Leguay	604 8th Point	115-451-9818	176	176	t	2022-12-06 00:00:00	4	2	\N
177	Beauregard	Messer	3 Arizona Circle	603-364-4841	177	177	f	2022-07-27 00:00:00	5	5	\N
178	Willabella	MacCollom	7795 Hooker Lane	705-315-4811	178	178	t	2022-06-30 00:00:00	4	5	\N
179	Klarika	Willgoss	54612 Nelson Center	651-856-3374	179	179	t	2022-07-05 00:00:00	1	1	\N
180	Roxie	Frizell	7 Emmet Place	167-190-5893	180	180	t	2022-09-25 00:00:00	5	2	\N
181	Merrill	McOwen	6 Scott Place	938-868-8507	181	181	t	2022-08-10 00:00:00	2	4	\N
182	Juliet	Keyes	96149 Oxford Avenue	759-118-5859	182	182	f	2022-08-31 00:00:00	2	1	\N
183	Elvyn	Rawsen	6237 Mendota Center	739-750-7583	183	183	f	2022-08-30 00:00:00	2	5	\N
184	Nat	Attew	46 Manufacturers Place	576-390-3611	184	184	t	2022-09-05 00:00:00	5	2	\N
185	Wrennie	Underwood	5976 Grover Drive	184-711-0992	185	185	f	2022-12-13 00:00:00	2	1	\N
186	Emilia	Sapey	062 Texas Alley	692-524-6034	186	186	t	2023-01-16 00:00:00	3	2	\N
187	Lula	Biernacki	734 Mitchell Street	442-786-5310	187	187	t	2022-06-13 00:00:00	5	2	\N
188	Damara	Mebs	584 International Avenue	449-281-0291	188	188	f	2022-10-31 00:00:00	3	2	\N
189	Gerry	Merck	49609 Hooker Avenue	241-277-2600	189	189	t	2022-06-27 00:00:00	4	1	\N
190	Lavinia	Boschmann	2 Holmberg Alley	141-220-6142	190	190	f	2022-12-31 00:00:00	4	5	\N
191	Nico	Emig	4 Waywood Terrace	424-395-3355	191	191	t	2022-11-30 00:00:00	3	4	\N
192	Gert	Rawcliffe	7 Brickson Park Parkway	374-164-1098	192	192	f	2022-10-27 00:00:00	2	4	\N
193	Aeriel	Richings	3 Express Junction	132-448-9941	193	193	t	2022-07-18 00:00:00	4	5	\N
194	Wendy	Wolfers	52936 Manufacturers Road	714-109-7408	194	194	f	2022-04-13 00:00:00	2	3	\N
195	Sanford	McDade	05054 Magdeline Drive	114-119-7769	195	195	t	2023-02-25 00:00:00	4	4	\N
196	Ulick	Quarrell	5635 Forest Lane	548-802-6214	196	196	t	2022-10-29 00:00:00	5	4	\N
197	Ibbie	Astle	5961 Mandrake Point	993-847-2238	197	197	t	2023-02-03 00:00:00	5	5	\N
198	Clarisse	Beckham	74747 Roxbury Park	790-626-1827	198	198	f	2022-07-13 00:00:00	1	5	\N
199	Rafaela	Syplus	377 Westport Trail	760-562-4549	199	199	t	2023-03-25 00:00:00	3	4	\N
200	Marsiella	Lilywhite	880 Fisk Drive	814-639-9984	200	200	f	2022-06-12 00:00:00	5	3	\N
201	Bern	Firby	960 Mariners Cove Point	271-862-3823	201	201	f	2022-04-21 00:00:00	4	5	\N
202	Elliot	Frigout	2 Erie Point	308-817-6654	202	202	t	2022-12-01 00:00:00	2	4	\N
203	Langston	Forde	4675 Thierer Terrace	775-657-8747	203	203	t	2022-04-14 00:00:00	2	5	\N
204	Dalli	Spaule	284 Melvin Park	994-110-2313	204	204	f	2022-06-18 00:00:00	4	2	\N
205	Hedwig	Brugemann	087 Claremont Terrace	344-603-5778	205	205	t	2023-02-20 00:00:00	2	2	\N
206	Reeva	Row	43477 Wayridge Hill	231-592-9630	206	206	t	2022-08-02 00:00:00	5	3	\N
207	Othella	Petracek	96184 Anhalt Center	984-247-8420	207	207	t	2022-06-05 00:00:00	5	4	\N
208	Nowell	Perrin	17673 Claremont Pass	132-816-6595	208	208	f	2022-11-06 00:00:00	5	2	\N
209	Katie	Greeno	45 Westport Place	110-788-4248	209	209	t	2023-03-04 00:00:00	3	5	\N
210	Trumaine	Olner	03546 Express Hill	758-551-8162	210	210	t	2022-10-15 00:00:00	5	4	\N
211	Leonelle	Polack	295 Oxford Terrace	838-526-5752	211	211	t	2023-03-06 00:00:00	5	1	\N
212	Hogan	Murrigans	7 Emmet Lane	765-289-0723	212	212	t	2022-06-02 00:00:00	5	2	\N
213	Brady	Nichols	51695 Carey Center	394-373-6417	213	213	t	2022-12-30 00:00:00	2	3	\N
214	Esma	Strangward	79 Reindahl Terrace	797-821-8534	214	214	t	2022-04-17 00:00:00	4	4	\N
215	Muffin	Couvet	4 Pearson Lane	327-634-7877	215	215	f	2022-12-01 00:00:00	1	3	\N
216	Burt	Jarrette	135 Hansons Plaza	841-771-7126	216	216	f	2022-05-06 00:00:00	3	5	\N
217	Noellyn	Stappard	82465 Pennsylvania Circle	475-631-1807	217	217	t	2022-05-01 00:00:00	1	4	\N
218	Flossi	Garritley	38 Oneill Park	556-614-9973	218	218	f	2022-06-07 00:00:00	1	2	\N
219	Kiele	Beadham	7 Mendota Center	397-787-0207	219	219	t	2023-03-20 00:00:00	2	1	\N
220	Elset	Rupp	6 Mayfield Park	704-105-8918	220	220	t	2023-01-09 00:00:00	3	2	\N
221	Aaren	McNulty	0 Nancy Hill	833-334-5329	221	221	f	2022-10-05 00:00:00	5	5	\N
222	Mariette	Chominski	54 Golden Leaf Pass	711-386-1508	222	222	f	2022-12-06 00:00:00	5	1	\N
223	Ginger	Bertolaccini	4093 Reinke Drive	698-165-2392	223	223	f	2022-11-20 00:00:00	2	1	\N
224	Lotta	Coll	51 Bayside Terrace	383-652-0717	224	224	f	2023-03-19 00:00:00	4	1	\N
225	Shelagh	Wild	5693 John Wall Park	562-416-8235	225	225	f	2022-07-01 00:00:00	5	1	\N
226	Cad	Cheers	849 Kensington Circle	333-702-8703	226	226	t	2023-03-19 00:00:00	4	3	\N
227	Tonya	Remmers	6586 Scofield Avenue	735-203-8718	227	227	t	2022-11-03 00:00:00	3	4	\N
228	Lynette	Wilse	7033 Clarendon Way	887-555-9273	228	228	f	2023-02-23 00:00:00	1	4	\N
229	Eben	Veltman	80 Arrowood Trail	142-165-4694	229	229	t	2022-04-26 00:00:00	3	1	\N
230	Drona	Boothe	177 Clemons Place	781-173-8872	230	230	f	2022-06-22 00:00:00	4	5	\N
231	Isabeau	Akester	7437 Tennessee Pass	267-355-2255	231	231	f	2023-02-19 00:00:00	5	2	\N
232	Shane	Vasyutin	3286 Cambridge Street	121-256-9602	232	232	f	2022-08-05 00:00:00	3	3	\N
233	Urbain	Eborall	32 Golf Court	761-135-7025	233	233	f	2022-10-24 00:00:00	4	5	\N
234	Emmaline	MacCarrane	4240 Dixon Terrace	961-145-4801	234	234	f	2022-04-08 00:00:00	2	2	\N
235	Gertruda	Rosander	87 Carberry Avenue	332-938-6683	235	235	t	2023-03-04 00:00:00	2	1	\N
236	Barrie	Poinsett	2497 Randy Road	490-108-4934	236	236	f	2022-11-12 00:00:00	2	1	\N
237	Keslie	Shawell	786 Rieder Park	657-952-5847	237	237	t	2022-08-28 00:00:00	1	4	\N
238	Durant	Jordeson	0846 Blackbird Center	752-925-3722	238	238	t	2022-05-21 00:00:00	4	4	\N
239	Galina	Siddeley	1 Fordem Court	743-776-3077	239	239	t	2022-10-24 00:00:00	4	2	\N
240	Van	Water	03 Eggendart Street	489-918-6208	240	240	f	2023-01-14 00:00:00	2	1	\N
241	Carolus	Garrood	3 Summit Trail	523-472-7741	241	241	f	2022-09-13 00:00:00	2	4	\N
242	Helaine	Marklow	89 Rusk Court	538-871-5054	242	242	t	2022-07-29 00:00:00	3	4	\N
243	Vivyan	Kench	4310 Mcguire Alley	495-636-7714	243	243	t	2023-01-02 00:00:00	2	3	\N
244	Riley	Bishell	4 Evergreen Pass	230-111-8630	244	244	f	2022-07-15 00:00:00	3	3	\N
245	Guendolen	Olivi	171 Pine View Way	841-220-0479	245	245	t	2022-07-09 00:00:00	3	1	\N
246	Arnoldo	Seville	0678 Oxford Parkway	362-621-1161	246	246	f	2022-07-04 00:00:00	2	5	\N
247	Dita	Innwood	5 Twin Pines Park	917-839-1533	247	247	f	2022-08-10 00:00:00	4	5	\N
248	Zulema	Caseri	9 Beilfuss Pass	879-675-0565	248	248	t	2022-11-19 00:00:00	3	5	\N
249	Alfonse	Boykett	3 Troy Alley	844-567-1929	249	249	t	2022-10-18 00:00:00	5	2	\N
250	Ulysses	Goodlatt	27131 Blaine Hill	901-261-9927	250	250	f	2022-10-17 00:00:00	2	3	\N
251	Bellanca	Denyagin	59964 Sheridan Junction	508-841-2454	251	251	f	2022-09-13 00:00:00	5	4	\N
252	Bordie	Bernardotte	744 Mariners Cove Plaza	179-608-9354	252	252	f	2023-03-27 00:00:00	1	1	\N
253	Elisabetta	Godier	9935 Fordem Alley	686-173-1285	253	253	t	2022-10-14 00:00:00	5	5	\N
254	Ewell	Gristhwaite	80861 Welch Lane	334-253-0735	254	254	f	2022-06-17 00:00:00	4	3	\N
255	Tallie	Chivers	269 Canary Lane	779-306-0419	255	255	f	2023-03-27 00:00:00	3	2	\N
256	Kimberlyn	Crummay	1604 Homewood Hill	502-382-5264	256	256	t	2023-01-08 00:00:00	3	1	\N
257	Smitty	Callam	2 Magdeline Hill	809-270-9493	257	257	f	2022-12-01 00:00:00	1	1	\N
258	Peterus	Harradence	66209 Vernon Way	115-147-9946	258	258	f	2022-11-21 00:00:00	4	4	\N
259	Lindsy	McGooch	26774 Hooker Junction	956-615-7677	259	259	f	2022-06-06 00:00:00	4	3	\N
260	Nert	Ellwand	1 Mosinee Trail	421-420-5172	260	260	t	2022-08-09 00:00:00	2	1	\N
261	Seana	Cowgill	25686 Claremont Way	162-703-3358	261	261	f	2023-02-11 00:00:00	1	5	\N
262	Marv	Crust	18578 7th Drive	699-960-0319	262	262	t	2022-07-29 00:00:00	1	5	\N
263	Pet	Mumbey	901 Buena Vista Parkway	508-314-6516	263	263	f	2023-03-21 00:00:00	3	2	\N
264	Washington	Whittock	87 Parkside Circle	447-323-8992	264	264	t	2022-09-05 00:00:00	2	3	\N
265	Leticia	Piletic	47 Di Loreto Place	435-123-2936	265	265	t	2022-07-09 00:00:00	2	4	\N
266	Laina	Minchinton	074 Ramsey Lane	104-802-4582	266	266	t	2022-11-18 00:00:00	2	4	\N
267	Sandye	Acklands	72303 Sullivan Avenue	751-867-1359	267	267	f	2022-10-27 00:00:00	4	4	\N
268	Ardys	Toderbrugge	44102 Mariners Cove Way	500-311-7348	268	268	t	2022-09-02 00:00:00	5	2	\N
269	Eldridge	Fullegar	88484 Fordem Park	591-117-3302	269	269	f	2022-08-24 00:00:00	5	2	\N
270	Dora	Georgins	20732 Stuart Trail	475-994-9420	270	270	t	2022-12-21 00:00:00	4	4	\N
271	Christiane	Camois	9104 Raven Circle	262-558-5180	271	271	f	2023-01-17 00:00:00	4	5	\N
272	Gaultiero	Giroldo	4 Anhalt Junction	340-871-5267	272	272	t	2023-03-17 00:00:00	3	5	\N
273	Deena	Fury	12008 East Trail	141-904-1219	273	273	f	2022-12-23 00:00:00	5	5	\N
274	Natalee	Verheijden	9 Milwaukee Court	142-631-5779	274	274	t	2022-06-25 00:00:00	4	2	\N
275	Lemmie	Kynton	33566 Village Green Terrace	285-335-8307	275	275	f	2022-11-12 00:00:00	4	5	\N
276	Hesther	McGreay	61 Boyd Hill	497-749-6410	276	276	f	2022-07-12 00:00:00	3	5	\N
277	Aprilette	Cesco	87 Hovde Drive	120-959-9830	277	277	f	2022-09-07 00:00:00	5	2	\N
278	Crin	Larne	606 Brentwood Road	271-614-4369	278	278	f	2022-05-24 00:00:00	4	5	\N
279	Opal	Dumsday	3 Becker Junction	348-980-3934	279	279	t	2022-07-27 00:00:00	3	2	\N
280	Yulma	Chitter	763 Lighthouse Bay Way	360-264-9475	280	280	f	2022-08-22 00:00:00	5	5	\N
281	Cathrin	Pavelin	8 Leroy Way	708-991-4313	281	281	f	2022-04-13 00:00:00	1	1	\N
282	Reynold	Andrejevic	8803 Warrior Road	186-826-2347	282	282	f	2022-04-10 00:00:00	5	4	\N
283	Keary	Jenckes	18733 1st Terrace	685-407-5529	283	283	f	2022-05-31 00:00:00	2	1	\N
284	Charlton	Lilbourne	006 Corscot Place	978-742-7692	284	284	f	2023-02-12 00:00:00	3	1	\N
285	Maggi	Logesdale	1 Hoard Park	483-311-8579	285	285	t	2023-03-16 00:00:00	3	3	\N
286	Aubree	Padberry	41543 Eggendart Hill	325-821-5898	286	286	f	2022-08-28 00:00:00	3	1	\N
287	Beniamino	Freeburn	719 Lakewood Gardens Place	824-681-5854	287	287	f	2022-04-02 00:00:00	5	5	\N
288	Roseline	Heynel	337 Weeping Birch Road	858-572-1283	288	288	f	2022-10-28 00:00:00	4	5	\N
289	Ronny	Griffithe	6235 Michigan Alley	133-308-4128	289	289	t	2023-01-16 00:00:00	5	5	\N
290	Prisca	Deery	2848 Main Pass	946-473-2440	290	290	f	2022-04-28 00:00:00	2	2	\N
291	Britt	Ruffler	72019 East Lane	595-563-6506	291	291	f	2022-09-22 00:00:00	4	2	\N
292	Smith	Jovey	71 Haas Lane	682-326-4771	292	292	f	2022-04-15 00:00:00	4	4	\N
293	Germana	Chesshyre	658 Goodland Avenue	469-105-9754	293	293	f	2023-03-18 00:00:00	2	3	\N
294	Balduin	Timmons	30464 Porter Drive	495-555-3059	294	294	f	2022-10-10 00:00:00	3	2	\N
295	Allyn	Kestin	10 Talisman Way	558-708-1532	295	295	f	2022-06-07 00:00:00	2	4	\N
296	Martie	Storah	78 Cascade Hill	109-578-9781	296	296	f	2022-04-21 00:00:00	2	5	\N
297	Corny	Humblestone	714 Main Parkway	322-566-4992	297	297	t	2022-07-04 00:00:00	1	3	\N
298	Lukas	Pietzner	9 Bunker Hill Junction	406-223-4924	298	298	f	2022-05-02 00:00:00	2	3	\N
299	Olympia	Gammell	49 Hoard Street	492-520-4464	299	299	t	2023-01-03 00:00:00	1	5	\N
300	Leopold	Downage	4164 Arizona Center	432-634-1016	300	300	f	2022-09-06 00:00:00	4	3	\N
301	Brande	Elphick	6 Bay Terrace	665-409-7626	301	301	f	2022-08-05 00:00:00	1	1	\N
302	Davine	Robbie	92 Knutson Hill	159-130-2351	302	302	t	2023-01-08 00:00:00	3	1	\N
303	Lenci	Nestor	7 Acker Circle	395-310-4755	303	303	f	2023-02-12 00:00:00	2	2	\N
304	Renelle	Stanner	02976 Kedzie Trail	979-170-2145	304	304	t	2022-12-25 00:00:00	1	4	\N
305	Philly	Coverdill	5191 Southridge Alley	978-482-3239	305	305	t	2022-09-08 00:00:00	4	3	\N
306	Levi	Bilovus	447 Texas Court	443-754-4623	306	306	t	2022-07-14 00:00:00	3	2	\N
307	Robbin	Vagg	79740 Prentice Circle	320-245-8731	307	307	f	2022-11-19 00:00:00	1	3	\N
308	Gordan	Lovett	6771 Onsgard Court	291-968-9931	308	308	f	2022-10-17 00:00:00	3	4	\N
309	Isahella	Scothorne	8377 Anthes Place	583-313-4263	309	309	f	2022-09-25 00:00:00	3	2	\N
310	Valera	Jencken	73392 Knutson Circle	844-558-4191	310	310	t	2023-02-27 00:00:00	5	5	\N
311	Nonnah	Gorrissen	44856 Crest Line Street	632-471-3031	311	311	f	2022-04-14 00:00:00	5	3	\N
312	Ira	Bothams	40394 Pine View Pass	790-425-4351	312	312	f	2022-05-27 00:00:00	2	1	\N
313	Merle	Clibbery	2 Fieldstone Place	738-229-3955	313	313	t	2023-01-24 00:00:00	2	5	\N
314	Fabien	Jaze	237 Vernon Hill	201-260-3977	314	314	f	2023-03-27 00:00:00	2	1	\N
315	Belle	Laba	09 Schlimgen Way	619-302-5032	315	315	f	2022-07-19 00:00:00	3	1	\N
316	Ellis	Pharro	40967 Golf Road	647-780-8580	316	316	f	2022-07-12 00:00:00	5	5	\N
317	Victor	Balshen	186 Prairieview Court	879-795-2717	317	317	f	2022-10-03 00:00:00	3	3	\N
318	Devon	Haugh	731 Garrison Terrace	125-600-6859	318	318	t	2022-04-27 00:00:00	1	5	\N
319	Heddie	Rizzolo	967 Glacier Hill Pass	529-859-2080	319	319	t	2022-11-29 00:00:00	1	3	\N
320	Calla	Bande	53960 Gerald Crossing	579-721-6723	320	320	f	2022-12-10 00:00:00	5	4	\N
321	Lancelot	McIlmorow	6615 Truax Lane	700-795-8363	321	321	f	2022-06-12 00:00:00	3	1	\N
322	Madelaine	Matchett	40008 Bunker Hill Park	499-366-8786	322	322	f	2022-06-16 00:00:00	3	1	\N
323	Phaidra	Gourley	3 Rutledge Drive	370-374-1272	323	323	t	2022-05-06 00:00:00	1	1	\N
324	Barbee	Meers	04664 Little Fleur Hill	301-952-4687	324	324	f	2022-08-10 00:00:00	2	2	\N
325	Daphene	Cuttings	206 Daystar Alley	106-909-4404	325	325	f	2022-11-06 00:00:00	5	4	\N
326	Jacintha	Di Claudio	63 Debs Lane	927-618-9376	326	326	t	2022-08-18 00:00:00	3	3	\N
327	Paddie	Douche	4695 Schiller Road	425-293-4985	327	327	t	2022-04-17 00:00:00	4	1	\N
328	Dinny	Gribbins	18783 Gale Trail	266-872-6021	328	328	f	2022-05-15 00:00:00	3	4	\N
329	Estevan	Candy	9999 Fieldstone Park	707-716-5730	329	329	t	2022-12-27 00:00:00	1	3	\N
330	Jonas	Camings	79019 Westridge Point	316-322-9994	330	330	f	2023-02-15 00:00:00	3	4	\N
331	Joan	Klimowicz	8 Roth Court	561-807-6417	331	331	t	2022-05-04 00:00:00	3	2	\N
332	Mannie	Pionter	47876 Artisan Junction	476-288-2537	332	332	t	2023-01-21 00:00:00	5	2	\N
333	Urban	Windibank	1475 Morningstar Way	384-669-3902	333	333	f	2023-01-09 00:00:00	1	1	\N
334	Carita	Sausman	0 Troy Hill	174-700-0107	334	334	f	2022-09-05 00:00:00	3	5	\N
335	Tamera	Chetwin	14 Lakeland Center	468-746-8889	335	335	f	2022-06-13 00:00:00	4	5	\N
336	Kitty	Grealey	791 Drewry Center	170-975-0362	336	336	t	2022-09-08 00:00:00	1	2	\N
337	Vanny	Wybrew	5640 Wayridge Pass	742-144-3704	337	337	t	2022-04-28 00:00:00	3	1	\N
338	Ogdan	Conway	0 International Court	810-309-0662	338	338	f	2023-02-28 00:00:00	1	1	\N
339	Wilbur	Trimmill	90 Shoshone Court	596-580-5632	339	339	f	2023-01-11 00:00:00	1	5	\N
340	Herbie	Ketteman	1 Carpenter Point	340-694-2313	340	340	t	2022-07-02 00:00:00	4	1	\N
341	Tadeo	Beatty	16992 Florence Terrace	144-769-1652	341	341	t	2022-05-21 00:00:00	1	3	\N
342	Isidor	Andryszczak	10 Independence Alley	951-748-7130	342	342	t	2022-11-05 00:00:00	5	2	\N
343	Temp	Chree	60 Northridge Point	214-614-2212	343	343	t	2022-10-20 00:00:00	5	4	\N
344	Doroteya	Axup	7 Darwin Lane	500-499-2272	344	344	f	2022-10-21 00:00:00	5	2	\N
345	Margette	Samme	64 Stuart Center	207-949-3226	345	345	f	2022-05-13 00:00:00	4	5	\N
346	Bar	Klessmann	685 Pine View Point	242-192-4578	346	346	t	2022-04-25 00:00:00	5	2	\N
347	Tandy	Corter	62 Spaight Avenue	961-865-3563	347	347	f	2022-10-16 00:00:00	3	3	\N
348	Eziechiele	Bettam	906 Lien Plaza	905-826-7702	348	348	f	2022-12-09 00:00:00	5	4	\N
349	Ferris	Lowndsborough	046 Anzinger Drive	623-515-5625	349	349	t	2023-01-21 00:00:00	1	2	\N
350	Linnea	Bener	35 7th Alley	546-984-0200	350	350	t	2022-10-03 00:00:00	5	3	\N
351	Benny	Lesaunier	1450 Morrow Crossing	488-640-8473	351	351	f	2022-06-24 00:00:00	5	3	\N
352	Erika	Jaze	90 Everett Trail	785-744-1361	352	352	f	2022-09-08 00:00:00	2	1	\N
353	Garold	Pales	36912 Randy Place	297-741-8267	353	353	t	2022-11-22 00:00:00	3	2	\N
354	Aurthur	Gibbon	5900 Heath Plaza	657-190-6432	354	354	f	2023-01-03 00:00:00	2	5	\N
355	Maryann	Shrubshall	98 Dahle Circle	490-590-4913	355	355	f	2023-01-22 00:00:00	1	3	\N
356	Fanya	Robyns	00 Graceland Park	534-796-9927	356	356	f	2022-05-07 00:00:00	5	2	\N
357	Elna	Pidgin	44533 Elka Drive	523-961-4089	357	357	t	2023-02-11 00:00:00	5	1	\N
358	Kiri	Willetts	6122 Rutledge Place	516-413-5190	358	358	f	2023-01-01 00:00:00	5	2	\N
359	Kelly	Portchmouth	1 Dennis Park	901-260-6211	359	359	f	2023-02-10 00:00:00	1	5	\N
360	Rhoda	Zorzenoni	6526 Southridge Court	448-501-7373	360	360	f	2023-02-24 00:00:00	5	4	\N
361	Onofredo	Gertz	01744 Melrose Street	160-573-6350	361	361	t	2022-09-05 00:00:00	3	3	\N
362	Tessi	Neal	48 Mariners Cove Road	492-540-7198	362	362	f	2022-03-30 00:00:00	1	4	\N
363	Jeramie	Trower	540 Lukken Center	445-815-0756	363	363	t	2022-11-07 00:00:00	1	3	\N
364	Hildegaard	Macauley	94015 Mallory Avenue	958-214-2014	364	364	t	2022-08-25 00:00:00	1	1	\N
365	Tyrus	Novik	76101 Hoffman Lane	208-306-0967	365	365	f	2022-11-23 00:00:00	4	4	\N
366	Worth	Tuohy	6 Merrick Way	338-298-1749	366	366	t	2023-01-20 00:00:00	4	1	\N
367	Owen	MacVicar	799 Elmside Plaza	363-782-8100	367	367	f	2023-03-21 00:00:00	4	2	\N
368	Sofia	Doddrell	21 Spohn Road	692-645-8335	368	368	t	2022-12-29 00:00:00	1	1	\N
369	Marietta	Pakeman	0 Golf Park	689-238-4661	369	369	f	2022-12-03 00:00:00	2	3	\N
370	Erroll	Kenninghan	7958 Eliot Alley	643-159-4965	370	370	f	2022-04-05 00:00:00	5	5	\N
371	Pattin	Bonnor	9407 Scofield Court	219-665-3399	371	371	f	2022-12-17 00:00:00	2	5	\N
372	Paddie	Angus	252 Ridgeway Court	171-932-4569	372	372	t	2023-02-25 00:00:00	4	4	\N
373	Finn	Coltart	6990 Springs Plaza	487-890-2003	373	373	t	2022-06-24 00:00:00	2	3	\N
374	Tani	Begg	0 Mendota Way	924-595-4105	374	374	f	2022-04-05 00:00:00	4	3	\N
375	Blayne	Peckham	4001 Declaration Crossing	126-201-6568	375	375	t	2023-03-01 00:00:00	4	1	\N
376	Flemming	Bullick	0 Dryden Terrace	312-804-0668	376	376	t	2022-06-09 00:00:00	3	5	\N
377	Milton	M'cowis	8 Elgar Parkway	738-311-9473	377	377	f	2023-03-16 00:00:00	2	3	\N
378	Rana	Beades	440 Merchant Alley	863-477-7365	378	378	t	2022-09-13 00:00:00	2	3	\N
379	Sheba	Bruty	747 Superior Park	688-827-6898	379	379	t	2022-10-25 00:00:00	4	1	\N
380	Monro	Cruft	6 Kensington Hill	663-327-7381	380	380	t	2022-05-09 00:00:00	3	1	\N
381	Arlina	Hinrichs	9 Jana Alley	849-799-0233	381	381	t	2023-03-03 00:00:00	4	2	\N
382	Neale	Bartholomew	366 Buena Vista Crossing	335-933-5545	382	382	f	2023-02-15 00:00:00	1	5	\N
383	Udale	Soeiro	70161 Northport Lane	557-645-7481	383	383	f	2022-09-04 00:00:00	3	1	\N
384	Kara	Challenger	9316 Debs Point	828-271-7999	384	384	f	2022-07-31 00:00:00	4	3	\N
385	Bren	Northcott	91547 Hoepker Place	115-627-2432	385	385	f	2023-01-10 00:00:00	3	3	\N
386	Deidre	Bennedick	6368 Maple Wood Park	135-945-9116	386	386	f	2022-05-01 00:00:00	5	1	\N
387	Jerri	Ketteman	5248 Eastlawn Crossing	420-232-9751	387	387	f	2022-04-01 00:00:00	5	2	\N
388	Cecilla	Ezele	84 Mayer Place	335-996-1966	388	388	f	2022-09-05 00:00:00	1	2	\N
389	Stern	Renzini	5932 Maple Wood Place	656-980-5238	389	389	t	2022-04-24 00:00:00	2	4	\N
390	Lara	Bryan	7 Hooker Terrace	521-285-4820	390	390	f	2022-09-15 00:00:00	3	5	\N
391	Nefen	Playfair	6800 Darwin Place	481-779-5491	391	391	t	2022-04-20 00:00:00	5	5	\N
392	Lia	Gozard	6 Redwing Pass	746-536-7845	392	392	t	2022-04-30 00:00:00	2	5	\N
393	Kinnie	Blackly	2 Nelson Road	922-904-0938	393	393	t	2023-01-18 00:00:00	4	1	\N
394	Barry	Clinnick	2 Rowland Way	517-673-5168	394	394	f	2022-08-10 00:00:00	1	1	\N
395	Maudie	Timmermann	3 Hintze Point	642-313-7089	395	395	f	2022-11-05 00:00:00	5	1	\N
396	Liv	Gainfort	4 Village Pass	470-163-4911	396	396	f	2023-02-03 00:00:00	3	4	\N
397	Nada	Graveson	1227 Lerdahl Street	217-549-1574	397	397	t	2023-02-25 00:00:00	3	1	\N
398	Valaree	Marriner	8 Mariners Cove Point	417-745-9693	398	398	f	2022-04-23 00:00:00	5	1	\N
399	Allyn	Drivers	69225 Comanche Point	243-269-7843	399	399	t	2023-02-09 00:00:00	3	1	\N
400	Arv	Laugharne	966 Anthes Parkway	576-731-0706	400	400	f	2023-02-19 00:00:00	5	3	\N
401	Gretna	Jacobsohn	301 Transport Alley	599-100-8754	401	401	f	2022-10-13 00:00:00	3	2	\N
402	Charles	Dewi	0 Westerfield Junction	404-973-8571	402	402	f	2022-11-09 00:00:00	5	3	\N
403	Kylila	Chaters	5109 Mallard Road	857-369-1962	403	403	t	2022-08-10 00:00:00	2	4	\N
404	Kippie	Karys	70 Erie Street	668-570-6021	404	404	t	2022-04-30 00:00:00	5	4	\N
405	Trescha	Rigolle	3069 Reinke Court	501-496-7875	405	405	t	2022-06-28 00:00:00	2	4	\N
406	Tabbie	Witherdon	19107 North Parkway	227-298-7445	406	406	t	2023-01-24 00:00:00	5	2	\N
407	Rakel	MacNucator	74646 Amoth Hill	859-703-9313	407	407	f	2022-10-15 00:00:00	4	2	\N
408	Benito	McCallum	2 Oak Valley Court	512-491-0856	408	408	t	2022-09-08 00:00:00	1	4	\N
409	Farlie	Franzonetti	4 4th Parkway	674-566-4401	409	409	f	2023-01-20 00:00:00	1	4	\N
410	Ashla	Meecher	1042 Meadow Ridge Lane	562-108-6737	410	410	f	2022-08-16 00:00:00	1	3	\N
411	Doloritas	Bagnall	68178 1st Terrace	231-892-5052	411	411	f	2022-08-16 00:00:00	4	1	\N
412	Kay	Carrol	418 Trailsway Parkway	688-824-7494	412	412	f	2022-09-03 00:00:00	4	2	\N
413	Alikee	Seamark	708 Tomscot Way	901-955-4372	413	413	f	2022-10-01 00:00:00	4	3	\N
414	Barny	Hargey	9284 Novick Avenue	991-771-4109	414	414	f	2022-05-26 00:00:00	5	5	\N
415	Sallyanne	Beddin	12478 Cherokee Street	564-812-0544	415	415	f	2023-01-08 00:00:00	1	3	\N
416	Alisander	Lumsdale	9426 7th Terrace	855-450-9605	416	416	t	2022-11-16 00:00:00	1	3	\N
417	Sadella	Dabell	661 Waxwing Junction	935-973-8664	417	417	t	2022-10-11 00:00:00	2	4	\N
418	Mayor	Cann	2351 Orin Drive	971-103-5606	418	418	t	2022-10-20 00:00:00	5	1	\N
419	Mollie	Allflatt	8 Gateway Pass	977-802-3677	419	419	f	2022-04-30 00:00:00	3	5	\N
420	Federica	Murton	36595 Anniversary Junction	632-905-1824	420	420	t	2022-03-31 00:00:00	3	3	\N
421	Alic	Searchwell	547 Eastlawn Hill	659-705-8368	421	421	t	2022-04-18 00:00:00	4	5	\N
422	Chick	Liston	20345 Manley Way	142-197-4499	422	422	f	2023-03-21 00:00:00	3	4	\N
423	Bonnibelle	Josipovitz	4238 Evergreen Terrace	856-934-3531	423	423	t	2023-03-17 00:00:00	3	1	\N
424	Minnnie	De Caroli	48649 Crest Line Court	800-445-5202	424	424	t	2022-11-08 00:00:00	3	5	\N
425	Thorin	Sollars	507 Golf View Center	704-790-7635	425	425	t	2023-03-13 00:00:00	5	1	\N
426	Lara	McNuff	8 Manley Road	469-407-9523	426	426	t	2023-01-26 00:00:00	5	5	\N
427	Henrietta	Orrobin	005 Crowley Plaza	328-632-8957	427	427	f	2022-06-10 00:00:00	4	1	\N
428	Jan	Burnitt	01 Moulton Junction	102-191-2045	428	428	f	2023-01-28 00:00:00	4	3	\N
429	Vasily	Titcom	86137 Clyde Gallagher Street	558-372-8597	429	429	t	2023-03-09 00:00:00	3	4	\N
430	Timmie	Mortel	1 Armistice Court	521-675-3236	430	430	t	2022-09-09 00:00:00	1	3	\N
431	Elfie	Stollenberg	0874 Fulton Park	183-126-6355	431	431	f	2022-06-21 00:00:00	1	4	\N
432	Christina	Feldhuhn	63 Sullivan Crossing	218-217-6365	432	432	f	2022-08-05 00:00:00	4	4	\N
433	Cristine	Collelton	9310 Beilfuss Plaza	501-243-5588	433	433	f	2023-03-21 00:00:00	5	4	\N
434	Gustave	Bazek	181 Surrey Park	152-872-6425	434	434	f	2022-10-02 00:00:00	1	1	\N
435	Kara	Manby	3 Shoshone Plaza	452-902-1982	435	435	t	2022-08-09 00:00:00	4	2	\N
436	Corliss	Sawers	0 Sage Park	568-868-9689	436	436	f	2022-10-23 00:00:00	5	1	\N
437	Lorinda	Offer	24 Truax Alley	795-941-3214	437	437	f	2022-11-18 00:00:00	5	2	\N
438	Ardyce	Armsby	755 Ruskin Street	759-549-0119	438	438	t	2022-12-27 00:00:00	1	4	\N
439	Anallise	Olenichev	2 Arizona Drive	729-514-8494	439	439	f	2023-01-22 00:00:00	1	4	\N
440	Gamaliel	Bache	26 Holy Cross Crossing	301-544-5043	440	440	f	2022-12-01 00:00:00	3	4	\N
441	Shirl	Burnet	8 Division Point	519-723-8382	441	441	t	2022-07-03 00:00:00	2	1	\N
442	Benjamin	Jillings	4549 Kenwood Avenue	271-445-7290	442	442	f	2023-01-19 00:00:00	4	3	\N
443	Stanly	Alvey	7435 Bashford Plaza	860-712-2675	443	443	f	2022-04-28 00:00:00	1	1	\N
444	Luelle	Ellissen	4699 Luster Lane	964-828-4720	444	444	t	2022-07-31 00:00:00	4	2	\N
445	Maje	Cisec	8488 Charing Cross Pass	756-937-9206	445	445	f	2023-03-19 00:00:00	1	4	\N
446	Grover	Vallentin	2 Trailsway Place	270-490-2103	446	446	t	2022-10-11 00:00:00	1	4	\N
447	Carita	Halmkin	5306 Jay Street	136-523-2480	447	447	t	2022-06-30 00:00:00	3	3	\N
448	Dietrich	Physic	9131 Birchwood Court	887-896-8141	448	448	t	2023-01-13 00:00:00	1	3	\N
449	Amargo	Mariet	445 Bashford Hill	690-502-4073	449	449	t	2023-01-23 00:00:00	5	3	\N
450	Abbe	Caughtry	52 Vahlen Circle	884-370-2142	450	450	f	2022-05-10 00:00:00	3	1	\N
451	Maegan	Betjeman	32 Rieder Drive	680-509-3206	451	451	t	2022-12-08 00:00:00	2	2	\N
452	Erskine	Cattlow	7 Chive Point	775-185-7161	452	452	f	2023-02-17 00:00:00	5	4	\N
453	Zuzana	Trewartha	9446 Lukken Plaza	202-402-4118	453	453	t	2023-01-03 00:00:00	1	5	\N
454	Corina	Gravie	81969 Tomscot Parkway	467-378-6052	454	454	t	2022-07-27 00:00:00	4	4	\N
455	Robbin	Audiss	50276 Thackeray Court	413-913-5577	455	455	t	2022-04-21 00:00:00	2	2	\N
456	Ynes	Heddy	473 Ridgeway Parkway	926-190-2887	456	456	f	2023-02-22 00:00:00	2	1	\N
457	Allard	Brundill	97 Comanche Parkway	462-771-8026	457	457	t	2022-05-22 00:00:00	3	1	\N
458	Rahel	Pietasch	2938 New Castle Park	175-795-8993	458	458	t	2022-06-24 00:00:00	1	2	\N
459	Piggy	Gisbye	8 Nova Drive	484-630-7585	459	459	f	2022-11-09 00:00:00	5	3	\N
460	Edmon	Kilgour	96 Veith Street	579-391-3765	460	460	t	2022-10-01 00:00:00	5	2	\N
461	Dulce	O'Keefe	985 Merchant Parkway	233-230-2784	461	461	f	2022-08-06 00:00:00	4	2	\N
462	Yevette	Custed	2291 Stuart Trail	592-969-9158	462	462	t	2022-12-02 00:00:00	1	2	\N
463	Leodora	Warboy	0 Glendale Center	868-230-6713	463	463	t	2022-12-04 00:00:00	4	3	\N
464	Sayers	Varnham	39579 Gale Road	143-121-7546	464	464	f	2022-06-27 00:00:00	2	3	\N
465	Georgeanne	Gayler	57763 Morning Place	403-876-4875	465	465	f	2022-06-09 00:00:00	1	5	\N
466	Kai	Deeprose	3 Golf Course Place	762-728-3684	466	466	f	2023-03-01 00:00:00	1	4	\N
467	Dusty	McGavigan	1150 Muir Plaza	835-939-9465	467	467	t	2022-07-22 00:00:00	3	3	\N
468	Kelley	Guly	7011 Blaine Court	142-661-0659	468	468	t	2023-03-26 00:00:00	4	3	\N
469	Marga	Caverhill	13746 Ramsey Circle	600-270-6200	469	469	f	2022-07-04 00:00:00	5	4	\N
470	Francklin	Drysdale	1976 Prairieview Circle	835-691-5490	470	470	f	2022-05-03 00:00:00	3	2	\N
471	Siffre	Webber	72654 Jackson Crossing	873-728-6146	471	471	f	2022-06-09 00:00:00	1	2	\N
472	Fletcher	Folk	56 Brown Place	837-500-4796	472	472	f	2022-08-12 00:00:00	3	1	\N
473	Guillemette	Rispin	50 Corry Way	903-943-8488	473	473	t	2022-04-28 00:00:00	4	1	\N
474	Trudi	Kelleway	9 Amoth Way	420-154-8947	474	474	f	2023-03-12 00:00:00	1	3	\N
475	Lark	Sievewright	1141 Vera Trail	200-460-4608	475	475	f	2022-10-26 00:00:00	1	5	\N
476	Antonina	Ackroyd	0298 Dovetail Way	780-694-3685	476	476	f	2022-09-26 00:00:00	4	4	\N
477	Jourdain	Bridgens	90 Village Hill	974-787-6794	477	477	f	2022-11-21 00:00:00	5	3	\N
478	Ashia	Blaver	88670 Hagan Pass	618-704-7469	478	478	f	2022-11-19 00:00:00	3	2	\N
479	Lana	Savill	7362 Mandrake Parkway	335-250-2727	479	479	t	2022-11-26 00:00:00	1	5	\N
480	Sam	Outram	74 Rowland Circle	155-631-5516	480	480	t	2022-07-12 00:00:00	1	5	\N
481	Blair	Newbatt	53 Clyde Gallagher Lane	274-305-1255	481	481	f	2022-08-18 00:00:00	5	5	\N
482	Westbrook	Flarity	8 Melby Court	263-977-6275	482	482	t	2022-12-29 00:00:00	2	5	\N
483	Courtnay	Yurin	3 Vera Parkway	815-745-3364	483	483	f	2023-02-03 00:00:00	2	1	\N
484	Chantal	Gosnall	4 Caliangt Pass	228-882-6333	484	484	f	2022-04-01 00:00:00	4	2	\N
485	Marti	Ughi	84 Nelson Point	629-454-2438	485	485	f	2022-07-10 00:00:00	5	5	\N
486	Hiram	Delafont	4 Welch Park	375-613-4907	486	486	f	2022-12-07 00:00:00	1	1	\N
487	Beatrice	Poon	33817 Almo Hill	611-762-2773	487	487	f	2022-04-19 00:00:00	4	4	\N
488	Philip	Illidge	04 Rutledge Place	708-179-5286	488	488	f	2022-12-05 00:00:00	4	4	\N
489	Gabriela	Peddersen	68 Dovetail Road	403-269-8369	489	489	f	2022-10-21 00:00:00	2	1	\N
490	Giffie	Zelley	377 Algoma Way	454-301-2137	490	490	f	2022-06-10 00:00:00	5	1	\N
491	Pyotr	Burdekin	32 Hanson Trail	408-710-0103	491	491	t	2022-07-09 00:00:00	5	3	\N
492	Mead	Gallihawk	09967 Vermont Lane	452-294-9782	492	492	t	2022-10-06 00:00:00	2	1	\N
493	Beck	Whysall	11724 Milwaukee Crossing	840-450-8017	493	493	t	2023-02-25 00:00:00	5	2	\N
494	Cathe	Wittman	36519 Bay Way	255-350-9871	494	494	t	2022-06-04 00:00:00	4	4	\N
495	Larry	Lindfors	2 Fairview Circle	812-382-2215	495	495	f	2022-12-19 00:00:00	5	2	\N
496	Rana	Flegg	61735 Sutteridge Pass	964-220-6523	496	496	t	2022-09-15 00:00:00	1	5	\N
497	Sarina	Vanyashin	9031 Oak Valley Point	248-329-6359	497	497	f	2022-10-03 00:00:00	5	4	\N
498	Cathi	Yakovitch	7 Mandrake Court	300-233-1174	498	498	f	2022-04-01 00:00:00	1	4	\N
499	Bradford	Reisk	084 Butternut Plaza	325-655-9280	499	499	f	2022-06-11 00:00:00	4	2	\N
500	Cathryn	Efford	0 Gulseth Park	283-602-8258	500	500	t	2023-01-03 00:00:00	2	5	\N
501	Glennis	Brosius	5 Superior Junction	139-777-0482	501	501	f	2023-01-31 00:00:00	2	2	\N
502	Jim	Ketcher	70 Orin Road	236-420-0738	502	502	f	2023-03-17 00:00:00	3	2	\N
503	Marilee	January	08 6th Street	594-289-1967	503	503	t	2023-03-24 00:00:00	4	4	\N
504	Chadwick	Devall	409 Clarendon Terrace	417-944-9439	504	504	t	2022-06-22 00:00:00	1	3	\N
505	Kayne	Ravel	6 Autumn Leaf Terrace	946-609-0050	505	505	f	2022-06-15 00:00:00	5	5	\N
506	Laura	Dikes	197 Hermina Road	644-993-3176	506	506	t	2022-08-11 00:00:00	3	2	\N
507	Robert	Asker	76432 Bartelt Center	423-641-4330	507	507	t	2022-06-14 00:00:00	4	4	\N
508	Eziechiele	Brealey	3 Northview Way	413-190-2184	508	508	f	2022-10-01 00:00:00	4	5	\N
509	Verna	Zuppa	54 Springview Parkway	999-869-6593	509	509	f	2022-04-05 00:00:00	4	5	\N
510	Crissie	Denzey	98477 Raven Parkway	987-987-0304	510	510	f	2022-08-08 00:00:00	4	1	\N
511	Gaylord	Kayzer	589 Hallows Point	122-343-6931	511	511	t	2022-04-10 00:00:00	4	5	\N
512	Ermanno	Forsard	88975 Homewood Trail	423-199-2286	512	512	f	2023-01-07 00:00:00	1	5	\N
513	Brander	Margarson	69622 Shoshone Point	135-166-7010	513	513	t	2022-09-22 00:00:00	1	3	\N
514	Stefano	Seston	516 Mariners Cove Road	778-875-6100	514	514	t	2022-05-30 00:00:00	5	1	\N
515	Robinetta	Ballintime	03 Village Green Hill	313-514-7163	515	515	f	2022-11-18 00:00:00	3	5	\N
516	Ambros	Tritten	663 Parkside Terrace	473-420-5409	516	516	f	2022-04-24 00:00:00	1	3	\N
517	Georgette	Blazhevich	441 Scoville Road	514-795-9617	517	517	t	2022-11-22 00:00:00	5	3	\N
518	Genia	Iacobassi	9872 Waxwing Avenue	411-744-9385	518	518	f	2022-09-23 00:00:00	2	5	\N
519	Corbie	Levey	960 Moose Hill	464-166-6461	519	519	f	2022-06-19 00:00:00	5	5	\N
520	Batsheva	Gallehock	645 Macpherson Street	734-747-0418	520	520	f	2023-02-26 00:00:00	2	3	\N
521	Nev	Weerdenburg	5 Hudson Parkway	230-323-6669	521	521	f	2022-12-13 00:00:00	2	3	\N
522	Liz	Hampton	23485 Grayhawk Place	672-748-1519	522	522	f	2023-01-14 00:00:00	1	5	\N
523	Daphne	Barbie	227 8th Center	233-973-8379	523	523	t	2022-05-26 00:00:00	4	1	\N
524	Shirlene	Baudone	0 Loomis Trail	417-672-2559	524	524	f	2022-07-23 00:00:00	5	2	\N
525	Guendolen	Willshere	7 Boyd Drive	528-114-4006	525	525	f	2023-02-20 00:00:00	4	4	\N
526	Westleigh	Stevens	634 Badeau Court	722-382-2838	526	526	t	2023-03-25 00:00:00	4	4	\N
527	Danya	McKew	833 Upham Junction	473-309-4828	527	527	t	2022-11-21 00:00:00	2	5	\N
528	Pamela	Mix	69 Eagan Terrace	268-405-6373	528	528	t	2023-03-09 00:00:00	4	3	\N
529	Eran	O'Shee	3244 Dexter Park	204-887-7988	529	529	f	2022-12-17 00:00:00	5	2	\N
530	Beret	Stoves	34101 La Follette Crossing	348-831-5344	530	530	f	2022-03-30 00:00:00	4	4	\N
531	Rudie	Beck	72287 Schurz Center	598-864-0133	531	531	t	2023-01-01 00:00:00	2	3	\N
532	Gavan	Pepin	75839 Manley Drive	213-475-3948	532	532	t	2022-03-31 00:00:00	5	3	\N
533	Wilmar	Dolden	08 Pierstorff Court	589-309-1578	533	533	f	2023-01-05 00:00:00	3	4	\N
534	Susanetta	Spens	417 Tony Place	386-949-5830	534	534	f	2023-01-14 00:00:00	4	4	\N
535	Innis	McElhinney	8348 Starling Hill	487-504-1049	535	535	f	2022-10-18 00:00:00	3	4	\N
536	Manny	Bargery	983 Raven Road	426-367-2130	536	536	t	2023-03-25 00:00:00	1	2	\N
537	Zulema	Ault	0 Hoard Lane	955-110-7771	537	537	f	2022-08-04 00:00:00	2	1	\N
538	Enrika	Lockhart	78521 Vernon Point	344-243-6749	538	538	t	2022-05-15 00:00:00	3	2	\N
539	Forrest	Druitt	2917 Esker Plaza	510-670-9069	539	539	f	2022-11-13 00:00:00	3	1	\N
540	Dynah	Dedman	1041 Shelley Court	154-740-9914	540	540	t	2022-10-23 00:00:00	4	5	\N
541	Desiree	Cossins	9100 Pond Center	381-370-3180	541	541	f	2022-08-04 00:00:00	5	2	\N
542	Delphine	Sarjeant	1169 Memorial Junction	670-855-8255	542	542	f	2022-11-09 00:00:00	4	1	\N
543	Alanna	Pimerick	06423 Fairview Alley	561-120-3809	543	543	f	2023-03-11 00:00:00	2	3	\N
544	Shaughn	Nusche	05517 Red Cloud Point	640-725-4150	544	544	f	2022-11-26 00:00:00	1	4	\N
545	Linn	Martusewicz	3675 Troy Park	859-929-8136	545	545	t	2022-05-17 00:00:00	3	3	\N
546	Rosemonde	MacMoyer	275 Barby Park	426-718-7277	546	546	t	2023-02-25 00:00:00	5	3	\N
547	Shari	Hobden	2 Crownhardt Court	581-408-2541	547	547	t	2022-12-05 00:00:00	4	5	\N
548	Joly	Chomicz	321 Redwing Terrace	751-885-3455	548	548	t	2022-06-27 00:00:00	3	1	\N
549	Gilburt	Foy	970 Lerdahl Hill	724-279-6623	549	549	t	2022-09-28 00:00:00	5	1	\N
550	Jobina	Diviny	6472 Delaware Pass	239-292-5532	550	550	f	2023-03-03 00:00:00	4	3	\N
551	Brynna	Joanic	6 Prairieview Road	107-707-9015	551	551	t	2022-10-18 00:00:00	1	1	\N
552	Arnoldo	Glavias	8 Alpine Circle	535-272-5428	552	552	t	2022-11-30 00:00:00	2	3	\N
553	Yolanthe	Malafe	46847 Montana Drive	176-873-6646	553	553	f	2022-07-18 00:00:00	5	3	\N
554	Jecho	Peers	03978 Dakota Alley	192-628-1350	554	554	t	2022-10-30 00:00:00	5	3	\N
555	Chandler	Isles	39385 Randy Avenue	742-682-9595	555	555	f	2023-03-07 00:00:00	3	5	\N
556	Ezmeralda	Darlington	9794 East Road	570-519-1035	556	556	t	2022-06-04 00:00:00	4	4	\N
557	Corey	Gokes	794 Dakota Parkway	615-356-9784	557	557	f	2022-12-29 00:00:00	4	1	\N
558	Colin	Kislingbury	8 Waxwing Junction	453-555-5601	558	558	t	2022-12-06 00:00:00	4	5	\N
559	Ceil	Kears	6834 Loomis Pass	776-842-4707	559	559	f	2022-05-18 00:00:00	2	5	\N
560	Constantia	French	680 Grasskamp Drive	421-588-4025	560	560	t	2022-12-21 00:00:00	5	3	\N
561	Meredithe	Lough	3 Graceland Place	292-597-2136	561	561	f	2022-08-30 00:00:00	1	1	\N
562	Marillin	Woodrough	3 Maryland Point	118-199-0593	562	562	t	2022-07-16 00:00:00	5	2	\N
563	Cirilo	Garn	58478 Westerfield Court	670-289-7820	563	563	f	2023-01-12 00:00:00	5	2	\N
564	Gussy	Faire	401 Brentwood Center	588-116-6968	564	564	f	2022-06-25 00:00:00	4	2	\N
565	Mohandis	Gillfillan	295 Canary Drive	444-150-0867	565	565	t	2023-02-02 00:00:00	5	2	\N
566	Crissie	Kelshaw	7 Waxwing Road	578-662-8347	566	566	f	2022-12-07 00:00:00	5	3	\N
567	Chalmers	Penswick	406 Oneill Hill	915-203-3707	567	567	f	2022-05-21 00:00:00	1	3	\N
568	Ambrosi	O'Giany	66 Arkansas Trail	137-783-8598	568	568	f	2022-08-20 00:00:00	4	3	\N
569	Bari	Ellett	25 Petterle Drive	101-210-5970	569	569	t	2023-02-09 00:00:00	2	5	\N
570	Devondra	Rojel	2 Mayfield Court	581-553-9576	570	570	f	2022-06-01 00:00:00	4	3	\N
571	Koenraad	Dagon	86401 Calypso Parkway	397-256-5425	571	571	t	2022-07-16 00:00:00	3	5	\N
572	Sophi	Stapforth	572 Brown Avenue	528-672-7123	572	572	f	2022-05-05 00:00:00	2	5	\N
573	Tremain	Gogie	8187 Merchant Alley	171-604-4580	573	573	t	2022-06-12 00:00:00	2	5	\N
574	Florinda	Collingworth	1706 Fremont Place	469-935-4864	574	574	f	2022-05-16 00:00:00	2	3	\N
575	Burtie	Cuckson	079 Lake View Road	168-329-4883	575	575	t	2022-09-28 00:00:00	5	3	\N
576	Seka	Muzzi	673 Vidon Drive	407-725-9365	576	576	f	2022-06-03 00:00:00	1	2	\N
577	Blane	Popplestone	2 Green Drive	130-605-6337	577	577	t	2022-09-03 00:00:00	2	4	\N
578	Portia	Eisikowitz	2 Schurz Plaza	795-887-6013	578	578	t	2023-02-15 00:00:00	3	5	\N
579	Flemming	Loxley	64768 Alpine Plaza	591-309-0277	579	579	f	2022-06-20 00:00:00	4	3	\N
580	Valentia	Terbeck	03663 Drewry Circle	609-739-2973	580	580	f	2022-06-16 00:00:00	1	3	\N
581	Vida	Loan	09143 Beilfuss Terrace	781-434-3538	581	581	f	2022-07-19 00:00:00	4	5	\N
582	Marven	Kolak	51 Lyons Court	846-304-2675	582	582	t	2022-05-03 00:00:00	4	2	\N
583	Vanya	Woolager	3754 Declaration Lane	371-240-9941	583	583	t	2022-08-02 00:00:00	1	2	\N
584	Rena	Andren	79202 Forster Drive	215-183-3495	584	584	f	2022-12-23 00:00:00	4	5	\N
585	Brinna	Slaughter	7 Lakeland Circle	651-260-5853	585	585	t	2022-12-17 00:00:00	1	5	\N
586	Luce	De Giorgio	29038 2nd Alley	968-513-6656	586	586	t	2022-09-26 00:00:00	1	2	\N
587	Addy	Nurcombe	9695 Mcguire Park	210-470-6407	587	587	f	2022-10-02 00:00:00	1	3	\N
588	Farand	Arp	4 Susan Junction	808-374-7161	588	588	t	2022-05-23 00:00:00	2	3	\N
589	Fleming	Humby	21663 Mendota Drive	216-632-9123	589	589	f	2023-01-24 00:00:00	5	2	\N
590	Caron	Hammon	67 Grover Hill	720-864-9718	590	590	t	2022-12-23 00:00:00	1	2	\N
591	Petronia	Pinnington	79 Brickson Park Drive	121-698-4084	591	591	f	2022-12-24 00:00:00	1	1	\N
592	Sherie	Bate	7 Moose Circle	470-280-7620	592	592	f	2022-04-09 00:00:00	3	3	\N
593	Anett	Woodington	578 Fordem Pass	511-741-7770	593	593	t	2023-02-01 00:00:00	3	3	\N
594	Corette	Keepe	17 Oneill Pass	527-529-9088	594	594	f	2022-10-31 00:00:00	5	2	\N
595	Arthur	Caldicott	60993 Dovetail Park	490-273-9116	595	595	f	2023-01-08 00:00:00	3	4	\N
596	Abba	Elsdon	8 Brentwood Terrace	535-736-5374	596	596	f	2022-09-26 00:00:00	4	3	\N
597	Kienan	Norton	71616 Kipling Point	437-783-8750	597	597	f	2022-05-03 00:00:00	1	2	\N
598	Angele	Freezer	2 Hermina Road	296-132-4146	598	598	t	2022-09-22 00:00:00	3	3	\N
599	Celene	Laraway	34 Hintze Center	133-127-3977	599	599	f	2022-05-26 00:00:00	3	4	\N
600	Andrey	Marriage	7 Golf View Parkway	984-521-2654	600	600	t	2023-02-18 00:00:00	4	4	\N
601	Nalani	Bernette	1229 Melody Place	674-807-8493	601	601	f	2022-11-10 00:00:00	4	3	\N
602	Terence	Dymoke	189 Bartelt Way	968-379-6127	602	602	t	2022-06-06 00:00:00	1	5	\N
603	Olga	McElory	59596 Sommers Place	635-818-9165	603	603	t	2022-07-02 00:00:00	2	3	\N
604	Stephine	Kilfeather	31 Hayes Parkway	550-261-3831	604	604	f	2023-02-06 00:00:00	2	5	\N
605	Royall	Peaple	3446 Shoshone Way	596-292-2580	605	605	t	2022-04-27 00:00:00	4	3	\N
606	Tildy	Hritzko	73 Oak Valley Plaza	121-412-5550	606	606	f	2022-11-16 00:00:00	4	3	\N
607	Tomkin	Tyrwhitt	647 Chive Lane	353-398-4303	607	607	f	2022-09-27 00:00:00	3	2	\N
608	Margarita	Geillier	446 Utah Lane	451-983-2374	608	608	t	2023-01-18 00:00:00	3	5	\N
609	Clemmy	Cavolini	346 Johnson Parkway	153-515-9008	609	609	t	2022-07-02 00:00:00	5	1	\N
610	Salmon	Tripean	19376 Charing Cross Court	768-582-7387	610	610	f	2022-06-08 00:00:00	1	2	\N
611	Rodd	Adie	225 Crescent Oaks Street	457-563-6884	611	611	t	2022-11-15 00:00:00	3	3	\N
612	Trueman	Nemchinov	8 Dryden Pass	836-320-5411	612	612	f	2022-05-29 00:00:00	1	4	\N
613	Patric	Balnave	40931 Pond Drive	372-955-7457	613	613	f	2022-06-10 00:00:00	5	5	\N
614	Florina	Churchman	956 Arapahoe Crossing	692-977-5823	614	614	f	2022-04-14 00:00:00	5	5	\N
615	Bald	Coppock.	8 Gerald Pass	512-429-1553	615	615	f	2022-05-07 00:00:00	2	1	\N
616	Marcello	Scotchford	93 Karstens Junction	600-387-5784	616	616	f	2022-07-12 00:00:00	3	4	\N
617	Rafaela	McDool	15725 Londonderry Terrace	404-731-0069	617	617	f	2022-04-13 00:00:00	2	2	\N
618	Rhiamon	Lethieulier	7 Gina Terrace	917-933-4579	618	618	f	2023-01-13 00:00:00	5	3	\N
619	Debi	Ninotti	7265 Holmberg Terrace	395-852-0221	619	619	t	2022-10-30 00:00:00	4	2	\N
620	Dorri	Thrasher	458 Elka Circle	409-902-2972	620	620	t	2022-09-15 00:00:00	5	3	\N
621	Florie	Pettifer	648 Summit Center	853-368-1972	621	621	t	2022-10-30 00:00:00	4	3	\N
622	Alida	O'Lennachain	7 Butternut Street	206-315-1029	622	622	f	2023-01-27 00:00:00	5	2	\N
623	Bradley	Jovanovic	1 Esker Circle	942-197-6890	623	623	f	2022-05-04 00:00:00	1	3	\N
624	Corrie	Maudling	187 7th Hill	186-833-6785	624	624	f	2022-10-29 00:00:00	2	5	\N
625	Fara	Sarsfield	2719 Mayfield Street	108-309-6081	625	625	f	2022-04-07 00:00:00	4	2	\N
626	Alaine	Glyssanne	64924 Lunder Parkway	830-977-0132	626	626	t	2022-09-16 00:00:00	4	2	\N
627	Gray	Marushak	52 Debra Court	972-908-3790	627	627	f	2022-06-28 00:00:00	1	2	\N
628	Rasia	Densun	30 Tomscot Crossing	676-344-2930	628	628	f	2022-07-14 00:00:00	3	4	\N
629	Corly	Yarnell	6 Roxbury Way	318-640-3439	629	629	t	2022-06-16 00:00:00	2	2	\N
630	Edd	Newman	9 Fisk Point	375-618-9037	630	630	f	2023-01-03 00:00:00	1	3	\N
631	Nickolas	Chastand	8 Rowland Junction	985-808-3167	631	631	t	2023-01-26 00:00:00	3	2	\N
632	Doris	Slater	880 Rieder Point	222-674-6967	632	632	t	2022-11-13 00:00:00	1	5	\N
633	Joshuah	Masser	416 Harbort Street	522-597-6465	633	633	f	2022-07-31 00:00:00	1	5	\N
634	Merry	Plaunch	55048 Blaine Junction	333-840-3461	634	634	f	2022-09-27 00:00:00	3	1	\N
635	Christabel	Templman	9894 Reinke Place	485-947-6335	635	635	t	2023-03-16 00:00:00	5	5	\N
636	Hedy	Corradini	62 Claremont Park	261-933-4055	636	636	t	2022-04-21 00:00:00	1	2	\N
637	Millisent	Markson	929 Mallory Court	998-383-7350	637	637	f	2022-05-23 00:00:00	1	3	\N
638	Myrle	Kezor	111 Center Hill	981-288-4526	638	638	t	2022-06-14 00:00:00	2	1	\N
639	Ronda	Oblein	694 Spenser Lane	451-468-5351	639	639	f	2023-03-05 00:00:00	3	2	\N
640	Bradford	Sambeck	66833 Nobel Lane	250-195-1807	640	640	f	2022-05-10 00:00:00	2	4	\N
641	Aeriela	Brauns	47 Debs Circle	674-417-4528	641	641	t	2023-01-28 00:00:00	5	1	\N
642	Reeva	Besemer	54348 Grover Point	784-168-5795	642	642	t	2022-09-17 00:00:00	3	5	\N
643	Hashim	Behrendsen	08045 Sycamore Crossing	298-162-4466	643	643	f	2022-09-15 00:00:00	5	4	\N
644	Linette	Shurville	4 Ludington Road	647-664-4535	644	644	t	2022-08-13 00:00:00	5	5	\N
645	Ema	Witheridge	1 Prairie Rose Alley	496-566-7375	645	645	f	2022-05-17 00:00:00	5	5	\N
646	Ewen	Flux	3387 Milwaukee Alley	995-406-6566	646	646	t	2022-10-17 00:00:00	1	2	\N
647	Teddie	Enstone	79 Garrison Trail	633-172-9222	647	647	f	2022-08-18 00:00:00	2	5	\N
648	Neil	Tarrier	0986 Prairie Rose Crossing	399-478-1831	648	648	t	2022-07-25 00:00:00	2	5	\N
649	Leshia	Wilderspoon	8448 American Way	542-333-3981	649	649	t	2022-04-21 00:00:00	4	5	\N
650	Roseline	Gorsse	077 Garrison Trail	147-258-3409	650	650	t	2023-01-23 00:00:00	3	1	\N
651	Joelie	Towriss	96099 Lighthouse Bay Drive	880-917-1012	651	651	f	2023-03-18 00:00:00	5	2	\N
652	Patrice	Shave	13 Loeprich Pass	881-418-5452	652	652	t	2022-12-28 00:00:00	2	1	\N
653	Gav	Lynett	9 Northfield Street	488-300-3543	653	653	t	2022-05-11 00:00:00	3	1	\N
654	Wade	Richie	9 Brentwood Terrace	941-657-7648	654	654	f	2023-03-07 00:00:00	5	3	\N
655	Ara	Baldung	1 Morrow Street	733-374-1783	655	655	t	2022-10-12 00:00:00	1	5	\N
656	Perceval	McVie	7 Columbus Circle	295-659-9828	656	656	f	2022-06-07 00:00:00	5	4	\N
657	Hollie	Lycett	4 Golf Trail	979-701-5094	657	657	t	2022-11-11 00:00:00	4	3	\N
658	Dniren	Tomkin	89 Northland Hill	861-606-5561	658	658	f	2022-09-26 00:00:00	2	2	\N
659	Lorrie	Di Domenico	05 Carey Point	865-651-7715	659	659	t	2022-09-28 00:00:00	1	5	\N
660	Brocky	Halpin	1140 Thackeray Park	814-823-6438	660	660	t	2022-10-24 00:00:00	3	3	\N
661	Tiffany	Dyter	7438 Anhalt Avenue	300-741-8726	661	661	t	2022-04-04 00:00:00	1	2	\N
662	Drucie	Scrane	9802 Heffernan Street	806-321-6590	662	662	t	2023-03-08 00:00:00	1	2	\N
663	Lemmie	Ramm	2 Spohn Point	512-394-7016	663	663	t	2022-10-15 00:00:00	1	4	\N
664	Puff	Streader	79 Sutteridge Road	344-813-2663	664	664	f	2022-11-30 00:00:00	2	4	\N
665	Rhonda	Orlton	0584 Arizona Way	339-644-4089	665	665	f	2022-05-20 00:00:00	1	4	\N
666	Morena	Senner	5 Anniversary Pass	276-554-8482	666	666	t	2022-06-12 00:00:00	4	1	\N
667	Tobin	Cristofol	46 Packers Trail	462-255-8918	667	667	f	2022-11-10 00:00:00	3	3	\N
668	Harbert	Friedlos	59 Pennsylvania Parkway	260-668-7488	668	668	f	2022-08-06 00:00:00	1	1	\N
669	Adolphus	Ertelt	6521 Scott Place	173-530-8031	669	669	f	2022-08-13 00:00:00	1	5	\N
670	Suzette	Bateup	1854 Beilfuss Lane	673-575-1269	670	670	t	2022-10-09 00:00:00	5	5	\N
671	Avrit	Cruttenden	709 Bartelt Circle	400-299-6128	671	671	t	2022-10-01 00:00:00	3	3	\N
672	Camile	Snalham	55 Crescent Oaks Way	993-592-0748	672	672	f	2022-04-14 00:00:00	2	2	\N
673	Vale	Wythe	845 Waywood Place	819-526-2097	673	673	t	2023-03-05 00:00:00	5	2	\N
674	Perla	Harlow	62 Johnson Alley	126-788-4150	674	674	f	2022-04-16 00:00:00	3	3	\N
675	Bliss	Keiley	4 Jay Circle	852-245-5160	675	675	f	2022-12-03 00:00:00	5	2	\N
676	Calla	Pitts	16335 Elgar Terrace	906-995-4346	676	676	t	2022-08-21 00:00:00	5	1	\N
677	Eward	Tayt	971 Harper Drive	437-786-4593	677	677	t	2022-11-20 00:00:00	1	5	\N
678	Shadow	Kleisel	9423 Acker Drive	729-792-0492	678	678	t	2022-11-17 00:00:00	5	4	\N
679	Hayley	McKeevers	25586 Bashford Point	611-966-5286	679	679	t	2023-01-05 00:00:00	4	3	\N
680	Clive	Oakenford	633 Dryden Park	609-191-0246	680	680	f	2022-11-19 00:00:00	2	1	\N
681	Jermaine	Swiers	45108 1st Street	515-823-4322	681	681	t	2023-03-14 00:00:00	3	1	\N
682	Reyna	Dewan	3567 Clarendon Crossing	109-925-7962	682	682	f	2023-03-03 00:00:00	3	1	\N
683	Bobina	Bowich	31 Toban Drive	463-193-6634	683	683	t	2022-07-25 00:00:00	2	3	\N
684	Francklin	Coppeard	509 Westridge Hill	675-973-5511	684	684	f	2022-06-13 00:00:00	1	3	\N
685	Robby	Markel	8 Dunning Crossing	541-279-3958	685	685	f	2023-01-28 00:00:00	3	1	\N
686	Vicky	Siggers	91 Melrose Avenue	606-993-6604	686	686	f	2022-12-22 00:00:00	4	3	\N
687	Edwina	Zavittieri	5 Westerfield Place	893-238-0606	687	687	t	2022-12-14 00:00:00	5	4	\N
688	Adriano	Oxbie	0 Rockefeller Plaza	513-350-8111	688	688	t	2022-05-30 00:00:00	5	4	\N
689	Odelinda	Isakson	567 Longview Alley	314-730-1436	689	689	t	2022-07-06 00:00:00	5	1	\N
690	Kassia	Showalter	85 Sugar Pass	191-526-7054	690	690	t	2022-07-31 00:00:00	5	3	\N
691	Wrennie	Joint	4413 Graedel Street	855-710-6331	691	691	t	2022-12-23 00:00:00	5	1	\N
692	Morlee	Croley	861 Susan Circle	830-518-3221	692	692	f	2022-12-23 00:00:00	4	3	\N
693	Sayre	Joincey	6 Basil Hill	826-252-4194	693	693	t	2022-07-26 00:00:00	4	4	\N
694	Sherline	Bidewell	21 Chive Terrace	987-518-6365	694	694	t	2023-03-24 00:00:00	2	1	\N
695	Charity	Willimont	3 Park Meadow Park	748-149-6666	695	695	f	2022-04-04 00:00:00	3	1	\N
696	Dillie	Palin	1991 Stuart Crossing	763-569-0048	696	696	t	2022-07-21 00:00:00	2	2	\N
697	Shane	Bourgour	6882 Crownhardt Way	235-887-5292	697	697	f	2022-11-09 00:00:00	4	4	\N
698	Orville	Molyneaux	068 Grasskamp Street	754-539-1945	698	698	t	2022-11-26 00:00:00	5	4	\N
699	Guendolen	Dibbin	383 Holmberg Hill	372-148-4542	699	699	t	2023-02-02 00:00:00	4	4	\N
700	Wilhelmina	Shenton	30083 Holy Cross Point	264-597-7242	700	700	t	2023-03-05 00:00:00	1	5	\N
701	Carlina	Friberg	30906 Di Loreto Place	827-224-6016	701	701	t	2022-12-18 00:00:00	2	1	\N
702	Natalya	Clampe	30 Westport Avenue	601-893-0266	702	702	t	2022-06-20 00:00:00	1	3	\N
703	Trudie	Candwell	58 Hansons Road	524-981-5332	703	703	t	2022-11-25 00:00:00	3	5	\N
704	Meggy	MacGille	9 Main Road	103-615-5092	704	704	t	2022-08-22 00:00:00	5	2	\N
705	Colan	Bryning	83 Menomonie Lane	577-738-2782	705	705	f	2022-07-01 00:00:00	5	3	\N
706	Mariel	Forseith	196 Blue Bill Park Alley	922-778-8559	706	706	t	2023-01-04 00:00:00	4	4	\N
707	Christiana	Clewlowe	9 Tony Road	549-806-0666	707	707	f	2023-01-09 00:00:00	2	5	\N
708	Kevin	Ducker	4 Algoma Point	731-600-8211	708	708	f	2022-06-08 00:00:00	4	1	\N
709	Caresse	Chaffen	7 Badeau Road	210-420-4555	709	709	t	2022-05-12 00:00:00	4	1	\N
710	Gui	Trimming	7 David Parkway	357-166-1688	710	710	f	2022-10-19 00:00:00	3	1	\N
711	Kitti	Arrowsmith	53136 Schurz Avenue	726-670-6891	711	711	t	2022-04-02 00:00:00	2	3	\N
712	Shelli	Tytterton	9 Rockefeller Terrace	236-673-8306	712	712	t	2022-07-17 00:00:00	1	2	\N
713	Noby	Addinall	410 Annamark Point	638-256-4384	713	713	t	2022-11-29 00:00:00	4	5	\N
714	Malena	Menlow	338 North Alley	845-531-9060	714	714	f	2023-01-20 00:00:00	4	1	\N
715	Shel	Turmell	885 Clyde Gallagher Court	989-930-2913	715	715	t	2022-08-28 00:00:00	4	4	\N
716	Kitty	Rohlf	0 Schlimgen Circle	429-126-6829	716	716	t	2022-05-11 00:00:00	1	2	\N
717	Niki	Gier	88 Truax Center	370-973-2825	717	717	f	2022-08-04 00:00:00	2	4	\N
718	Kaitlin	Branchet	637 Elka Street	934-315-9987	718	718	f	2022-04-29 00:00:00	4	2	\N
719	Theda	Jecock	51254 6th Plaza	383-969-2638	719	719	t	2023-02-27 00:00:00	2	4	\N
720	Filmore	Walworche	1 Grover Plaza	369-929-5788	720	720	t	2022-04-15 00:00:00	2	1	\N
721	Alberto	Walch	611 Village Green Drive	572-801-6512	721	721	t	2022-12-01 00:00:00	1	5	\N
722	Dannel	Dobbs	1 Randy Road	126-575-2027	722	722	t	2022-11-30 00:00:00	4	1	\N
723	Nelie	Compston	1216 Utah Drive	945-351-0348	723	723	t	2022-06-14 00:00:00	2	5	\N
724	Oralie	Gierth	13714 Boyd Place	810-543-0556	724	724	t	2023-03-08 00:00:00	5	5	\N
725	Knox	Petran	418 Pond Way	714-378-2986	725	725	f	2022-07-12 00:00:00	1	4	\N
726	Jori	Slatter	6475 Meadow Ridge Junction	422-479-1334	726	726	t	2022-06-07 00:00:00	1	2	\N
727	Jack	Yesinov	39477 Northfield Park	504-547-7808	727	727	t	2022-03-29 00:00:00	2	5	\N
728	Keriann	Britton	03030 Warrior Park	761-655-0809	728	728	t	2022-09-27 00:00:00	1	4	\N
729	Cameron	Woolvett	2 Daystar Point	467-115-0239	729	729	t	2022-06-09 00:00:00	3	2	\N
730	Gerty	Dubble	7 Truax Trail	800-529-5159	730	730	t	2022-07-10 00:00:00	1	2	\N
731	Yule	Noddles	8365 Independence Avenue	533-359-3201	731	731	f	2022-08-24 00:00:00	5	5	\N
732	Karlene	Shiers	45322 Mcbride Plaza	629-640-5532	732	732	t	2022-03-29 00:00:00	4	4	\N
733	Moselle	Shinton	12 Bowman Parkway	806-328-3795	733	733	t	2022-05-01 00:00:00	3	1	\N
734	Whitby	Milella	32093 Manitowish Hill	929-889-1316	734	734	t	2022-11-11 00:00:00	1	1	\N
735	Martelle	Pitney	76063 Vera Junction	763-528-8890	735	735	t	2023-02-20 00:00:00	4	2	\N
736	Manuel	Bowring	009 Warner Lane	380-978-2971	736	736	t	2022-07-13 00:00:00	5	5	\N
737	Jacquetta	Richemont	93 Brickson Park Avenue	609-429-0468	737	737	t	2022-11-16 00:00:00	1	4	\N
738	Meghan	Bolwell	3463 John Wall Drive	728-644-1384	738	738	t	2022-08-13 00:00:00	4	1	\N
739	Karina	Curee	7288 Barby Pass	246-410-9669	739	739	t	2022-08-05 00:00:00	3	5	\N
740	Piper	Sunley	92 New Castle Center	403-843-9588	740	740	f	2022-07-09 00:00:00	3	1	\N
741	Orbadiah	Shakelade	0 Clarendon Point	786-420-6177	741	741	f	2022-09-01 00:00:00	4	3	\N
742	Flin	Olle	108 Debra Trail	710-767-1117	742	742	f	2022-04-05 00:00:00	5	1	\N
743	Trisha	Rambadt	92456 Mitchell Drive	370-184-4137	743	743	t	2022-05-04 00:00:00	4	2	\N
744	Tamarra	Jolley	6 Westport Terrace	307-318-6966	744	744	f	2022-07-01 00:00:00	3	1	\N
745	Keely	Sherrell	74414 Hanson Plaza	961-128-2242	745	745	f	2023-03-11 00:00:00	1	1	\N
746	Willey	Blizard	2 Lotheville Road	522-307-5198	746	746	f	2022-05-12 00:00:00	2	1	\N
747	Locke	Neely	1 Welch Way	986-789-0055	747	747	f	2022-07-04 00:00:00	2	3	\N
748	Antone	Napthine	2 John Wall Street	125-217-4989	748	748	f	2022-06-06 00:00:00	5	4	\N
749	Lukas	Whanstall	5 Saint Paul Place	784-273-9593	749	749	f	2022-08-03 00:00:00	1	1	\N
750	Yolande	Sunner	05 Brentwood Drive	399-647-9895	750	750	f	2022-08-09 00:00:00	3	3	\N
751	Georgeta	Feilden	19069 Bultman Road	501-740-9738	751	751	f	2022-12-10 00:00:00	5	5	\N
752	Pablo	Ridsdell	3378 Atwood Park	609-241-1023	752	752	t	2022-11-08 00:00:00	5	2	\N
753	Fidel	Bottomore	5 Oriole Lane	762-823-1570	753	753	f	2022-07-16 00:00:00	2	2	\N
754	Johann	Reglar	481 Di Loreto Terrace	285-535-8865	754	754	f	2022-05-12 00:00:00	3	3	\N
755	Alexio	Petegrew	118 Russell Center	833-550-8837	755	755	f	2022-05-16 00:00:00	1	3	\N
756	Benjamin	McPeice	8783 South Court	320-623-3193	756	756	f	2022-07-17 00:00:00	3	4	\N
757	Marian	Ibbett	17 Northfield Hill	567-789-4149	757	757	f	2023-02-03 00:00:00	5	2	\N
758	Gavrielle	Davidde	4 Manitowish Plaza	718-495-6342	758	758	t	2022-05-06 00:00:00	4	5	\N
759	Nettle	Goodfellow	786 Vidon Park	195-589-0107	759	759	t	2022-07-06 00:00:00	3	4	\N
760	Manda	Lyddiard	3145 Farmco Junction	138-259-2383	760	760	f	2023-02-01 00:00:00	3	5	\N
761	Jere	Brodeau	4 Norway Maple Road	272-443-0388	761	761	f	2022-11-14 00:00:00	1	3	\N
762	Rufus	O Sullivan	650 5th Junction	128-148-2819	762	762	t	2023-02-11 00:00:00	1	1	\N
763	Zorine	Schade	4742 Rusk Court	228-720-4401	763	763	f	2023-02-09 00:00:00	1	5	\N
764	Sandie	Spincks	1580 Green Ridge Plaza	371-718-6426	764	764	f	2022-09-03 00:00:00	5	3	\N
765	Alexandrina	Ireland	3 Manufacturers Circle	922-896-8402	765	765	f	2023-02-01 00:00:00	5	2	\N
766	Normy	Seine	2801 Rigney Way	282-322-2582	766	766	f	2022-09-14 00:00:00	1	5	\N
767	Dorette	Bearsmore	31 Bartillon Hill	981-861-1106	767	767	f	2022-11-27 00:00:00	5	1	\N
768	Corissa	Kleinhaus	02 Superior Trail	309-210-4310	768	768	t	2022-04-09 00:00:00	3	3	\N
769	Quinta	Ianson	5569 Anderson Circle	388-926-6421	769	769	t	2022-11-02 00:00:00	5	5	\N
770	Candra	Spitaro	4275 Karstens Court	531-439-3136	770	770	f	2023-01-05 00:00:00	1	1	\N
771	Brittani	Scintsbury	05 Susan Parkway	203-238-9625	771	771	f	2022-05-30 00:00:00	2	3	\N
772	Nobe	Amberson	8 Bluestem Way	248-433-5603	772	772	t	2022-07-29 00:00:00	3	4	\N
773	Avigdor	Brock	139 Homewood Lane	525-690-3483	773	773	f	2022-05-31 00:00:00	1	4	\N
774	Liana	Apark	4915 Main Way	760-596-8291	774	774	t	2022-04-29 00:00:00	2	3	\N
775	Nelli	Hurndall	9 Fallview Parkway	620-888-9985	775	775	t	2023-03-22 00:00:00	2	1	\N
776	Silvia	Otridge	40 Kennedy Center	833-832-6479	776	776	f	2023-01-10 00:00:00	1	4	\N
777	Lucille	Welsh	1 Granby Avenue	570-122-4697	777	777	t	2023-03-22 00:00:00	3	2	\N
778	Gayle	Trenoweth	62148 Caliangt Circle	205-199-4031	778	778	t	2023-03-02 00:00:00	2	2	\N
779	Berthe	Vale	88 Acker Pass	808-186-7247	779	779	t	2022-08-24 00:00:00	4	4	\N
780	Elvis	Scarrott	68116 Lien Trail	572-603-0344	780	780	t	2022-11-09 00:00:00	5	5	\N
781	Doy	Bavidge	7 Mallory Drive	922-642-0196	781	781	f	2022-12-18 00:00:00	5	4	\N
782	Calvin	Haulkham	31875 Messerschmidt Center	844-906-9584	782	782	t	2022-08-11 00:00:00	2	1	\N
783	Dori	Yakunkin	79396 Butternut Trail	708-518-9605	783	783	t	2023-02-10 00:00:00	3	3	\N
784	Philippe	Witnall	87177 Roxbury Alley	647-254-1408	784	784	t	2022-06-14 00:00:00	4	5	\N
785	Sheff	Dye	155 Division Circle	499-811-6580	785	785	t	2023-02-04 00:00:00	5	3	\N
786	Noel	Skingley	9 Haas Point	371-994-0243	786	786	f	2022-09-04 00:00:00	5	2	\N
787	Lydon	Winridge	0564 Hooker Pass	450-699-0540	787	787	f	2022-11-12 00:00:00	5	2	\N
788	Audy	Ramplee	888 Summit Crossing	786-108-6053	788	788	f	2022-12-24 00:00:00	4	2	\N
789	Rosamond	Binney	77504 Lakewood Crossing	724-889-3367	789	789	t	2022-04-19 00:00:00	1	3	\N
790	Virgie	Pellew	1761 Elka Park	720-997-7288	790	790	t	2023-02-19 00:00:00	5	5	\N
791	Leonhard	Tuckie	5090 Saint Paul Way	577-877-8072	791	791	t	2022-05-04 00:00:00	4	1	\N
792	Winny	Matschke	8615 Mitchell Parkway	498-448-5122	792	792	f	2022-10-27 00:00:00	4	2	\N
793	Ade	Fleis	42 Harper Terrace	907-103-2608	793	793	f	2022-09-06 00:00:00	2	5	\N
794	Berry	Cattermull	68107 Westridge Lane	345-265-8128	794	794	f	2023-03-27 00:00:00	5	4	\N
795	Moyra	Butlin	4981 Arrowood Terrace	659-516-2904	795	795	t	2022-04-05 00:00:00	2	3	\N
796	Parrnell	Simms	21 Sherman Alley	786-653-3787	796	796	f	2022-05-03 00:00:00	2	1	\N
797	Julissa	Roydon	87814 Brickson Park Hill	644-660-7574	797	797	f	2022-04-11 00:00:00	5	4	\N
798	Milton	Fellona	24 Sutteridge Park	604-867-3777	798	798	t	2022-04-05 00:00:00	1	3	\N
799	Charleen	Hugonin	74354 Becker Place	657-528-1453	799	799	t	2022-07-18 00:00:00	3	2	\N
800	Obediah	Timlett	14 Merry Circle	798-358-6220	800	800	t	2023-02-12 00:00:00	1	2	\N
801	Elliott	Marcussen	523 Johnson Point	825-682-7272	801	801	f	2023-02-18 00:00:00	3	5	\N
802	Sigfrid	Mellenby	916 High Crossing Parkway	802-710-8606	802	802	t	2022-10-09 00:00:00	2	1	\N
803	Wallace	Gallyon	8 Hayes Lane	359-161-6647	803	803	t	2023-01-30 00:00:00	3	4	\N
804	Tybie	Simonian	59955 Thompson Hill	474-368-3799	804	804	t	2022-06-16 00:00:00	2	5	\N
805	Rodolfo	Lumbly	458 Schmedeman Way	736-548-2685	805	805	t	2022-12-29 00:00:00	2	4	\N
806	Pattie	Lardeux	2 Brown Alley	227-472-6472	806	806	t	2022-11-02 00:00:00	5	3	\N
807	Kayley	Poynzer	175 Rieder Avenue	733-774-2929	807	807	f	2022-07-05 00:00:00	4	2	\N
808	Wallas	Helin	5 Fair Oaks Way	466-317-1365	808	808	t	2023-01-08 00:00:00	2	4	\N
809	Gustie	Klulicek	844 7th Pass	130-356-6113	809	809	f	2023-02-11 00:00:00	2	5	\N
810	Sibyl	McQuode	471 Schmedeman Alley	850-497-7264	810	810	t	2022-04-22 00:00:00	4	3	\N
811	Alfy	Ardron	61 Eagle Crest Circle	912-323-2545	811	811	f	2022-07-20 00:00:00	4	2	\N
812	Garreth	Newis	86 Meadow Valley Hill	713-393-4472	812	812	t	2022-08-23 00:00:00	3	4	\N
813	Juli	Pheazey	967 Nova Drive	293-448-1017	813	813	t	2022-08-07 00:00:00	5	4	\N
814	Merl	Peealess	1634 Bay Terrace	883-342-9780	814	814	f	2022-05-28 00:00:00	5	2	\N
815	Janene	Sayles	61402 Schlimgen Place	818-400-9722	815	815	f	2022-08-31 00:00:00	2	5	\N
816	Hyatt	Condon	2 Hoard Avenue	652-246-6586	816	816	f	2023-03-06 00:00:00	4	1	\N
817	Marty	Parren	252 Cherokee Street	286-136-2681	817	817	f	2022-10-05 00:00:00	3	2	\N
818	Caroline	Sikora	814 Loeprich Road	888-845-5718	818	818	f	2022-11-15 00:00:00	5	3	\N
819	Binny	Posnette	63567 Superior Parkway	902-443-5615	819	819	f	2023-01-18 00:00:00	5	4	\N
820	Dicky	Baline	77239 Emmet Drive	774-171-8218	820	820	t	2022-05-17 00:00:00	5	3	\N
821	Yule	Crocumbe	669 Park Meadow Hill	706-184-9278	821	821	f	2022-03-31 00:00:00	1	1	\N
822	Ninnetta	Adcocks	69 Algoma Park	477-973-0864	822	822	f	2023-02-27 00:00:00	1	5	\N
823	Tann	Bissatt	43 Northwestern Plaza	838-671-1740	823	823	f	2022-10-13 00:00:00	4	2	\N
824	Daryn	Elleyne	9312 Burning Wood Avenue	171-352-8807	824	824	t	2023-01-29 00:00:00	1	5	\N
825	Delaney	Nehlsen	10687 Paget Center	668-331-2990	825	825	t	2023-03-02 00:00:00	5	3	\N
826	Kayle	Cheasman	4 Elgar Park	527-950-9660	826	826	f	2022-11-25 00:00:00	5	1	\N
827	Doug	Rogge	21 Autumn Leaf Place	370-843-1048	827	827	f	2022-07-14 00:00:00	3	3	\N
828	Jody	Terram	09 Sunbrook Alley	718-514-8660	828	828	t	2022-11-16 00:00:00	1	1	\N
829	Emalee	Abramowitz	3 Harbort Avenue	964-905-1585	829	829	f	2022-05-25 00:00:00	3	5	\N
830	Annecorinne	Colleford	1395 Elmside Crossing	760-852-8844	830	830	t	2022-05-23 00:00:00	4	1	\N
831	Rik	Coraini	9537 Mockingbird Circle	795-524-6132	831	831	t	2022-06-07 00:00:00	3	4	\N
832	Carol-jean	Franzotto	7262 Algoma Plaza	692-938-8889	832	832	f	2022-08-13 00:00:00	3	2	\N
833	Nolie	Cragell	694 Algoma Point	352-423-7628	833	833	f	2022-05-13 00:00:00	2	5	\N
834	Joshua	Piotr	4 Dwight Circle	824-201-6691	834	834	f	2023-01-30 00:00:00	3	3	\N
835	Raddie	Franies	1 3rd Drive	414-586-3551	835	835	f	2022-04-08 00:00:00	5	3	\N
836	Roslyn	Vasilechko	53850 Spaight Lane	498-353-4562	836	836	t	2022-05-16 00:00:00	3	3	\N
837	Leonid	Shrive	8 Springs Pass	305-561-5518	837	837	f	2022-07-14 00:00:00	1	3	\N
838	Cad	Douse	74272 Prairieview Park	134-334-8067	838	838	f	2022-11-04 00:00:00	3	1	\N
839	Janet	Crates	64 Shopko Street	200-782-6243	839	839	f	2022-04-23 00:00:00	3	4	\N
840	Georgi	Arkin	721 Cherokee Hill	809-896-1877	840	840	t	2022-08-22 00:00:00	1	4	\N
841	Sunny	Lockhead	99594 Kenwood Crossing	945-901-2749	841	841	t	2022-07-01 00:00:00	3	3	\N
842	Jodi	Meekin	3227 Armistice Parkway	764-287-2737	842	842	f	2022-12-31 00:00:00	2	3	\N
843	Dodie	Ciepluch	95241 Crescent Oaks Drive	932-693-7044	843	843	f	2022-09-22 00:00:00	4	5	\N
844	Monika	Willerstone	653 Forest Dale Circle	981-912-6081	844	844	t	2022-10-29 00:00:00	3	3	\N
845	Efren	Pirrone	1675 Truax Place	645-650-3033	845	845	f	2022-11-09 00:00:00	1	1	\N
846	Neille	Braiden	35 Vernon Pass	602-417-6734	846	846	t	2022-04-13 00:00:00	5	4	\N
847	Zarla	Sneezum	7407 Blackbird Court	241-241-4017	847	847	f	2022-12-17 00:00:00	3	4	\N
848	Celestine	April	868 Norway Maple Way	282-184-1698	848	848	t	2023-03-12 00:00:00	2	4	\N
849	Rhys	Shirt	12 Ronald Regan Hill	717-814-5228	849	849	f	2022-10-04 00:00:00	4	2	\N
850	Davey	Arlidge	1 Autumn Leaf Pass	549-669-3811	850	850	t	2022-05-15 00:00:00	1	4	\N
851	Micaela	Olesen	1296 Burning Wood Crossing	901-208-9193	851	851	f	2022-03-31 00:00:00	1	2	\N
852	Shandeigh	Greensall	25 Golf Street	904-906-8516	852	852	f	2023-02-08 00:00:00	3	2	\N
853	Colline	Minghella	87 Ronald Regan Junction	519-399-6258	853	853	t	2022-10-14 00:00:00	5	1	\N
854	Lyndy	Aery	2991 Moland Hill	952-389-8103	854	854	f	2022-08-18 00:00:00	2	5	\N
855	Tiphany	Stubley	85 Hayes Way	252-968-5919	855	855	f	2022-08-13 00:00:00	3	3	\N
856	Debbi	Moule	8233 International Court	403-853-9733	856	856	t	2022-06-11 00:00:00	1	3	\N
857	Chryste	Matityahu	35 Evergreen Park	243-230-4564	857	857	f	2022-07-06 00:00:00	1	1	\N
858	Riva	Dearan	49 Stuart Center	756-996-4231	858	858	t	2022-04-11 00:00:00	3	3	\N
859	Violetta	Chretien	87 Ridge Oak Alley	127-148-3842	859	859	t	2022-06-11 00:00:00	2	3	\N
860	Raimondo	Leckey	04 Luster Park	208-175-4704	860	860	f	2023-02-01 00:00:00	5	5	\N
861	Franzen	Trimme	2159 Pond Lane	367-821-1286	861	861	t	2022-06-30 00:00:00	2	3	\N
862	Merwin	Skittrell	6463 Arizona Alley	867-226-8555	862	862	t	2022-06-09 00:00:00	2	5	\N
863	Jami	Rao	4 Sherman Street	526-320-5379	863	863	f	2023-03-03 00:00:00	4	1	\N
864	Devland	Gane	71 Kings Circle	533-353-4807	864	864	f	2022-09-15 00:00:00	4	5	\N
865	Dewey	Windross	7873 Lawn Alley	313-131-0296	865	865	f	2022-12-29 00:00:00	5	4	\N
866	Donelle	Spleving	791 Crowley Lane	660-682-0431	866	866	t	2022-12-14 00:00:00	3	1	\N
867	Ephraim	Rainville	3198 Esch Parkway	320-997-1084	867	867	t	2022-10-01 00:00:00	3	2	\N
868	Lorilee	Ellwell	91 Orin Alley	288-202-5003	868	868	t	2022-11-09 00:00:00	5	3	\N
869	Carolan	Emmer	1937 Jenna Street	740-901-0153	869	869	f	2023-02-12 00:00:00	2	4	\N
870	Reggi	Posselwhite	22 Anderson Hill	196-488-2612	870	870	t	2022-09-28 00:00:00	5	1	\N
871	Christian	Barok	0 Kipling Hill	904-444-1484	871	871	t	2022-12-27 00:00:00	4	1	\N
872	Jessa	Guly	172 Rowland Plaza	425-678-0466	872	872	f	2022-04-11 00:00:00	5	5	\N
873	Keane	Kingswood	58 Spohn Alley	119-198-6380	873	873	t	2022-11-26 00:00:00	2	5	\N
874	Sergio	Alesio	17 Larry Park	836-482-9747	874	874	t	2022-06-29 00:00:00	4	3	\N
875	Gladys	Terrelly	495 Gulseth Junction	461-787-1032	875	875	f	2022-05-22 00:00:00	2	3	\N
876	Owen	Horry	607 Eggendart Junction	734-241-3610	876	876	f	2023-01-12 00:00:00	4	2	\N
877	Prissie	De Beneditti	00065 Lunder Pass	518-207-9523	877	877	f	2022-04-05 00:00:00	3	3	\N
878	Davide	Mepham	77 Londonderry Crossing	829-247-4739	878	878	t	2022-06-12 00:00:00	5	1	\N
879	Myrah	Kidstoun	12944 Kensington Court	669-728-3604	879	879	f	2022-05-01 00:00:00	5	4	\N
880	Rebeca	Eckhard	76 Meadow Vale Drive	476-214-3572	880	880	f	2022-07-04 00:00:00	4	3	\N
881	Eveline	Spittal	3084 Pond Terrace	905-692-4438	881	881	t	2022-04-28 00:00:00	3	4	\N
882	Zaccaria	Guilloud	6112 Susan Court	272-586-2866	882	882	f	2023-03-10 00:00:00	2	5	\N
883	Peter	Murrthum	83568 Daystar Park	100-731-3226	883	883	t	2022-12-18 00:00:00	2	1	\N
884	Flossie	Huntar	42629 Birchwood Crossing	782-420-3846	884	884	t	2022-10-19 00:00:00	5	4	\N
885	Bron	Renon	5749 Petterle Junction	608-950-3761	885	885	t	2022-04-08 00:00:00	2	5	\N
886	Marvin	Kettlestring	59 Springview Drive	513-307-9264	886	886	f	2022-04-15 00:00:00	1	1	\N
887	Spencer	Abramov	1 Mayfield Crossing	427-165-9262	887	887	t	2022-05-22 00:00:00	1	4	\N
888	Ivan	Scanlon	226 Nobel Terrace	269-835-2535	888	888	t	2022-04-10 00:00:00	4	3	\N
889	Sven	Olifaunt	4188 School Center	360-189-7840	889	889	f	2022-11-24 00:00:00	5	5	\N
890	Daryl	Cubin	75975 Heffernan Point	719-917-1528	890	890	f	2022-06-04 00:00:00	1	2	\N
891	Wilhelm	Joppich	2 Sutteridge Drive	472-843-6050	891	891	t	2023-02-15 00:00:00	5	5	\N
892	Eryn	Domanski	47265 Westport Crossing	708-472-0135	892	892	t	2022-07-19 00:00:00	3	3	\N
893	Shay	Stivey	1483 Kings Street	944-370-4038	893	893	f	2023-02-20 00:00:00	1	3	\N
894	Susanne	Blondell	23 Bay Trail	722-457-8468	894	894	f	2022-12-19 00:00:00	2	3	\N
895	Jasper	Domnick	13 Hanover Pass	538-718-7984	895	895	f	2023-01-15 00:00:00	5	2	\N
896	Craggie	Hookes	54696 Westport Center	308-914-9183	896	896	t	2022-11-30 00:00:00	3	1	\N
897	Helge	Baldini	77032 4th Alley	230-583-1559	897	897	f	2022-05-24 00:00:00	3	2	\N
898	Davidson	Dooman	35004 Schlimgen Drive	796-649-7447	898	898	f	2023-02-19 00:00:00	2	2	\N
899	Betteann	Stile	46 Towne Hill	223-594-0374	899	899	t	2022-06-28 00:00:00	1	5	\N
900	Tull	Davidek	788 David Road	911-184-2350	900	900	f	2023-02-16 00:00:00	4	2	\N
901	Hortense	Zolini	9170 Menomonie Plaza	752-703-0301	901	901	t	2022-11-23 00:00:00	2	3	\N
902	Kacey	Matt	7 Shasta Center	590-374-0156	902	902	f	2022-04-29 00:00:00	3	2	\N
903	Miller	Filippucci	08732 Northridge Court	317-504-7412	903	903	t	2022-07-17 00:00:00	1	2	\N
904	Merwin	Matthiesen	40 Melby Way	793-304-2885	904	904	t	2022-08-06 00:00:00	3	2	\N
905	Montgomery	Wrankmore	285 Shasta Avenue	532-393-8038	905	905	f	2023-03-10 00:00:00	5	1	\N
906	Lurette	Balchen	17044 Upham Terrace	820-720-4014	906	906	f	2022-09-19 00:00:00	4	4	\N
907	Bevin	Barton	4 Mitchell Place	136-766-7948	907	907	f	2022-04-04 00:00:00	3	5	\N
908	Florence	Girdler	65 Prairie Rose Trail	246-544-8427	908	908	f	2022-08-13 00:00:00	5	2	\N
909	Jean	Giffon	6295 Susan Place	979-722-9248	909	909	f	2022-05-19 00:00:00	4	1	\N
910	Kalle	Crennell	52 Lawn Road	501-552-8343	910	910	f	2022-10-15 00:00:00	5	2	\N
911	Olivero	Zaczek	3 Doe Crossing Road	895-743-8583	911	911	t	2022-10-22 00:00:00	3	1	\N
912	Mart	Padmore	0 Fulton Trail	527-254-7141	912	912	t	2022-09-06 00:00:00	2	5	\N
913	Myriam	Bouchier	67 Lake View Place	559-421-9219	913	913	t	2022-07-19 00:00:00	2	2	\N
914	Misti	McCullogh	331 Oak Pass	308-300-1293	914	914	f	2022-05-31 00:00:00	5	2	\N
915	Anallese	Moland	90 Esch Parkway	934-138-7685	915	915	t	2022-08-05 00:00:00	4	5	\N
916	Brit	Mouton	41 Mesta Trail	300-287-2678	916	916	f	2022-07-24 00:00:00	5	4	\N
917	Gaspard	Ellesmere	6093 Monica Alley	477-702-2481	917	917	f	2022-11-28 00:00:00	5	2	\N
918	Stormie	Rodwell	4855 Dryden Parkway	949-864-7330	918	918	f	2022-11-26 00:00:00	1	1	\N
919	Horacio	Martinetto	01 Sommers Street	663-994-9435	919	919	t	2022-09-12 00:00:00	3	1	\N
920	Shannan	Hupka	7237 Old Gate Alley	899-789-0741	920	920	t	2022-05-14 00:00:00	5	5	\N
921	Eddy	Lambe	60 Buell Alley	253-344-7488	921	921	f	2022-05-11 00:00:00	3	1	\N
922	Catie	Moss	1718 Chinook Court	711-823-8572	922	922	t	2022-11-22 00:00:00	4	1	\N
923	Carmelle	Shurrocks	6 Saint Paul Place	682-270-9363	923	923	f	2022-06-15 00:00:00	2	1	\N
924	Asia	Sheaber	8377 Oxford Way	111-333-1678	924	924	f	2022-07-16 00:00:00	2	5	\N
925	Gusti	Pero	4 Everett Plaza	783-993-0161	925	925	t	2022-12-14 00:00:00	3	3	\N
926	Lulita	Bechley	33 Westend Road	734-194-2860	926	926	t	2023-01-28 00:00:00	2	4	\N
927	Rafael	Craggs	7 Carpenter Lane	900-704-0404	927	927	f	2023-01-24 00:00:00	4	1	\N
928	Karee	Lavalde	3 Lukken Parkway	716-727-3377	928	928	t	2022-05-21 00:00:00	1	3	\N
929	Guinevere	Pretsell	496 Anderson Alley	222-947-1362	929	929	f	2022-06-15 00:00:00	3	2	\N
930	Allyn	Baline	0674 Starling Road	546-692-5198	930	930	f	2022-09-16 00:00:00	5	5	\N
931	Mame	Boydell	8313 Southridge Court	945-163-4467	931	931	t	2022-08-19 00:00:00	2	3	\N
932	Jodee	Lacroux	4 Ronald Regan Circle	918-842-7885	932	932	f	2022-11-12 00:00:00	5	1	\N
933	Quentin	Baigent	0726 Ridgeway Drive	931-332-4016	933	933	t	2023-02-23 00:00:00	2	5	\N
934	Cindra	Barta	953 Lakewood Street	999-509-0009	934	934	t	2022-11-21 00:00:00	1	3	\N
935	Lemmy	MacKintosh	39803 Starling Junction	273-435-8721	935	935	f	2022-07-24 00:00:00	2	3	\N
936	Eugen	Raecroft	897 Glendale Court	112-819-4309	936	936	f	2022-12-26 00:00:00	3	4	\N
937	Augy	Howley	86600 Arkansas Center	364-832-4742	937	937	f	2022-07-23 00:00:00	1	3	\N
938	Rosanna	Saggers	92 Butternut Parkway	997-112-9960	938	938	t	2022-08-23 00:00:00	3	1	\N
939	Kaylil	Langworthy	846 Express Junction	673-709-1147	939	939	t	2023-02-08 00:00:00	2	5	\N
940	Munroe	McCowan	591 Oneill Pass	237-995-5032	940	940	f	2022-04-30 00:00:00	3	3	\N
941	Egon	Cattrall	1 Tennyson Street	469-151-9115	941	941	f	2022-11-14 00:00:00	4	1	\N
942	Marco	Babon	088 Buena Vista Drive	281-552-5437	942	942	f	2022-09-06 00:00:00	1	4	\N
943	Niall	Newrick	7773 Dorton Pass	808-271-1453	943	943	t	2023-02-09 00:00:00	5	1	\N
944	Darci	Battersby	5 7th Court	289-857-8656	944	944	t	2022-09-28 00:00:00	1	1	\N
945	Danny	Poulter	58 Lighthouse Bay Pass	164-130-6118	945	945	f	2022-09-24 00:00:00	4	2	\N
946	Fairleigh	Bockin	61189 Canary Road	589-667-9843	946	946	t	2023-03-01 00:00:00	1	3	\N
947	Yard	Carpenter	0461 Gale Trail	722-923-6888	947	947	f	2022-07-11 00:00:00	4	4	\N
948	Dwain	Stockton	81905 Rutledge Hill	787-192-0461	948	948	f	2022-11-24 00:00:00	2	2	\N
949	Oswell	Sworn	64124 New Castle Road	136-652-2652	949	949	f	2022-12-04 00:00:00	3	1	\N
950	Carlynne	Boater	7118 Grayhawk Lane	305-508-4316	950	950	f	2022-03-31 00:00:00	4	2	\N
951	Cathryn	Macey	333 7th Point	434-277-9253	951	951	t	2022-12-19 00:00:00	4	3	\N
952	Cam	Waddoups	42 Nevada Junction	713-827-8075	952	952	f	2022-04-12 00:00:00	3	2	\N
953	Thedrick	Rogerson	375 Roxbury Parkway	319-292-9999	953	953	t	2022-08-25 00:00:00	2	2	\N
954	Livvyy	Ouchterlony	93822 Vahlen Center	868-146-1389	954	954	f	2023-01-13 00:00:00	3	1	\N
955	Alla	Bordessa	89 Pearson Road	617-790-9143	955	955	f	2023-01-21 00:00:00	2	5	\N
956	Nikki	Vidineev	4280 Jana Drive	639-245-3899	956	956	f	2022-09-30 00:00:00	5	1	\N
957	Elsy	Yeabsley	934 Moland Avenue	175-462-3119	957	957	t	2022-09-12 00:00:00	3	2	\N
958	Raddie	Navein	3199 Burrows Hill	618-472-2008	958	958	t	2022-08-04 00:00:00	2	2	\N
959	Muire	Risom	966 Mendota Alley	494-511-7877	959	959	t	2022-06-08 00:00:00	2	4	\N
960	Amii	Flaunders	92976 Ronald Regan Street	145-744-9202	960	960	f	2022-04-26 00:00:00	3	3	\N
961	Horatia	Kearton	2049 Talmadge Center	186-588-6564	961	961	f	2022-12-07 00:00:00	4	4	\N
962	Brook	Dogg	89785 Heath Hill	207-716-6750	962	962	t	2023-02-03 00:00:00	1	3	\N
963	Taffy	Millington	0 Randy Parkway	376-523-4197	963	963	t	2022-08-10 00:00:00	4	5	\N
964	Cori	Summergill	535 Cascade Junction	881-888-1903	964	964	f	2022-09-27 00:00:00	5	1	\N
965	Ring	Tydeman	9 Sycamore Drive	211-839-9503	965	965	f	2022-10-21 00:00:00	4	4	\N
966	Chryste	Smelley	90220 Corben Avenue	588-659-0535	966	966	f	2022-10-19 00:00:00	2	2	\N
967	Morgan	Spohr	0 Ramsey Lane	212-451-3851	967	967	f	2022-11-16 00:00:00	5	2	\N
968	Murdock	Leads	6566 Sheridan Circle	916-182-9009	968	968	t	2023-03-20 00:00:00	4	1	\N
969	Ozzy	Bastistini	467 Ridgeway Point	558-636-0542	969	969	t	2022-08-16 00:00:00	4	2	\N
970	Onofredo	Dews	890 Norway Maple Road	751-726-2189	970	970	f	2022-04-19 00:00:00	3	2	\N
971	Orelee	Miners	920 Lien Point	765-539-0596	971	971	t	2022-04-16 00:00:00	2	3	\N
972	Marena	Eneas	135 Bonner Center	986-599-5225	972	972	t	2022-04-13 00:00:00	1	3	\N
973	Hanny	Fallens	4 Graedel Pass	304-669-4058	973	973	t	2022-11-06 00:00:00	3	2	\N
974	Harwilll	Sharram	985 Blue Bill Park Way	295-636-5209	974	974	f	2022-07-16 00:00:00	1	1	\N
975	Charlotta	Simonot	95011 Mandrake Circle	871-949-0418	975	975	t	2022-06-14 00:00:00	4	3	\N
976	Maxy	Bonnick	57702 Manitowish Alley	946-782-3080	976	976	t	2022-10-22 00:00:00	2	5	\N
977	Waneta	Furmagier	41539 Express Parkway	739-797-2606	977	977	f	2023-03-05 00:00:00	2	2	\N
978	Constantina	Wayte	134 Myrtle Street	268-635-9544	978	978	f	2022-05-20 00:00:00	5	1	\N
979	Effie	Stacey	2 Sunfield Terrace	602-364-7645	979	979	f	2023-03-07 00:00:00	4	2	\N
980	Shellysheldon	Langthorne	9409 Troy Lane	814-245-6411	980	980	f	2022-05-27 00:00:00	5	2	\N
981	Kora	Davidde	94 Express Avenue	300-119-8964	981	981	f	2022-06-22 00:00:00	1	2	\N
982	Jules	Leavens	025 Talisman Alley	537-342-8850	982	982	f	2022-08-31 00:00:00	5	4	\N
983	Henrie	Fairlaw	1431 Superior Point	427-857-3102	983	983	t	2022-08-12 00:00:00	2	2	\N
984	Odelia	Larkcum	4840 Meadow Ridge Junction	257-462-5461	984	984	t	2022-12-04 00:00:00	2	4	\N
985	Zorina	Huskisson	7079 Hagan Avenue	812-701-0425	985	985	t	2022-05-12 00:00:00	5	4	\N
986	Harlan	Haylands	1 Elka Trail	692-977-9238	986	986	t	2022-07-24 00:00:00	4	2	\N
987	Karalynn	McKelvey	904 Paget Circle	846-864-3175	987	987	t	2022-09-10 00:00:00	4	1	\N
988	Gene	Delea	978 Gale Street	320-142-7078	988	988	f	2022-04-30 00:00:00	2	2	\N
989	Calley	Scaice	79547 Johnson Trail	285-852-4230	989	989	f	2022-07-05 00:00:00	1	4	\N
990	Lorianne	Rollin	888 Butternut Lane	280-107-6365	990	990	f	2023-02-17 00:00:00	1	2	\N
991	Gabey	MacLleese	6207 Buena Vista Plaza	568-700-1455	991	991	f	2023-01-27 00:00:00	2	4	\N
992	Denny	Chape	53 Memorial Circle	708-465-9701	992	992	f	2022-08-28 00:00:00	2	2	\N
993	Sawyer	Pill	4401 Anniversary Way	343-566-5250	993	993	f	2022-12-16 00:00:00	1	2	\N
994	Mason	Gallager	67755 Gerald Parkway	988-522-6082	994	994	t	2022-06-23 00:00:00	3	4	\N
995	Alexis	Juliano	7485 Ruskin Place	834-653-7990	995	995	t	2022-05-12 00:00:00	5	2	\N
996	Tate	Jeanesson	9050 Hermina Point	329-565-3892	996	996	t	2022-05-23 00:00:00	1	3	\N
997	Tiffy	Stanbra	8283 Dakota Street	980-365-3600	997	997	f	2023-03-19 00:00:00	3	5	\N
998	Ervin	Heale	019 Stoughton Center	840-139-5516	998	998	t	2022-10-11 00:00:00	1	1	\N
999	Rania	Sacker	3 Clove Pass	433-496-8299	999	999	t	2022-08-18 00:00:00	4	2	\N
1000	Marne	Kindley	703 Cordelia Way	970-519-6209	1000	1000	f	2023-02-01 00:00:00	5	2	\N
1001	Engelbert	Ebden	8956 Spaight Plaza	223-322-6834	1001	1001	t	2023-03-28 00:00:00	4	1	\N
\.


--
-- Data for Name: county; Type: TABLE DATA; Schema: public; Owner: jninn
--

COPY public.county (id, county_name) FROM stdin;
1	Gratiot
2	Isabella
3	Montcalm
4	Ionia
5	Out of Area
\.


--
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: jninn
--

COPY public.department (id, department_name) FROM stdin;
1	Community Services
2	Housing Stability Services
3	Housing Services
4	Veteran Services
5	Homeless Services
\.


--
-- Data for Name: issue; Type: TABLE DATA; Schema: public; Owner: jninn
--

COPY public.issue (id, issue_resolved, consumer_id, staff_id) FROM stdin;
2	f	116	489
3	f	596	900
4	f	85	26
5	f	757	521
6	t	274	331
7	f	911	655
8	f	215	372
9	t	118	632
10	f	216	21
11	f	524	527
12	t	107	660
13	f	476	304
14	f	219	976
15	t	434	169
16	f	249	653
17	t	679	125
18	t	987	239
19	t	739	188
20	f	530	439
21	f	557	159
22	f	711	551
23	f	222	367
24	t	327	238
25	t	915	53
26	t	384	396
27	f	978	613
28	t	253	346
29	f	707	626
30	t	428	269
31	t	614	598
32	t	52	970
33	f	839	471
34	t	187	687
35	t	534	48
36	f	648	794
37	f	195	424
38	t	704	523
39	t	820	381
40	t	688	143
41	f	98	910
42	f	800	539
43	t	122	7
44	t	673	359
45	f	969	982
46	f	485	134
47	f	98	554
48	f	1001	255
49	f	368	340
50	f	234	908
51	f	799	410
52	f	108	690
53	f	825	346
54	t	953	314
55	t	43	836
56	f	698	910
57	t	742	146
58	t	996	294
59	f	432	560
60	t	783	248
61	t	927	866
62	f	758	856
63	t	244	644
64	f	961	718
65	f	909	167
66	f	865	221
67	f	635	308
68	f	582	414
69	f	289	412
70	t	377	513
71	t	771	364
72	t	142	361
73	t	231	587
74	f	641	548
75	t	115	485
76	f	271	600
77	t	886	371
78	t	496	232
79	f	326	781
80	t	466	212
81	t	996	705
82	f	886	778
83	t	690	220
84	t	471	144
85	f	631	643
86	t	369	742
87	t	747	367
88	t	787	961
89	f	80	192
90	f	416	609
91	f	997	281
92	f	697	572
93	t	703	848
94	t	833	946
95	f	496	641
96	t	75	391
97	t	786	454
98	t	359	805
99	f	869	374
100	f	789	995
101	t	326	872
102	f	50	867
103	f	247	477
104	t	956	958
105	t	10	862
106	t	644	273
107	t	119	931
108	f	889	139
109	f	706	690
110	f	563	321
111	f	267	738
112	t	569	305
113	f	593	194
114	f	333	57
115	f	633	378
116	f	876	691
117	t	493	196
118	f	754	269
119	f	809	212
120	f	104	356
121	f	909	901
122	f	261	454
123	f	546	1000
124	t	474	542
125	t	461	379
126	f	180	566
127	t	905	43
128	t	435	406
129	f	132	589
130	t	360	43
131	f	658	639
132	t	510	715
133	t	719	769
134	t	613	56
135	t	851	942
136	t	454	236
137	t	112	199
138	f	697	306
139	f	383	359
140	t	397	502
141	t	62	973
142	f	636	476
143	f	1000	657
144	f	595	77
145	t	140	232
146	t	540	369
147	t	945	647
148	t	850	699
149	t	339	390
150	t	683	983
151	f	419	568
152	f	530	937
153	t	552	184
154	t	884	148
155	t	638	223
156	f	214	44
157	f	376	239
158	t	169	848
159	t	90	732
160	f	357	257
161	t	187	535
162	f	83	279
163	t	476	138
164	t	752	484
165	t	347	662
166	f	92	145
167	f	865	205
168	f	939	955
169	f	750	843
170	f	472	536
171	f	823	999
172	t	278	758
173	f	478	743
174	f	245	349
175	t	828	459
176	f	719	74
177	t	111	320
178	f	969	881
179	f	946	206
180	f	421	214
181	t	47	890
182	t	910	112
183	f	601	217
184	t	921	845
185	t	806	52
186	f	537	990
187	t	998	638
188	f	668	64
189	f	210	424
190	t	456	844
191	f	804	964
192	f	784	58
193	t	890	708
194	f	383	4
195	t	360	862
196	f	719	336
197	t	764	694
198	f	901	886
199	t	538	692
200	f	579	387
201	t	441	42
202	t	773	375
203	t	17	33
204	t	305	633
205	f	979	848
206	f	626	46
207	t	500	724
208	t	825	625
209	f	923	543
210	t	413	228
211	f	384	164
212	f	641	577
213	f	876	90
214	f	735	540
215	f	883	60
216	f	634	621
217	t	787	773
218	f	41	22
219	f	997	446
220	t	541	996
221	t	882	562
222	f	575	285
223	f	895	116
224	f	267	319
225	f	475	342
226	f	924	542
227	f	545	387
228	t	925	839
229	f	324	798
230	f	540	10
231	f	276	445
232	f	363	846
233	t	353	867
234	f	235	221
235	f	103	610
236	f	101	579
237	f	653	592
238	f	57	233
239	f	649	751
240	t	439	741
241	f	843	7
242	t	785	90
243	f	784	257
244	f	823	82
245	f	577	376
246	f	819	194
247	t	869	917
248	t	875	329
249	f	268	247
250	t	877	150
251	f	918	825
252	t	278	981
253	t	15	99
254	f	404	291
255	t	768	175
256	t	536	548
257	f	869	547
258	t	339	203
259	f	768	592
260	f	517	799
261	f	543	24
262	t	894	456
263	f	80	232
264	f	52	531
265	t	67	767
266	f	823	185
267	f	974	997
268	t	19	529
269	t	315	906
270	t	292	934
271	t	392	624
272	t	409	135
273	f	422	468
274	t	129	109
275	f	496	66
276	f	902	955
277	f	18	34
278	t	660	244
279	f	856	676
280	f	195	576
281	f	269	688
282	f	373	777
283	t	187	408
284	t	645	444
285	f	638	350
286	f	900	428
287	t	387	224
288	t	608	831
289	t	77	950
290	t	678	44
291	f	215	538
292	f	283	4
293	t	630	695
294	t	77	519
295	f	671	666
296	f	353	675
297	t	175	720
298	f	199	994
299	t	334	525
300	f	487	855
301	t	569	223
302	f	697	544
303	f	933	961
304	t	860	749
305	t	797	77
306	t	736	830
307	t	470	510
308	t	588	83
309	f	391	351
310	t	975	986
311	f	180	935
312	f	392	994
313	f	264	450
314	f	570	323
315	t	754	871
316	f	684	54
317	f	484	37
318	f	613	85
319	t	96	247
320	t	712	872
321	t	992	109
322	t	647	150
323	f	608	659
324	t	67	420
325	f	934	434
326	t	89	577
327	f	374	692
328	t	823	543
329	t	998	245
330	t	208	635
331	f	594	374
332	t	3	189
333	f	785	791
334	t	887	135
335	f	383	86
336	t	406	487
337	f	915	426
338	f	195	100
339	f	951	709
340	t	21	221
341	f	512	733
342	f	470	331
343	f	406	268
344	f	576	45
345	f	69	467
346	t	532	772
347	t	151	794
348	t	73	375
349	f	617	263
350	f	824	245
351	t	148	161
352	f	165	683
353	t	938	771
354	t	408	453
355	t	521	392
356	f	304	752
357	t	409	892
358	f	847	126
359	f	550	162
360	t	280	427
361	t	184	210
362	f	147	235
363	t	363	737
364	t	685	288
365	f	97	198
366	t	992	930
367	t	86	110
368	t	44	192
369	f	70	575
370	f	887	224
371	t	678	129
372	t	917	908
373	t	617	429
374	f	644	53
375	t	533	832
376	f	200	535
377	f	271	684
378	t	279	866
379	f	881	32
380	f	635	491
381	t	412	612
382	f	386	402
383	f	817	318
384	t	985	419
385	f	429	76
386	f	252	686
387	t	988	773
388	f	335	439
389	t	783	74
390	f	33	82
391	f	715	182
392	t	467	162
393	f	894	69
394	t	948	196
395	t	698	870
396	t	994	652
397	f	156	355
398	t	522	598
399	f	328	915
400	f	961	381
401	f	794	612
402	f	381	140
403	t	64	136
404	t	543	746
405	f	492	37
406	f	114	962
407	f	387	539
408	f	914	450
409	f	479	299
410	t	774	201
411	f	595	449
412	f	64	967
413	f	140	578
414	t	1001	594
415	t	692	780
416	f	205	602
417	t	399	408
418	t	235	107
419	t	644	583
420	f	741	380
421	t	423	608
422	f	780	26
423	t	866	82
424	f	608	321
425	t	615	920
426	t	877	364
427	t	693	250
428	t	196	539
429	t	866	326
430	f	991	637
431	t	754	287
432	t	276	339
433	t	819	427
434	t	908	151
435	f	718	619
436	t	418	660
437	f	343	200
438	f	273	288
439	t	39	916
440	t	438	500
441	t	460	158
442	t	835	755
443	t	129	798
444	f	270	625
445	t	432	974
446	t	748	137
447	f	931	190
448	f	898	903
449	f	603	606
450	t	248	314
451	t	646	191
452	t	893	208
453	t	939	235
454	f	898	679
455	f	934	934
456	t	473	313
457	f	693	304
458	t	196	309
459	f	41	208
460	t	678	970
461	t	239	1001
462	f	793	500
463	t	434	577
464	t	731	211
465	f	277	276
466	f	658	532
467	t	418	806
468	t	196	774
469	t	195	291
470	t	687	189
471	f	809	183
472	f	287	714
473	f	406	768
474	t	180	816
475	f	583	743
476	f	530	394
477	t	612	905
478	f	799	419
479	t	205	753
480	t	562	892
481	t	169	13
482	f	202	275
483	f	678	422
484	t	578	19
485	t	239	718
486	f	995	3
487	f	648	994
488	t	759	515
489	t	618	653
490	f	283	527
491	f	413	661
492	f	587	59
493	f	77	516
494	f	925	63
495	t	680	501
496	t	952	381
497	t	587	710
498	f	888	281
499	t	373	767
500	f	690	415
501	f	812	453
502	f	503	874
503	t	898	590
504	f	122	565
505	t	435	795
506	t	126	665
507	f	933	682
508	f	206	322
509	f	610	902
510	f	277	932
511	t	673	813
512	t	12	652
513	t	176	56
514	f	662	325
515	t	990	300
516	f	797	447
517	t	108	377
518	f	115	261
519	t	912	282
520	t	278	105
521	f	763	289
522	f	146	938
523	f	779	538
524	t	658	911
525	t	335	171
526	f	235	949
527	f	555	863
528	t	64	590
529	t	866	622
530	t	583	143
531	t	900	578
532	t	362	131
533	f	491	841
534	f	899	663
535	t	632	252
536	f	215	282
537	f	441	408
538	f	689	701
539	t	490	574
540	f	693	996
541	f	314	857
542	t	710	545
543	t	572	822
544	f	746	457
545	f	360	823
546	f	349	328
547	f	624	56
548	f	418	291
549	f	914	8
550	f	122	370
551	f	649	195
552	f	793	472
553	t	595	744
554	t	121	875
555	f	503	491
556	t	618	116
557	f	289	392
558	f	186	695
559	f	291	536
560	f	117	567
561	f	375	38
562	f	14	421
563	f	908	534
564	t	837	448
565	t	100	158
566	f	769	741
567	f	479	989
568	f	399	512
569	f	305	507
570	f	799	931
571	t	424	419
572	f	972	858
573	t	162	451
574	f	793	283
575	t	841	406
576	t	970	366
577	t	623	470
578	t	235	254
579	t	702	298
580	f	47	847
581	f	714	582
582	f	749	601
583	t	684	202
584	f	84	704
585	f	383	575
586	f	809	998
587	t	194	651
588	f	557	669
589	f	217	51
590	f	448	258
591	t	716	857
592	f	39	815
593	f	156	836
594	f	703	413
595	f	482	73
596	t	319	412
597	t	843	88
598	f	255	296
599	f	58	625
600	t	132	533
601	t	159	825
602	f	237	566
603	f	825	43
604	t	662	252
605	t	555	715
606	t	72	59
607	t	872	474
608	f	898	814
609	t	352	429
610	t	288	122
611	f	760	909
612	f	871	763
613	t	774	410
614	f	85	80
615	f	77	272
616	f	794	886
617	t	10	350
618	f	3	703
619	t	304	515
620	t	843	650
621	t	555	854
622	t	555	28
623	f	693	740
624	f	319	946
625	f	77	572
626	t	845	202
627	f	934	656
628	f	214	827
629	f	68	183
630	t	992	548
631	t	565	102
632	f	538	84
633	t	772	111
634	f	736	559
635	f	21	361
636	t	145	912
637	f	65	375
638	t	168	391
639	t	183	167
640	f	792	769
641	f	536	447
642	t	884	411
643	f	335	873
644	t	343	878
645	t	547	212
646	t	64	731
647	t	841	638
648	t	356	635
649	t	758	126
650	f	233	855
651	f	124	211
652	t	308	601
653	t	782	683
654	f	639	653
655	t	582	74
656	t	862	635
657	t	607	44
658	t	43	573
659	t	727	90
660	t	314	150
661	f	988	43
662	f	237	788
663	t	336	426
664	t	601	491
665	t	57	190
666	f	113	133
667	t	738	28
668	f	551	210
669	t	523	23
670	f	540	11
671	t	492	234
672	f	784	531
673	t	20	839
674	f	919	120
675	f	529	407
676	t	153	71
677	f	563	527
678	t	437	900
679	t	213	168
680	t	216	818
681	f	572	927
682	t	130	579
683	f	270	100
684	f	60	834
685	t	695	181
686	t	41	165
687	t	403	34
688	f	149	790
689	f	573	423
690	f	743	21
691	f	55	619
692	t	498	945
693	t	652	857
694	f	192	339
695	t	564	130
696	t	993	176
697	t	252	125
698	f	79	103
699	f	912	178
700	t	888	920
701	f	73	69
702	f	917	566
703	t	512	753
704	f	477	908
705	f	629	857
706	t	363	761
707	f	759	852
708	t	871	80
709	t	240	826
710	f	73	368
711	f	769	308
712	t	291	818
713	t	377	822
714	t	133	888
715	t	107	791
716	t	234	102
717	t	275	490
718	t	172	977
719	t	511	350
720	t	138	498
721	f	725	785
722	t	903	942
723	t	841	61
724	t	385	13
725	t	771	145
726	f	558	486
727	t	175	897
728	t	792	853
729	t	554	534
730	f	849	638
731	f	652	780
732	t	856	982
733	f	994	367
734	t	21	558
735	f	65	988
736	t	463	758
737	f	944	503
738	f	859	68
739	f	466	639
740	t	289	671
741	f	116	2
742	f	999	272
743	f	731	479
744	f	846	983
745	t	239	768
746	f	845	828
747	t	505	987
748	f	215	497
749	t	498	182
750	t	125	879
751	f	680	209
752	t	919	7
753	t	872	758
754	f	683	233
755	f	284	447
756	f	162	92
757	f	472	251
758	f	445	888
759	t	328	127
760	t	501	139
761	t	618	303
762	t	134	286
763	t	878	230
764	f	169	489
765	f	67	141
766	t	194	772
767	t	368	454
768	f	312	262
769	t	593	702
770	t	478	937
771	f	744	136
772	t	427	308
773	f	587	290
774	f	700	291
775	f	389	823
776	f	918	525
777	f	931	148
778	f	123	213
779	f	183	912
780	t	248	87
781	f	577	65
782	f	840	265
783	f	681	552
784	f	281	69
785	f	885	560
786	f	505	559
787	t	823	315
788	f	310	288
789	t	765	367
790	t	463	926
791	f	955	166
792	t	771	955
793	t	613	113
794	f	738	300
795	t	135	420
796	t	802	495
797	t	563	954
798	f	161	260
799	t	458	389
800	t	806	720
801	f	388	935
802	f	657	415
803	f	679	34
804	f	768	723
805	t	840	430
806	f	484	968
807	t	587	287
808	f	806	133
809	t	233	479
810	t	299	403
811	t	9	823
812	f	61	191
813	t	373	822
814	t	361	354
815	f	216	706
816	f	2	113
817	t	34	721
818	f	601	902
819	t	856	710
820	t	151	902
821	t	68	714
822	t	660	268
823	t	988	355
824	f	506	142
825	f	994	42
826	t	903	482
827	t	420	596
828	t	212	102
829	f	650	720
830	t	946	833
831	t	735	93
832	t	564	763
833	t	680	607
834	f	306	623
835	f	698	583
836	f	372	243
837	f	245	588
838	t	821	91
839	t	762	17
840	t	593	884
841	t	881	9
842	t	57	146
843	t	468	299
844	f	584	129
845	t	811	500
846	t	682	929
847	t	538	898
848	f	957	52
849	f	957	604
850	t	755	781
851	t	102	161
852	f	635	628
853	f	567	935
854	t	480	613
855	f	43	519
856	f	596	425
857	t	906	320
858	f	145	267
859	t	712	733
860	t	105	675
861	t	962	767
862	f	316	28
863	t	435	649
864	t	495	230
865	t	676	796
866	f	941	488
867	f	737	369
868	t	474	901
869	f	538	507
870	t	589	777
871	f	884	503
872	f	32	283
873	f	969	857
874	f	682	999
875	t	810	834
876	t	636	529
877	t	756	598
878	f	692	72
879	t	79	644
880	f	525	426
881	t	199	415
882	t	249	947
883	f	457	254
884	t	11	642
885	t	660	295
886	t	268	417
887	f	330	934
888	f	996	543
889	t	866	221
890	t	68	1001
891	f	737	504
892	t	591	889
893	t	668	665
894	t	567	391
895	f	826	473
896	f	557	677
897	t	979	17
898	f	718	538
899	t	623	486
900	t	765	218
901	f	496	280
902	f	311	664
903	t	509	156
904	t	895	420
905	t	231	361
906	f	273	277
907	f	669	5
908	t	796	771
909	t	260	367
910	t	401	238
911	t	998	354
912	t	652	130
913	t	685	447
914	t	636	514
915	f	234	211
916	f	544	394
917	t	979	130
918	t	124	694
919	t	770	199
920	f	193	344
921	f	174	546
922	f	848	549
923	f	868	347
924	f	971	210
925	t	324	855
926	f	468	411
927	f	114	808
928	f	694	320
929	f	637	534
930	f	90	638
931	t	252	958
932	f	500	488
933	f	675	556
934	t	517	510
935	f	12	586
936	f	260	499
937	f	976	334
938	f	163	991
939	t	905	470
940	t	682	114
941	f	859	944
942	f	521	308
943	f	28	735
944	f	999	104
945	f	795	505
946	t	728	424
947	f	461	99
948	t	229	643
949	t	630	895
950	t	999	874
951	t	15	359
952	f	894	854
953	f	638	785
954	f	690	76
955	f	684	734
956	t	766	718
957	t	144	113
958	t	343	448
959	t	655	747
960	t	90	838
961	f	777	997
962	t	611	721
963	t	534	384
964	t	143	369
965	f	695	168
966	f	937	212
967	t	254	443
968	f	796	508
969	f	733	490
970	t	420	836
971	f	468	505
972	t	401	527
973	f	269	815
974	f	378	771
975	t	535	379
976	t	952	749
977	f	242	948
978	t	794	368
979	f	689	934
980	t	917	616
981	f	843	592
982	f	446	306
983	t	167	607
984	f	317	592
985	f	437	519
986	t	844	478
987	t	604	397
988	t	847	595
989	f	491	661
990	f	916	662
991	f	128	200
992	t	54	752
993	t	844	100
994	t	218	423
995	t	681	762
996	f	575	214
997	t	102	168
998	t	681	719
999	f	978	430
1000	f	575	901
1001	f	372	662
\.


--
-- Data for Name: pref_contact_method; Type: TABLE DATA; Schema: public; Owner: jninn
--

COPY public.pref_contact_method (id, pref_contact_method) FROM stdin;
1	Text
2	Call
3	Email
4	Facebook
5	Instagram
\.


--
-- Data for Name: staff; Type: TABLE DATA; Schema: public; Owner: jninn
--

COPY public.staff (id, first_name, last_name, department_id) FROM stdin;
2	Viviyan	Clubley	4
3	Marty	Bredes	1
4	Mae	Fouracre	4
5	Retha	O'Neal	2
6	Marena	Arnoud	3
7	Duffie	Spillman	5
8	Aime	Behnke	3
9	Norby	Flipsen	3
10	Olin	Grichukhanov	2
11	Deane	Sivess	2
12	Abigael	Grigoryev	2
13	Thayne	Guillem	3
14	Sherye	Crozier	3
15	Miguel	Coucha	3
16	Haily	McKillop	2
17	Dunn	Colthard	4
18	Levin	Thow	2
19	Anett	McCrackem	2
20	Welch	Carmont	4
21	Phelia	Gabrieli	3
22	Marcella	Greetland	3
23	Gannon	Mannie	4
24	Mada	Laugherane	2
25	Verla	Pane	2
26	Giorgia	Perkinson	5
27	Dodie	Kilbourn	3
28	Gustavus	Phare	5
29	Hugh	Colbert	5
30	Scot	Coulthart	5
31	Benedict	Whitmell	5
32	Rosemarie	Pattinson	1
33	Tracey	Withrington	1
34	Sid	Sines	2
35	Xylia	Maypowder	5
36	Westleigh	Gaiter	2
37	Aggy	D'eath	5
38	Tawnya	Triggle	3
39	Winfred	McAmish	3
40	Marietta	Uccello	2
41	Thorndike	Willoughey	4
42	Josefa	Stetson	2
43	Paulo	Cordero	1
44	Alex	Fitzsymons	5
45	Frieda	Antony	1
46	Tymon	Rosen	4
47	Valencia	Itzkovwich	4
48	Jeth	Clemmow	5
49	Rikki	Seymer	2
50	Jodi	Horning	2
51	Leroy	Sawrey	2
52	Hubey	Sobtka	5
53	Zilvia	Brisco	5
54	Read	Sandeson	3
55	Birgitta	Hillam	2
56	Hobie	Kelcey	4
57	Aimee	Mapples	5
58	Benedetto	Riglesford	2
59	Nadeen	Couve	4
60	Terra	Kahn	4
61	Caldwell	Sinkings	1
62	Hailee	Mortimer	4
63	Vasili	Sturte	4
64	Kennett	Vidloc	4
65	Hussein	Le Estut	3
66	Briny	Barthot	3
67	Jolynn	Dimond	4
68	Odette	West	2
69	Baxter	Lowdiane	3
70	Claudius	Hanlon	4
71	Netti	Mylchreest	3
72	Crosby	MacCafferky	3
73	Hiram	Molian	5
74	Dilan	Lochran	1
75	Hetti	Skivington	2
76	Fairleigh	Loreit	1
77	Cleopatra	Garrals	1
78	Gearalt	Ramos	2
79	Marie-ann	Tomadoni	4
80	Wilfrid	Adderson	1
81	Lin	Ruffles	2
82	Julie	Laurie	5
83	Ulrikaumeko	Leverington	4
84	Cornie	Bilverstone	3
85	Tadio	Wessing	5
86	Devonna	Stanlake	5
87	Kettie	Leftridge	1
88	Cordie	Retallack	1
89	Owen	Petrazzi	2
90	Christa	Arnaudon	4
91	Lindsey	Foxten	4
92	Herold	Gove	4
93	Godfry	Tellenbroker	2
94	Vilhelmina	Eckert	5
95	Gage	Blaxton	1
96	Svend	Snar	4
97	Marty	McGuffie	1
98	Rebeka	Vanderplas	5
99	Ad	Pacheco	3
100	Leta	Treat	3
101	Courtney	Jotham	2
102	Kat	Rulf	2
103	Fonz	Chetwin	5
104	Elinore	Chessor	5
105	Hank	Strippel	3
106	Leshia	Cunniffe	2
107	Donaugh	Negro	3
108	Greg	Haddrell	5
109	Farr	Sonley	3
110	Katleen	Skerritt	1
111	Margeaux	Chismon	2
112	Thelma	Snoddy	3
113	Hildagarde	Hedingham	4
114	Hyman	Scamaden	2
115	Sadella	Chown	2
116	Codi	Richie	3
117	Terrel	Bleakley	2
118	Demeter	Lightewood	4
119	Nani	Blaszkiewicz	2
120	Sutton	St. Leger	1
121	Elmo	Fussell	3
122	Elenore	Pycock	4
123	Findley	Barnaclough	4
124	Livvy	Coldbathe	1
125	Hillary	Shefton	4
126	Nadya	Maskill	2
127	Hasty	Trimby	5
128	Corena	Silby	4
129	Dione	Konneke	5
130	Fitzgerald	Senner	3
131	Geoffrey	Cronk	5
132	Lemuel	Merrigan	5
133	Carney	Dalliwatr	5
134	Costanza	Papes	1
135	Brenn	Stores	2
136	Garnet	Clemenzo	2
137	Selby	Mullin	1
138	Jocelyne	Doxey	3
139	Val	Leyzell	4
140	Anthe	Astall	4
141	Ginni	Romaines	4
142	Bobbee	Broomhall	5
143	Quint	Stuckford	2
144	Catarina	Apedaile	5
145	Rusty	Brassill	3
146	Xerxes	Clemenson	1
147	Shell	Addionizio	1
148	Ambros	Paliser	4
149	Robert	Anshell	3
150	Mendel	O'Cassidy	3
151	Elisa	Macieja	5
152	Joycelin	Devinn	3
153	Kris	Devitt	1
154	Devlin	Hazeman	5
155	Dahlia	Glamart	3
156	Yvon	Birt	4
157	Marybeth	Freckingham	4
158	Nicol	Klement	1
159	Ketti	Mithan	2
160	Talyah	Deering	2
161	Ulrikaumeko	Fontanet	5
162	Tanhya	Avramovsky	4
163	Benoit	O'Moylan	1
164	Michaeline	Brunner	1
165	Neil	Cusiter	3
166	Chelsae	Potte	4
167	Stesha	Davidou	1
168	Shayna	Sommerfeld	3
169	Farrell	Goodrum	2
170	Harley	Gretton	1
171	Arie	McCromley	3
172	Lynnell	Castillou	4
173	Hobart	Woollett	3
174	Odetta	Beldam	4
175	Louie	Rosettini	4
176	Romain	Borzoni	4
177	Cly	Bexley	5
178	Erskine	Mosdell	3
179	Andromache	Benko	4
180	Papagena	Tattam	1
181	Oswald	Petkov	2
182	Cherrita	Agglio	5
183	Daryl	Wabb	5
184	Norine	Fairholme	4
185	Tess	Pynn	3
186	Kip	Harte	4
187	Ron	Sadlier	3
188	Zebulen	Sheaber	3
189	Babb	Bewshaw	4
190	Kore	Pordall	2
191	Ferd	Fulle	3
192	Emmery	Vicker	3
193	Christel	Helks	2
194	Staford	Presnail	5
195	Giraldo	Gwin	2
196	Glyn	Cranstone	2
197	Joelle	Escala	5
198	Lonna	Doig	2
199	Enos	Quinion	1
200	Nicky	McIllroy	5
201	Ingaberg	Silman	5
202	Dorita	Allinson	3
203	Wyndham	Gauford	3
204	Whit	Kivlin	1
205	Bent	Ivashkov	4
206	Concordia	Sayes	1
207	Silvain	Lightman	2
208	Kerrie	Hamel	4
209	Yardley	Deavall	2
210	Caroljean	Vasyatkin	1
211	Den	Mutton	4
212	Quillan	Dunckley	1
213	Nessy	Bussy	4
214	Constantin	Isack	1
215	Kenyon	Raubenheimer	3
216	Lizzy	Compfort	4
217	Marion	Sinisbury	2
218	Rachelle	Sollitt	2
219	Kristina	Ritmeier	3
220	Lyle	Amburgy	4
221	Allin	Stroband	5
222	Ryon	Di Biagio	2
223	Cloe	Dance	5
224	Aldridge	Bleesing	3
225	Tiffany	Towe	5
226	Sherie	Stourton	2
227	Darbee	Clavering	2
228	Zechariah	Berrow	2
229	Lauraine	O' Kelleher	3
230	Helli	Rojas	3
231	Carlin	Joan	1
232	Northrup	Gaylard	5
233	Shepperd	Stoeckle	2
234	Felix	Hockell	2
235	Conant	Mangon	1
236	Willyt	Kamenar	5
237	Frans	Tulloch	4
238	Georgeta	Corkett	5
239	Leonie	Riepl	3
240	Julianne	Wewell	5
241	Durand	Gerb	4
242	Kermit	Youles	2
243	Emmy	Picard	5
244	Burgess	Sodeau	3
245	Tricia	Frear	3
246	Tobye	Signe	3
247	Nikolai	Hubbins	3
248	Maritsa	Jendrich	1
249	Carissa	Borkett	1
250	Dante	Barradell	5
251	Emogene	Fillery	1
252	Gertruda	Paylor	2
253	Ivie	Sedgmond	4
254	Jedidiah	Stamp	4
255	Alister	Panther	5
256	Jard	Quarterman	4
257	Clementina	Di Filippo	2
258	Liane	Whannel	4
259	Tabby	Littlewood	4
260	Quillan	MacCahey	1
261	Hunfredo	Espinha	3
262	Darelle	Gustus	5
263	Brittani	Woolrich	1
264	Skyler	Honisch	2
265	Mellicent	Parrett	2
266	Marc	Ruffles	3
267	Hedwiga	Swyne	2
268	Vasilis	Chaudhry	5
269	Kevina	Marjanovic	1
270	Hussein	Physick	4
271	Bren	Tomala	3
272	Aimee	McGovern	2
273	Mickie	McGowran	5
274	Kylie	Schneidau	3
275	Evy	Scally	3
276	Russ	Nardoni	5
277	Kahaleel	Tuddenham	4
278	Carmela	Marconi	3
279	Manda	Beincken	4
280	Catherin	Grushin	2
281	Conny	McCombe	4
282	Wenonah	Langston	4
283	Osborne	Siseland	3
284	Karoline	Calverley	1
285	Laural	Heatlie	5
286	Jackelyn	Breche	1
287	Rainer	Aird	5
288	Hamilton	Fitkin	1
289	Carter	Sher	5
290	Tricia	Emanuelli	5
291	Mandi	Hunnywell	3
292	Glennis	Berresford	2
293	Mariquilla	Franzetti	2
294	Nanete	Hutson	4
295	Lewiss	Bagster	1
296	Devlen	McNeigh	3
297	Lisabeth	Bladesmith	1
298	Alex	Mobius	3
299	Emmalyn	Dragon	4
300	Jeannine	Allitt	2
301	Callie	Americi	1
302	Cristabel	Marquis	4
303	Maxine	Olyff	1
304	Judas	Bane	1
305	Stoddard	Ferrari	5
306	Bradley	Aynsley	3
307	Bronny	Grichukhin	3
308	Isahella	Phillcock	3
309	Niko	Noel	3
310	Lyndsie	Minchell	5
311	Courtenay	Prandi	4
312	Diandra	Screech	4
313	Kissee	Belmont	2
314	Jillie	Gudyer	3
315	Wilburt	Miskin	2
316	Roanna	Paynter	4
317	Mureil	Aylesbury	3
318	Shirlee	Winton	2
319	Linnet	Scherme	5
320	Evangeline	Mougel	2
321	Rachael	Armsden	4
322	Serene	Clawley	1
323	Nancie	Eamer	1
324	Winn	Weatherdon	2
325	Arni	Scarlon	1
326	Bowie	Lainton	4
327	Grover	Down	3
328	Bamby	Strood	2
329	Gracie	Girardi	1
330	Solomon	Mapplebeck	4
331	Miltie	Moultrie	1
332	Camile	Orsi	1
333	Lexine	Blasgen	4
334	Ailey	Plumridge	5
335	Nettle	Ing	5
336	Viki	Graveston	4
337	Estrella	Matussow	2
338	Blondell	Justham	1
339	Lanae	Kettlestring	4
340	Zaccaria	Lavender	1
341	Christean	Faichney	3
342	Dacie	Peatheyjohns	5
343	Aldwin	Quant	3
344	Michel	Arkcoll	5
345	Kliment	Heinz	3
346	Novelia	Spellicy	3
347	Kiah	Doby	1
348	Nannie	Gayler	4
349	Fabian	Kynge	5
350	Noby	Lie	3
351	Audy	Kain	2
352	Cariotta	Antoinet	4
353	Jewelle	Valerius	2
354	Kania	Tarver	3
355	Chandal	Kevlin	3
356	Dolli	Iacovolo	1
357	Jamima	Akroyd	2
358	Haley	Easman	4
359	Florenza	Muffen	4
360	Alvera	McElhargy	1
361	Wendall	McAlroy	5
362	Gypsy	Sclater	2
363	Cordey	Bickerstasse	2
364	Ernie	Nial	4
365	Eustacia	Van Niekerk	4
366	Paten	Nicholes	3
367	Augustine	Henstridge	2
368	Nathan	Cosker	3
369	Maurise	Lilleman	1
370	Bartram	Happert	3
371	Spenser	Spuner	4
372	Den	Dedham	5
373	Modestine	Learie	4
374	Ali	Graveney	5
375	Niki	Towlson	5
376	Valera	Cossons	1
377	Martyn	Boomes	4
378	Elise	Moorwood	2
379	Poppy	Gasparro	3
380	Breanne	Fender	1
381	Weider	Stolting	3
382	Darcie	Shorton	3
383	Glenden	Leftley	3
384	Catlaina	Polden	1
385	Davidde	Stairmand	3
386	Suellen	Castellaccio	5
387	Ches	Gniewosz	4
388	Zeke	Challenger	1
389	Nels	Guitton	5
390	Lois	Daniello	3
391	Samuele	Foxen	5
392	Jori	Sibthorp	2
393	Thelma	Clementel	4
394	Tobe	Bygate	3
395	Edmund	Jannings	2
396	Edyth	Mimmack	3
397	Farlee	Hupka	4
398	Mata	Gurdon	4
399	Kimbell	Ledrane	2
400	Karilynn	Fadden	2
401	Dian	Yerlett	5
402	Cody	Breit	5
403	Thelma	Lightbody	5
404	Annette	Yanson	4
405	Nata	Yusupov	1
406	Aleen	Gooderson	2
407	Ezri	Vedenyapin	1
408	Keene	Mordacai	2
409	Bellina	Pennini	3
410	Lannie	Arcase	2
411	Neely	Biernacki	5
412	Vachel	Zimmermeister	4
413	Lilli	Kesper	5
414	Yurik	Camamill	3
415	Fionna	Andriveaux	5
416	Ariela	Tovey	2
417	Allianora	Zisneros	5
418	Claire	Shoreson	3
419	Keeley	Darleston	5
420	Alane	Cavan	2
421	Carolus	Creigan	3
422	Maurine	Warrender	5
423	Brandice	Letchmore	5
424	Germaine	Phateplace	1
425	Wang	Raddon	3
426	Sterling	Wilden	2
427	Farrel	Ickovitz	1
428	Caspar	Weeke	4
429	Pierette	von Grollmann	2
430	Almeta	Sutch	5
431	Daphna	Turnell	3
432	Ginny	Thomasen	3
433	Elvira	Darling	4
434	Salomon	Linforth	1
435	Rivy	McLinden	4
436	Bud	Lindeberg	2
437	Elana	Reddell	4
438	Grayce	Babidge	2
439	Alys	Flood	2
440	Noella	Swadlen	1
441	Florry	Tyne	2
442	Boonie	Duplain	1
443	Cindy	Benion	3
444	Huntley	Charrisson	5
445	Daune	Antoniutti	3
446	Isadora	Rome	5
447	Derk	Birdall	3
448	Marshal	Billows	4
449	Orsa	Hawse	5
450	Kathe	Lurriman	2
451	Bili	Gommery	1
452	Lotti	Brockwell	3
453	Stinky	Goldberg	3
454	Haily	Tinan	1
455	Evangeline	Oxborrow	5
456	Abba	Jinkin	1
457	Giffy	McIlraith	4
458	Alanna	Garter	2
459	Whitman	Kinzett	1
460	Flore	Nicholes	3
461	Evan	Gotliffe	3
462	Giulio	Haliday	5
463	Parke	Fincher	5
464	Brit	Nund	5
465	Clayborn	Tankin	4
466	Dukey	Dunphy	3
467	Paxon	Trevascus	2
468	Skipper	Geerdts	4
469	Diego	Braemer	5
470	Cymbre	Hughlin	5
471	Waylon	McGreal	1
472	Maegan	Edelheid	3
473	Locke	Rosle	1
474	Vite	Davidov	4
475	Benita	Tropman	2
476	Claudina	McKinna	4
477	Torrance	Wennam	1
478	Michaela	Reynolds	2
479	Ajay	Searson	2
480	Harwell	McWhin	5
481	Reade	McCarlich	1
482	Spike	Selwyne	1
483	Donny	Dawidowitz	1
484	Sybila	Streader	3
485	Doris	Silverlock	4
486	Kesley	McLay	2
487	Orlan	Brobyn	1
488	Agnola	Aluard	1
489	Marvin	Sikora	4
490	Kippie	Dealey	4
491	Nico	Faulkener	3
492	Earvin	Kadd	5
493	Jo-anne	Durdle	3
494	Brande	Tummons	1
495	Lorain	Emanson	3
496	Cathryn	Scannell	4
497	Vite	Vockins	2
498	Erin	Enoch	4
499	Brit	Nertney	3
500	Joshuah	Kenrack	2
501	Vincents	Oliveras	2
502	Parry	Arent	3
503	Robers	Claessens	5
504	Dolores	Grimley	5
505	Giavani	Aloigi	4
506	Corissa	Avon	5
507	Bert	Fowells	2
508	Yuri	Croker	2
509	Aubine	Geekin	1
510	Whitman	Gimlet	3
511	Otha	Gatsby	2
512	Kennedy	Pawels	3
513	Jamie	Dupre	4
514	Charles	Rominov	5
515	Peg	Riach	5
516	Osgood	Pawley	5
517	Madelene	Nolot	4
518	Elwood	Fuidge	4
519	Filmer	Heartfield	1
520	Kiele	Renwick	2
521	Penrod	Isac	4
522	Morten	Pheby	1
523	Brannon	Bambery	1
524	Sanson	Caudray	4
525	Tisha	Goodreid	1
526	Cyndy	Wiltsher	3
527	Brice	Premble	4
528	Madelaine	Frenzel;	3
529	Carilyn	Corbyn	1
530	Sandro	Glabach	2
531	Willdon	Coppard	5
532	Angeli	Dhillon	4
533	Alana	Davern	5
534	Sharon	Keerl	2
535	Lesly	Ingliss	1
536	Dianna	Loy	2
537	Judah	Gonthard	3
538	Muhammad	Goldman	4
539	Shellysheldon	Berrygun	1
540	Luci	Roskelly	5
541	Morlee	Dongate	3
542	Amandi	Beddows	5
543	Schuyler	Chatwin	4
544	Arie	Grutchfield	4
545	Erek	Plaide	2
546	Alaster	Gosneye	4
547	Bab	Gosnay	4
548	Nert	Northen	5
549	Kenny	Tuer	2
550	Jud	Ende	3
551	Raquela	McCusker	5
552	Thaddeus	Mellanby	5
553	Othilie	Purse	5
554	Delcine	Newvell	3
555	Ketti	Cleveland	2
556	Kate	Buckingham	1
557	Finley	Brimham	3
558	Erin	Mantle	2
559	Liliane	Ickowics	3
560	Celestia	Gannaway	1
561	Dolly	Doswell	2
562	Jacklin	Winskill	3
563	Brant	Bernardon	2
564	Feodora	Vankeev	5
565	Peggie	Warwick	2
566	Brittani	Caberas	3
567	Sammy	Blumfield	4
568	Stephie	Gouldthorpe	4
569	Elvera	Tanman	4
570	Hermon	Doward	5
571	Irma	Theobalds	3
572	Micki	Baiss	1
573	Donnie	Caulkett	2
574	Lesly	Donaho	3
575	Hurlee	St Pierre	3
576	Felita	Rabley	5
577	Meriel	Rogerson	1
578	Kissie	Leed	3
579	Kayley	Digges	3
580	Ilyse	Jancey	1
581	Wyn	Garvin	5
582	Merle	Catterell	1
583	Max	Kidstone	2
584	Giulietta	Zammett	2
585	Marget	Sporton	5
586	Terri	Siviter	1
587	Pavel	Luney	1
588	Amabel	Splevings	2
589	Barbi	Loren	3
590	Waylon	Juara	2
591	Lara	Vawton	2
592	Dannel	Tilston	1
593	Kingston	O'Doghesty	3
594	Magdalene	Bisatt	1
595	Rockwell	McNellis	5
596	Richy	Legg	2
597	Frederique	Seeler	3
598	Ilyssa	Pragnall	3
599	Denna	Lafontaine	1
600	Anabelle	Kingsnod	1
601	Leeann	Sherme	5
602	Kerk	Phettiplace	1
603	Andre	Rohlfs	3
604	Henka	Legan	2
605	Jermaine	Rabier	3
606	Hermie	Yakobovicz	4
607	Wilhelmina	Divine	5
608	Arabel	Sanchiz	3
609	Findley	Falla	3
610	Bobbie	Castles	1
611	Bartram	Morton	4
612	Tamas	Server	3
613	Binny	Bothbie	2
614	Ebonee	Markham	2
615	Theda	Rhule	1
616	Donavon	Porritt	5
617	Anabelle	Darte	3
618	Myles	Densey	5
619	Prince	Thacker	2
620	Esther	Sigg	3
621	Dav	Tasseler	4
622	Millard	Itzkovsky	5
623	Virge	Paddemore	2
624	Wittie	Ortsmann	3
625	Shaun	Mohan	4
626	Ree	Pashba	2
627	Florette	Schustl	3
628	Danya	Dumingos	3
629	Melli	Nussey	3
630	Samantha	Lidgley	5
631	Conchita	Singyard	5
632	Aurelea	Kuhnwald	4
633	Alyda	Sandom	1
634	Moselle	Reyes	1
635	Rosy	Dorro	2
636	Adel	Davidy	4
637	Kaleena	Brundrett	5
638	Cherilynn	Lorroway	2
639	Dewain	Ormistone	3
640	Wilow	Chaucer	2
641	Theobald	Carreck	3
642	Phyllis	Boot	1
643	Dynah	Arno	5
644	Stern	Elintune	1
645	Gallagher	Fordham	3
646	Ileana	Ree	2
647	Barnie	Lain	3
648	Tobit	Mowling	3
649	Janeva	Puzey	2
650	Ferrell	Winsbury	2
651	Putnem	Sapey	4
652	Flynn	Pedri	2
653	Lurline	Muggach	4
654	Ricki	Coldman	2
655	Alexandro	Walling	5
656	Tomkin	McWhinnie	1
657	Camila	Blaxter	5
658	Dorette	Flancinbaum	2
659	Egan	Nix	2
660	Alethea	Manuel	2
661	Germain	Queenborough	2
662	Lucio	Shankland	5
663	Phedra	Denman	3
664	Patti	Good	1
665	Corine	Martill	4
666	Priscilla	Saller	2
667	Essy	MacKee	3
668	Pietro	Maggs	2
669	Madelena	Iannuzzi	2
670	Cherey	Andrivot	4
671	Sheff	O'Cahsedy	1
672	Inez	Bainton	3
673	Florentia	Drewson	1
674	Greer	Fidgin	5
675	Augusta	Corneil	5
676	Shawn	Element	3
677	Myrle	Tuxell	1
678	Paloma	Kellitt	2
679	Glyn	Filochov	4
680	Kerri	Orbell	3
681	Elly	Curnick	3
682	Ferdie	Guirau	5
683	Maggy	Bosket	3
684	Errick	Dewane	2
685	Lilian	Cyples	5
686	Pattin	Audenis	4
687	Lynda	Plackstone	4
688	Querida	Postlewhite	5
689	Jolee	Meagh	2
690	Lexis	Guiver	2
691	Gilberta	Feaks	2
692	Scottie	Gager	3
693	Cecile	Mintoft	5
694	Fawn	Umbers	3
695	Shelly	Westrey	3
696	Hailee	Dik	5
697	Svend	Barhams	4
698	Brittany	Bigg	2
699	Zuzana	Tongue	5
700	Donnamarie	Treslove	5
701	Bennie	Minichillo	5
702	Myra	Tran	1
703	Barthel	Brose	3
704	Ange	Gery	5
705	Alexina	Brixham	1
706	Laurie	Gentsch	3
707	Barnie	Kneeland	3
708	Lothario	Pawsey	1
709	Reece	Livermore	4
710	Tadio	Matteoni	4
711	Odey	Misselbrook	4
712	Josy	Giordano	3
713	Carey	Congreve	5
714	Maxi	Riehm	5
715	Whitaker	Readshall	4
716	Tina	Assur	1
717	Monti	Tudhope	5
718	Lothario	Fulep	4
719	Stanwood	Arnet	5
720	Jorey	Dondon	4
721	Kain	Fudger	3
722	Florida	Jagoe	3
723	Crissy	Kew	5
724	Sheffield	Gringley	4
725	Darrell	Bertson	5
726	Wendi	Hardan	4
727	Geordie	Paulitschke	3
728	Sutherland	Sayse	2
729	Carin	Iorillo	1
730	Cicily	Fahrenbacher	3
731	Yorker	Leyson	4
732	Charmain	Iveagh	4
733	Franzen	Deering	3
734	Roderich	Gomersall	5
735	Sydelle	Jakolevitch	5
736	Darb	Hargraves	1
737	Joelie	Maron	5
738	Myrvyn	Drohane	4
739	Mickie	Scotney	5
740	Adamo	Milkins	5
741	Denys	Brombell	2
742	Louise	Jarritt	1
743	Emilia	Floyd	1
744	Deb	Dreier	5
745	Steffane	Rives	5
746	Julie	Gillford	3
747	Theobald	Covell	2
748	Catherina	Berzon	1
749	Brigida	Garlant	3
750	Inga	Dunnion	1
751	Aaron	Albarez	5
752	Sigismund	Boscher	4
753	Cherish	Pyford	4
754	Izzy	Camplen	4
755	Brigida	Kunzel	4
756	Arly	Lapwood	4
757	Isa	Quarrie	3
758	Aggie	Ambresin	3
759	Giusto	McMeyler	4
760	Maje	Bedle	3
761	Naomi	Lewry	2
762	Woodrow	Pleasance	2
763	Marlow	Thacker	4
764	Nefen	Dorken	1
765	Fionna	Pattisson	1
766	Kettie	Adao	4
767	Harmonia	Gailor	1
768	Elka	Benbough	4
769	Bear	Tubby	1
770	Margareta	Woan	2
771	Kristofor	Blune	1
772	Burnaby	Pedreschi	4
773	Elmore	Addy	2
774	Yvette	Hurling	1
775	Rhys	Himsworth	2
776	Larina	Marciek	3
777	Brooks	Blinder	4
778	Marris	Townsend	5
779	Marguerite	Clausen	2
780	Madelyn	Pearmine	2
781	Emilia	Fennelly	4
782	Waly	German	1
783	Zora	Ewens	4
784	Jolee	Buggs	1
785	Amalie	Beardmore	5
786	Ringo	Lerwell	3
787	Cammy	Doneld	1
788	Orsa	Isitt	4
789	Everard	Weetch	4
790	Ally	Weinham	5
791	Basia	Gallaher	1
792	Aland	Damarell	1
793	Oriana	Starbucke	3
794	Anitra	Fulep	4
795	Francesca	Lowey	3
796	Kristien	Boundley	1
797	Brinna	Panichelli	1
798	Cindy	Curthoys	2
799	Andrea	Grocott	1
800	Desiri	Cattle	3
801	Zed	Henkens	1
802	Lowe	Duplock	4
803	Ev	Brunnen	3
804	Guthrey	Boness	1
805	Leilah	Annice	2
806	Cameron	Clitsome	1
807	Joycelin	Roscrigg	3
808	Scarface	Caught	4
809	Kristien	Stell	1
810	Wayne	Bowller	4
811	Kelley	Remmers	3
812	Pier	Crannach	5
813	Rheba	Gee	5
814	Elissa	McKinie	5
815	Phoebe	Gross	4
816	Peg	Pugh	2
817	Simeon	MacGinley	5
818	Emmey	Cordes	1
819	Dalston	Mountford	1
820	Calhoun	Crisford	2
821	Pammie	Westoff	2
822	Remington	Melley	3
823	Alexina	Alessandrini	2
824	Leontine	Moylan	1
825	Agata	Limbert	2
826	Juliane	Parkey	2
827	Anabelle	Davidi	3
828	Filberte	Poor	4
829	Elysee	Godrich	1
830	Lee	Lynnitt	1
831	Karrie	Ruperti	5
832	Carey	Bartholin	2
833	Stanislaus	Chesterfield	3
834	Alasdair	Kernes	5
835	Hamlen	Van Der Walt	2
836	Lexis	Scarrisbrick	2
837	Rees	McBrier	4
838	Fayre	Traviss	5
839	Ted	Cleghorn	1
840	Willyt	Counter	1
841	Gladys	Dadds	5
842	Ellissa	Bollard	3
843	Tilly	Sieghart	3
844	Cristina	Sancho	1
845	Wyn	Crowley	2
846	Gladi	Darrigrand	3
847	Angie	Grinikhin	1
848	Ezekiel	Ponton	4
849	Joletta	Moizer	1
850	Kattie	Dronsfield	1
851	Eddy	Winsome	3
852	Vyky	Sindell	3
853	Gerda	Ruddick	5
854	Lura	Worlidge	2
855	Lacy	Gass	5
856	Florri	Ellen	4
857	Holly	Laurens	3
858	Stefa	Duncombe	2
859	Kevan	Quemby	4
860	Krishna	Durbridge	5
861	Walsh	Meckiff	4
862	Dawn	Ashpital	1
863	Adelice	Darley	5
864	Cristal	Shrubb	4
865	Kelsey	I'anson	1
866	Ewan	Ramplee	1
867	Ulrike	Clifforth	5
868	Kamilah	Larder	4
869	Veronique	Veneur	3
870	Marcellina	Tingey	1
871	Ursola	Devonside	5
872	Doyle	Brayshay	2
873	Ainslee	Overstreet	3
874	Ange	Greystoke	5
875	Brice	Brussels	1
876	Walden	Dundredge	4
877	Isak	Brane	4
878	Garrott	Kinig	1
879	Yurik	Berrane	2
880	Peadar	Glyde	1
881	Ronni	Oles	4
882	Kendre	Sumpter	5
883	Paige	Molineux	1
884	Arline	Orkney	5
885	Nelle	Izaks	2
886	Federico	Hayhurst	5
887	Ashil	Mapes	2
888	Laird	Edwins	5
889	Doroteya	Boyce	4
890	Fifine	Leggett	4
891	Payton	Bollard	1
892	Elvira	Bottell	1
893	Shoshanna	Pakenham	4
894	Cammi	Karpfen	1
895	Fanchette	Graddell	1
896	Chancey	Olifaunt	2
897	Kyle	Maraga	5
898	Berthe	Raincin	3
899	Seymour	Castlake	3
900	Nowell	Strethill	5
901	Jarrid	Swallwell	4
902	Lucien	Bryden	4
903	Carmelina	Marfe	3
904	Cora	Ferrick	1
905	Paule	Battista	3
906	Friedrich	Bosenworth	4
907	Vic	Parnby	4
908	Dollie	Euler	2
909	Rollin	Treske	5
910	Mikol	Pain	2
911	Joellen	Panchen	3
912	Genia	Bollini	3
913	Ardenia	Load	2
914	Julietta	Shrubshall	3
915	Kalindi	Kurdani	1
916	Monique	Quadrio	3
917	Doralynne	Thecham	2
918	Lauri	Hailston	5
919	Nan	McCullouch	4
920	Cariotta	Mandrey	2
921	Ileane	Dunkinson	2
922	Fletch	Pittman	1
923	Quintilla	Ginni	5
924	Chrissy	Walcot	1
925	Cherry	Trimme	4
926	Emmi	Florey	2
927	Ronnie	Stranieri	5
928	Gilles	Tullis	5
929	Adeline	Whatford	3
930	Rand	Treske	3
931	Joaquin	Phillpot	3
932	Ammamaria	Jopp	3
933	Rich	Clampett	5
934	Alexandra	Olenchenko	5
935	Joana	Plampin	2
936	Abie	Barthropp	5
937	Connor	Gadie	2
938	Norrie	Coite	1
939	Hewett	MacGettigen	4
940	Monah	Cruddace	4
941	Matias	Stanhope	5
942	Gregoor	Lugard	2
943	Ilise	Stiebler	3
944	Micah	Brooksby	2
945	Halie	Dolling	5
946	Cosme	Loudyan	1
947	Marcus	Rhead	1
948	Terza	Skoggins	4
949	Foss	Trytsman	1
950	Tricia	Milnes	1
951	Harold	Miliffe	1
952	Ingeberg	Bohlens	5
953	Bartolomeo	Lathleiff	3
954	Ava	Cossor	4
955	Mahmoud	Venus	5
956	Britney	Besantie	4
957	Dorette	Leyfield	4
958	Stanwood	Cakes	5
959	Lucretia	Atherley	5
960	Ruben	Henriet	4
961	Juieta	Scala	3
962	Marc	Rany	4
963	Costa	Airy	2
964	Joe	Burl	5
965	Janeczka	Roswarn	2
966	Pammy	Grim	1
967	Edee	Maudlin	4
968	Raquel	La Grange	5
969	Jena	Attfield	4
970	Ramsay	Gabe	1
971	Jeniece	Josephi	1
972	Hedvige	Martel	4
973	Fax	Chesters	4
974	Tracey	Lowings	1
975	Pansie	Gillam	4
976	Eliza	Ivanchenkov	5
977	Gianina	Pietesch	1
978	Ryann	Giral	5
979	Maryrose	Antoniou	3
980	Gerladina	Dearn	3
981	Georgy	Hamflett	3
982	Haslett	Frill	4
983	Zorine	Shreve	5
984	Cortie	Scholard	5
985	Rosemaria	Cullon	5
986	Adham	Brotherwood	1
987	Austin	Spatoni	4
988	Jerrold	Blomfield	1
989	Norine	Le Marchand	2
990	Gannie	Bertwistle	3
991	Modesta	Pasek	1
992	Pebrook	Kopfen	5
993	Teresa	Sparkwill	3
994	Idaline	Buckwell	5
995	Laureen	Garr	4
996	Wallie	Matteris	5
997	Orran	Le Clercq	1
998	Gerrie	Eckley	3
999	Janella	Forcade	5
1000	Clotilda	Roggerone	4
1001	Dallis	Hedgeman	1
\.


--
-- Name: communication_communication_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.communication_communication_status_id_seq', 1, false);


--
-- Name: communication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.communication_id_seq', 1, false);


--
-- Name: communication_issue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.communication_issue_id_seq', 1, false);


--
-- Name: communication_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.communication_status_id_seq', 5, true);


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
-- Name: issue_consumer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.issue_consumer_id_seq', 1, false);


--
-- Name: issue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.issue_id_seq', 1, false);


--
-- Name: issue_staff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jninn
--

SELECT pg_catalog.setval('public.issue_staff_id_seq', 1000, true);


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
-- Name: issue issue_pkey; Type: CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.issue
    ADD CONSTRAINT issue_pkey PRIMARY KEY (id);


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
-- Name: issue reference_consumer; Type: FK CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.issue
    ADD CONSTRAINT reference_consumer FOREIGN KEY (consumer_id) REFERENCES public.consumer(id);


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
-- Name: communication reference_issue; Type: FK CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.communication
    ADD CONSTRAINT reference_issue FOREIGN KEY (issue_id) REFERENCES public.issue(id);


--
-- Name: consumer reference_pref_contact_method; Type: FK CONSTRAINT; Schema: public; Owner: jninn
--

ALTER TABLE ONLY public.consumer
    ADD CONSTRAINT reference_pref_contact_method FOREIGN KEY (pref_contact_method_id) REFERENCES public.pref_contact_method(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

