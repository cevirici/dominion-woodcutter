--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.11
-- Dumped by pg_dump version 9.5.11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ceviri
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO ceviri;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ceviri
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO ceviri;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ceviri
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ceviri
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO ceviri;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ceviri
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO ceviri;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ceviri
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ceviri
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO ceviri;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ceviri
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO ceviri;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ceviri
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: ceviri
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO ceviri;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: ceviri
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO ceviri;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ceviri
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO ceviri;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ceviri
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ceviri
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO ceviri;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ceviri
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: ceviri
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO ceviri;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ceviri
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO ceviri;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ceviri
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ceviri
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO ceviri;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ceviri
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO ceviri;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ceviri
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ceviri
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO ceviri;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ceviri
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO ceviri;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ceviri
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ceviri
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO ceviri;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ceviri
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO ceviri;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ceviri
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: ceviri
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO ceviri;

--
-- Name: woodcutter_carddata; Type: TABLE; Schema: public; Owner: ceviri
--

CREATE TABLE woodcutter_carddata (
    id integer NOT NULL,
    single_name character varying(30) NOT NULL,
    multi_name character varying(30) NOT NULL,
    phrase_name character varying(30) NOT NULL,
    cost integer NOT NULL,
    color character varying(8) NOT NULL,
    border_color character varying(8) NOT NULL,
    supply_type integer NOT NULL
);


ALTER TABLE woodcutter_carddata OWNER TO ceviri;

--
-- Name: woodcutter_carddata_exceptions; Type: TABLE; Schema: public; Owner: ceviri
--

CREATE TABLE woodcutter_carddata_exceptions (
    id integer NOT NULL,
    carddata_id integer NOT NULL,
    exceptiondata_id integer NOT NULL
);


ALTER TABLE woodcutter_carddata_exceptions OWNER TO ceviri;

--
-- Name: woodcutter_carddata_exceptions_id_seq; Type: SEQUENCE; Schema: public; Owner: ceviri
--

CREATE SEQUENCE woodcutter_carddata_exceptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE woodcutter_carddata_exceptions_id_seq OWNER TO ceviri;

--
-- Name: woodcutter_carddata_exceptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ceviri
--

ALTER SEQUENCE woodcutter_carddata_exceptions_id_seq OWNED BY woodcutter_carddata_exceptions.id;


--
-- Name: woodcutter_carddata_id_seq; Type: SEQUENCE; Schema: public; Owner: ceviri
--

CREATE SEQUENCE woodcutter_carddata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE woodcutter_carddata_id_seq OWNER TO ceviri;

--
-- Name: woodcutter_carddata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ceviri
--

ALTER SEQUENCE woodcutter_carddata_id_seq OWNED BY woodcutter_carddata.id;


--
-- Name: woodcutter_exceptiondata; Type: TABLE; Schema: public; Owner: ceviri
--

CREATE TABLE woodcutter_exceptiondata (
    id integer NOT NULL,
    source integer NOT NULL,
    destination integer NOT NULL,
    root_card_id integer NOT NULL
);


ALTER TABLE woodcutter_exceptiondata OWNER TO ceviri;

--
-- Name: woodcutter_exceptiondata_id_seq; Type: SEQUENCE; Schema: public; Owner: ceviri
--

CREATE SEQUENCE woodcutter_exceptiondata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE woodcutter_exceptiondata_id_seq OWNER TO ceviri;

--
-- Name: woodcutter_exceptiondata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ceviri
--

ALTER SEQUENCE woodcutter_exceptiondata_id_seq OWNED BY woodcutter_exceptiondata.id;


--
-- Name: woodcutter_exceptiondata_root_preds; Type: TABLE; Schema: public; Owner: ceviri
--

CREATE TABLE woodcutter_exceptiondata_root_preds (
    id integer NOT NULL,
    exceptiondata_id integer NOT NULL,
    preddata_id integer NOT NULL
);


ALTER TABLE woodcutter_exceptiondata_root_preds OWNER TO ceviri;

--
-- Name: woodcutter_exceptiondata_root_preds_id_seq; Type: SEQUENCE; Schema: public; Owner: ceviri
--

CREATE SEQUENCE woodcutter_exceptiondata_root_preds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE woodcutter_exceptiondata_root_preds_id_seq OWNER TO ceviri;

--
-- Name: woodcutter_exceptiondata_root_preds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ceviri
--

ALTER SEQUENCE woodcutter_exceptiondata_root_preds_id_seq OWNED BY woodcutter_exceptiondata_root_preds.id;


--
-- Name: woodcutter_exceptiondata_target_cards; Type: TABLE; Schema: public; Owner: ceviri
--

CREATE TABLE woodcutter_exceptiondata_target_cards (
    id integer NOT NULL,
    exceptiondata_id integer NOT NULL,
    carddata_id integer NOT NULL
);


ALTER TABLE woodcutter_exceptiondata_target_cards OWNER TO ceviri;

--
-- Name: woodcutter_exceptiondata_target_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: ceviri
--

CREATE SEQUENCE woodcutter_exceptiondata_target_cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE woodcutter_exceptiondata_target_cards_id_seq OWNER TO ceviri;

--
-- Name: woodcutter_exceptiondata_target_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ceviri
--

ALTER SEQUENCE woodcutter_exceptiondata_target_cards_id_seq OWNED BY woodcutter_exceptiondata_target_cards.id;


--
-- Name: woodcutter_exceptiondata_target_preds; Type: TABLE; Schema: public; Owner: ceviri
--

CREATE TABLE woodcutter_exceptiondata_target_preds (
    id integer NOT NULL,
    exceptiondata_id integer NOT NULL,
    preddata_id integer NOT NULL
);


ALTER TABLE woodcutter_exceptiondata_target_preds OWNER TO ceviri;

--
-- Name: woodcutter_exceptiondata_target_preds_id_seq; Type: SEQUENCE; Schema: public; Owner: ceviri
--

CREATE SEQUENCE woodcutter_exceptiondata_target_preds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE woodcutter_exceptiondata_target_preds_id_seq OWNER TO ceviri;

--
-- Name: woodcutter_exceptiondata_target_preds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ceviri
--

ALTER SEQUENCE woodcutter_exceptiondata_target_preds_id_seq OWNED BY woodcutter_exceptiondata_target_preds.id;


--
-- Name: woodcutter_gamelog; Type: TABLE; Schema: public; Owner: ceviri
--

CREATE TABLE woodcutter_gamelog (
    game_id integer NOT NULL,
    log character varying(15000) NOT NULL,
    supply character varying(500) NOT NULL,
    player character varying(100),
    players character varying(100) NOT NULL
);


ALTER TABLE woodcutter_gamelog OWNER TO ceviri;

--
-- Name: woodcutter_preddata; Type: TABLE; Schema: public; Owner: ceviri
--

CREATE TABLE woodcutter_preddata (
    id integer NOT NULL,
    regex character varying(150) NOT NULL,
    source integer NOT NULL,
    destination integer NOT NULL
);


ALTER TABLE woodcutter_preddata OWNER TO ceviri;

--
-- Name: woodcutter_preddata_id_seq; Type: SEQUENCE; Schema: public; Owner: ceviri
--

CREATE SEQUENCE woodcutter_preddata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE woodcutter_preddata_id_seq OWNER TO ceviri;

--
-- Name: woodcutter_preddata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ceviri
--

ALTER SEQUENCE woodcutter_preddata_id_seq OWNED BY woodcutter_preddata.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_carddata ALTER COLUMN id SET DEFAULT nextval('woodcutter_carddata_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_carddata_exceptions ALTER COLUMN id SET DEFAULT nextval('woodcutter_carddata_exceptions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata ALTER COLUMN id SET DEFAULT nextval('woodcutter_exceptiondata_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_root_preds ALTER COLUMN id SET DEFAULT nextval('woodcutter_exceptiondata_root_preds_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_cards ALTER COLUMN id SET DEFAULT nextval('woodcutter_exceptiondata_target_cards_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_preds ALTER COLUMN id SET DEFAULT nextval('woodcutter_exceptiondata_target_preds_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_preddata ALTER COLUMN id SET DEFAULT nextval('woodcutter_preddata_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ceviri
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ceviri
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ceviri
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ceviri
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ceviri
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add game log	7	add_gamelog
20	Can change game log	7	change_gamelog
21	Can delete game log	7	delete_gamelog
22	Can add card data	8	add_carddata
23	Can change card data	8	change_carddata
24	Can delete card data	8	delete_carddata
25	Can add exception data	9	add_exceptiondata
26	Can change exception data	9	change_exceptiondata
27	Can delete exception data	9	delete_exceptiondata
28	Can add pred data	10	add_preddata
29	Can change pred data	10	change_preddata
30	Can delete pred data	10	delete_preddata
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ceviri
--

SELECT pg_catalog.setval('auth_permission_id_seq', 30, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: ceviri
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$100000$9nEujCPbX9TB$/IOJCJhssWQFaAOQHUu5x8yQhfdrKGOTZICziKE+22Q=	2018-02-16 02:32:36.636612+08	t	ceviri			test@test.com	t	t	2018-02-15 16:49:48.261869+08
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: ceviri
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ceviri
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ceviri
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: ceviri
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ceviri
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ceviri
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-02-16 01:30:56.160746+08	9978680	9978680	3		7	1
2	2018-02-16 01:31:01.877852+08	9813249	9813249	3		7	1
3	2018-02-16 01:57:23.818505+08	76	76:^(?P<player>.*) moves (.*) to (.*)\\.$	2	[{"changed": {"fields": ["regex"]}}]	10	1
4	2018-02-16 02:22:19.98755+08	11692900	11692900	3		7	1
5	2018-02-16 13:13:24.263142+08	11709959	11709959	3		7	1
6	2018-02-16 13:15:50.886476+08	11709959	11709959	3		7	1
7	2018-02-16 13:36:04.86546+08	11712695	11712695	3		7	1
8	2018-02-16 13:52:24.925343+08	123	123:^Between Turns$	1	[{"added": {}}]	10	1
9	2018-02-16 14:44:36.35239+08	255	255:^(.*)$	1	[{"added": {}}]	10	1
10	2018-02-16 19:01:18.309365+08	15	Doing  with Copper(0x3) from 0 to 0	1	[{"added": {}}]	9	1
11	2018-02-16 19:02:06.358203+08	15	Doing  with Wish(0x1c0) from 0 to 0	2	[{"changed": {"fields": ["root_card"]}}]	9	1
12	2018-02-16 19:15:40.815843+08	15	Doing  with Wish(0x1c0) from 0 to 0	2	[{"changed": {"fields": ["root_preds"]}}]	9	1
13	2018-02-16 19:16:11.447094+08	15	Doing 33:^(?P<player>.*) returns (?P<cards>.*) to (.*)\\.$ with Wish(0x1c0) from 4 to 0	2	[{"changed": {"fields": ["target_cards", "target_preds", "source"]}}]	9	1
14	2018-02-16 19:22:58.347216+08	16	Doing 7:^(?P<player>.*) trashes (?P<cards>.*)\\.$ with Magic Lamp(0x1b9) from 4 to 3	1	[{"added": {}}]	9	1
15	2018-02-16 21:37:09.857367+08	11456279	11456279	2	[{"changed": {"fields": ["players"]}}]	7	1
16	2018-02-16 21:37:31.952429+08	11712695	11712695	2	[{"changed": {"fields": ["players"]}}]	7	1
17	2018-02-16 21:37:55.997567+08	11652601	11652601	2	[{"changed": {"fields": ["players"]}}]	7	1
18	2018-02-16 21:38:14.927682+08	11456891	11456891	2	[{"changed": {"fields": ["players"]}}]	7	1
19	2018-02-16 21:38:28.995653+08	10005861	10005861	2	[{"changed": {"fields": ["players"]}}]	7	1
20	2018-02-16 23:46:32.86337+08	11423201	11423201	2	[{"changed": {"fields": ["players"]}}]	7	1
21	2018-02-16 23:52:43.360715+08	50	50:^(?P<cards>.*) loses track of (.*) \\(it moved\\)\\.$	2	[{"changed": {"fields": ["regex"]}}]	10	1
22	2018-02-16 23:53:11.042124+08	51	51:^(?P<cards>.*) loses track of (.*) \\(it was covered up\\)\\.$	2	[{"changed": {"fields": ["regex"]}}]	10	1
23	2018-02-16 23:53:14.628846+08	51	51:^(?P<cards>.*) loses track of (.*) \\(it was covered up\\)\\.$	2	[]	10	1
24	2018-02-16 23:53:27.958981+08	52	52:^(?P<cards>.*) loses track of (.*) \\(it was shuffled\\)\\.$	2	[{"changed": {"fields": ["regex"]}}]	10	1
25	2018-02-16 23:53:41.473612+08	53	53:^(?P<cards>.*) is lost track of\\.$	2	[{"changed": {"fields": ["regex"]}}]	10	1
26	2018-02-16 23:57:28.316076+08	11423201	11423201	2	[{"changed": {"fields": ["players"]}}]	7	1
27	2018-02-17 00:13:13.375254+08	17	Doing 8:^(?P<player>.*) discards (?P<cards>.*)\\.$ with nothing(0x0) from 0 to 0	1	[{"added": {}}]	9	1
28	2018-02-17 00:44:12.530581+08	17	Doing 8:^(?P<player>.*) discards (?P<cards>.*)\\.$ with nothing(0x0) from 0 to 0	2	[]	9	1
29	2018-02-17 12:51:54.399781+08	19	Doing 7:^(?P<player>.*) trashes (?P<cards>.*)\\.$ with Changeling(0x196) from 4 to 3	1	[{"added": {}}]	9	1
30	2018-02-17 15:17:17.189666+08	11392820	11392820	2	[{"changed": {"fields": ["players"]}}]	7	1
31	2018-02-17 15:43:47.999263+08	33	33:^(?P<player>.*) returns (?P<cards>.*) to (.*)\\.$	2	[{"changed": {"fields": ["source"]}}]	10	1
32	2018-02-17 15:44:20.086138+08	15	Doing 33:^(?P<player>.*) returns (?P<cards>.*) to (.*)\\.$ with Wish(0x1c0) from 4 to 0	3		9	1
33	2018-02-17 15:45:34.588391+08	33	33:^(?P<player>.*) returns (?P<cards>.*) to (.*)\\.$	2	[]	10	1
34	2018-02-17 15:45:49.932431+08	35	35:^(?P<player>.*) returns (?P<cards>.*)\\.$	2	[{"changed": {"fields": ["source"]}}]	10	1
35	2018-02-17 15:46:11.489284+08	36	36:^(?P<player>.*) receives (?P<cards>.*)\\.$	2	[{"changed": {"fields": ["destination"]}}]	10	1
36	2018-02-17 16:07:11.409651+08	273	Page(0x111)	2	[{"changed": {"fields": ["border_color"]}}]	8	1
37	2018-02-17 16:07:26.317673+08	274	Peasant(0x112)	2	[{"changed": {"fields": ["border_color"]}}]	8	1
38	2018-02-17 16:08:09.739271+08	297	Treasure Hunter(0x129)	2	[{"changed": {"fields": ["border_color"]}}]	8	1
39	2018-02-17 16:08:36.759965+08	298	Warrior(0x12a)	2	[{"changed": {"fields": ["border_color"]}}]	8	1
40	2018-02-17 16:08:40.634245+08	258	Fugitive(0x102)	2	[{"changed": {"fields": ["border_color"]}}]	8	1
41	2018-02-17 16:08:55.357048+08	252	Disciple(0xfc)	2	[{"changed": {"fields": ["border_color"]}}]	8	1
42	2018-02-17 16:09:11.108938+08	263	Hero(0x107)	2	[{"changed": {"fields": ["border_color"]}}]	8	1
43	2018-02-17 16:15:37.853999+08	250	Champion(0xfa)	2	[{"changed": {"fields": ["color"]}}]	8	1
44	2018-02-17 16:15:59.555018+08	252	Disciple(0xfc)	2	[{"changed": {"fields": ["color"]}}]	8	1
45	2018-02-17 16:16:43.619946+08	263	Hero(0x107)	2	[{"changed": {"fields": ["color"]}}]	8	1
46	2018-02-17 16:17:56.142441+08	258	Fugitive(0x102)	2	[{"changed": {"fields": ["color"]}}]	8	1
47	2018-02-17 16:18:40.222804+08	288	Soldier(0x120)	2	[{"changed": {"fields": ["color"]}}]	8	1
48	2018-02-17 16:19:02.859976+08	288	Soldier(0x120)	2	[{"changed": {"fields": ["border_color"]}}]	8	1
49	2018-02-17 16:20:24.962032+08	297	Treasure Hunter(0x129)	2	[{"changed": {"fields": ["color"]}}]	8	1
50	2018-02-17 16:20:49.336665+08	298	Warrior(0x12a)	2	[{"changed": {"fields": ["color"]}}]	8	1
51	2018-02-17 16:21:13.594133+08	291	Teacher(0x123)	2	[{"changed": {"fields": ["color"]}}]	8	1
52	2018-02-17 16:25:11.308246+08	35	35:^(?P<player>.*) returns (?P<cards>.*)\\.$	2	[]	10	1
53	2018-02-17 18:57:46.44687+08	20	Doing 5:^(?P<player>.*) gains (?P<cards>.*)\\.$ with Bureaucrat(0xb) from 0 to 1	1	[{"added": {}}]	9	1
54	2018-02-17 23:05:46.385876+08	17	Doing 8:^(?P<player>.*) discards (?P<cards>.*)\\.$,37:^(?P<player>.*) receives (?P<cards>.*)$,117:^(?P<player>.*) takes (?P<cards>.*)\\.$ with nothing(0x0) from 0 to 0	2	[{"changed": {"fields": ["target_cards", "target_preds"]}}]	9	1
55	2018-02-23 23:47:25.275269+08	0	nothing(0x0)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
56	2018-02-23 23:47:31.661658+08	1	card(0x1)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
57	2018-02-23 23:47:38.00269+08	2	Curse(0x2)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
58	2018-02-23 23:47:44.777248+08	3	Copper(0x3)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
59	2018-02-23 23:52:13.128727+08	366	Wall(0x16e)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
60	2018-02-23 23:52:37.46108+08	333	Colonnade(0x14d)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
61	2018-02-23 23:52:40.878411+08	322	Aqueduct(0x142)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
62	2018-02-23 23:52:46.294152+08	323	Arena(0x143)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
63	2018-02-23 23:52:49.110363+08	324	Bandit Fort(0x144)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
64	2018-02-23 23:52:51.8961+08	326	Basilica(0x146)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
65	2018-02-23 23:52:55.521348+08	327	Baths(0x147)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
66	2018-02-23 23:56:14.366523+08	288	Soldier(0x120)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
67	2018-02-23 23:56:17.739635+08	298	Warrior(0x12a)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
68	2018-02-23 23:56:20.111908+08	297	Treasure Hunter(0x129)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
69	2018-02-23 23:56:25.705427+08	291	Teacher(0x123)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
70	2018-02-23 23:56:28.968542+08	263	Hero(0x107)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
71	2018-02-23 23:56:32.760557+08	258	Fugitive(0x102)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
72	2018-02-23 23:56:36.400757+08	252	Disciple(0xfc)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
73	2018-02-23 23:56:40.423068+08	250	Champion(0xfa)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
74	2018-02-23 23:57:21.502414+08	436	Werewolf(0x1b4)	2	[{"changed": {"fields": ["border_color"]}}]	8	1
75	2018-02-24 11:56:14.826195+08	122	122:^(?P<cards>.*) is enchanted by (.*)$	2	[{"changed": {"fields": ["regex"]}}]	10	1
76	2018-02-24 11:59:56.619652+08	188	Dame Sylvia(0xbc)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
77	2018-02-24 12:00:38.520356+08	141	Princess(0x8d)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
78	2018-02-24 12:00:40.794478+08	132	Followers(0x84)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
79	2018-02-24 12:00:44.079709+08	144	Trusty Steed(0x90)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
80	2018-02-24 12:00:47.108388+08	129	Diadem(0x81)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
81	2018-02-24 12:00:50.077698+08	128	Bag of Gold(0x80)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
82	2018-02-24 12:02:14.7726+08	367	Wolf Den(0x16f)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
83	2018-02-24 12:02:18.514232+08	366	Wall(0x16e)	2	[]	8	1
84	2018-02-24 12:02:21.564864+08	364	Triumphal Arch(0x16c)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
85	2018-02-24 12:02:24.921052+08	362	Tower(0x16a)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
86	2018-02-24 12:02:28.184097+08	361	Tomb(0x169)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
87	2018-02-24 12:02:45.532918+08	359	Tax(0x167)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
88	2018-02-24 12:02:51.44168+08	358	Salt the Earth(0x166)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
89	2018-02-24 12:03:00.606058+08	355	Ritual(0x163)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
90	2018-02-24 12:03:03.044827+08	354	Palace(0x162)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
91	2018-02-24 12:03:39.940619+08	129	Diadem(0x81)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
92	2018-02-24 12:03:42.607098+08	132	Followers(0x84)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
93	2018-02-24 12:03:46.19605+08	141	Princess(0x8d)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
94	2018-02-24 12:03:49.481448+08	144	Trusty Steed(0x90)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
95	2018-02-24 12:03:52.479734+08	128	Bag of Gold(0x80)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
96	2018-02-24 12:17:11.306532+08	21	Doing 7:^(?P<player>.*) trashes (?P<cards>.*)\\.$ with Bonfire(0xf6) from 4 to 3	1	[{"added": {}}]	9	1
97	2018-02-24 12:18:12.961844+08	222	Spoils(0xde)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
98	2018-02-24 12:18:18.253922+08	246	Bonfire(0xf6)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
99	2018-02-24 12:18:38.460746+08	287	Seaway(0x11f)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
100	2018-02-24 12:18:45.873833+08	368	Wedding(0x170)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
101	2018-02-24 12:26:28.585588+08	294	Training(0x126)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
102	2018-02-24 15:04:23.284371+08	272	Pathfinding(0x110)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
103	2018-02-24 15:26:51.48666+08	22	Doing 7:^(?P<player>.*) trashes (?P<cards>.*)\\.$ with Pirate Ship(0x4e) from 1 to 3	1	[{"added": {}}]	9	1
104	2018-02-24 15:28:04.546353+08	23	Doing 7:^(?P<player>.*) trashes (?P<cards>.*)\\.$ with Raze(0x11a) from 2 to 3	1	[{"added": {}}]	9	1
105	2018-02-24 15:29:22.434205+08	205	Overgrown Estate(0xcd)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
106	2018-02-24 15:29:26.456191+08	204	Necropolis(0xcc)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
107	2018-02-24 15:29:32.372402+08	195	Hovel(0xc3)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
108	2018-02-24 15:29:58.553532+08	95	Potion(0x5f)	2	[{"changed": {"fields": ["supply_type"]}}]	8	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ceviri
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 108, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ceviri
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	woodcutter	gamelog
8	woodcutter	carddata
9	woodcutter	exceptiondata
10	woodcutter	preddata
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ceviri
--

SELECT pg_catalog.setval('django_content_type_id_seq', 10, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ceviri
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-02-15 15:54:31.761392+08
2	auth	0001_initial	2018-02-15 15:54:31.850883+08
3	admin	0001_initial	2018-02-15 15:54:31.880132+08
4	admin	0002_logentry_remove_auto_add	2018-02-15 15:54:31.891611+08
5	contenttypes	0002_remove_content_type_name	2018-02-15 15:54:31.915867+08
6	auth	0002_alter_permission_name_max_length	2018-02-15 15:54:31.923338+08
7	auth	0003_alter_user_email_max_length	2018-02-15 15:54:31.935224+08
8	auth	0004_alter_user_username_opts	2018-02-15 15:54:31.947656+08
9	auth	0005_alter_user_last_login_null	2018-02-15 15:54:31.963099+08
10	auth	0006_require_contenttypes_0002	2018-02-15 15:54:31.965509+08
11	auth	0007_alter_validators_add_error_messages	2018-02-15 15:54:31.976082+08
12	auth	0008_alter_user_username_max_length	2018-02-15 15:54:31.998247+08
13	auth	0009_alter_user_last_name_max_length	2018-02-15 15:54:32.012847+08
14	sessions	0001_initial	2018-02-15 15:54:32.023467+08
15	woodcutter	0001_initial	2018-02-15 15:54:32.033496+08
16	woodcutter	0002_gamelog_supply	2018-02-15 15:54:32.044277+08
17	woodcutter	0003_auto_20180212_2241	2018-02-15 15:54:32.126092+08
18	woodcutter	0004_auto_20180213_1105	2018-02-15 15:54:32.147499+08
19	woodcutter	0005_auto_20180213_1557	2018-02-15 15:54:32.221626+08
20	woodcutter	0006_auto_20180213_1603	2018-02-15 15:54:32.276022+08
21	woodcutter	0007_exceptiondata_root_card	2018-02-15 15:54:32.293068+08
22	woodcutter	0008_auto_20180215_1618	2018-02-15 16:18:47.102528+08
23	woodcutter	0009_gamelog_players	2018-02-16 19:31:56.239231+08
24	woodcutter	0010_auto_20180221_2351	2018-02-23 23:46:39.660712+08
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ceviri
--

SELECT pg_catalog.setval('django_migrations_id_seq', 24, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ceviri
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
p53u7togo93ya4sbzw0q34d72gkf8azo	ZTllNTgwMjZkODU0ZGNhM2I1NWMyMmE1ZGZhNTRhODEwYzMzZmYzYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzE3ZWIyZGMyZTJiYzUzYjhiNzQwYmM3MGE5N2RmNjAzNzMyYmQ4In0=	2018-03-01 16:49:58.392489+08
lpj2ae4gcybkst0hmfcftdy1xyz0flbs	ZTllNTgwMjZkODU0ZGNhM2I1NWMyMmE1ZGZhNTRhODEwYzMzZmYzYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzE3ZWIyZGMyZTJiYzUzYjhiNzQwYmM3MGE5N2RmNjAzNzMyYmQ4In0=	2018-03-02 01:02:29.572982+08
ghs3r697kyxm4cvrnbz6amfvrw970gl3	ZTllNTgwMjZkODU0ZGNhM2I1NWMyMmE1ZGZhNTRhODEwYzMzZmYzYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzE3ZWIyZGMyZTJiYzUzYjhiNzQwYmM3MGE5N2RmNjAzNzMyYmQ4In0=	2018-03-02 02:32:36.639025+08
\.


--
-- Data for Name: woodcutter_carddata; Type: TABLE DATA; Schema: public; Owner: ceviri
--

COPY woodcutter_carddata (id, single_name, multi_name, phrase_name, cost, color, border_color, supply_type) FROM stdin;
9	Artisan	Artisans	an Artisan	6	bc5a00	c4c0b4	0
10	Bandit	Bandits	a Bandit	5	8a861e	c4c0b4	0
11	Bureaucrat	Bureaucrats	a Bureaucrat	4	95633b	c4c0b4	0
12	Cellar	Cellars	a Cellar	2	3e4646	c4c0b4	0
13	Chapel	Chapels	a Chapel	2	605444	c4c0b4	0
14	Council Room	Council Rooms	a Council Room	5	815121	c4c0b4	0
15	Festival	Festivals	a Festival	5	636d61	c4c0b4	0
16	Gardens	Gardens	a Gardens	4	5f792f	9cbe8a	0
17	Harbinger	Harbingers	a Harbinger	3	8e8a3c	c4c0b4	0
18	Laboratory	Laboratories	a Laboratory	5	614739	c4c0b4	0
19	Library	Libraries	a Library	5	7a7e4a	c4c0b4	0
20	Market	Markets	a Market	5	684830	c4c0b4	0
21	Merchant	Merchants	a Merchant	3	917911	c4c0b4	0
22	Militia	Militias	a Militia	4	856961	c4c0b4	0
23	Mine	Mines	a Mine	5	433935	c4c0b4	0
24	Moat	Moats	a Moat	2	586472	8ca2be	0
25	Moneylender	Moneylenders	a Moneylender	4	7a644c	c4c0b4	0
26	Poacher	Poachers	a Poacher	4	8f810d	c4c0b4	0
27	Remodel	Remodels	a Remodel	4	8e7e4a	c4c0b4	0
28	Sentry	Sentries	a Sentry	5	5a361e	c4c0b4	0
29	Smithy	Smithies	a Smithy	4	6a523a	c4c0b4	0
30	Throne Room	Throne Rooms	a Throne Room	4	d76315	c4c0b4	0
31	Vassal	Vassals	a Vassal	3	ba6816	c4c0b4	0
32	Village	Villages	a Village	3	7e9078	c4c0b4	0
33	Witch	Witches	a Witch	5	52444e	c4c0b4	0
34	Workshop	Workshops	a Workshop	3	8c6428	c4c0b4	0
35	Courtyard	Courtyards	a Courtyard	2	74a454	c4c0b4	0
36	Conspirator	Conspirators	a Conspirator	4	2b5989	c4c0b4	0
37	Courtier	Courtiers	a Courtier	5	ac6228	c4c0b4	0
38	Baron	Barons	a Baron	4	876341	c4c0b4	0
39	Bridge	Bridges	a Bridge	4	859b6b	c4c0b4	0
40	Diplomat	Diplomats	a Diplomat	4	91595f	8ca2be	0
41	Duke	Dukes	a Duke	5	8a7e5e	9cbe8a	0
42	Harem	Harems	a Harem	6	c3510d	a9c35d	0
43	Nobles	Nobles	a Nobles	6	816155	aac298	0
44	Ironworks	Ironworks	an Ironworks	4	7d3b1f	c4c0b4	0
45	Lurker	Lurkers	a Lurker	2	909ab2	c4c0b4	0
46	Masquerade	Masquerades	a Masquerade	3	635d51	c4c0b4	0
47	Mill	Mills	a Mill	4	78b294	aac298	0
48	Mining Village	Mining Villages	a Mining Village	4	aea090	c4c0b4	0
49	Minion	Minions	a Minion	5	6c382e	c4c0b4	0
50	Patrol	Patrols	a Patrol	5	98ae70	c4c0b4	0
51	Pawn	Pawns	a Pawn	2	3f2f25	c4c0b4	0
52	Replace	Replaces	a Replace	5	564850	c4c0b4	0
53	Secret Passage	Secret Passages	a Secret Passage	4	261e12	c4c0b4	0
54	Shanty Town	Shanty Towns	a Shanty Town	3	124e44	c4c0b4	0
55	Steward	Stewards	a Steward	3	4f4d5d	c4c0b4	0
56	Swindler	Swindlers	a Swindler	3	b78d49	c4c0b4	0
57	Torturer	Torturers	a Torturer	5	842804	c4c0b4	0
58	Trading Post	Trading Posts	a Trading Post	5	686434	c4c0b4	0
59	Upgrade	Upgrades	an Upgrade	5	979773	c4c0b4	0
60	Wishing Well	Wishing Wells	a Wishing Well	3	61756b	c4c0b4	0
61	Ambassador	Ambassadors	an Ambassador	3	b8602c	c4c0b4	0
62	Bazaar	Bazaars	a Bazaar	5	a6765e	c4c0b4	0
63	Caravan	Caravans	a Caravan	4	b9ab7f	dda561	0
64	Cutpurse	Cutpurses	a Cutpurse	4	826a4e	c4c0b4	0
65	Embargo	Embargos	an Embargo	2	9da381	c4c0b4	0
66	Explorer	Explorers	an Explorer	5	92887a	c4c0b4	0
67	Fishing Village	Fishing Villages	a Fishing Village	3	7db9b3	dda561	0
68	Ghost Ship	Ghost Ships	a Ghost Ship	5	59814d	c4c0b4	0
69	Haven	Havens	a Haven	2	866846	dda561	0
70	Island	Islands	an Island	4	5d9fbd	aac298	0
71	Lighthouse	Lighthouses	a Lighthouse	2	559773	dda561	0
72	Lookout	Lookouts	a Lookout	3	723a6a	c4c0b4	0
73	Merchant Ship	Merchant Ships	a Merchant Ship	5	b58127	dda561	0
74	Native Village	Native Villages	a Native Village	2	6f919f	c4c0b4	0
75	Navigator	Navigators	a Navigator	4	5ba7ad	c4c0b4	0
76	Outpost	Outposts	an Outpost	5	949ab2	dda561	0
77	Pearl Diver	Pearl Divers	a Pearl Diver	2	00aee6	c4c0b4	0
78	Pirate Ship	Pirate Ships	a Pirate Ship	4	7e9ec2	c4c0b4	0
79	Salvager	Salvagers	a Salvager	4	397b7b	c4c0b4	0
80	Sea Hag	Sea Hags	a Sea Hag	4	745a44	c4c0b4	0
81	Smugglers	Smugglers	a Smugglers	3	464c50	c4c0b4	0
82	Tactician	Tacticians	a Tactician	5	785c44	dda561	0
83	Treasure Map	Treasure Maps	a Treasure Map	4	9d651b	c4c0b4	0
84	Treasury	Treasuries	a Treasury	5	884a00	c4c0b4	0
85	Warehouse	Warehouses	a Warehouse	3	59635b	c4c0b4	0
86	Wharf	Wharves	a Wharf	5	7b778f	dda561	0
87	Alchemist	Alchemists	an Alchemist	5	898573	c4c0b4	0
88	Apothecary	Apothecaries	an Apothecary	4	a36713	c4c0b4	0
89	Apprentice	Apprentices	an Apprentice	5	ce5800	c4c0b4	0
90	Familiar	Familiars	a Familiar	5	aa6656	c4c0b4	0
1	card	cards	a card	0	666666	666666	-1
91	Golem	Golems	a Golem	6	5e6c80	c4c0b4	0
92	Herbalist	Herbalists	a Herbalist	2	b8884e	c4c0b4	0
93	Philosopher's Stone	Philosopher's Stones	a Philosopher's Stone	5	980642	d8c280	0
94	Possession	Possessions	a Possession	8	736157	c4c0b4	0
96	Scrying Pool	Scrying Pools	a Scrying Pool	4	a45e08	c4c0b4	0
97	Transmute	Transmutes	a Transmute	2	764a76	c4c0b4	0
98	University	Universities	a University	4	77714b	c4c0b4	0
99	Vineyard	Vineyards	a Vineyard	2	8c9652	9cbe8a	0
100	Bank	Banks	a Bank	7	616745	d8c280	0
101	Bishop	Bishops	a Bishop	4	6a587c	c4c0b4	0
102	Colony	Colonies	a Colony	11	9494d8	548C2B	0
103	Contraband	Contrabands	a Contraband	5	68442c	d8c280	0
104	Counting House	Counting Houses	a Counting House	5	6f5143	c4c0b4	0
105	City	Cities	a City	5	a4a07c	c4c0b4	0
106	Expand	Expands	an Expand	7	d77b07	c4c0b4	0
107	Forge	Forges	a Forge	7	d05a2a	c4c0b4	0
108	Grand Market	Grand Markets	a Grand Market	6	ab735b	c4c0b4	0
109	Goons	Goons	a Goons	6	6d6129	c4c0b4	0
110	Hoard	Hoards	a Hoard	6	917d25	d8c280	0
111	King's Court	King's Courts	a King's Court	7	926634	c4c0b4	0
112	Loan	Loans	a Loan	3	9d936f	d8c280	0
113	Mint	Mints	a Mint	5	7a5e40	c4c0b4	0
114	Monument	Monuments	a Monument	4	8191ab	c4c0b4	0
115	Mountebank	Mountebanks	a Mountebank	5	866a6a	c4c0b4	0
116	Peddler	Peddlers	a Peddler	8	9a5a2e	c4c0b4	0
117	Platinum	Platina	a Platinum	9	948266	f1d14d	0
118	Quarry	Quarries	a Quarry	4	b9b59f	d8c280	0
119	Rabble	Rabbles	a Rabble	5	88422c	c4c0b4	0
120	Royal Seal	Royal Seals	a Royal Seal	5	d8b08e	d8c280	0
121	Talisman	Talismans	a Talisman	4	b28038	d8c280	0
122	Trade Route	Trade Routes	a Trade Route	3	65a167	c4c0b4	0
123	Vault	Vaults	a Vault	5	947e4e	c4c0b4	0
124	Venture	Ventures	a Venture	5	624e36	d8c280	0
125	Watchtower	Watchtowers	a Watchtower	3	7496c0	8ca2be	0
126	Worker's Village	Worker's Villages	a Worker's Village	4	cd7119	c4c0b4	0
127	Prize Pile	Prize Piles	a Prize Pile	0	666666	666666	0
130	Fairgrounds	Fairgrounds	a Fairgrounds	6	9a8462	9cbe8a	0
131	Farming Village	Farming Villages	a Farming Village	4	8d7f67	c4c0b4	0
133	Fortune Teller	Fortune Tellers	a Fortune Teller	3	884214	c4c0b4	0
134	Hamlet	Hamlets	a Hamlet	2	8e9886	c4c0b4	0
135	Harvest	Harvests	a Harvest	5	cd9f49	c4c0b4	0
136	Horse Traders	Horse Traders	a Horse Traders	4	595561	8ca2be	0
137	Horn of Plenty	Horns of Plenty	a Horn of Plenty	5	7b4d27	d8c280	0
138	Hunting Party	Hunting Parties	a Hunting Party	5	4e4e48	c4c0b4	0
139	Jester	Jesters	a Jester	5	9f7967	c4c0b4	0
140	Menagerie	Menageries	a Menagerie	3	8a7234	c4c0b4	0
142	Remake	Remakes	a Remake	4	b46614	c4c0b4	0
143	Tournament	Tournaments	a Tournament	4	937755	c4c0b4	0
145	Young Witch	Young Witches	a Young Witch	4	7b653b	c4c0b4	0
146	Border Village	Border Villages	a Border Village	6	758791	c4c0b4	0
147	Cache	Caches	a Cache	5	6e7846	d8c280	0
148	Cartographer	Cartographers	a Cartographer	5	a45a14	c4c0b4	0
149	Crossroads	Crossroads	a Crossroads	2	a7a187	c4c0b4	0
150	Develop	Develops	a Develop	3	c09864	c4c0b4	0
151	Duchess	Duchesses	a Duchess	2	999b77	c4c0b4	0
152	Embassy	Embassies	an Embassy	5	8e725c	c4c0b4	0
153	Farmland	Farmlands	a Farmland	6	4fbb9d	9cbe8a	0
154	Fool's Gold	Fool's Golds	a Fool's Gold	2	b8a62e	666666	0
155	Haggler	Hagglers	a Haggler	5	a07a56	c4c0b4	0
156	Highway	Highways	a Highway	5	a0be8c	c4c0b4	0
157	Ill-Gotten Gains	Ill-Gotten Gains	an Ill-Gotten Gains	5	9d6d41	d8c280	0
158	Inn	Inns	an Inn	5	71957d	c4c0b4	0
159	Jack of All Trades	Jacks of All Trades	a Jack of All Trades	4	7aa2a4	c4c0b4	0
160	Mandarin	Mandarins	a Mandarin	5	b38f2d	c4c0b4	0
161	Noble Brigand	Noble Brigands	a Noble Brigand	4	645c46	c4c0b4	0
162	Nomad Camp	Nomad Camps	a Nomad Camp	4	87a1b1	c4c0b4	0
163	Oasis	Oases	an Oasis	3	8e9864	c4c0b4	0
164	Oracle	Oracles	an Oracle	3	69491b	c4c0b4	0
165	Margrave	Margraves	a Margrave	5	7c6c48	c4c0b4	0
166	Scheme	Schemes	a Scheme	3	7f7d7d	c4c0b4	0
167	Silk Road	Silk Roads	a Silk Road	4	948452	9cbe8a	0
168	Spice Merchant	Spice Merchants	a Spice Merchant	4	af7b4d	c4c0b4	0
169	Stables	Stables	a Stables	5	875d33	c4c0b4	0
170	Trader	Traders	a Trader	4	988a34	8ca2be	0
171	Tunnel	Tunnels	a Tunnel	3	545258	666666	0
172	Ruins	Ruins	a Ruins	0	666666	b29462	0
173	Knights	Knights	a Knights	5	819381	c4c0b4	0
174	Abandoned Mine	Abandoned Mines	an Abandoned Mine	0	633b29	b29462	0
175	Altar	Altars	an Altar	6	7e3800	c4c0b4	0
176	Armory	Armories	an Armory	4	54564e	c4c0b4	0
177	Band of Misfits	Bands of Misfits	a Band of Misfits	5	56505c	c4c0b4	0
178	Bandit Camp	Bandit Camps	a Bandit Camp	5	42889e	c4c0b4	0
144	Trusty Steed	Trusty Steeds	a Trusty Steed	0	6e726a	c4c0b4	1
128	Bag of Gold	Bags of Gold	a Bag of Gold	0	b47214	c4c0b4	1
132	Followers	Followers	a Followers	0	ab670b	c4c0b4	1
95	Potion	Potions	a Potion	4	90563c	f1d14d	1
129	Diadem	Diadems	a Diadem	0	ffba14	d8c280	1
179	Beggar	Beggars	a Beggar	2	503626	8ca2be	0
180	Catacombs	Catacombs	a Catacombs	5	472f1f	c4c0b4	0
181	Count	Counts	a Count	5	58605c	c4c0b4	0
182	Counterfeit	Counterfeits	a Counterfeit	5	a66e28	d8c280	0
183	Cultist	Cultists	a Cultist	5	4b4957	c4c0b4	0
189	Death Cart	Death Carts	a Death Cart	4	826636	c4c0b4	0
190	Feodum	Feoda	a Feodum	4	b4a67e	9cbe8a	0
191	Forager	Foragers	a Forager	3	a46618	c4c0b4	0
192	Fortress	Fortresses	a Fortress	4	62524c	c4c0b4	0
193	Graverobber	Graverobbers	a Graverobber	5	4e4052	c4c0b4	0
194	Hermit	Hermits	a Hermit	3	977d5b	c4c0b4	0
196	Hunting Grounds	Hunting Grounds	a Hunting Grounds	6	a08250	c4c0b4	0
197	Ironmonger	Ironmongers	an Ironmonger	4	72787a	c4c0b4	0
198	Junk Dealer	Junk Dealers	a Junk Dealer	5	7b5f2d	c4c0b4	0
199	Madman	Madmen	a Madman	0	8b513d	c4c0b4	0
200	Market Square	Market Squares	a Market Square	3	956d43	8ca2be	0
201	Marauder	Marauders	a Marauder	4	7e4826	c4c0b4	0
202	Mercenary	Mercenaries	a Mercenary	0	6b8193	c4c0b4	0
203	Mystic	Mystics	a Mystic	5	695729	c4c0b4	0
206	Pillage	Pillages	a Pillage	5	8d7f63	c4c0b4	0
207	Poor House	Poor Houses	a Poor House	1	65573d	c4c0b4	0
208	Procession	Processions	a Procession	4	775f3d	c4c0b4	0
209	Rats	Rats	a Rats	4	795743	c4c0b4	0
210	Rebuild	Rebuilds	a Rebuild	5	64748c	c4c0b4	0
211	Rogue	Rogues	a Rogue	5	363c4c	c4c0b4	0
212	Ruined Library	Ruined Libraries	a Ruined Library	0	806a34	b29462	0
213	Ruined Market	Ruined Markets	a Ruined Market	0	6d5753	b29462	0
214	Ruined Village	Ruined Villages	a Ruined Village	0	a4886a	b29462	0
215	Sage	Sages	a Sage	3	89612f	c4c0b4	0
216	Scavenger	Scavengers	a Scavenger	4	34404e	c4c0b4	0
217	Sir Bailey	Sir Baileys	a Sir Bailey	5	506070	c4c0b4	0
223	Storeroom	Storerooms	a Storeroom	3	69492f	c4c0b4	0
224	Squire	Squires	a Squire	2	937b4b	c4c0b4	0
225	Survivors	Survivors	a Survivors	0	706a46	b29462	0
226	Urchin	Urchins	an Urchin	3	634b33	c4c0b4	0
227	Vagrant	Vagrants	a Vagrant	2	593f2b	c4c0b4	0
228	Wandering Minstrel	Wandering Minstrels	a Wandering Minstrel	4	905414	c4c0b4	0
229	Advisor	Advisors	an Advisor	4	77675b	c4c0b4	0
230	Baker	Bakers	a Baker	5	815b3b	c4c0b4	0
231	Butcher	Butchers	a Butcher	5	9c6426	c4c0b4	0
232	Candlestick Maker	Candlestick Makers	a Candlestick Maker	2	7d6137	c4c0b4	0
233	Doctor	Doctors	a Doctor	3	895923	c4c0b4	0
234	Herald	Heralds	a Herald	4	996941	c4c0b4	0
235	Journeyman	Journeymen	a Journeyman	5	78704e	c4c0b4	0
236	Masterpiece	Masterpieces	a Masterpiece	3	d5c361	d8c280	0
237	Merchant Guild	Merchant Guilds	a Merchant Guild	5	a44410	c4c0b4	0
238	Plaza	Plazas	a Plaza	4	87573f	c4c0b4	0
239	Taxman	Taxmen	a Taxman	4	70583a	c4c0b4	0
240	Soothsayer	Soothsayers	a Soothsayer	5	514135	c4c0b4	0
241	Stonemason	Stonemasons	a Stonemason	2	915d23	c4c0b4	0
242	Alms	Alms	an Alms	0	9f793f	a9a39d	0
243	Amulet	Amulets	an Amulet	3	d39d25	dda561	0
244	Artificer	Artificers	an Artificer	5	754f2b	c4c0b4	0
245	Ball	Balls	a Ball	5	8b6323	a9a39d	0
247	Borrow	Borrows	a Borrow	0	8a3620	a9a39d	0
248	Bridge Troll	Bridge Trolls	a Bridge Troll	5	524830	dda561	0
249	Caravan Guard	Caravan Guards	a Caravan Guard	3	7c8e68	a7a39b	0
251	Coin of the Realm	Coins of the Realm	a Coin of the Realm	2	ae6c00	c2a85c	0
253	Distant Lands	Distant Lands	a Distant Lands	5	c49e8c	666666	0
254	Dungeon	Dungeons	a Dungeon	3	4f472d	dda561	0
255	Duplicate	Duplicates	a Duplicate	4	8a887c	c5af85	0
256	Expedition	Expeditions	an Expedition	3	ca8c28	a9a39d	0
257	Ferry	Ferries	a Ferry	3	798593	a9a39d	0
259	Gear	Gears	a Gear	3	877969	dda561	0
260	Giant	Giants	a Giant	5	9c7c5a	c4c0b4	0
261	Guide	Guides	a Guide	3	486e4a	c5af85	0
262	Haunted Woods	Haunted Woods	a Haunted Woods	5	314b39	dda561	0
264	Hireling	Hirelings	a Hireling	6	745666	dda561	0
265	Inheritance	Inheritances	an Inheritance	7	657759	a9a39d	0
266	Lost Arts	Lost Arts	a Lost Arts	6	ab4f1f	a9a39d	0
267	Lost City	Lost Cities	a Lost City	5	969c6c	c4c0b4	0
268	Magpie	Magpies	a Magpie	4	707870	c4c0b4	0
269	Messenger	Messengers	a Messenger	4	99afc3	c4c0b4	0
270	Miser	Misers	a Miser	4	726a60	c4c0b4	0
184	Dame Anna	Dame Annas	a Dame Anna	5	775f35	c4c0b4	-1
185	Dame Josephine	Dame Josephines	a Dame Josephine	5	635147	aac298	-1
186	Dame Molly	Dame Mollies	a Dame Molly	5	946e50	c4c0b4	-1
187	Dame Natalie	Dame Natalies	a Dame Natalie	5	56665a	c4c0b4	-1
188	Dame Sylvia	Dame Sylvias	a Dame Sylvia	5	744c36	c4c0b4	-1
222	Spoils	Spoils	a Spoils	0	646032	d8c280	1
246	Bonfire	Bonfires	a Bonfire	3	844e52	a9a39d	2
205	Overgrown Estate	Overgrown Estates	an Overgrown Estate	1	58664c	b4a65e	2
204	Necropolis	Necropolis	a Necropolis	1	778793	d59f89	2
195	Hovel	Hovels	a Hovel	1	25716f	a48892	2
271	Mission	Missions	a Mission	4	7e767c	a9a39d	0
275	Pilgrimage	Pilgrimages	a Pilgrimage	4	6e4e28	a9a39d	0
276	Plan	Plans	a Plan	3	6c4630	a9a39d	0
277	Port	Ports	a Port	4	586c6e	c4c0b4	0
278	Quest	Quests	a Quest	0	685456	a9a39d	0
279	Ranger	Rangers	a Ranger	4	8c7236	c4c0b4	0
280	Raid	Raids	a Raid	5	4f4347	a9a39d	0
273	Page	Pages	a Page	2	553d33	c2bfba	0
281	Ratcatcher	Ratcatchers	a Ratcatcher	2	655d4f	c5af85	0
282	Raze	Razes	a Raze	2	6b5949	c4c0b4	0
283	Relic	Relics	a Relic	5	616959	d8c280	0
284	Royal Carriage	Royal Carriages	a Royal Carriage	5	9a7450	c5af85	0
285	Save	Saves	a Save	1	814d3b	a9a39d	0
286	Scouting Party	Scouting Parties	a Scouting Party	2	97875b	a9a39d	0
289	Storyteller	Storytellers	a Storyteller	5	ad735f	c4c0b4	0
290	Swamp Hag	Swamp Hags	a Swamp Hag	5	8c462e	dda561	0
292	Travelling Fair	Travelling Fairs	a Travelling Fair	2	d2942c	a9a39d	0
293	Trade	Trades	a Trade	5	735941	a9a39d	0
295	Transmogrify	Transmogrifies	a Transmogrify	4	6e6258	c5af85	0
296	Treasure Trove	Treasure Troves	a Treasure Trove	5	95795f	d8c280	0
299	Wine Merchant	Wine Merchants	a Wine Merchant	5	855b31	c5af85	0
300	Encampment	Encampments	an Encampment	2	6d4527	c4c0b4	0
301	Plunder	Plunders	a Plunder	5	666666	d8c280	0
302	Patrician	Patricians	a Patrician	2	6a80a0	c4c0b4	0
303	Emporium	Emporia	an Emporium	5	666666	c4c0b4	0
304	Settlers	Settlers	a Settlers	2	784624	c4c0b4	0
305	Bustling Village	Bustling Villages	a Bustling Village	5	666666	c4c0b4	0
306	Catapult	Catapults	a Catapult	3	839f55	c4c0b4	0
307	Rocks	Rocks	a Rocks	4	80963a	d8c280	0
308	Gladiator	Gladiators	a Gladiator	3	b28674	c4c0b4	0
309	Fortune	Fortunes	a Fortune	16	666666	d8c280	0
310	Castles	Castles	a Castles	3	2d7bbb	9cbe8a	0
311	Humble Castle	Humble Castles	a Humble Castle	3	63af7f	a9c35d	0
319	Advance	Advances	an Advance	0	714d41	a9a39d	0
320	Annex	Annexes	an Annex	8	7a5a36	a9a39d	0
321	Archive	Archives	an Archive	5	7b5d47	dda561	0
325	Banquet	Banquets	a Banquet	3	6f5735	a9a39d	0
328	Battlefield	Battlefields	a Battlefield	0	528ec6	65ab6f	0
329	Capital	Capitals	a Capital	5	765648	d8c280	0
330	Charm	Charms	a Charm	5	756349	d8c280	0
331	Chariot Race	Chariot Races	a Chariot Race	3	7f7569	c4c0b4	0
332	City Quarter	City Quarters	a City Quarter	8	7e6a30	c4c0b4	0
334	Conquest	Conquests	a Conquest	6	7c9692	a9a39d	0
335	Crown	Crowns	a Crown	5	7b4b33	cec28a	0
336	Delve	Delves	a Delve	2	716149	a9a39d	0
337	Defiled Shrine	Defiled Shrines	a Defiled Shrine	0	5a746e	65ab6f	0
338	Dominate	Dominates	a Dominate	14	896b71	a9a39d	0
339	Donate	Donates	a Donate	8	886c7a	a9a39d	0
340	Enchantress	Enchantresses	an Enchantress	3	a5855f	dda561	0
341	Engineer	Engineers	an Engineer	4	733719	c4c0b4	0
342	Farmers' Market	Farmers' Markets	a Farmers' Market	3	867642	c4c0b4	0
343	Forum	Forums	a Forum	5	bc9256	c4c0b4	0
344	Fountain	Fountains	a Fountain	0	7c5a34	65ab6f	0
345	Groundskeeper	Groundskeepers	a Groundskeeper	5	978957	c4c0b4	0
346	Keep	Keeps	a Keep	0	6f4f7d	65ab6f	0
347	Labyrinth	Labyrinths	a Labyrinth	0	5e884c	65ab6f	0
348	Legionary	Legionaries	a Legionary	5	714b41	c4c0b4	0
349	Mountain Pass	Mountain Passes	a Mountain Pass	0	657d8d	65ab6f	0
350	Museum	Museums	a Museum	0	c47a00	65ab6f	0
351	Obelisk	Obelisks	an Obelisk	0	774d29	65ab6f	0
352	Orchard	Orchards	an Orchard	0	707c5c	65ab6f	0
353	Overlord	Overlords	an Overlord	8	9a8a90	c4c0b4	0
356	Royal Blacksmith	Royal Blacksmiths	a Royal Blacksmith	8	69452b	c4c0b4	0
357	Sacrifice	Sacrifices	a Sacrifice	4	9b675f	c4c0b4	0
322	Aqueduct	Aqueducts	an Aqueduct	0	9a905c	65ab6f	2
323	Arena	Arenas	an Arena	0	b0587c	65ab6f	2
324	Bandit Fort	Bandit Forts	a Bandit Fort	0	b0a66e	65ab6f	2
326	Basilica	Basilicas	a Basilica	0	835945	65ab6f	2
327	Baths	Baths	a Baths	0	746c44	65ab6f	2
263	Hero	Heroes	a Hero	5	423732	c2bfba	1
258	Fugitive	Fugitives	a Fugitive	4	888095	c2bfba	1
252	Disciple	Disciples	a Disciple	5	966a2c	c2bfba	1
250	Champion	Champions	a Champion	6	594c3e	dda561	1
359	Tax	Taxes	a Tax	2	a0745a	a9a39d	2
358	Salt the Earth	Salt the Earths	a Salt the Earth	4	7b8383	a9a39d	2
355	Ritual	Rituals	a Ritual	4	7a5224	a9a39d	2
354	Palace	Palaces	a Palace	0	c07442	65ab6f	2
287	Seaway	Seaways	a Seaway	5	7195a3	a9a39d	2
294	Training	Trainings	a Training	6	533f33	a9a39d	2
272	Pathfinding	Pathfindings	a Pathfinding	8	664820	a9a39d	2
360	Temple	Temples	a Temple	4	d6b452	c4c0b4	0
363	Triumph	Triumphs	a Triumph	5	913d05	a9a39d	0
365	Villa	Villas	a Villa	4	87b34f	c4c0b4	0
369	Wild Hunt	Wild Hunts	a Wild Hunt	5	15516f	c4c0b4	0
370	Windfall	Windfalls	a Windfall	5	9e5402	a9a39d	0
404	Bard	Bards	a Bard	4	57932f	c4c0b4	0
405	Blessed Village	Blessed Villages	a Blessed Village	4	8f7737	c4c0b4	0
406	Changeling	Changelings	a Changeling	3	183442	30484e	0
407	Cemetery	Cemeteries	a Cemetery	4	53735b	9cbe8a	0
408	Cobbler	Cobblers	a Cobbler	5	5a501c	7a5622	0
409	Conclave	Conclaves	a Conclave	4	9c6a14	c4c0b4	0
410	Crypt	Crypts	a Crypt	5	0d494f	7a5622	0
411	Cursed Village	Cursed Villages	a Cursed Village	5	265ea6	c4c0b4	0
412	Den Of Sin	Dens Of Sin	a Den Of Sin	5	2c2226	7a5622	0
413	Devil's Workshop	Devil's Workshops	a Devil's Workshop	4	7d5b83	30484e	0
414	Druid	Druids	a Druid	2	49b921	c4c0b4	0
415	Exorcist	Exorcists	an Exorcist	4	3763b5	30484e	0
416	Faithful Hound	Faithful Hounds	a Faithful Hound	2	8c7640	8ca2be	0
417	Fool	Fools	a Fool	3	a7af3f	c4c0b4	0
418	Ghost Town	Ghost Towns	a Ghost Town	3	173b57	7a5622	0
419	Guardian	Guardians	a Guardian	2	376db9	7a5622	0
420	Idol	Idols	a Idol	5	b13700	d8c280	0
421	Leprechaun	Leprechauns	a Leprechaun	3	5e7c04	c4c0b4	0
422	Monastery	Monasteries	a Monastery	2	02268a	30484e	0
423	Necromancer	Necromancers	a Necromancer	4	525a36	c4c0b4	0
424	Night Watchman	Night Watchmen	a Night Watchman	3	464266	30484e	0
425	Pixie	Pixies	a Pixie	2	a9db75	c4c0b4	0
426	Pooka	Pookas	a Pooka	5	6b6700	c4c0b4	0
427	Raider	Raiders	a Raider	6	00238b	7a5622	0
428	Sacred Grove	Sacred Groves	a Sacred Grove	5	5e7632	c4c0b4	0
429	Secret Cave	Secret Caves	a Secret Cave	3	be741c	dda561	0
430	Shepherd	Shepherds	a Shepherd	4	9caa90	c4c0b4	0
431	Skulk	Skulks	a Skulk	4	7e6060	c4c0b4	0
432	Tormentor	Tormentors	a Tormentor	5	884c6a	c4c0b4	0
433	Tragic Hero	Tragic Heroes	a Tragic Hero	5	5c88a4	c4c0b4	0
434	Tracker	Trackers	a Tracker	2	87c7d9	c4c0b4	0
435	Vampire	Vampires	a Vampire	5	523a4c	30484e	0
288	Soldier	Soldiers	a Soldier	3	a58e74	c2bfba	1
298	Warrior	Warriors	a Warrior	4	564543	c2bfba	1
291	Teacher	Teachers	a Teacher	6	bb7937	c5af85	1
436	Werewolf	Werewolves	a Werewolf	5	9f8193	30484e	0
367	Wolf Den	Wolf Dens	a Wolf Den	0	a1a18f	65ab6f	2
366	Wall	Walls	a Wall	0	5e4a54	65ab6f	2
364	Triumphal Arch	Triumphal Arches	a Triumphal Arch	0	8f8b51	65ab6f	2
362	Tower	Towers	a Tower	0	bb9b3d	65ab6f	2
361	Tomb	Tombs	a Tomb	0	8b8585	65ab6f	2
368	Wedding	Weddings	a Wedding	7	715919	a9a39d	2
437	Cursed Gold	Cursed Golds	a Cursed Gold	4	666666	d8c280	2
438	Goat	Goats	a Goat	2	a1e15d	d8c280	2
439	Haunted Mirror	Haunted Mirrors	a Haunted Mirror	0	666666	d8c280	2
440	Lucky Coin	Lucky Coins	a Lucky Coin	4	9ed654	d8c280	2
441	Magic Lamp	Magic Lamps	a Magic Lamp	0	8c3400	d8c280	2
442	Pasture	Pastures	a Pasture	2	666666	a9c35d	2
443	Pouch	Pouches	a Pouch	2	666666	d8c280	2
452	Avanto	Avantos	an Avanto	5	9fa3af	c4c0b4	0
453	Black Market	Black Markets	a Black Market	3	b5b5b5	c4c0b4	0
454	Envoy	Envoys	an Envoy	4	425064	c4c0b4	0
455	Governor	Governors	a Governor	5	8f9989	c4c0b4	0
456	Prince	Princes	a Prince	8	a4863c	c4c0b4	0
457	Sauna	Saunas	a Sauna	5	9f8d7b	c4c0b4	0
458	Stash	Stashes	a Stash	5	666666	d8c280	0
459	Summon	Summons	a Summon	5	c19b59	a9a39d	0
460	Walled Village	Walled Villages	a Walled Village	4	6eaa70	c4c0b4	0
461	Black Market Deck	Black Market Decks	a Black Market Deck	0	666666	666666	0
462	Dismantle	Dismantles	a Dismantle	4	666666	c4c0b4	0
463	Debt	Debt	Debt	0	666666	666666	0
274	Peasant	Peasants	a Peasant	2	cab026	c2bfba	0
0	nothing	nothing	nothing	0	666666	666666	-1
2	Curse	Curses	a Curse	0	a2b8b8	b571b3	-1
3	Copper	Coppers	a Copper	0	a05624	f1d14d	-1
4	Silver	Silvers	a Silver	3	709aa4	f1d14d	-1
5	Gold	Golds	a Gold	6	ffae06	f1d14d	-1
6	Estate	Estates	an Estate	2	bfb597	548C2B	-1
7	Duchy	Duchies	a Duchy	5	6aa09a	548C2B	-1
8	Province	Provinces	a Province	8	efaf49	548C2B	-1
333	Colonnade	Colonnades	a Colonnade	0	9f7b27	65ab6f	2
297	Treasure Hunter	Treasure Hunters	a Treasure Hunter	3	494343	c2bfba	1
312	Crumbling Castle	Crumbling Castles	a Crumbling Castle	4	ceb22c	9cbe8a	-1
313	Small Castle	Small Castles	a Small Castle	5	96a692	aac298	-1
314	Haunted Castle	Haunted Castles	a Haunted Castle	6	4a6064	9cbe8a	-1
315	Opulent Castle	Opulent Castles	an Opulent Castle	7	4f9391	aac298	-1
316	Sprawling Castle	Sprawling Castles	a Sprawling Castle	8	ffb300	9cbe8a	-1
317	Grand Castle	Grand Castles	a Grand Castle	9	9e7e5a	9cbe8a	-1
318	King's Castle	King's Castles	a King's Castle	10	cd8959	9cbe8a	-1
371	Boon Drawpile	Boon Drawpiles	a Boon Drawpile	0	666666	dbcf00	-1
372	Boon Discardpile	Boon Discardpiles	a Boon Discardpile	0	666666	dbcf00	-1
373	The Earth's Gift	The Earth's Gifts	The Earth's Gift	0	6b6733	dbcf00	-1
374	The Field's Gift	The Field's Gifts	The Field's Gift	0	d3cd17	dbcf00	-1
375	The Flame's Gift	The Flame's Gifts	The Flame's Gift	0	ff8f00	dbcf00	-1
376	The Forest's Gift	The Forest's Gifts	The Forest's Gift	0	3b8d0b	dbcf00	-1
377	The Moon's Gift	The Moon's Gifts	The Moon's Gift	0	001ee4	dbcf00	-1
378	The Mountain's Gift	The Mountain's Gifts	The Mountain's Gift	0	005cff	dbcf00	-1
379	The River's Gift	The River's Gifts	The River's Gift	0	4e9c92	dbcf00	-1
380	The Sea's Gift	The Sea's Gifts	The Sea's Gift	0	0071d7	dbcf00	-1
381	The Sky's Gift	The Sky's Gifts	The Sky's Gift	0	1cbeff	dbcf00	-1
387	Bad Omens	Bad Omens	Bad Omens	0	4d4135	4137df	-1
450	Zombie Mason	Zombie Masons	a Zombie Mason	3	5f513d	c4c0b4	1
451	Zombie Spy	Zombie Spies	a Zombie Spy	3	363438	c4c0b4	1
444	Bat	Bats	a Bat	2	666666	30484e	1
445	Ghost	Ghosts	a Ghost	4	13b12f	7a5622	1
446	Imp	Imps	an Imp	2	936d69	c4c0b4	1
447	Will-o'-wisp	Will-o'-wisps	a Will-o'-wisp	0	1d593f	c4c0b4	1
448	Wish	Wishes	a Wish	0	0f6551	c4c0b4	1
449	Zombie Apprentice	Zombie Apprentices	a Zombie Apprentice	3	292d23	c4c0b4	1
382	The Sun's Gift	The Sun's Gifts	The Sun's Gift	0	fcbe00	dbcf00	-1
383	The Swamp's Gift	The Swamp's Gifts	The Swamp's Gift	0	39650b	dbcf00	-1
384	The Wind's Gift	The Wind's Gifts	The Wind's Gift	0	67d35b	dbcf00	-1
385	Hex Drawpile	Hex Drawpiles	a Hex Drawpile	0	666666	4137df	-1
386	Hex Discardpile	Hex Discardpiles	a Hex Discardpile	0	666666	4137df	-1
388	Delusion	Delusions	Delusion	0	65634d	4137df	-1
389	Envy	Envies	Envy	0	618f55	4137df	-1
390	Famine	Famines	Famine	0	919f8f	4137df	-1
391	Fear	Fears	Fear	0	1f3347	4137df	-1
392	Greed	Greeds	Greed	0	c13f0b	4137df	-1
393	Haunting	Hauntings	Haunting	0	344860	4137df	-1
394	Locusts	Locusts	Locusts	0	43c95f	4137df	-1
395	Misery	Miseries	Misery	0	1c161a	4137df	-1
396	Plague	Plagues	Plague	0	42aa6c	4137df	-1
397	Poverty	Poverties	Poverty	0	2e2a2a	4137df	-1
398	War	Wars	War	0	a12700	4137df	-1
399	Miserable	Miserables	Miserable	0	1c161a	ceb0a4	-1
400	Twice Miserable	Twice Miserables	Twice Miserable	0	1c161a	ceb0a4	-1
401	Envious	Envious	Envious	0	618f55	ceb0a4	-1
402	Deluded	Deludeds	Deluded	0	65634d	ceb0a4	-1
403	Lost In The Woods	Lost In The Woods	Lost In The Woods	0	527052	ceb0a4	-1
218	Sir Destry	Sir Destries	a Sir Destry	5	797d7f	c4c0b4	-1
219	Sir Martin	Sir Martins	a Sir Martin	4	cc9e60	c4c0b4	-1
220	Sir Michael	Sir Michaels	a Sir Michael	5	47454b	c4c0b4	-1
221	Sir Vander	Sir Vanders	a Sir Vander	5	9ca6ac	c4c0b4	-1
141	Princess	Princesses	a Princess	0	804e10	c4c0b4	1
\.


--
-- Data for Name: woodcutter_carddata_exceptions; Type: TABLE DATA; Schema: public; Owner: ceviri
--

COPY woodcutter_carddata_exceptions (id, carddata_id, exceptiondata_id) FROM stdin;
\.


--
-- Name: woodcutter_carddata_exceptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ceviri
--

SELECT pg_catalog.setval('woodcutter_carddata_exceptions_id_seq', 1, false);


--
-- Name: woodcutter_carddata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ceviri
--

SELECT pg_catalog.setval('woodcutter_carddata_id_seq', 1, false);


--
-- Data for Name: woodcutter_exceptiondata; Type: TABLE DATA; Schema: public; Owner: ceviri
--

COPY woodcutter_exceptiondata (id, source, destination, root_card_id) FROM stdin;
1	0	2	9
2	1	3	10
3	0	1	176
4	1	5	80
5	0	1	80
6	4	6	251
7	1	3	28
8	1	5	28
9	2	5	64
10	1	1	28
11	6	4	0
16	4	3	441
19	4	3	406
20	0	1	11
17	0	0	0
21	4	3	246
22	1	3	78
23	2	3	282
\.


--
-- Name: woodcutter_exceptiondata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ceviri
--

SELECT pg_catalog.setval('woodcutter_exceptiondata_id_seq', 23, true);


--
-- Data for Name: woodcutter_exceptiondata_root_preds; Type: TABLE DATA; Schema: public; Owner: ceviri
--

COPY woodcutter_exceptiondata_root_preds (id, exceptiondata_id, preddata_id) FROM stdin;
1	1	9
2	1	10
3	1	11
4	2	9
5	2	10
6	2	11
7	3	9
8	3	10
9	3	11
10	4	9
11	4	10
12	4	11
13	5	9
14	5	10
15	5	11
16	6	9
17	6	10
18	6	11
19	7	9
20	7	10
21	7	11
22	8	9
23	8	10
24	8	11
25	9	9
26	9	10
27	9	11
28	10	9
29	10	10
30	10	11
31	11	72
36	16	9
37	16	10
38	16	11
39	19	9
40	19	10
41	19	11
42	20	9
43	20	10
44	20	11
45	21	42
46	22	9
47	22	10
48	22	11
49	23	9
50	23	10
51	23	11
\.


--
-- Name: woodcutter_exceptiondata_root_preds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ceviri
--

SELECT pg_catalog.setval('woodcutter_exceptiondata_root_preds_id_seq', 51, true);


--
-- Data for Name: woodcutter_exceptiondata_target_cards; Type: TABLE DATA; Schema: public; Owner: ceviri
--

COPY woodcutter_exceptiondata_target_cards (id, exceptiondata_id, carddata_id) FROM stdin;
5	5	2
6	6	251
7	9	3
10	16	441
11	17	384
12	17	373
13	17	374
14	17	375
15	17	376
16	17	377
17	17	378
18	17	379
19	17	380
20	17	381
21	17	382
22	17	383
23	19	406
24	20	4
25	17	387
26	17	388
27	17	389
28	17	390
29	17	391
30	17	392
31	17	393
32	17	394
33	17	395
34	17	396
35	17	397
36	17	398
37	17	399
38	17	400
39	17	401
40	17	402
41	17	403
\.


--
-- Name: woodcutter_exceptiondata_target_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ceviri
--

SELECT pg_catalog.setval('woodcutter_exceptiondata_target_cards_id_seq', 41, true);


--
-- Data for Name: woodcutter_exceptiondata_target_preds; Type: TABLE DATA; Schema: public; Owner: ceviri
--

COPY woodcutter_exceptiondata_target_preds (id, exceptiondata_id, preddata_id) FROM stdin;
1	1	5
2	2	7
3	3	5
4	4	8
5	5	5
6	6	27
7	7	7
8	8	8
9	9	8
10	10	12
11	11	9
12	11	10
13	11	11
16	16	7
17	17	8
18	19	7
19	20	5
20	17	117
21	17	37
22	21	7
23	22	7
24	23	7
\.


--
-- Name: woodcutter_exceptiondata_target_preds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ceviri
--

SELECT pg_catalog.setval('woodcutter_exceptiondata_target_preds_id_seq', 24, true);


--
-- Data for Name: woodcutter_gamelog; Type: TABLE DATA; Schema: public; Owner: ceviri
--

COPY woodcutter_gamelog (game_id, log, supply, player, players) FROM stdin;
11456279	000011456279/unrated:fff~10276:3|3:6|1:1b9~20276:3|3:6|1:1b9~102e~10153:3|2:6~202e~20153:3|2:6~10011:fff~100b3:3~10021:4~10153:3|1:6|1:1b9~20011:fff~200b3:3~20021:4~20153:3|1:6|1:1b9~10012:fff~100b1:1b9|2:3~10021:df~102e~10153:3|1:4|1:1b9~20012:fff~200b1:1b9|2:3~20021:df~202e~20152:3|1:4|1:6|1:df~10013:fff~100b1:4|3:3~10021:3b~10152:3|2:6|1:df~20013:fff~200b1:df~21082:0|1:6~21151:3|1:6|1:1b9~21081:3|1:6~200b1:1b9|1:4~20021:3b~202e~20154:3|1:6~10014:fff~100b1:df~11082:3|1:6~112e~11152:3|1:6~11082:6~100b2:3~10021:1e~10152:3|1:4|1:6|1:3b~20014:fff~200b4:3~20021:1e~20151:4|2:6|1:3b|1:df~10015:fff~100b1:3b~11151:3~11071:6~11051:8c~100b1:4|3:3~10021:8a~102e~10151:3|2:6|1:8a|1:1b9~20015:fff~200b1:3b~21151:1b9~21071:6~21051:8c~200b1:df~21081:6|1:1b9~21152:3~200b1:4|2:3~20021:1ad~202e~20152:3|1:6|1:8c|1:1ad~10016:fff~100b1:8a~11151:3b~11171:3b|1:1b9|2:6|1:3~11171:1e~11191:1e~100b1:1e~110b1:3b~12151:df~12071:6~12051:1ad~11091:3b~12151:3~12071:6~12051:8c~100b1:df~11082:3~11151:3|1:4~100b1:1b9|1:4|1:3~11071:1b9~11053:1c0~10021:1e~102e~10153:3|1:8c|1:df~20016:fff~200b1:1ad~21151:1b9~21082:0|1:6~200b1:8c~21171:1b9~21151:3|1:1e|1:3b~200b1:1e~210b1:3b~22151:4~22071:3~21091:3b~22151:3~22071:3~200b1:1b9|1:4~21071:1b9~21053:1c0~202a1:145~21052:3|1:8a~202e~20152:3|1:6|1:df|1:1c0~10017:fff~100b1:8c~11173:3|1:df~11151:1c0~100b1:1c0~11211:1c0|the Wish pile:fff~11051:8a~100b1:8a~11151:1c0~11171:1c0|3:3|1:df~11171:1e~11191:1e~100b1:1c0~11211:1c0|the Wish pile:fff~11051:8a~100b1:1e~110b1:8a~12151:3b~12171:3b|3:3|1:df~12171:3|1:1ad~12191:1ad~12081:3~11091:8a~12151:3~12171:3b|4:3|1:df|1:1ad~12171:8a~12191:8a~100b1:8a~11151:4~11171:3b|1:4|4:3|1:df|1:1ad~11171:1c0~11191:1c0~100b1:3b~11151:8c~11071:3~100b1:1ad~11151:1e~11083:3~100b1:8c~11171:1c0|1:4|1:1e|1:df~112e~11153:3~100b1:1c0~11211:1c0|the Wish pile:fff~11051:54~100b1:1e~110b1:54~12151:3~11091:54~12151:3~100b1:df~100b1:4|5:3~102a1:f1~11052:8a~10051:f1~100c1:54~102e~10151:3|1:54|2:8a|1:df~20017:fff~2048~217cL gets +3 Coins (Secret Cave).:fff~200b1:1c0~21211:1c0|the Wish pile:fff~21051:8a~200b1:8a~21151:3~21171:6|3:3|1:df~21171:8c~21191:8c~200b1:8c~21171:6|3:3|1:df~21151:3~200b4:3~202a1:f1~21052:8a~20051:f1~20152:3|1:4|1:6|1:3b~10018:fff~1048~117cc gets +3 Coins (Secret Cave).:fff~100b1:8a~11151:8a~11172:8a|1:54|1:3|1:df~11171:8c~11191:8c~100b1:8a~11151:3~11171:8a|1:8c|1:54|2:3|1:df~11171:3|1:3b~11191:3b~11081:3~100b1:3b~11151:8a~11071:3~100b1:8a~11151:3~11171:8a|1:8c|1:54|2:3|1:df~11171:8c|1:f1~11191:f1~11081:8c~100b1:8a~11151:1e~11171:f1|1:8c|1:54|1:1e|2:3|1:df~11171:8a~11191:8a~100b1:1e~110b1:54~12151:3~11091:54~12151:4~100b1:df~11081:f1~11151:1e~11082:3~100b1:8c~11171:8a|1:4|1:1e|1:3~112e~11151:3|1:8c|1:f1~100b1:1e~110b1:8c~12171:f1|1:8a|1:4|2:3~12151:3~11091:8c~12171:f1|1:8a|1:4|3:3~12151:3~100b1:f1~11071:3~100b1:4|3:3~102a1:f1~11051:54|1:8a~10051:f1~10021:54~100c1:54~102e~10151:3|1:1e|1:54|1:8a|1:f1~20018:fff~200b1:3b~21151:8a~21071:6~21051:8c~200b1:8a~21151:1e~21171:4|1:1e|2:3~21171:1c0~21191:1c0~200b1:1c0~21211:1c0|the Wish pile:fff~21051:54~200b1:1e~210b1:54~22151:1c0~21091:54~222e~22151:8a~200b1:8a~21151:8c~21171:1c0|1:8c|1:4|2:3~21171:8a~21191:8a~200b1:8a~21151:3~21171:1c0|1:8c|1:4|3:3~21171:6~21191:6~200b1:1c0~21211:1c0|the Wish pile:fff~21051:5~200b1:8c~21171:6|1:4|3:3|1:5~21151:8a~200b1:8a~21151:1ad~21171:6|1:4|3:3|1:5|1:1ad~21172:3|1:8c~21191:8c~21082:3~200b1:1ad~21151:3~21082:0|1:3~200b1:4|3:3|1:5~20021:8~202e~20151:3|1:8a|1:8c|1:df|1:f1~10019:fff~100b1:1e~110b1:8a~12151:8a~12171:f1|1:8a|1:54|1:3~12171:1ad~12191:1ad~11091:8a~12151:54~12171:f1|1:8a|2:54|1:3|1:1ad~12171:df~12191:df~100b1:54~11151:8a~100b1:8a~11151:8a~11171:f1|2:8a|1:54|1:3|1:1ad|1:df~11171:8c~11191:8c~100b1:8a~11151:8a~11171:f1|2:8a|1:8c|1:54|1:3|1:1ad|1:df~11171:1e|1:8c|1:f1~11191:1e~11081:8c|1:f1~100b1:8a~11151:3~11171:f1|1:8a|1:8c|1:54|1:1e|2:3|1:1ad|1:df~11171:3b|1:54~11191:3b~11081:54~100b1:1ad~11151:4~11082:3|1:f1~100b1:8c~11171:3b|1:8a|1:54|1:1e|1:4|1:df~112e~11151:3|1:8a|1:f1~100b1:1e~110b1:54~12151:3~11091:54~12151:f1~100b1:3b~11151:54~11071:f1~11051:4~100b1:8a~11151:3~11171:f1|1:8a|1:4|1:54|3:3|1:df~11171:8c~11191:8c~100b1:54~112e~11151:4~100b1:df~11081:8a|1:8c|1:f1~100b2:4|3:3~10021:5|1:8~102e~10152:4|1:1e|1:df|1:f1~20019:fff~2048~217cL gets +3 Coins (Secret Cave).:fff~200b1:8c~21171:f1|1:8a|1:3|1:df~21151:8|1:1e|1:54~200b1:54~21151:3b~200b1:1e~210b1:8a~22151:8c~22171:3b|1:f1|1:8c|1:3|1:8|1:df~22171:8a~22191:8a~21091:8a~22151:4~22171:3b|1:f1|1:8c|1:8a|1:4|1:3|1:8|1:df~22171:5~22191:5~200b1:8c~21171:3b|1:f1|1:8a|1:4|1:3|1:8|1:5|1:df~21151:3|1:6|1:8a~200b1:3b~21151:3~21071:3~200b1:8a~21151:8a~21171:f1|2:8a|1:6|1:4|2:3|1:8|1:5|1:df~21173:3~21083:3~200b1:df~21082:0|1:3~212e~21152:3|1:8~21081:6~200b1:8a~21151:3~21171:f1|1:8a|1:4|1:5|1:8|3:3~21172:3~212e~21171:6~21191:6~21082:3~200b1:8a~212e~21151:3~21171:f1|1:6|1:4|1:5|1:8|4:3~21171:3~21081:3~200b1:f1~21071:3~200b1:4|1:5|3:3~20021:8|1:be~202e~20151:4|1:8|1:8a|1:8c|1:f1~100110:fff~1048~117cc gets +3 Coins (Secret Cave).:fff~100b1:df~11081:1e|1:f1~100b2:4~10021:8~10151:3|1:5|2:54|1:8a~200110:fff~200b1:8c~21171:f1|1:8a|1:4|1:8~21151:3|1:3b|1:8a~200b1:8a~21151:3~21171:3b|1:f1|1:8a|1:4|1:8|2:3~21171:3|1:54|1:8a~21191:54~21081:3|1:8a~200b1:3b~21151:1e~21071:3~200b1:1e~210b1:54~22151:8~21091:54~22151:8a~200b1:8a~21151:5~21171:f1|1:8a|1:4|2:8|1:3|1:5~21171:1ad~21191:1ad~200b1:8a~21151:df~21171:f1|1:4|2:8|1:3|1:5|1:1ad|1:df~21171:8c~21191:8c~200b1:1ad~21151:6~21082:0|1:f1~200b1:8c~21171:6|1:4|1:3|1:5|1:df~212e~21151:3|1:8a|1:be~200b1:8a~21151:f1~21171:f1|1:6|1:4|2:3|1:5|1:be|1:df~21171:8~21191:8~200b1:df~21081:6|1:be~21151:3|1:8~21082:0|1:8~200b1:4|3:3|1:5~20021:8|1:3b~202e~20151:5|1:8|1:54|1:8c|1:df~100111:fff~100b1:8a~11151:3~11172:54|2:3|1:5~11171:8a~11191:8a~100b1:8a~11151:8c~11171:8c|2:54|2:3|1:5~11171:3|1:8a~11191:8a~11081:3~100b1:8a~11151:8a~11171:8c|1:8a|2:54|2:3|1:5~11171:3b|1:8c~11191:3b~11081:8c~100b1:54~11151:54~100b1:54~11151:8a~100b1:8a~11151:8a~11171:3b|1:8c|2:8a|1:54|2:3|1:5~11171:8~11191:8~100b1:8a~11151:1e~11171:3b|1:8c|1:8a|1:54|1:1e|2:3|1:5|1:8~112e~11171:4|1:1e~11191:4~11081:1e~100b1:3b~11151:8c~11071:3~100b1:8c~11171:8c|1:8a|1:54|1:1e|1:4|1:3|1:5|1:8~11151:8|1:df|1:f1~100b1:1e~110b1:54~12151:3~11091:54~12151:4~100b1:8a~11151:1ad~11171:f1|1:8c|2:4|2:3|1:5|2:8|1:df|1:1ad~112e~11171:1e~11191:1e~100b1:df~11082:8|1:1e|1:8c|1:f1|1:1ad~100b2:4|2:3|1:5~10022:7~102e~10151:3|1:7|1:54|2:8a~200111:fff~2048~217cL gets +3 Coins (Secret Cave).:fff~200b1:8c~21171:54|1:5|1:8|1:df~21151:3|1:3b|1:be~200b1:54~21151:8a~200b1:3b~21151:f1~21071:be~22053:4~21051:7~200b1:8a~21151:8~21171:f1|1:5|2:8|1:3|1:df~21171:8c~21191:8c~200b1:8c~21171:f1|1:5|2:8|1:3|1:df~21151:6~200b1:df~21084:0|1:6~21151:3|1:4|1:8|1:1e|1:3b~21082:0|1:1e~200b1:4|1:5|1:3~20021:7|1:8~202e~20151:3|3:8a|1:f1~100112:fff~100b1:8a~11151:1ad~11171:8a|1:7|1:54|1:3|1:1ad~11171:8|1:8a~11191:8~11081:8a~100b1:8a~11151:3~11171:7|1:54|2:3|1:8|1:1ad~11171:1e~11191:1e~100b1:1e~110b1:54~12151:f1~11091:54~12151:5~100b1:1ad~11151:54~11081:3|1:7|1:8~100b1:54~11151:df~100b1:f1~11071:df~11052:6~100b1:3|1:5~102a1:f1~11051:8c|1:df~10051:f1~100c2:54~10151:4|2:54|1:8a|1:8c~200112:fff~200b1:8a~21151:3b~21171:3b|1:f1|2:8a|1:3~21171:3|1:8~21191:8~21081:3~200b1:8a~21151:8~21171:3b|1:f1|1:8a|1:3|2:8~21171:5~21191:5~200b1:8a~21151:8~21171:3b|1:f1|1:3|3:8|1:5~21171:4~21191:4~200b1:3b~21151:8~21071:3~200b1:f1~21071:5~21052:7~200b1:4~20021:2~20151:4|1:7|1:54|1:8a|1:8c~100113:fff~1048~117cc gets +3 Coins (Secret Cave).:fff~100b1:54~11151:54~100b1:54~11151:3b~100b1:8c~11171:3b|1:8a|1:4|1:54~11151:4|1:8|1:8a~100b1:8a~11151:8a~11171:3b|2:8a|2:4|1:54|1:8~11171:8c~11191:8c~100b1:8a~11151:1e~11171:3b|1:8a|1:8c|2:4|1:54|1:1e|1:8~11171:7~11191:7~100b1:1e~110b1:8a~122e~12151:3~12171:3b|1:8c|1:7|2:4|1:54|1:8|1:3~12171:8a~12191:8a~11091:8a~12151:5~12171:3b|1:8c|1:7|1:8a|2:4|1:54|1:8|1:3|1:5~12171:8a|1:f1~12191:f1~12081:8a~100b1:8a~11151:6~11171:3b|1:f1|1:8c|1:7|1:6|2:4|1:54|1:8|1:3|1:5~11171:1e~11191:1e~100b1:3b~11151:3~11071:4~11051:be~100b1:f1~11071:3~100b1:8c~11171:7|1:6|1:4|1:54|1:1e|1:8|1:3|1:5~11151:6|1:8c|1:df~100b1:1e~110b1:54~12151:8a~11091:54~12151:8~100b1:8a~11151:f1~11171:f1|1:7|2:6|1:8c|1:4|2:8|1:3|1:5|1:df~11171:7~112e~11171:be~11191:be~11081:7~100b1:8c~11171:f1|1:7|2:6|1:4|2:8|1:3|1:5|1:be|1:df~11151:8a~100b1:f1~11071:5~11052:7~100b1:8a~112e~11151:7~11172:7|2:6|1:4|2:8|1:3|1:be|1:df~11172:7~11082:7~100b1:df~11082:6|2:7|2:8|1:be~100b1:4|1:3~10021:8	00210~00614~00708~00808~00360~00440~00530~07010~0be08~0f110~08a10~01e10~03b10~0df10~08c10~1ad10~05410~14501~15e01~1c012~1b902	\N	ceviri~bonkura
11712695	000011712695/unrated:fff~10277:3|3:6~20277:3|3:6~102e~10155:3~202e~20153:3|2:6~10011:fff~100b5:3	00210~00614~00708~00808~00360~00440~00530~0f810~1a710~05910~0a810~13305~13205~08a10~09a10~03210~1a610~09b10~15e01~1c101~1c201~1c301	\N	Lord Rattington~ceviri
11456891	000011456891/unrated:fff~10277:3|3:6~20277:3|3:6~102e~10154:3|1:6~202e~20155:3~10011:fff~100b4:3~10021:bf~10153:3|2:6~20011:fff~200b5:3~20021:156~20152:3|3:6~10012:fff~100b3:3~10021:4~102e~10152:3|2:6|1:bf~20012:fff~202a1:f2~21051:4~202e~20152:3|3:6~10013:fff~100b1:bf~11071:6~102a1:f2~11051:bf~10154:3|1:6~20013:fff~202a1:f2~21051:4~20153:3|1:4|1:156~10014:fff~100b4:3~10021:117~102e~10154:3|1:4~20014:fff~200b1:156~210b1:156~22511/the Farmers' Market pile:fff~200b3:3|1:4~202a1:153~216a8:fff~206c6/2:fff~202e~20154:3|1:4~207b~21193:3|1:4|3:6|1:156~21077:3|3:6~211f1:156|2:4~21152:4|1:156~10015:fff~100b4:3|1:4~10021:af~10152:3|2:6|1:bf~20015:fff~200b1:156~210b1:156~22511/the Farmers' Market pile:fff~200b2:4~206b2:fff~20022:4a~202e~20152:4|2:4a|1:156~10016:fff~100b1:bf~11071:6~102a1:f2~11051:156~102e~10151:3|1:6|2:bf|1:117~20016:fff~200b1:156~210b1:156~22511/the Farmers' Market pile:fff~200b2:4~20021:4|1:156~202e~20151:4|2:4a|2:156~10017:fff~100b1:bf~11071:6~100b1:bf~11071:3~100b1:117~115aJourney token:fff~10021:4a~102a1:f2~11051:117~10153:3|1:4|1:af~20017:fff~200b1:4a~216d1:4|Native Village:fff~200b1:4a~21191:4~200b1:156~210b1:156~22511/the Farmers' Market pile:fff~200b1:156~21494/the Farmers' Market pile:fff~21071:156~200b2:4~20021:156|1:1b4~202e~20153:4|1:4a|1:1b4~10018:fff~100b1:af~11071:3~11051:1b4~100b2:3|1:4~10021:bf~102e~10153:3|1:bf|1:156~20018:fff~200b1:4a~200b1:1b4~21151:4a|2:156~200b1:4a~200b1:156~21511/the Farmers' Market pile:fff~200b1:156~210b1:156~22511/the Farmers' Market pile:fff~200b3:4~20022:4a|1:1b4~202e~20153:4a|2:156~10019:fff~100b1:bf~11071:3~100b1:156~11511/the Farmers' Market pile:fff~10022:4a~102a1:f2~11051:4a~10151:3|1:4|1:4a|1:117|1:1b4~20019:fff~200b1:4a~216d1:1b4|Native Village:fff~200b1:4a~216d1:4|Native Village:fff~200b1:4a~21191:4|1:1b4~200b1:1b4~21151:4|1:4a|1:1b4~200b1:4a~216d1:4|Native Village:fff~200b1:156~210b1:4a~22191:4~200b1:156~21511/the Farmers' Market pile:fff~200b3:4~20022:4a~200b1:1b4~2175Locusts:fff~1125Locusts:fff~11171:3~11071:3~11051:2~2108Locusts:fff~202e~20152:4|1:4a|2:156~100110:fff~100b1:4a~116d1:1|Native Village:fff~100b1:117~115bJourney token:fff~112e~11151:2|1:3|2:bf|1:117~100b1:bf~11071:4~100b1:bf~11071:2~100b1:117~115aJourney token:fff~100b2:3~10021:b1~100b1:1b4~1175Delusion:fff~2125Delusion:fff~2175Deluded:fff~1108Delusion:fff~10151:3|3:4a|1:156~200110:fff~200b1:4a~216d1:4a|Native Village:fff~200b1:156~210b1:117~225aJourney token:fff~200b1:156~21494/the Farmers' Market pile:fff~21071:156~2023Deluded:fff~202a1:f2~21051:156~20151:4|2:4a|2:1b4~100111:fff~100b1:4a~116d1:1|Native Village:fff~100b1:4a~112e~116d1:b1|Native Village:fff~100b1:4a~11191:af|1:b1|1:bf~100b1:b1~110b1:117~125bJourney token:fff~12152:3|1:4a|1:bf|1:117~100b1:4a~116d1:1b4|Native Village:fff~100b1:117~115aJourney token:fff~100b1:bf~11071:3~100b1:bf~11071:3~100b1:156~11511/the Farmers' Market pile:fff~100b1:af~11071:3~11051:1b4~10021:1b4~102a1:f2~11051:156~102e~10152:bf|1:117|2:156~200111:fff~200b1:4a~216d1:4a|Native Village:fff~200b1:1b4~212e~21151:4a|2:156~200b1:4a~216d1:4|Native Village:fff~200b1:4a~21191:4|2:4a~200b1:4a~216d1:4|Native Village:fff~200b1:4a~21191:4~200b1:156~21511/the Farmers' Market pile:fff~200b1:156~210b1:156~22511/the Farmers' Market pile:fff~200b3:4~20022:1b4~200b1:1b4~2175Poverty:fff~1125Poverty:fff~11081:117|1:156~2108Poverty:fff~202e~20151:4|1:4a|1:156|2:1b4~100112:fff~100b1:bf~11071:bf~100b1:156~11511/the Farmers' Market pile:fff~10021:2a~102a1:f2~11051:117~10152:4a|1:af|1:b1|1:1b4~200112:fff~200b1:4a~216d1:1b4|Native Village:fff~200b1:1b4~21152:4|1:4a~200b1:4a~216d1:4a|Native Village:fff~200b1:1b4~21151:4a|1:156|1:1b4~200b1:4a~21191:4a|1:1b4~200b1:1b4~21152:4a~200b1:4a~200b1:4a~200b1:156~21494/the Farmers' Market pile:fff~21071:156~200b1:156~210b1:156~22511/the Farmers' Market pile:fff~200b3:4~20022:156~200b1:1b4~2175War:fff~1125War:fff~11171:bf~11071:bf~2108War:fff~202e~20152:4|1:156|2:1b4~100113:fff~100b1:4a~116d1:1b4|Native Village:fff~100b1:b1~110b1:117~125bJourney token:fff~122e~12152:4a|3:117~100b1:4a~116d1:1|Native Village:fff~100b1:4a~116d1:bf|Native Village:fff~100b1:4a~11191:2a|1:bf|2:1b4~100b1:117~115aJourney token:fff~100b1:117~115bJourney token:fff~11152:156~100b1:bf~11071:2a~100b1:156~11511/the Farmers' Market pile:fff~100b1:156~11511/the Farmers' Market pile:fff~10021:8~100b1:1b4~1175Misery:fff~2125Misery:fff~2175Miserable:fff~1108Misery:fff~100b1:1b4~1175Famine:fff~2125Famine:fff~21172:4a|1:156~21082:4a|1:156~211fnothing:fff~1108Famine:fff~100b1:1b4~1175Greed:fff~2125Greed:fff~21051:3~1108Greed:fff~102e~10151:8|1:4a|1:156|2:1b4~200113:fff~200b1:156~21511/the Farmers' Market pile:fff~200b2:4~20021:bf|1:1b4~200b1:1b4~2175Haunting:fff~1125Haunting:fff~110c1:8~2108Haunting:fff~200b1:1b4~2175Fear:fff~1125Fear:fff~2108Fear:fff~20151:3|2:4a|1:156|1:1b4~100114:fff~100b1:4a~116d1:8|Native Village:fff~100b1:1b4~11151:4a|2:117~100b1:4a~116d1:1|Native Village:fff~100b1:1b4~11151:4a|1:117|1:1b4~100b1:4a~116d1:1|Native Village:fff~100b1:1b4~11151:4a|1:b1|1:bf~100b1:4a~11191:8|1:af|1:156~100b1:b1~110b1:bf~12071:117~100b1:bf~11071:117~100b1:156~11494/the Farmers' Market pile:fff~11071:156~100b1:156~11511/the Farmers' Market pile:fff~10021:5~102a1:f2~11051:156~102e~10151:5|1:8|1:4a|1:af|1:bf~200114:fff~200b1:4a~216d1:4a|Native Village:fff~200b1:1b4~21151:4|1:4a|1:1b4~200b1:4a~212e~216d1:156|Native Village:fff~200b1:1b4~21151:4|1:156|1:1b4~200b1:4a~216d1:1b4|Native Village:fff~200b1:1b4~21151:4|2:4a~200b1:4a~216d1:1|Native Village:fff~200b1:4a~21191:4a|1:bf|1:156|1:1b4~200b1:bf~21071:3~200b1:4a~216d1:1b4|Native Village:fff~200b1:156~21511/the Farmers' Market pile:fff~200b1:156~21511/the Farmers' Market pile:fff~200b1:156~210b1:156~22511/the Farmers' Market pile:fff~200b3:4~20022:8~200b1:1b4~2175Plague:fff~1125Plague:fff~11051:2~2108Plague:fff~202e~20151:8|2:4a|1:156|1:1b4~100115:fff~100b1:bf~11071:2~100b1:af~11071:4a~11051:7~100b1:5~10021:7~10152:4a|1:156|2:1b4~200115:fff~200b1:4a~216d1:4a|Native Village:fff~200b1:1b4~21151:4a|1:156|1:1b4~200b1:4a~216d1:4|Native Village:fff~200b1:1b4~21151:8|1:4a|1:bf~200b1:4a~216d1:4|Native Village:fff~200b1:4a~21192:4|1:4a|1:1b4~200b1:1b4~21151:4a|1:156|1:1b4~200b1:4a~216d1:4|Native Village:fff~200b1:4a~21191:4~200b1:156~210b1:bf~22071:bf~200b1:156~21494/the Farmers' Market pile:fff~21071:156~200b1:156~21511/the Farmers' Market pile:fff~200b3:4~20021:5|1:156~200b1:1b4~21750:183~11250:183~111d~11171:b1|1:156|1:bf|1:af|1:8|1:5|1:4a|1:117|1:1b4|2:7~21080:183~202e~20151:4|2:156|2:1b4~100116:fff~100b1:4a~112e~116d1:1|Native Village:fff~100b1:1b4~11151:7|1:bf|1:117~100b1:4a~116d1:7|Native Village:fff~100b1:1b4~11151:5|1:4a|1:156~100b1:4a~11191:7|1:af~100b1:bf~11071:117~100b1:156~11511/the Farmers' Market pile:fff~100b1:af~11071:156~11051:7~100b1:5~10021:8~102e~10152:8|1:4a|1:b1|1:1b4~200116:fff~200b1:156~21511/the Farmers' Market pile:fff~200b1:4~20021:7~200b1:1b4~2175Envy:fff~1125Envy:fff~1175Envious:fff~2108Envy:fff~200b1:1b4~2175Poverty:fff~1125Poverty:fff~11082:8~2108Poverty:fff~20152:8|2:4a|1:1b4~100117:fff~100b1:4a~116d1:1|Native Village:fff~100b1:1b4~11151:4a|1:af|1:bf~100b1:4a~11191:5~100b1:bf~11071:5~100b1:b1~110b1:bf~12071:af~1023Envious:fff~10021:8~102a1:f2~11051:6~10153:7|1:4a|1:156~200117:fff~200b1:4a~216d1:1b4|Native Village:fff~200b1:1b4~21151:4|1:156|1:1b4~200b1:4a~216d1:4a|Native Village:fff~200b1:1b4~21151:5|2:4a~200b1:4a~216d1:4|Native Village:fff~200b1:4a~21191:4|1:4a|1:1b4~200b1:1b4~212e~21151:7|1:4a|1:156~200b1:4a~216d1:4|Native Village:fff~200b1:4a~21191:4~200b1:156~210b1:156~22511/the Farmers' Market pile:fff~200b1:156~21494/the Farmers' Market pile:fff~21071:156~200b1:5|3:4~20021:7|1:156|1:1b4	00210~00614~00708~00808~00360~00440~00530~15610~0af10~11710~04a10~0b110~0bf10~02a08~12110~1b410~01710~15301~0f201~18301~18401~18501~18601~18701~18801~18901~18a01~18b01~18c01~18d01~18e01~19202~19102~18f02~19002	\N	RobertJ~ceviri
10005861	000010005861/unrated:fff~10277:3|3:6~20277:3|3:6~102e~10154:3|1:6~202e~20153:3|2:6~10011:fff~100b4:3~10021:b0~10153:3|2:6~20011:fff~200b3:3~20021:4~20154:3|1:6~10012:fff~100b3:3~10021:4~102e~10154:3|1:6~20012:fff~200b4:3~20021:b0~202e~20153:3|1:4|1:b0~10013:fff~100b4:3~10021:117~10152:3|2:6|1:b0~20013:fff~200b1:b0~21051:40~200b1:4|3:3~20021:1c~20152:3|2:6|1:40~10014:fff~100b1:b0~11051:117~100b2:3~10021:fb~102e~10152:3|1:4|2:117~20014:fff~200b1:40~11081:3~200b2:3~20021:117~202e~20153:3|2:6~10015:fff~100b1:117~115a~100b1:4|1:3~10021:fb~10154:3|1:fb~20015:fff~200b2:3~20021:fb~20151:3|1:4|1:6|1:40|1:117~10016:fff~100b1:fb|4:3~111b1:fb|Tavern mat:fff~10021:1c~10151:3|3:6|1:b0~20016:fff~200b1:40~11081:3~200b1:4|1:3~20021:1c~20153:3|1:1c|1:b0~10017:fff~100b1:b0~11051:117~102e~10152:3|1:4|2:117~20017:fff~200b1:1c~212e~21151:117~21172:3~21072:3~22502/Tomb:fff~200b1:117~215a~200b2:3~20021:fb~20151:3|1:6|1:1c|1:40|1:fb~10018:fff~100b1:117~115b~11152:6|1:1c|1:b0|1:fb~101c1:fb~100b1:1c~11151:3~11172:3~11072:3~12502/Tomb:fff~100b1:b0~11051:117~100b1:117~115a~100b1:fb|1:4|3:3~111b1:fb|Tavern mat:fff~10023:fb~10152:3|1:6|2:117~20018:fff~200b1:1c~21151:6~21171:3|1:6~21071:3|1:6~22502/Tomb:fff~200b1:40~11081:3~200b1:fb~211b1:fb|Tavern mat:fff~200b1:3~20021:117~202e~20152:3|1:4|1:b0|1:117~10019:fff~100b1:117~115b~112e~11151:3|1:6|1:b0|2:fb~101c1:fb~100b1:117~115a~100b1:b0~11051:fb~100b1:fb|2:3~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~10022:fb~10151:3|1:4|1:6|1:fb|1:117~20019:fff~200b1:b0~21051:117~201c1:fb~200b1:117~215b~21151:3|1:6|1:1c|2:117~200b1:1c~21151:1c~21171:40|1:fb~21081:40~210c1:fb~200b1:1c~21151:fb~21171:3|1:6~21071:3|1:6~22502/Tomb:fff~200b1:117~215a~200b1:fb|1:4|3:3~211b1:fb|Tavern mat:fff~20021:5~202e~20151:3|1:6|1:40|1:fb|1:117~100110:fff~100b1:117~115b~11152:3|1:1c|1:fb|1:117~101c1:fb~100b1:1c~11151:fb~112e~11171:3|1:fb~11071:3~12501/Tomb:fff~110c1:fb~100b1:117~115a~100b1:fb|1:4|3:3~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~10021:1c8~10151:6|1:b0|2:fb|1:117~200110:fff~200b1:117~215b~21151:4|1:1c|1:b0|2:117~201c1:fb~200b1:1c~21151:3~21171:5|1:1c~21081:1c~210c1:5~200b1:117~215a~200b1:117~215b~212e~21151:3|1:5|1:1c~200b1:fb~211b1:fb|Tavern mat:fff~200b1:4|1:5|2:3~20021:1c8~202e~20151:3|1:6|1:b0|1:117|1:1c8~100111:fff~100b1:b0~11051:28~101c1:fb~100b1:117~115b~11151:3|1:6|1:28|1:fb|1:117~100b1:28~112e~11151:6|1:1c8~101c1:fb~100b1:1c8~116d1:117|Prince:fff~100b1:fb|1:3~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~10021:50~10151:3|1:4|1:1c|1:fb|1:117~200111:fff~200b1:1c8~216d1:117|Prince:fff~20151:3|1:5|2:1c|1:117~100112:fff~1048~110b1:117~125a~100b1:117~115b~112e~11152:3|1:fb|2:117~101c1:fb~100b1:1c~11151:3~11171:6|1:28~11071:6~12501/Tomb:fff~110c1:28~100b1:117~115a~100b1:117~115b~11151:6|1:28|1:50|1:b0|1:fb~101c1:fb~100b1:b0~11051:117~100b1:28~11151:6|1:117~101c1:fb~100b1:117~115a~100b1:50~21081:fb~21051:2~100b1:fb|1:4|4:3~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~10021:aa|1:117~111a1:117~102e~10151:6|1:1c|1:fb|2:117~200112:fff~2048~210b1:117~225a~200b1:1c~21151:2~21171:3|1:40~21071:3|1:40~22502/Tomb:fff~200b1:1c~21151:117~212e~21171:4|1:fb~210c1:4|1:fb~200b1:117~215b~21151:3|1:4|1:6|1:b0|1:fb~201c1:fb~200b1:117~215a~200b1:b0~21051:aa~200b1:fb|1:4|2:3|1:5~211b1:fb|Tavern mat:fff~20021:4|1:1c~211a1:117~202e~20152:3|1:5|1:aa|1:b0~100113:fff~1048~110b1:117~125b~12153:3|1:28|1:b0~100b1:1c~11151:6~11171:4|1:fb~110c1:4|1:fb~100b1:117~115a~101c1:fb~100b1:117~115b~11151:4|1:50|2:fb|1:117~101c1:fb~100b1:117~115a~100b1:28~11151:3|1:aa~100b1:b0~11051:117~101c1:fb~100b1:50~21081:117~222d1:aa~22051:4~100b1:aa~11071:6~12501/Tomb:fff~11052:4~100b1:fb|1:4|4:3~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~10021:8~111a1:117~102e~10151:4|1:50|3:117~200113:fff~2048~210b1:117~225b~22151:2|1:4|2:1c|1:fb~200b1:1c~21151:1c~21171:6|1:117~21071:6~22501/Tomb:fff~210c1:117~200b1:1c~21151:117~212e~21171:4|1:117~21081:117~210c1:4~200b1:aa~21071:4~22501/Tomb:fff~21053:4~201c1:fb~200b1:1c~21151:4~212e~21172:4~21072:4~22502/Tomb:fff~200b1:117~215a~200b1:b0~21051:aa~200b1:fb|1:4|2:3|1:5~211b1:fb|Tavern mat:fff~20021:1c8~211a1:117~202e~20151:3|2:4|1:aa|1:117~100114:fff~1048~110b1:117~125b~12151:8|1:aa|1:b0|2:117~100b1:117~115a~101c1:fb~100b1:117~115b~11152:3|1:1c|1:fb|1:117~100b1:1c~11151:fb~11171:6|1:28~11071:6~12501/Tomb:fff~110c1:28~100b1:117~115a~101c1:fb~100b1:117~115b~11152:3|1:4|1:28|1:fb~100b1:aa~11071:50~12501/Tomb:fff~11054:4~101c1:fb~100b1:117~115a~100b1:117~115b~112e~11155:4~101c1:fb~100b1:b0~11051:6~100b1:28~11151:6~100b1:fb|7:4|4:3~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~10027:6	00210~00614~00708~00808~00360~00440~00530~1c810~11710~0aa10~01c10~04010~0a210~0b010~05010~02810~0fb10~16301~16901	\N	breppert~ceviri
11652601	000011652601/unrated:fff~10276:3|1:c3|1:cc|1:cd|1:1bb~20276:3|1:c3|1:cc|1:cd|1:1bb~102e~10153:3|1:cc|1:1bb~202e~20154:3|1:c3~10011:fff~100b1:1bb|3:3~10021:c5~10153:3|1:c3|1:cd~20011:fff~200b4:3~20021:c5~20152:3|1:cc|1:cd|1:1bb~10012:fff~100b3:3~10021:c2~102e~10153:3|1:c2|1:c5~20012:fff~200b1:1bb|2:3~20021:c2~202e~20152:3|1:c2|1:c3|1:cd~10013:fff~100b1:c5~11151:3~11171:cc~11081:cc~100b1:c2~11181:1~11071:cc~11051:c2~100b3:3~102a1:114~114cTrashing token/the Ironmonger pile:fff~11071:c2~11051:c7~10152:3|1:c3|1:cd|1:1bb~20013:fff~200b1:c2~21071:c3~21051:c2~21071:c2~21051:c7~20152:3|1:c5|1:cc|1:1bb~10014:fff~100b1:1bb|2:3~10021:4~102e~10153:3|1:c5|1:1bb~20014:fff~200b1:c5~21151:3~21171:3~21081:3~200b1:cc~200b1:1bb|3:3~20021:1b3~202e~20152:3|1:c5|1:cc|1:1bb~10015:fff~100b1:c5~11151:c7~11171:c3~11081:c3~100b1:c7~11211:c7|the Madman pile:fff~11151:3|1:4|1:c2|1:cd~100b1:c2~11181:1~11071:cd~12151:3~11051:4~100b1:1bb|5:3|1:4~10021:4|1:1b3~102e~10153:3|2:4~20015:fff~200b1:c5~21151:3~21171:c2~210c1:c2~200b1:cc~200b1:1bb|3:3~20021:c5~20152:3|1:c2|1:c7|1:cd~10016:fff~100b1:3|2:4~10021:1b3~10151:3|1:4|1:c2|1:1b3|1:1bb~20016:fff~200b1:c2~21181:cc|1:1bb|4:0|1:3~21071:cd~22151:3~21051:4~200b3:3~20021:4~202e~20152:3|1:4|1:c2|1:1b3~10017:fff~100b1:c2~11185:0|1:4~11051:4~100b1:1bb|1:3|1:4~10021:c5~100b1:1b3~1175Delusion:fff~2125Delusion:fff~2175Deluded:fff~1108Delusion:fff~11051:56~11231:1b3~11241:1bc~102e~10152:3|1:4|1:c3|1:c5~20017:fff~200b1:c2~21051:4~2023Deluded:fff~200b2:3|1:4~202a1:114~214cTrashing token/the Ironmonger pile:fff~200b1:1b3~2175Haunting:fff~1125Haunting:fff~110c1:3~2108Haunting:fff~21051:56~21231:1b3~21241:1bc~21071:c2~21051:c7~20152:c5|1:c7|1:cc|1:1bb~10018:fff~100b1:c5~11151:3~11171:1bc~110c1:1bc~100b2:3|1:4~102a1:c5~11071:c3~10051:c5~10151:3|1:4|1:c2|1:c5|1:1bc~20018:fff~200b1:c5~21151:3~21171:3~21081:3~200b1:c7~21211:c7|the Madman pile:fff~212e~21152:3|1:4|1:1bc~200b1:c5~21151:c7~21171:3~21081:3~200b1:c7~21211:c7|the Madman pile:fff~212e~21153:3|2:4|1:56~200b1:cc~200b1:56~200b1:1bb|4:3|3:4~20021:5|1:56|1:1b2~200b1:1bc~21072:3~21231:1bc~21241:1b3~202e~20151:3|1:4|1:5|1:c5|1:1b3~10019:fff~100b1:c5~11151:3~11171:3~11081:3~100b1:c2~11186:0~11051:1b2~100b1:1bc~11072:3~11231:1bc~11241:1b3~11071:c2~11051:c7~10151:3|2:4|1:56|1:1bb~20019:fff~2048~210d1:3|1:56~200b1:c5~21151:cc~21171:1b2~210c1:1b2~200b1:cc~200b1:56~21151:4|1:1b2~200b1:1b2~21750:179~21250:179~21080:179~200b1:5|2:3|2:4~20021:8~200b1:1b3~2175War:fff~1125War:fff~11171:1b3~112e~11171:3|1:c5|1:c7~11071:c5~11081:3|1:c7|1:1b3~2108War:fff~21051:c5~222d1:1b2~220c1:1~21231:1b3~21241:1bc~20151:3|1:4|2:c5|1:1bb~100110:fff~100b1:56~11151:c5|1:1b3~100b2:4~102a1:c5~11071:3~10051:c5~100b1:1b3~1175Greed:fff~2125Greed:fff~21051:3~1108Greed:fff~11051:56~11231:1b3~11241:1bc~10152:3|2:4|1:1b2~200110:fff~2048~210d2:3~200b1:c5~212e~21151:4~21171:1b2~210c1:1b2~200b1:c5~21151:1b2~21171:cc~21081:cc~200b1:1b2~21750:176~21250:176~200b1:1bb|1:3|2:4~202a1:c5~21071:3~20051:c5~212d1:1b2~210c1:1~202a1:c5~21071:3~20051:c5~212d1:1b2~210c1:1~20080:176~20152:3|1:56|2:c5~100111:fff~1048~112e~110d1:c5|1:1b3~100b1:c5~11151:c7~11171:56~110c1:56~100b1:c7~11211:c7|the Madman pile:fff~11151:3|1:4|1:56|1:c5|1:1bb|1:1bc~100b1:c5~11151:c5~11171:4~110c1:4~100b1:1b2~11750:180~11250:180~11151:4~11082:3~11080:180~100b1:c5~112e~11151:3~11171:3~11081:3~100b1:56~112e~11151:3~100b1:1bb|1:3|4:4~10021:c5~112d1:1b2~110c1:1~10021:56~112d1:1b2~110c1:1~10021:4~100b1:1b3~1175Envy:fff~2125Envy:fff~2175Envious:fff~1108Envy:fff~11051:56~122d1:1b2~120c1:1~11231:1b3~11241:1bc~100b1:1bc~11072:3~11231:1bc~11241:1b3~102e~10151:3|2:56|2:c5~200111:fff~200b1:c5~21151:c5~21171:5~210c1:5~200b1:c5~21151:5~21171:1bc~210c1:1bc~200b1:c5~21151:1bc~21171:8~21081:8~21151:4~200b1:56~212e~21151:4|1:1b2~2023Envious:fff~200b1:5|2:3|2:4~20021:1ac~200b1:1bc~21071:1b2~21231:1bc~21241:1b3~20151:3|1:4|1:c5|1:cc|1:1bb~100112:fff~1048~110d1:4|1:c5~100b1:c5~11151:1b2~11171:1b3~110c1:1b3~100b1:c5~11151:1b3~11171:4~11081:4~100b1:c5~11151:1bc~11171:c5~110c1:c5~100b1:56~11151:c5|1:1bb~100b1:c5~11151:4~11171:4~110c1:4~100b1:56~11152:4~100b1:1bb|4:4~10021:4|1:8~100b1:1bc~11071:3|1:1b2~11231:1bc~11241:1b3~100b1:1b3~1175Poverty:fff~2125Poverty:fff~21081:3|1:cc~1108Poverty:fff~11051:34~11231:1b3~11241:1bc~102e~10152:4|1:34|1:56|1:1b3~200112:fff~2048~210d1:8|1:56~200b1:c5~21151:c5~212e~21171:5~210c1:5~200b1:c5~21151:5~21171:1b3~210c1:1b3~200b1:56~21151:cc|1:1b3~200b1:1bb|1:5|1:4~20021:b5|1:1b2~200b1:1b3~2175Locusts:fff~1125Locusts:fff~11171:4~11071:4~11051:3~2108Locusts:fff~21051:56~21231:1b3~21241:1bc~20151:3|1:4|3:c5~100113:fff~1048~110d1:4|1:56|2:c5~100b1:c5~11151:4~11171:1bc~11081:1bc~100b1:c5~11151:1bb~11171:c5~110c1:c5~100b1:56~11151:8|1:c5~100b1:c5~11151:4~11171:c5~110c1:c5~100b1:56~112e~11151:c5|1:1bc~100b1:c5~11151:3~100b1:34~11071:8~11051:8~21051:2~100b1:1bb|5:4~10021:4|1:8~100b1:1b3~11750:183~21250:183~211d~21181:8|2:56|1:5|1:1b2|1:1bc|1:1ac|2:4|1:cc|1:b5|1:1bb|1:2|2:c5|2:3~210c2:3~11080:183~11051:4~11231:1b3~11241:1bc~100b1:1bc~11071:3~11231:1bc~11241:1b3~102e~10151:4|1:8|1:34|2:c5~200113:fff~2048~210d2:3~200b1:c5~212e~21151:5~21171:c5~210c1:c5~200b1:c5~21151:c5~21171:56~210c1:56~200b1:c5~21151:56~21171:c5~210c1:c5~200b1:c5~21151:c5~21171:4~210c1:4~200b1:56~21151:4|1:56~200b1:c5~21151:1ac~21171:2~21081:2~200b1:56~21151:b5|1:1bb~200b1:1ac~21750:17c~21250:17c~21151:cc~21080:17c~11151:4~200b1:b5~21081:3|1:cc~200b1:1bb|1:5|2:3|2:4~20022:8~202e~20151:3|1:4|1:8|1:1b2|1:1bc~100114:fff~1048~110d1:56|2:c5|1:1b3~100b1:c5~11151:4~11171:4~110c1:4~100b1:c5~11151:4~11171:4~110c1:4~100b1:c5~11151:4~11171:1bc~11081:1bc~100b1:c5~11151:56~11171:4~110c1:4~100b1:34~11071:8~11051:8~21051:2~100b3:4~10021:8~100b1:1b3~1175Misery:fff~2125Misery:fff~2175Miserable:fff~1108Misery:fff	00210~00608~00708~00808~00360~00440~00530~03410~0b510~0c210~07910~05610~0be08~0c510~1ac10~1b310~1b210~11601~11401~0c710~17501~17601~17701~17801~17901~17a01~17b01~17c01~17d01~17e01~17f01~18001~1bf12~18301~18401~18501~18601~18701~18801~18901~18a01~18b01~18c01~18d01~18e01~19202~19102~18f02~19002~1bc10~1bb02~0cc02~0c302~0cd02	\N	ceviri~David Goldfarb
11423201	000011423201/unrated:fff~10276:3|3:6|1:1bb~20276:3|3:6|1:1bb~102e~10154:3|1:6~202e~20153:3|2:6~10011:fff~100b3:3~10021:4~10152:3|2:6|1:1bb~20011:fff~200b3:3~20021:4~20153:3|1:6|1:1bb~10012:fff~100b1:1bb|2:3~10021:15~102e~10153:3|1:6|1:1bb~20012:fff~200b1:1bb|2:3~20021:15~202e~20152:3|1:4|1:6|1:15~10013:fff~100b1:1bb|3:3~10021:33|1:1b2~10152:3|1:4|1:6|1:15~20013:fff~200b1:15~21151:3~200b3:3|1:4~20021:8a~20153:3|2:6~10014:fff~100b1:15~11151:6~100b2:3|1:4~10021:8a~102e~10152:3|1:4|1:33|1:8a~20014:fff~200b3:3~20021:196~202e~20153:3|1:8a|1:1bb~10015:fff~100b1:8a~11151:6~11171:6|1:33|2:3|1:4~11174:3|1:1b2~11191:1b2~11084:3~100b1:33~100b1:1b2~11750:17f~11250:17f~11051:1bf~122d1:1b2~120c1:1~11080:17f~100b1:3|1:4~10021:8a~112d1:1b2~110c1:1~1132Changeling/Hunting Party:fff~10151:6|1:15|1:8a|1:1bb|1:1bf~20015:fff~200b1:8a~21151:4~21171:1bb|3:3|1:4~21171:6~21191:6~200b1:1bb|3:3|1:4~20021:8a~20152:3|2:6|1:196~10016:fff~100b1:1bf~11151:6~112e~11171:3~11191:3~100b1:15~11151:33~100b1:8a~11151:6~11171:1bb|3:6|1:33|1:3~11171:8a~11191:8a~100b1:8a~11151:3~11171:1bb|3:6|1:33|2:3~11171:1b2~11191:1b2~100b1:33~100b1:1b2~11750:17d~11250:17d~11082:0|1:6~11051:5~122d1:1b2~120c1:1~1232Changeling/Gold:fff~11080:17d~100b1:1bb|2:3~10021:8a~112d1:1b2~110c1:1~1132Changeling/Hunting Party:fff~10152:3|1:4|1:5|1:8a~20016:fff~200b2:3~20021:33~202e~20151:3|1:6|1:15|1:33|1:1bb~10017:fff~100b1:8a~11151:3~11173:3|1:5|1:4~11171:3~112e~11171:1bb~11191:1bb~11081:3~100b1:1bb|3:3|1:5|1:4~10021:15|1:8a~10151:3|2:6|1:15|1:1bf~20017:fff~200b1:15~21151:3~200b1:33~21151:4~200b1:1bb|2:3|1:4~20021:8a~20152:3|1:6|2:8a~10018:fff~100b1:1bf~11151:6~11171:33~11191:33~100b1:15~11151:3~100b1:33~11151:8a~100b1:8a~11151:8a~11173:6|2:3|1:8a~11171:1b2~11191:1b2~100b1:8a~112e~11151:8a~11173:6|2:3|1:1b2|1:8a~11171:3|1:15~11191:15~11081:3~100b1:8a~11151:1bb~11171:15|1:1bb|3:6|2:3|1:1b2~11171:8a~11191:8a~100b1:15~11151:5~100b1:8a~11151:3~11171:1bb|3:6|3:3|1:5|1:1b2~11171:4~11191:4~100b1:1b2~11750:179~11250:179~11181:3~11080:179~100b1:1bb|3:3|1:5|1:4~10021:8a~112d1:1b2~110c1:1~1132Changeling/Hunting Party:fff~10021:8a~112d1:1b2~110c1:1~1132Changeling/Hunting Party:fff~102e~10152:3|2:8a|1:1b2~20018:fff~200b1:8a~21151:3~21171:6|3:3|1:8a~21171:3|1:6|1:196~21191:196~21081:3|1:6~200b1:8a~212e~21151:33~21171:6|1:33|3:3|1:196~21171:15~21191:15~200b1:15~21151:3~200b1:33~21151:6~200b4:3~20021:15~200b1:196~21071:196~21051:8a~20152:3|1:4|1:8a|1:1bb~10019:fff~100b1:8a~11151:3~11173:3|1:1b2|1:8a~11171:6~11191:6~100b1:8a~11151:1bb~11171:1bb|1:6|3:3|1:1b2~11172:3|1:4|1:6~11191:4~11082:3|1:6~100b1:1b2~11750:177~11250:177~11071:6~11080:177~100b1:1bb|3:3|1:4~10021:10b~21151:6~112d1:1b2~110c1:1~1132Changeling/Lost City:fff~10021:33~112d1:1b2~110c1:1~10152:33|1:8a|1:10b|1:1bf~20019:fff~200b1:8a~212e~21151:15~21171:1bb|1:15|1:6|2:3|1:4~21173:3|1:6|1:15|1:8a~21191:8a~21083:3|1:6|1:15~200b1:15~21151:6~200b1:8a~21151:8a~21171:1bb|2:6|2:3|1:4|1:8a~21171:3|1:33|1:8a~21191:33~21081:3|1:8a~200b1:8a~212e~21151:3~21171:1bb|2:6|1:33|3:3|1:4~21171:3|1:8a~21191:8a~21081:3~200b1:8a~21151:15~21171:1bb|1:15|2:6|1:33|3:3|1:4~21172:3|1:6~212e~21171:3~21083:3|1:6~200b1:15~212e~21151:3~200b1:33~21151:3~200b1:1bb|5:3|1:4~20021:5|1:10b~11151:5~202e~20152:3|2:6|1:15~100110:fff~100b1:1bf~11151:15~11171:6~11191:6~100b1:10b~11152:8a~100b1:15~11151:15~100b1:15~11151:8a~100b1:33~11151:3~100b1:8a~112e~11151:3~11171:6|1:33|2:3|1:5|3:8a~11172:3|1:6|1:8a|1:1bb~11191:1bb~11082:3|1:6|1:8a~100b1:8a~11151:3~11171:1bb|1:6|1:33|3:3|1:5|2:8a~11171:4|1:8a~11191:4~11081:8a~100b1:8a~11151:1b2~11171:1bb|1:6|1:33|3:3|1:5|1:1b2|1:8a|1:4~11171:3~112e~11172:3|1:6|2:8a~11083:3|1:6|2:8a~100b1:8a~112e~11151:3~11171:1bb|1:6|1:33|4:3|1:5|1:1b2|1:4~11171:3|1:8a~11191:8a~11081:3~100b1:8a~11151:8a~11171:1bb|1:6|1:33|4:3|1:5|1:1b2|1:4|1:8a~11171:3|1:6~112e~11171:3~11082:3|1:6~100b1:8a~112e~11151:3~11171:1bb|1:6|1:33|5:3|1:5|1:1b2|1:4~11171:3|1:6~11081:3|1:6~100b1:33~100b1:1b2~11750:178~11250:178~100b1:1bb|5:3|1:5|1:4~10021:15~112d1:1b2~110c1:1~1132Changeling/Merchant:fff~10021:15~112d1:1b2~110c1:1~1132Changeling/Merchant:fff~10021:14b~112d1:1b2~110c1:1~1132Changeling/Chariot Race:fff~10021:14b~112d1:1b2~110c1:1~1132Changeling/Chariot Race:fff~10080:178~102e~10152:15|1:33|2:14b~200110:fff~200b1:15~21151:3~200b3:3~20021:14b~20151:4|1:5|1:15|2:8a~100111:fff~100b1:14b~11171:3~11191:3~21171:33~100b1:14b~11171:33~11191:33~21171:33~100b1:15~11151:8a~100b1:15~11151:10b~100b1:8a~11151:6~11171:6|2:33|1:10b|1:3~11171:8a~11191:8a~100b1:8a~11151:3~11171:6|2:33|1:10b|2:3~11171:3|1:6|1:8a~11191:8a~11081:3|1:6~100b1:8a~11151:4~11171:6|2:33|1:10b|2:3|1:4~11171:3|1:8a~11191:8a~11081:3~100b1:8a~11151:1bf~11171:6|2:33|1:10b|2:3|1:1bf|1:4~11171:3|1:8a~11191:8a~11081:3~100b1:10b~11151:5|1:8a~100b1:1bf~11151:1bb~11171:15~110c1:15~100b1:8a~11151:15~11171:1bb|1:15|1:6|2:33|2:3|1:5|1:4|1:8a~11171:1b2~11191:1b2~100b1:15~11151:15~100b1:8a~11151:3~11171:1bb|1:15|1:6|2:33|3:3|1:5|1:1b2|1:4~112e~11173:3|1:6~11083:3|1:6~100b1:15~112e~11151:3~100b1:33~11151:6~100b1:33~11151:3~100b1:1b2~11750:17c~11250:17c~11151:3~11080:17c~100b1:1bb|6:3|1:5|1:4~10021:10b~21151:33~112d1:1b2~110c1:1~1132Changeling/Lost City:fff~10021:10b~21151:8a~112d1:1b2~110c1:1~1132Changeling/Lost City:fff~102a1:170~116a3:fff~11051:5~114d1:fff~106b3:fff~102e~10151:33|2:10b|1:1bb|1:1bf~200111:fff~200b1:15~21151:3~200b1:8a~21151:10b~21171:33|1:10b|1:3|1:5|2:8a|1:4~21171:3|1:8a|1:1bb~21191:1bb~21081:3|1:8a~200b1:10b~21151:3|1:6~200b1:8a~212e~21151:3~21171:1bb|1:6|1:33|3:3|1:5|1:8a|1:4~21172:3|1:8a|1:14b~21191:14b~21082:3|1:8a~200b1:14b~21171:3~21191:3~11171:10b~200b1:8a~21151:6~21171:1bb|2:6|1:33|4:3|1:5|1:4~21171:6|1:15~21191:15~21081:6~200b1:15~212e~21151:6~200b1:33~21151:8a~200b1:8a~21151:3~21171:1bb|3:6|5:3|1:5|1:4~21171:3~21081:3~200b1:1bb|5:3|1:5|1:4~202a1:170~216a3:fff~21051:5~214d1:fff~206b3:fff~202a1:170~216a3:fff~21051:5~214d1:fff~206b3:fff~202e~20151:3|1:5|2:8a|1:1bb~100112:fff~100b1:10b~11151:3|1:10b~100b1:10b~11151:4|1:5~100b1:10b~11151:3|1:6~100b1:1bf~11151:8a~11171:8a~110c1:8a~100b1:8a~11151:8a~11171:1bb|1:6|1:33|2:3|1:5|1:4|1:8a~11171:3|1:14b~11191:14b~11081:3~100b1:14b~11171:8a~11191:8a~21171:3~114d1:fff~100b1:8a~11151:15~11171:1bb|1:15|1:6|1:33|2:3|1:5|1:4|1:8a~11172:3|1:6|3:15|2:8a|1:14b~11191:14b~11082:3|1:6|3:15|2:8a~100b1:14b~11171:5~11191:5~21171:3~114d1:fff~100b1:15~11151:8a~100b1:8a~11151:3~11171:1bb|1:6|1:33|3:3|2:5|1:4|1:8a~11171:1b2~11191:1b2~100b1:8a~11151:33~11171:1bb|1:6|2:33|3:3|2:5|1:1b2|1:4~112e~11171:15~11191:15~100b1:15~11151:3~100b1:33~11151:8a~100b1:33~11151:15~100b1:8a~11151:15~11171:1bb|2:15|1:6|4:3|2:5|1:1b2|1:4~11172:3|1:6|1:8a~11191:8a~11082:3|1:6~100b1:15~112e~11151:3~100b1:8a~11151:3~11171:1bb|1:15|1:6|6:3|2:5|1:1b2|1:4~11171:6~11081:6~100b1:15~112e~11151:6~100b1:1b2~11750:180~11250:180~11082:6~11080:180~100b1:1bb|6:3|2:5|1:4~10021:10b~21151:3~112d1:1b2~110c1:1~1132Changeling/Lost City:fff~10021:8|1:14b~112d1:1b2~110c1:1~1132Changeling/Chariot Race:fff~10021:14b~112d1:1b2~110c1:1~1132Changeling/Chariot Race:fff~102e~10151:3|1:33|1:10b|2:14b~200112:fff~200b1:8a~21151:33~21171:1bb|1:33|2:3|1:5|1:8a~21171:6~21191:6~200b1:8a~21151:6~21171:1bb|2:6|1:33|2:3|1:5~21171:10b~21191:10b~200b1:10b~21151:5|1:15~200b1:15~21151:3~200b1:33~21151:8a~200b1:8a~21151:3~21171:1bb|2:6|4:3|2:5~21171:5|1:8a~21191:8a~21081:5~200b1:8a~21151:3~21171:1bb|2:6|5:3|2:5~21171:14b~21191:14b~200b1:14b~21171:3~21191:3~11171:1b2~200b1:1bb|6:3|2:5~20021:8|1:10b~11151:1b2~202e~20151:3|1:4|1:5|1:6|1:15~100113:fff~100b1:14b~11171:33~11191:33~21171:8a~100b1:10b~11151:3|1:15~100b1:15~11151:3~100b1:14b~11171:5~11191:5~21171:8a~114d1:fff~100b1:33~11151:10b~100b1:10b~11151:8a|1:10b~100b1:33~11151:1bf~100b1:8a~11151:10b~11172:10b|3:3|1:5|1:1b2|1:1bf~11171:14b~11191:14b~100b1:1bf~11151:6~11171:8~110c1:8~100b1:10b~11151:8|1:8a~100b1:8a~11151:5~11171:6|1:10b|3:3|2:5|1:1b2|1:14b|1:8~11171:15~11191:15~100b1:14b~11171:8a~11191:8a~21171:8a~100b1:10b~11151:3|1:15~100b1:15~11151:8a~100b1:15~11151:1bb~100b1:8a~11151:14b~11171:1bb|1:6|4:3|2:5|1:1b2|1:14b|1:8|1:8a~11171:15~11191:15~100b1:8a~11151:8a~11171:1bb|1:15|1:6|4:3|2:5|1:1b2|1:14b|1:8|1:8a~11171:3|1:4~11191:4~11081:3~100b1:15~11151:8a~100b1:8a~11151:3~11171:1bb|1:6|5:3|2:5|1:1b2|1:14b|1:8|1:8a|1:4~11171:6~112e~11171:3~11081:3|1:6~100b1:8a~112e~11151:6~11171:1bb|2:6|5:3|2:5|1:1b2|1:14b|1:8|1:4~11171:3~11081:3~100b1:1b2~11750:176~11250:176~100b1:14b~112e~11171:3~11191:3~21171:8a~100b1:1bb|6:3|2:5|1:4~10022:8|1:10b~21151:8a~112d1:1b2~110c1:1~1132Changeling/Lost City:fff~10080:176~102e~10151:3|1:5|1:6|1:8a|1:10b~200113:fff~200b1:15~21151:10b~200b1:10b~21151:5|1:8a~200b1:8a~21151:33~21171:6|1:33|1:3|2:5|1:4|1:8a~21171:15~21191:15~200b1:15~21151:10b~200b1:10b~21152:3~200b1:8a~21151:1bb~21171:1bb|1:6|1:33|3:3|2:5|1:4~21171:8a~21191:8a~200b1:8a~21151:8a~21171:1bb|1:6|1:33|3:3|2:5|1:4|1:8a~21171:3|1:5|2:6|1:14b~21191:14b~21081:3|1:5|2:6~200b1:14b~21171:8~21191:8~11171:8a~214d1:fff~200b1:33~21151:3~200b1:8a~21151:3~21171:1bb|1:6|5:3|2:5|1:8|1:4~212e~21171:3|1:5|2:6~21081:3|1:5|2:6~200b1:1bb|5:3|2:5|1:4~20022:8~202e~20151:3|1:4|1:5|2:6~100114:fff~100b1:10b~11151:8|1:8a~100b1:8a~11151:8~11171:6|1:3|1:5|2:8|1:8a~11171:1bb~11191:1bb~100b1:8a~11151:10b~11171:1bb|1:6|1:10b|1:3|1:5|2:8~11171:8|1:14b~11191:14b~11081:8~100b1:14b~11171:5~11191:5~21171:5~100b1:10b~11151:3|1:8a~100b1:8a~11151:6~11171:1bb|2:6|2:3|2:5|2:8~11171:33~11191:33~100b1:33~11151:15~100b1:15~11151:10b~100b1:10b~11151:3|1:15~100b1:15~11151:3~100b1:1bb|4:3|2:5~10022:7~10151:3|2:8a|1:14b|1:1bf~200114:fff~200b1:5|1:4~20021:7~20152:3|1:5|1:8|1:10b~100115:fff~100b1:8a~11151:33~11171:33|1:3|1:14b|1:1bf|1:8a~11171:10b~11191:10b~100b1:1bf~11151:4~11171:8a~110c1:8a~100b1:10b~11151:15|1:8a~100b1:15~11151:3~100b1:14b~11171:14b~11191:14b~21171:3~114d1:fff~100b1:14b~11171:10b~11191:10b~21171:3~114d1:fff~100b1:10b~11151:15|1:14b~100b1:14b~11171:1b2~11191:1b2~21171:3~114d1:fff~100b1:15~112e~11151:15~100b1:15~11151:8a~100b1:8a~11151:8a~11171:33|2:3|1:1b2|3:8a|1:4~11171:10b~11191:10b~100b1:8a~11151:3~11171:33|1:10b|3:3|1:1b2|2:8a|1:4~11171:8|1:10b~11191:8~11081:10b~100b1:8a~11151:33~11172:33|1:10b|3:3|1:1b2|1:8|1:8a|1:4~11172:3|1:6|1:8|1:8a|1:10b~11191:6~11082:3|1:8|1:8a|1:10b~100b1:10b~11151:6|1:8~100b1:8a~11151:3~11172:6|2:33|4:3|1:1b2|2:8|1:4~11171:7~11191:7~100b1:33~11151:5~100b1:33~11151:1bb~100b1:1b2~11750:17e~11250:17e~11171:5|1:7|1:15|1:14b~11081:7~110c1:5|1:15|1:14b~11080:17e~100b1:1bb|4:3|1:5|1:4~10021:6|2:8	00210~00614~00708~00808~00360~00440~00530~03310~08a10~1cc10~19610~14b10~06e10~02a08~10b10~1b210~01510~17001~17501~17601~17701~17801~17901~17a01~17b01~17c01~17d01~17e01~17f01~18001~1bf12~1bb02	\N	ceviri~mongoose700
11392418	000011392418/unrated:fff~10277:3|3:6~20277:3|3:6~102e~10153:3|2:6~202e~20154:3|1:6~10011:fff~100b3:3~10021:7d~10154:3|1:6~20011:fff~200b4:3~20021:19~20153:3|2:6~10012:fff~100b4:3~10021:19~102e~10153:3|1:6|1:7d~20012:fff~200b3:3~20021:7d~202e~20151:3|2:6|1:19|1:7d~10013:fff~100b3:3~10021:7d~112d1:7d~110c1:7d~10152:3|1:6|1:19|1:7d~20013:fff~200b1:19~21071:3~20021:4~212d1:7d~210c1:4~20154:3|1:4~10014:fff~100b1:19~11071:3~100b1:3~10021:16d~11191:16d~11320:7d|Villa:fff~11320:7d|Villa:fff~100b1:16d~100b1:7d~11152:3|1:6~112e~11151:6|1:7d~100b1:3~10021:112~112d1:7d~110c1:112~102e~10153:3|1:19|1:112~20014:fff~200b4:3|1:4~20021:16d~21191:16d~200b1:16d~20021:7d~202e~20153:3|1:6|1:19~10015:fff~100b1:19~11071:3~100b1:3~10021:16d~11191:16d~100b1:16d~100b1:112~100b1:3~10021:112~10231:112~10241:120~10151:3|1:6|2:7d|1:16d~20015:fff~200b1:19~21071:3~200b2:3~20021:1b4~20152:3|1:4|1:7d|1:16d~10016:fff~100b1:16d~100b1:7d~11152:3|1:6~100b3:3~10021:16d~11191:16d~11320:7d|Villa:fff~11320:7d|Villa:fff~100b1:16d~100b1:7d~11151:6~112e~11152:3|1:112~100b1:112~100b2:3~10021:9f~10231:112~10241:120~102e~10151:3|1:6|1:19|1:120|1:16d~20016:fff~200b1:16d~200b2:3|1:4~20021:16d~21191:16d~21320:7d|Villa:fff~21320:7d|Villa:fff~200b1:16d~200b1:7d~21151:3|2:6|1:7d~212e~21151:3|1:1b4~200b1:7d~21151:19~200b1:19~21071:3~200b1:3~20021:5~200b1:1b4~21750:183~11250:183~111d~11181:9f|2/2/5:fff|1:120|1:3~110c2:3~21080:183~202e~20151:3|1:4|1:5|1:6|1:16d~10017:fff~100b1:16d~100b1:19~11071:3~100b1:120~21081:6~10021:1b4~10231:120~10241:102~102e~10152:3|1:19|1:7d|1:120~20017:fff~200b1:16d~200b1:3|1:5|1:4~20021:112|1:1b4~20152:3|1:6|1:19|1:1b4~10018:fff~100b1:19~11071:3~100b1:3~10021:16d~11191:16d~11320:7d|Villa:fff~11320:7d|Villa:fff~100b1:16d~100b1:120~21081:6~100b1:7d~11151:3|1:6|1:9f|1:102|2:16d~100b1:3~10021:16d~11191:16d~100b1:16d~100b1:16d~100b1:16d~100b1:102~11151:6|1:16d~11081:6~100b1:16d~100b1:9f~11051:4~11181:1b4~110c1:1b4~11151:3|1:6|1:7d|1:1b4~11071:6~100b1:1b4~112e~11151:4|1:6~100b1:3|1:4~10021:112|1:16d~11191:16d~11320:7d|Villa:fff~11320:7d|Villa:fff~100b1:16d~100b1:7d~112e~11151:112~100b1:112~10021:112~10231:102~10241:fc~10231:120~10241:102~10231:112~10241:120~102e~10151:3|1:4|1:19|1:9f|1:16d~20018:fff~200b1:19~21071:3~200b1:3~20021:16d~21191:16d~200b1:16d~200b1:1b4~21151:6|1:7d|1:16d~200b1:16d~200b1:7d~21151:3|1:7d~212e~21151:3|1:4|1:112~200b1:112~200b2:3|1:4~20021:16d~21191:16d~21320:7d|Villa:fff~21320:7d|Villa:fff~200b1:16d~200b1:7d~21151:5|2:6|1:16d|1:1b4~200b1:16d~200b1:5~20021:8~200b1:1b4~21750:18b~11250:18b~11750:18f~21080:18b~20231:112~20241:120~202e~20151:4|2:6|1:120|1:1b4~10019:fff~100b1:16d~100b1:9f~11051:4~11181:6~11081:6~11151:3|1:1b4~100b1:19~11071:3~100b1:3~10021:1b4~100b1:1b4~11750:184~21250:184~21750:192~11080:184~10151:3|1:6|1:112|1:120|1:16d~20019:fff~200b1:120~11081:6~20230:192~200b1:4~20021:4~200b1:1b4~21750:188~11250:188~11051:3~21080:188~20231:120~20241:102~20151:3|1:5|1:6|2:7d~100110:fff~100b1:16d~100b1:112~100b1:120~21081:6~100b1:3~10021:1b4~10231:120~10241:102~10231:112~10241:120~10151:3|1:7d|1:fc|1:102|1:16d~200110:fff~200b1:7d~21151:8|1:19|1:16d~200b1:3|1:5~20021:137~20152:3|2:16d|1:1b4~100111:fff~100b1:102~11151:7d|1:16d~11081:3~100b1:16d~100b1:16d~100b1:7d~11152:16d~112e~11151:3|1:4~100b1:16d~100b1:16d~100b1:7d~11151:19|1:9f|1:16d~100b1:16d~100b1:19~11071:3~100b1:9f~11051:4~11181:6~11081:6~11151:6|1:102|1:1b4~11071:6~100b1:fc~110b1:1b4~12152:3|1:120~11091:1b4~12151:4|2:1b4~11051:1b4~100b1:102~112e~11151:16d|1:1b4~11081:3~100b1:16d~100b1:1b4~112e~11151:3|1:4|1:6~100b1:120~21081:3~100b2:3|3:4~10021:112|3:1b4~100b1:1b4~11750:18a~21250:18a~21171:16d~21071:16d~21051:7d~11080:18a~100b1:1b4~11750:18d~21250:18d~21081:3~11080:18d~10231:fc~10241:123~10231:102~10241:fc~10231:102~10241:fc~102e~10151:3|1:4|1:7d|1:16d|1:1b4~200111:fff~200b1:16d~200b1:16d~200b1:1b4~212e~21151:4|1:5|1:102~200b1:102~21151:4|1:137~21081:137~200b1:5|2:4~20021:138|1:1b4~21051:4~20231:102~20241:fc~20152:6|1:8|1:7d|1:1b4~100112:fff~100b1:16d~100b1:7d~11151:112|2:1b4~100b1:112~100b1:3|1:4~10021:7~100b1:1b4~11750:187~21250:187~21081:7d~11080:187~100b1:1b4~11750:186~21250:186~21171:3|1:19|1:16d~21081:19|1:16d~211f1:3~11080:186~100b1:1b4~11750:18e~21250:18e~21171:7d~21071:7d~11080:18e~10231:112~10241:120~10151:3|1:4|1:7d|2:16d~200112:fff~200b1:1b4~21750:189~11250:189~110c1:3~21080:189~20153:3|1:6|1:7d~100113:fff~100b1:16d~100b1:16d~100b1:7d~11151:3|1:9f|1:fc|1:120|1:1b4~100b1:fc~110b1:1b4~12153:16d~11091:1b4~12151:4|1:fc|1:1b4~100b1:16d~100b1:16d~100b1:fc~110b1:16d~11091:16d~100b1:1b4~11151:6|1:123|1:1b4~100b1:1b4~112e~11151:4|1:19|1:1b4~100b1:1b4~11151:7|1:7d|1:16d~100b1:16d~100b1:123~111b1:123|Tavern mat:fff~100b1:19~11071:3~100b1:120~21081:6~100b1:9f~11051:4~122d1:7d~12071:4~11181:1b4~110c1:1b4~11071:6~100b3:4~10021:7|2:8~10151:3|1:120|3:1b4~200113:fff~200b3:3~20021:7d~212d1:7d~21071:7d~202e~20151:3|1:4|1:6|1:138|1:1b4~100114:fff~1048~101c1:123~104c+Action token/the Werewolf pile:fff~100b1:1b4~117cL gets +1 Action (from Teacher):fff~112e~11151:19|1:120|1:1b4~100b1:1b4~117cL gets +1 Action (from Teacher):fff~11151:4|1:7|1:16d~100b1:1b4~117cL gets +1 Action (from Teacher):fff~11151:9f|2:1b4~100b1:16d	00210~00614~00708~00808~00360~00440~00530~1b410~10310~13e01~13d01~13c01~13b01~13a01~13901~13801~13701~09f10~04d10~07d10~11210~02908~01910~16d10~18301~18401~18501~18601~18701~18801~18901~18a01~18b01~18c01~18d01~18e01~19202~19102~18f02~19002~12005~10205~0fc05~12305	\N	ceviri~ILYA
11392820	000011392820/unrated:fff~10277:3|3:6~20277:3|3:6~102e~10153:3|2:6~202e~20152:3|3:6~10011:fff~100b3:3~10021:48~10154:3|1:6~20011:fff~20155:3~10012:fff~100b3:3~10021:4~102e~10152:3|2:6|1:48~20012:fff~200b5:3~20021:25~202e~20153:3|2:6~10013:fff~100b1:48~11183:3~11071:3~11081:3~110c1:3~10153:3|1:4|1:6~20013:fff~200b3:3~20021:48~20153:3|1:6|1:25~10014:fff~100b3:3|1:4~10021:cb~102e~10152:3|2:6|1:cb~20014:fff~200b1:25~21171:6~21051:5~200b3:3~20021:48~202e~20152:3|1:6|1:25|1:48~10015:fff~100b1:cb~1116Copper/Silver:fff~100b1:3~10021:48~10152:3|1:4|1:6|1:48~20015:fff~200b1:48~21181:3|1:6|1:48~21071:6~21081:3~210c1:48~200b1:25~21171:6~21051:5~20152:3|1:5|1:6|1:48~10016:fff~100b1:48~112e~11182:3|1:6~11071:6~11081:3~110c1:3~100b1:3|1:4~10021:1a2~100b1:1a2~10153:3|1:6|1:48~20016:fff~200b1:48~212e~21182:3|1:48~21071:3~21081:3~210c1:48~200b1:5|2:3~20021:cb~20151:3|1:5|1:6|1:25|1:48~10017:fff~1048~11141:cb~100b1:48~112e~11182:3|1:48~11071:3~11081:3~110c1:48~100b1:cb~112fLookout:fff~100b1:48~11181:3|1:4|1:6~11071:6~11081:3~110c1:4~100b1:3~10021:1a2~100b1:1a2~102e~10152:3|1:4|1:48|1:1a2~20017:fff~200b1:48~212e~21183:3~21071:3~21081:3~210c1:3~200b1:25~21171:5~200b1:5|1:3~20021:6d~20153:3|1:48|1:cb~10018:fff~1048~11141:3~100b1:48~11181:3|1:6|1:cb~11071:6~11081:3~110c1:cb~100b3:3~10021:1a2~100b1:1a2~100b1:1a2~102e~10152:3|1:4|1:48|1:cb~20018:fff~200b1:48~212e~21181:3|1:5|1:6~21071:6~21081:3~210c1:5~200b1:cb~212fGold:fff~200b1:5|3:3~20021:16d~21191:16d~200b1:16d~20021:cb~20151:3|1:5|1:6|1:25|1:48~10019:fff~1048~11141:3|1:48~100b1:48~11182:3|1:1a2~11071:3~11081:3~110c1:1a2~100b1:48~112e~11181:3|1:1a2~11071:3~11081:1a2~100b1:cb~112e~112f0:1a2~100b2:3|1:4~10021:6d~100b1:1a2~102e~10151:3|1:4|2:48|1:1a2~20019:fff~200b1:48~212e~21181:3|1:5|1:6d~21071:3~21081:5~210c1:6d~200b1:25~21171:6~21051:5~200b1:5|1:3~20021:11~20152:3|1:6d|2:cb~100110:fff~1048~11141:1a2~100b1:48~11181:3|1:6d|1:cb~11071:3~11081:cb~110c1:6d~100b1:48~112e~11181:3|1:6d|1:cb~11071:3~11081:cb~110c1:6d~100b1:3|1:4~10021:15~100b1:1a2~100b1:1a2~102e~10151:3|1:15|1:48|1:6d|1:1a2~200110:fff~200b1:cb~212fLookout:fff~200b1:48~212e~21181:3|1:6|1:16d~21071:6~21081:3~210c1:16d~200b1:cb~212fVilla:fff~200b1:16d~200b1:6d~11081:3|1:1a2~200b2:3~202a1:11~214f1:fff~20051:11~202a1:cb~214f1:fff~20051:cb~20152:5|1:11|1:25|1:48~100111:fff~1048~11141:4|1:48~100b1:15~11151:cb~100b1:48~112e~11181:3|1:1a2~11071:3~11081:1a2~100b1:cb~112e~112f0:1a2~100b1:6d~21081:11|1:48~100b1:4~102a1:15~114f1:fff~10051:15~102a1:1a2~114f1:fff~10051:1a2~100b1:1a2~100b1:1a2~102e~10151:15|1:48|1:6d|1:cb|1:1a2~200111:fff~200b1:25~21171:5~200b2:5~20021:8~202e~20152:3|1:5|1:48|1:6d~100112:fff~1048~11141:4|1:15~100b1:48~11181:48|1:1a2~11071:48~11081:1a2~100b1:15~112e~11151:1a2~100b1:15~100b1:cb~100b1:6d~21081:3|1:48~100b1:4~102a1:6d~114f1:fff~10051:6d~100b1:1a2~100b1:1a2~102e~10151:15|1:48|2:6d|1:cb~200112:fff~200b1:6d~11081:48|1:cb~200b1:5|1:3~202a1:11~214f1:fff~20051:11~202a1:11~214f1:fff~20051:11~20152:3|1:5|1:25|1:cb~100113:fff~1048~11142:1a2~100b1:15~11151:15~100b1:15~11151:4~100b1:6d~21082:3~100b1:6d~100b1:4~102a1:15~114f2:fff~10051:15~102a1:15~114f2:fff~10051:15~100b1:1a2~100b1:1a2~102e~10151:4|2:15|1:48|1:1a2~200113:fff~200b1:cb~2116Goons/Villa:fff~200b1:25~21171:5~200b1:5~20021:8~20151:5|1:8|1:11|1:48|1:16d~100114:fff~1048~11141:15|1:1a2~100b1:15~11151:cb~100b1:15~11151:6d~100b1:15~11151:15~100b1:15~11151:6d~100b1:6d~21081:8|1:16d~100b1:cb~100b1:6d~100b1:4~102a1:6d~114f2:fff~10051:6d~102a1:15~114f2:fff~10051:15~102a1:1a2~114f2:fff~10051:1a2~100b1:1a2~100b1:1a2~100b1:1a2~102e~10151:4|2:15|2:6d~200114:fff~200b1:11~21151:11~211815:1~210c1:6d~200b1:11~21151:6d~211814:1~210c1:1~200b1:48~21181:48|2:cb~21071:48~21081:cb~210c1:cb~200b1:6d~11082:15~200b1:5~202a1:cb~214f1:fff~20051:cb~202e~20151:8|1:11|2:cb|1:16d~100115:fff~1048~11142:15|1:cb~100b1:15~11151:1a2~100b1:15~11151:48~100b1:cb~1116Merchant/Goons:fff~100b1:6d~21081:8|1:16d~100b1:6d~100b1:4~102a1:1a2~114f2:fff~10051:1a2~102a1:1a2~114f2:fff~10051:1a2~102a1:15~114f2:fff~10051:15~100b1:1a2~100b1:1a2~100b1:1a2~102e~10152:15|1:6d|2:1a2~200115:fff~200b1:11~21151:5~21181:16d|1:8~210c1:16d~200b1:cb~212fVilla:fff~200b1:cb~2116Goons/Harbinger:fff~200b1:16d~200b1:5~20022:1a2~200b1:1a2~200b1:1a2~20151:3|1:5|1:11|1:25|1:cb~100116:fff~1048~11143:15~100b1:15~11151:1a2~100b1:15~11151:15~100b1:15~11151:cb~100b1:15~11151:6d~100b1:15~11151:1a2~100b1:15~11151:48~100b1:cb~1116Goons/Silver:fff~100b1:6d~21081:3|1:25~100b1:6d~102a1:15~114f2:fff~10051:15~102a1:15~114f2:fff~10051:15~100b1:1a2~100b1:1a2~100b1:1a2~100b1:1a2~102e~10151:4|2:15|1:6d|1:1a2~200116:fff~2048~21141:48|1:6d~200b1:11~21151:3~21182:cb|1:16d|1:8|1:25|1:5|1:11|1:3~210c1:25~200b1:cb~212fCourtier:fff~200b1:25~21171:6d~200b1:6d~11081:4|1:1a2~200b1:5|1:3~202a1:8~214f1:fff~20051:8~202a1:1a2~214f1:fff~20051:1a2~202a1:3~214f1:fff~20051:3~200b1:1a2~20151:3|1:5|2:11|1:cb~100117:fff~1048~11143:15|1:1a2~100b1:15~11151:6d~100b1:15~11151:15~100b1:15~11151:6d~100b1:15~11151:15~100b1:15~11151:15~100b1:15~11151:cb~100b1:15~11151:48~100b1:15~11151:1a2~100b1:cb~112e~112fSilver:fff~100b1:6d~21081:3|1:11~100b1:6d~100b1:6d~100b1:4~102a1:15~114f3:fff~10051:15~102a1:15~114f3:fff~10051:15~102a1:16d~114f3:fff~10051:16d~11191:16d~100b1:16d~102a1:16d~114f3:fff~10051:16d~11191:16d~100b1:16d~102a1:16d~114f3:fff~10051:16d~11191:16d~100b1:16d~102a1:11~114f3:fff~10051:11~100b1:1a2~100b1:1a2~102e~10151:4|1:11|2:15|1:1a2~200117:fff~2048~21141:8~200b1:11~21151:3~21183:cb|1:6d|1:16d|2:8|1:25|1:48|2:5|2:1a2|3:11|4:3~210c1:6d~200b1:cb~212fGoons:fff~200b1:6d~11082:15~200b1:5|1:3~202a1:8~214f1:fff~20051:8~202a1:3~214f1:fff~20051:3~202e~20151:3|1:8|1:11|1:25|1:16d~100118:fff~1048~11141:6d|1:16d~100b1:11~11151:6d~11182:15~110c1:15~100b1:16d~100b1:6d~21081:3|1:8~100b1:6d~100b1:4~102a1:11~114f2:fff~10051:11~102a1:11~114f2:fff~10051:11~102a1:3~114f2:fff~10051:3~102a1:3~114f2:fff~10051:3~100b1:1a2~10153:15|2:1a2~200118:fff~200b1:11~21151:3~21181:8|1:3~200b1:16d~200b1:25~21171:3~200b1:3~20021:7~20151:3|1:5|1:8|2:cb~100119:fff~1048~11141:6d~100b1:15~11151:15~100b1:15~11151:48~100b1:15~11151:1a2~100b1:15~11151:16d~100b1:48~11182:15|1:1a2~11071:15~11081:15~110c1:1a2~100b1:16d~100b1:6d~21081:3|1:8~102a1:11~114f1:fff~10051:11~102a1:3~114f1:fff~10051:3~102a1:3~114f1:fff~10051:3~100b1:1a2~100b1:1a2~100b1:1a2~10152:15|1:cb|1:16d|1:1a2~200119:fff~200b1:cb~2116Goons/Harbinger:fff~200b1:cb~212fHarbinger:fff~200b1:11~21151:8~21181:16d|2:8|1:25|3:3|1:11|1:7~210c1:25~200b1:5~20021:7~20152:11|1:25|1:cb|1:1a2~100120:fff~1048~11141:15~112e~11141:48|1:6d~100b1:15~11151:15~100b1:15~11151:1a2~100b1:15~11151:3~100b1:48~11181:11|1:15|1:16d~11071:16d~11081:11~110c1:15~100b1:cb~112fMerchant:fff~100b1:15~11151:6d~100b1:15~11151:3~100b1:16d	00210~00614~00708~00808~00360~00440~00530~01510~04810~0df10~02510~01110~0cb10~16810~1a210~06d10~16d10~14001	\N	ceviri~ILYA
11382626	000011382626/unrated:fff~10277:3|3:6~20277:3|3:6~102e~10154:3|1:6~202e~20154:3|1:6~10011:fff~100b3:3~10021:36~10153:3|2:6~20011:fff~200b3:3~20021:36~20153:3|2:6~10012:fff~100b3:3~10021:4~102e~10153:3|2:6~20012:fff~200b3:3~20021:4~202e~20155:3~10013:fff~100b3:3~10021:36~10152:3|1:4|1:6|1:36~20013:fff~200b5:3~20021:21~20152:3|1:4|2:6~10014:fff~100b1:36~11171:6|2:3|1:4~11152:3~100b3:3|1:4~10021:21~102e~10153:3|1:6|1:36~20014:fff~200b2:3|1:4~20021:36~202e~20152:3|1:6|2:36~10015:fff~100b1:36~11171:6|3:3~11151:6|1:36~100b1:36~11172:6|3:3~11151:3|1:4~100b3:3|1:4~10021:21~10153:3|1:6|1:21~20015:fff~200b1:36~21171:6|2:3|1:36~200b1:36~21171:6|2:3~21151:3|1:6~200b3:3~20021:4~20152:3|1:4|1:6|1:21~10016:fff~100b1:21~112e~11152:3~21051:2~100b5:3~10021:b6~10152:3|1:6|2:36~20016:fff~200b1:21~21152:3~11051:2~200b4:3|1:4~20021:21~202e~20152:3|2:6|1:21~10017:fff~100b1:36~11171:6|2:3|1:36~100b1:36~11171:6|2:3~11151:4|1:6~100b1:3|1:4~10021:36~102e~10151:2|1:3|1:6|1:21|1:36~20017:fff~200b1:21~21151:4|1:6~11051:2~200b2:3|1:4~20021:36~20152:3|1:4|2:36~10018:fff~100b1:36~11171:6|1:3|1:2|1:21~100b1:21~11151:3|1:6~21051:2~100b2:3~10021:e3~10151:3|1:6|1:21|1:36|1:b6~20018:fff~200b1:36~21172:3|1:36|1:4~200b1:36~21172:3|1:4~21151:2|1:21~200b1:21~21152:3~11051:2~200b4:3|1:4~20021:1b3~202e~20152:3|1:6|1:21|1:36~10019:fff~100b1:36~11171:6|1:3|1:21|1:b6~100b1:21~11151:4|1:36~21051:2~100b1:36~11171:6|1:3|1:b6|1:4~11152:3~100b1:b6~110b1:3~11091:3~11071:3~100b2:3|1:4~10021:e3|1:1b3~102e~10153:3|1:4|1:1b3~20019:fff~200b1:36~21171:6|2:3|1:21~200b1:21~21151:2|1:3~11051:2~200b3:3~20021:36~20151:3|1:6|1:21|1:36|1:1b3~100110:fff~100b3:3|1:4~10021:1b3~100b1:1b3~1175Misery:fff~2125Misery:fff~2175Miserable:fff~1108Misery:fff~11051:b6~11231:1b3~11241:1bc~10152:3|1:6|1:b6|1:e3~200110:fff~200b1:36~21171:6|1:3|1:1b3|1:21~200b1:21~21151:2|1:3~11051:2~200b2:3~20021:e3~200b1:1b3~21750:183~11250:183~111d~111817:0|1:2|1:e3|1:4|1:b6~110c2:3~21080:183~21051:b6~21231:1b3~21241:1bc~20152:3|2:4|1:36~100111:fff~100b1:e3~11151:3~11171:3~110c1:3~100b1:b6~110b1:3~11091:3~11071:3~100b2:3~10021:1b3~102e~10151:2|1:3|1:4|1:6|1:36~200111:fff~200b1:36~21172:3|2:4~212e~21151:3|1:6~200b3:3|2:4~20021:1b3~20152:3|2:6|1:36~100112:fff~100b1:36~11171:6|1:3|1:2|1:4~11151:3|1:e3~100b1:e3~11151:b6~11171:3~110c1:3~100b1:b6~110b1:3~11091:3~11071:3~100b1:3|1:4~10022:36~10152:2|1:3|1:6|1:e3~200112:fff~200b1:36~21172:6|2:3~21151:2|1:36~200b1:36~21172:6|2:3|1:2~21151:3|1:1bc~200b3:3~20021:36~200b1:1bc~21071:2|1:6~21231:1bc~21241:1b3~20151:2|2:21|1:36|1:b6~100113:fff~100b1:e3~11151:21~11171:2~11191:2~100b1:21~11151:21|1:b6~21051:2~100b1:b6~110b1:3~11091:3~11071:3~10021:14b~10152:3|2:36|1:1bc~200113:fff~200b1:36~21172:21|1:2|1:b6~200b1:21~21151:2|1:3~11051:2~200b1:21~212e~21151:6|1:e3~200b1:b6~210b1:3~21091:3~21071:3~20021:14b~20153:3|1:6|1:36~100114:fff~100b1:36~11172:3|1:36|1:1bc~100b1:36~11172:3|1:1bc~11151:2|1:1b3~100b1:1bc~11071:2|1:3~11231:1bc~11241:1b3~100b1:1b3~1175Envy:fff~2125Envy:fff~2175Envious:fff~1108Envy:fff~11051:21~11231:1b3~11241:1bc~102e~10151:2|2:6|1:b6|1:1b3~200114:fff~200b1:36~21171:6|3:3~21151:4|1:36~200b1:36~21171:6|3:3|1:4~21151:4|1:36~200b1:36~21171:6|3:3|2:4~21151:3|1:1b3~2023Envious:fff~200b4:3|2:4~20021:5~200b1:1b3~2175Haunting:fff~1125Haunting:fff~110c1:b6~2108Haunting:fff~21051:7~21231:1b3~21241:1bc~20151:2|2:3|1:36|1:1b3~100115:fff~100b1:1b3~1175Greed:fff~2125Greed:fff~21051:3~1108Greed:fff~11051:7~11231:1b3~11241:1bc~10151:3|1:36|1:b6|1:e3|1:1b3~200115:fff~200b1:36~21172:3|1:1b3|1:2~212e~21152:3~200b4:3~20021:1b~200b1:1b3~2175Famine:fff~1125Famine:fff~11171:2|1:6|1:e3~11081:e3~111f1:6|1:2~2108Famine:fff~21051:7~21231:1b3~21241:1bc~20151:2|1:3|1:4|1:7|1:14b~100116:fff~100b1:e3~11151:2~11171:2~11191:2~100b1:36~11171:3|1:1b3|2:2|1:b6~11152:36~100b1:36~11171:3|1:1b3|2:2|1:36|1:b6~100b1:36~11171:3|1:1b3|2:2|1:b6~11151:6|1:36~100b1:36~11171:6|1:3|1:1b3|2:2|1:b6~11151:21|1:1bc~100b1:21~11151:b6|1:14b~100b1:14b~11171:21~11191:21~21171:21~100b1:21~11151:3|1:4~100b1:b6~110b1:3~11091:3~11071:3~100b1:b6~110b1:3~11091:3~11071:3~100b1:4~10021:8~100b1:1b3~1175Delusion:fff~2125Delusion:fff~2175Deluded:fff~1108Delusion:fff~11051:7~11231:1b3~11241:1bc~100b1:1bc~11072:2~11231:1bc~11241:1b3~102e~10152:2|1:21|1:36|1:b6~200116:fff~200b1:14b~21171:21~21191:21~11171:36~214d1:fff~200b1:21~21152:36~2023Deluded:fff~200b1:3|1:4~20021:4~20151:2|1:5|1:6|1:21|1:e3~100117:fff~100b1:36~11172:2|1:21|1:b6~100b1:21~11151:36|1:1bc~100b1:36~11172:2|1:1bc|1:b6~11151:6|1:36~100b1:36~11171:6|2:2|1:1bc|1:b6~11151:2|1:36~100b1:36~11171:6|3:2|1:1bc|1:b6~11151:b6|1:14b~100b1:14b~11171:4~11191:4~21171:3~114d1:fff~100b1:4|1:b6~110b1:b6~11091:b6~11071:b6~10021:7~100b1:1bc~11072:2~11231:1bc~11241:1b3~10151:6|1:8|2:e3|1:1b3~200117:fff	00210~00614~00708~00808~00360~00440~00530~03610~02110~19810~01b10~14b10~0b610~1b310~0e310~05310~0ec10~18301~18401~18501~18601~18701~18801~18901~18a01~18b01~18c01~18d01~18e01~19202~19102~18f02~19002~1bc10	\N	ceviri~dereeder
11391788	000011391788/unrated:fff~10277:3|3:6~20277:3|3:6~102e~10153:3|2:6~202e~20154:3|1:6~10011:fff~100b3:3~10021:112~10154:3|1:6~20011:fff~200b4:3~20021:127~20153:3|2:6~10012:fff~100b4:3~10021:127~102e~10153:3|2:6~20012:fff~200b2:3~20021:112~202e~20151:3|2:6|1:112|1:127~10013:fff~100b3:3~10021:112~10153:3|1:6|1:127~20013:fff~200b1:127~211b1:127|Tavern mat:fff~200b1:112~200b1:3~20021:112~20231:112~20241:120~20154:3|1:6~10014:fff~100b1:127~111b1:127|Tavern mat:fff~100b3:3~10021:4~102e~10153:3|1:6|1:112~20014:fff~2048~201c1:127~20071:6~20051:112~200b1:112~200b4:3~20021:106~20231:112~20241:120~202e~20153:3|1:106|1:120~10015:fff~1048~101c1:127~10071:6~10051:4~100b1:112~100b1:4|3:3~102a1:f1~11052:127~10051:f1~10231:112~10241:120~10153:3|2:6~20015:fff~200b1:120~11081:6~200b3:3~20021:106~20231:120~20241:102~20152:3|1:112|1:120|1:127~10016:fff~100b3:3~10021:4~102e~10153:3|1:4|1:112~20016:fff~200b1:127~211b1:127|Tavern mat:fff~200b1:120~11081:3~200b2:3~20021:127~20231:120~20241:102~202e~20152:3|2:6|1:127~10017:fff~100b1:112~100b1:4|2:3~10021:106~10231:112~10241:120~10151:3|1:4|1:6|1:f1|1:127~20017:fff~2048~201c1:127~20071:6~20051:4~200b1:127~211b1:127|Tavern mat:fff~200b1:4|2:3~20021:127~20153:3|2:106~10018:fff~100b1:127~111b1:127|Tavern mat:fff~100b1:f1~11071:3~100b1:4~10021:112~10151:3|1:4|1:120|2:127~20018:fff~2048~200b1:106~20152:3|2:102|1:112~10019:fff~1048~100b1:127~111b1:127|Tavern mat:fff~100b1:127~111b1:127|Tavern mat:fff~100b1:120~21081:3~100b1:4|1:3~10021:106~10231:120~10241:102~102e~10153:3|1:4|1:6~20019:fff~2048~212e~21103:3~200b1:102~21151:3|1:106~21081:3~200b1:102~21151:4|1:6~21081:112~200b1:106~200b1:4|3:3~20021:106~20231:102~20241:fc~20231:102~20241:fc~202e~20153:3|2:127~100110:fff~1048~101c1:127~10071:6~10051:4~101c1:127~10071:4~10051:127~101c1:127~10071:127~10051:106~100b1:106~100b1:4|3:3~10021:106~10152:3|1:6|1:112|1:120~200110:fff~2048~21102:3|1:6~201c1:127~20071:127~20051:106~200b1:127~211b1:127|Tavern mat:fff~200b1:106~200b5:3~202a1:106~210c1:6~20051:106~20151:4|1:6|2:fc|1:112~100111:fff~1048~11101:3|1:f1|1:106~100b1:120~21081:6~100b3:3~102a1:106~110c1:6|1:f1|1:106|1:112~10051:106~10231:120~10241:102~10151:4|1:6|1:f1|1:106|1:112~200111:fff~2048~21101:3|2:106~201c1:127~20071:4~20051:127~200b1:fc~210b1:fc~220b1:127~231b1:127|Tavern mat:fff~22091:127~22051:127~21091:fc~220b1:106~22091:106~200b1:106~200b1:112~200b1:3~20021:112~20231:fc~20241:123~20231:112~20241:120~202e~20155:3~100112:fff~100b1:106~102e~10151:3|1:4|2:102|1:106~200112:fff~2048~21102:3|1:6|2:106|1:112|1:120|1:123|1:127~201c1:127~20071:6~20051:4~200b1:127~211b1:127|Tavern mat:fff~200b1:123~211b1:123|Tavern mat:fff~200b1:4|7:3~202a1:89~210c2:106|1:112|1:120~20051:89~20153:106|1:112|1:120~100113:fff~1048~11101:3|1:4|1:6~100b1:102~11151:3|1:106~11081:106~100b1:102~11151:3|1:127~11081:6~100b1:127~111b1:127|Tavern mat:fff~100b1:106~100b2:4|4:3~10021:8~10231:102~10241:fc~10231:102~10241:fc~10151:3|1:4|1:f1|1:112|1:127~200113:fff~2048~201c1:123~204c+Action token/the Haunted Woods pile:fff~200b1:106~217cc gets +1 Action (from Teacher):fff~200b1:106~217cc gets +1 Action (from Teacher):fff~200b1:106~217cc gets +1 Action (from Teacher):fff~200b1:120~11081:f1~202a1:7c~210c1:112~20051:7c~202e~20151:fc|1:112|1:123|2:127~100114:fff~1048~11101:3|1:106|1:127~101c1:127~10071:112~10051:4~100b1:127~111b1:127|Tavern mat:fff~100b1:127~111b1:127|Tavern mat:fff~100b1:106~100b2:4|2:3~10021:127~102e~10152:4|1:6|1:fc|1:106~200114:fff~2048~21104:3|1:89|2:106|1:120|1:127~201c1:127~20071:123~20051:5~200b1:fc~210b1:106~227cc gets +1 Action (from Teacher):fff~21091:106~227cc gets +1 Action (from Teacher):fff~200b1:106~217cc gets +1 Action (from Teacher):fff~200b1:127~211b1:127|Tavern mat:fff~200b1:127~211b1:127|Tavern mat:fff~200b1:127~211b1:127|Tavern mat:fff~200b1:112~200b1:120~11081:4~200b1:89|4:3|1:5~21051:8~21071:89~20021:7|1:8~20153:3|1:4|1:7c~100115:fff~1048~11101:3|1:fc|1:127~101c1:127~10071:6~10051:4~101c1:127~10071:127~10051:42~100b1:fc~110b1:fc~120b1:106~12091:106~11091:fc~120b1:42~13051:4~12091:42~13051:4~12051:42~100b4:4|1:3~10021:8~10231:fc~10241:123~10151:3|1:4|1:8|2:106~200115:fff~2048~212e~21103:3|2:8|2:106|1:112|1:120~201c1:127~20071:120~20051:f1~201c1:127~20071:f1~20051:f1~201c1:127~20071:f1~20051:f1~200b1:112~200b1:7c|1:4|6:3~21171:3|1:7|1:106|1:127~21081:7|1:106|1:127~210b1:3~202a1:f1~210c2:8|1:f1|2:106~21052:f1~20051:f1~202a1:f1~21052:f1~20051:f1	00210~00614~00708~00808~00360~00440~00530~08910~04210~12710~0df10~0f110~19810~04010~07c10~10610~11210~14001~16c01~12005~10205~0fc05~12305	\N	Bridge 4~ceviri
11382099	000011382099/unrated:fff~10276:3|3:6|1:1b9~20276:3|3:6|1:1b9~102e~10154:3|1:6~202e~20152:3|2:6|1:1b9~10011:fff~100b4:3~10021:19f~10152:3|2:6|1:1b9~20011:fff~200b2:3|1:1b9~20021:134~20154:3|1:6~10012:fff~100b2:3|1:1b9~10021:55~102e~10154:3|1:55~20012:fff~200b4:3~20021:5f~202e~20152:3|1:6|1:5f|1:1b9~10013:fff~100b1:55~11151:3|1:6|1:19f~11082:fff|1:3~100b1:19f~11071:6~11051:1bf~102e~10151:3|2:6|1:55|1:1b9~20013:fff~200b2:3|1:5f|1:1b9~20021:5a~20153:3|1:6|1:134~10014:fff~100b1:55~11152:3|1:1bf~11082:fff|1:3~100b1:1bf~11151:19f~11171:3~11191:3~100b2:3|1:1b9~10021:1ad~100b1:19f~11071:6~11051:1bf~102e~10153:3|2:1bf~20014:fff~200b1:134~21171:6~21071:134~200b3:3~20021:5~202e~20153:3|1:6|1:5a~10015:fff~100b1:1bf~11151:19f~11171:3~11191:3~100b1:1bf~11151:1b9~11171:3~11191:3~100b1:1b9|3:3~10021:5f~100b1:19f~11071:3~102e~10152:3|1:6|1:55|1:1ad~20015:fff~200b1:5a~21151:5f~11051:2~200b3:3|1:5f~20021:5a~20151:3|1:5|2:6|1:1b9~10016:fff~100b1:1ad~11151:3~100b1:55~11151:3|2:1bf~11082:fff|1:3~100b1:1bf~11151:19f~11171:5f~110c1:5f~100b1:1bf~11151:5f~11171:3~11191:3~100b1:19f~11071:6~11051:1bf~102e~10151:3|1:19f|1:1ad|1:1b9|1:1bf~20016:fff~200b1:5|1:1b9~20021:19f~202e~20152:3|1:5|1:134|1:1b9~10017:fff~100b1:1bf~11151:3~11171:2~11191:2~100b1:1ad~11151:3~100b3:3|1:1b9~10021:19f~100b1:19f~11071:2~10152:3|1:55|2:1bf~20017:fff~200b1:134~21171:5~21071:134~200b1:5|1:1b9|2:3~20021:8~20151:3|2:6|1:5f|1:19f~10018:fff~100b1:1bf~11151:5f~112e~11171:3~11191:3~100b1:1bf~11151:1bf~11171:1b9~11191:1b9~100b1:55~11152:3|1:19f~11082:fff|1:3~100b1:1bf~11151:1ad~11171:19f~110c1:19f~100b1:1ad~11151:19f~100b1:5f|2:3|1:1b9~10021:5a~100b1:19f~11071:19f~11051:1be~102e~10152:3|1:55|1:5f|1:1bf~20018:fff~200b1:19f~21071:6~21051:1bf~20152:3|1:6|2:5a~10019:fff~100b1:1bf~11151:3~11171:1b9~11191:1b9~100b1:55~11151:3|1:5a|1:1bf~11082:fff|1:3~100b1:5a~11151:19f~21051:2~100b1:1bf~11151:1ad~11171:3~11191:3~100b1:1ad~11151:1be~100b1:1be~112e~11151:3|1:1bf~100b1:3|1:5f|1:1b9~11071:1b9~11053:1c0~100b1:3~10021:5a~100b1:19f~11071:3~102e~10152:3|1:55|1:5a|1:1bf~20019:fff~200b1:5a~21151:3~11051:2~200b1:5a~212e~21151:5f~11051:2~200b3:3|1:5f~20021:5a~20151:3|1:5|1:6|1:134|1:1b9~100110:fff~100b1:1bf~11151:1bf~11171:1c0~11191:1c0~100b1:1bf~11151:5a~11171:19f~110c1:19f~100b1:5a~11151:19f~21051:2~100b1:5a~11151:3~21051:2~100b1:55~11151:1ad|1:1be|1:1c0~11082:fff|1:3~100b1:1be~11151:5f|1:1bf~110b1:1ad~12151:3~100b1:1bf~11151:1c0~112e~11171:2~11191:2~100b1:1c0~11211:1c0|the Wish pile:fff~11051:55~100b1:55~11151:2|2:3~11082:fff|1:3~100b1:1c0~11211:1c0|the Wish pile:fff~11051:134~100b1:134~11171:19f~11071:134~100b1:5f|1:3~10021:5b~100b1:19f~11071:2~102e~10151:2|2:3|1:55|1:1ad~200110:fff~200b1:134~21171:5~200b1:5|1:1b9|1:3~202a1:135~216a8:fff~20051:135~21051:5~20152:3|1:8|1:19f|1:1bf~100111:fff~100b1:1ad~11151:1be~100b1:1be~11151:134|1:19f~110b1:55~12151:55|1:5a|1:5f~12082:fff|1:3~100b1:5a~11151:1bf~21051:2~100b1:1bf~11151:5b~11171:3~11191:3~100b1:55~11151:3|1:5a|1:1c0~11082:fff|1:3~100b1:5a~11151:1bf~21051:2~100b1:5b~11171:1bf~112e~11171:1c0~110b1:1bf~12151:3~12171:134~120c1:134~110b1:1c0~12211:1c0|the Wish pile:fff~12051:1ac~100b1:1bf~11151:134~11171:2~11191:2~100b1:134~11171:1ac~100b1:1ac~11750:178~11250:178~100b1:5f|2:3~102a1:135~116a8:fff~10051:135~11051:5~106c1/7:fff~100b1:19f~11071:2~10080:178~102e~10153:3|1:55|1:1ac~200111:fff~200b1:1bf~21151:2~212e~21171:2~21191:2~200b2:3~206c2/6:fff~200b1:19f~21071:2~20151:2|1:3|1:5|1:5f|1:134~100112:fff~100b1:55~11151:5b|1:135|1:1bf~11082:fff|1:3~100b1:5b~11171:3|1:5|1:134|1:1bf~11081:3|1:5~110b1:1bf~12151:1bf~12171:5a~120c1:5a~110b1:134~12171:1ac~100b1:1bf~11151:5a~11171:5f~110c1:5f~100b1:5a~11151:5f~21051:2~100b1:1bf~11151:1be~11171:5a~110c1:5a~100b1:1be~11151:55|1:5a~110b1:1ac~12750:176~12250:176~100b1:5a~11151:1ad~21051:2~100b1:1ad~11151:19f	00210~00614~00708~00808~00360~00440~00530~05f16~05a10~05b10~1ac10~19f10~13505~13405~0a010~0c410~1ad10~13e01~13d01~13c01~13b01~13a01~13901~13801~13701~05510~11f01~17501~17601~17701~17801~17901~17a01~17b01~17c01~17d01~17e01~17f01~18001~1bf12~1bd06~1be13~1c012~1b902	\N	ceviri~winlew
11842573	000011842573/unrated:fff~10277:3|3:6~20277:3|3:6~102e~10154:3|1:6~202e~20154:3|1:6~10011:fff~100b4:3~10021:1d~10153:3|2:6~20011:fff~200b4:3~20021:1d~20153:3|2:6~10012:fff~100b3:3~10021:4~102e~10153:3|1:4|1:6~20012:fff~200b3:3~20021:4~202e~20154:3|1:6~10013:fff~100b1:4|3:3~10021:32~10152:3|2:6|1:1d~20013:fff~200b4:3~20021:4~20153:3|1:4|1:1d~10014:fff~100b1:1d~112e~11152:3|1:6~100b3:3~10021:4~10153:3|1:4|1:32~20014:fff~200b1:1d~212e~21151:3|2:6~200b1:4|4:3~20021:1ab~20153:3|1:4|1:6~10015:fff~100b1:32~112e~11152:3|1:4~11171:3|3:6~11193:6~110c1:3~100b2:4|5:3~10021:1ab~102e~10154:3|1:1d~20015:fff~200b1:4|3:3~20021:32~202e~20152:3|1:4|1:6|1:1ab~10016:fff~100b1:1d~11151:3|1:6|1:32~100b5:3~10021:32~10151:3|2:4|1:6|1:1ab~20016:fff~200b1:4|2:3~20021:4~200b1:1ab~11081:3~20152:3|1:4|2:6~10017:fff~100b2:4~10021:4~100b1:1ab~21081:4~102e~10153:3|1:6|1:1d~20017:fff~2048~217cc gets +3 Coins (Raider).:fff~200b2:3~20021:32~20153:3|1:1d|1:32~10018:fff~1048~117cL gets +3 Coins (Raider).:fff~100b1:1d~11151:3|1:6|1:32~100b3:3~10021:1ab~10152:3|3:4~20018:fff~200b1:32~212e~21152:3|1:1ab~21172:4|1:6|1:32~21191:6~210c2:4|1:32~200b1:1ab~11173:4|2:3~20153:4|1:6|1:32~10019:fff~100b3:4|2:3~10021:8~102e~10151:3|1:6|1:32|2:1ab~20019:fff~2048~217cc gets +3 Coins (Raider).:fff~200b1:32~21152:3|1:6~212e~21172:3|1:6|1:32~21191:6~210c2:3|1:32~200b3:4|2:3~202a1:11e~21174:3|1:32~21083:3~210c1:3|1:32~20021:8~202e~20153:3|1:1d|1:32~100110:fff~100b1:32~11151:3|2:4~11173:3|1:6~11191:6~110c3:3~100b2:4|2:3~10021:1ab~100b1:1ab~21081:3~100b1:1ab~10154:3|1:32~200110:fff~200b1:32~21151:4|1:6|1:32~21171:3|2:4|1:1ab~210c1:3|2:4|1:1ab~20151:3|2:4|1:6|1:1ab~100111:fff~1048~117cL gets +3 Coins (Raider).:fff~117cL gets +3 Coins (Raider).:fff~100b1:32~11151:3|1:8|1:1d~112e~11171:3|1:4|1:6|1:32~11191:6~110c1:3|1:4|1:32~100b5:3~102a1:11e~11171:3|1:4|1:6|1:32|1:1ab~11082:fff|1:6~110c1:4|1:32~10021:8~10151:3|2:4|1:6|1:32~200111:fff~200b2:4~202a1:11e~21173:3|1:6|1:8~21082:3|1:6~210c1:3|1:8~202a1:11e~212e~21173:3|1:8|1:1d~21082:3|1:8~210c1:3|1:1d~200b1:1ab~11081:4~20151:3|1:4|1:1d|2:32~100112:fff~100b1:32~112e~11151:3|1:4|1:1ab~11172:3|1:4|1:1ab~110c2:3|1:4|1:1ab~100b2:4~102a1:11e~11173:3|1:4|1:1ab~11082:fff|1:3~110c1:4|1:1ab~100b1:1ab~21081:32~10151:3|1:4|1:1d|2:1ab~200112:fff~2048~217cc gets +3 Coins (Raider).:fff~200b1:32~21152:3|1:6~212e~21172:3|1:6|1:8~21191:6|1:8~210c2:3~200b1:4|3:3~20021:8~20153:3|1:6|1:32~100113:fff~1048~117cL gets +3 Coins (Raider).:fff~100b1:1d~11152:8|1:32~100b1:4~10021:7~100b1:1ab~21171:32|1:6|3:3~100b1:1ab~21171:32|1:6|3:3~102e~10151:3|1:4|2:6|1:1ab~200113:fff~200b1:32~21151:3|2:4~212e~21171:3|1:4|1:6|1:1ab~21191:6~210c1:3|1:4|1:1ab~200b2:4|4:3~20021:8~20152:3|1:4|1:8|1:1ab~100114:fff~1048~117cL gets +3 Coins (Raider).:fff~117cL gets +3 Coins (Raider).:fff~100b1:4~10021:8~100b1:1ab~21081:4~10153:3|1:4|1:8~200114:fff~200b2:3~20021:6~200b1:1ab~11081:3~20151:3|1:6|1:8|1:1d|1:32~100115:fff~1048~117cL gets +3 Coins (Raider).:fff~100b1:4|2:3~102a1:11e~11172:3|1:4|1:1d|1:32~11082:fff|1:3~110c1:4|1:32~10021:7~10151:4|1:7|1:8|2:32~200115:fff~2048~217cc gets +3 Coins (Raider).:fff~200b1:32~212e~21153:3~21171:3|1:4|1:6|1:8~21191:6|1:8~210c1:3|1:4~200b4:3~202a1:11e~21172:3|2:4|1:6~21082:3|1:6~210c2:4~20021:7~20151:3|2:4|1:6|1:32~100116:fff~100b1:32~112e~11152:3|1:6~11171:6|1:1d|2:1ab~11191:6~110c1:1d|2:1ab~100b1:4|2:3~10021:10~10151:4|1:6|1:1d|2:1ab~200116:fff~200b1:32~212e~21151:3|1:4|1:8~21171:3|2:8|1:1d~21192:8~210c1:3|1:1d~200b3:4|2:3~20021:8~20153:3|1:1d|1:1ab~100117:fff~100b1:1d~11151:3|1:8|1:1ab~100b1:4~10021:6~100b1:1ab~21081:1ab~100b1:1ab~100b1:1ab~10153:3|1:7|1:8~200117:fff~200b1:1d~21152:6|1:7~200b3:3~20021:6~202e~20152:3|1:6|1:8|1:32~100118:fff~1048~117cL gets +3 Coins (Raider).:fff~117cL gets +3 Coins (Raider).:fff~117cL gets +3 Coins (Raider).:fff~100b3:3~102a1:11e~112e~11171:3|3:4|1:7~11082:fff|1:4~110c2:4	00210~00614~00708~00808~00360~00440~00530~08510~10c10~01410~01008~03210~01d10~11710~1ab10~12810~15710~11e01~16e01	\N	ceviri~WalrusRunner
11392598	000011392598/unrated:fff~10277:3|3:6~20277:3|3:6~102e~10152:3|3:6~202e~20153:3|2:6~10011:fff~100b2:3~10021:1a0~10155:3~20011:fff~200b3:3~20021:19f~20154:3|1:6~10012:fff~100b5:3~10021:af~102e~10154:3|1:6~20012:fff~200b4:3~20021:19f~202e~20153:3|2:6~10013:fff~100b4:3~10021:4~10152:3|2:6|1:1a0~20013:fff~200b3:3~20021:103~20152:3|1:6|2:19f~10014:fff~102e~10153:3|1:4|1:af~20014:fff~200b1:19f~21071:6~21051:1bf~200b1:19f~21071:3~202e~20152:3|1:6|1:19f|1:1bf~10015:fff~100b1:af~11071:3~11051:e6~100b2:3|1:4~10021:50~10152:3|2:6|1:1a0~20015:fff~200b1:1bf~21151:6~21171:3~21191:3~200b3:3~20021:4~200b1:19f~21071:6~21051:1bf~20153:3|1:103|1:19f~10016:fff~100b1:1a0~11151:3|1:6~100b3:3~10021:15~102e~10151:3|1:4|2:6|1:af~20016:fff~200b1:103~212e~21151:3|1:1bf~216d2:1|Gear:fff~200b3:3~20021:15~20151:3|1:4|1:6|1:19f|1:1bf~10017:fff~100b1:af~11071:6~11051:e6~100b1:3|1:4~10021:15~10152:3|1:6|1:e6|1:1a0~20017:fff~2048~213e1:19f|1:1bf~200b1:1bf~21151:3~212e~21171:3~21191:3~200b1:1bf~21151:3~21171:3~21191:3~200b4:3|1:4~20021:af~200b1:19f~21071:6~21051:1bf~200b1:19f~21071:3~202e~20151:3|1:4|1:15|1:103|1:1bf~10018:fff~100b1:e6~11151:3~100b1:1a0~11151:3|1:15~100b4:3~10021:e6~102e~10152:3|1:15|1:50|1:af~20018:fff~200b1:1bf~21151:19f~21171:1bf~21191:1bf~200b1:1bf~21151:3~21171:3~21191:3~200b1:15~21151:3~200b1:103~21151:19f|1:1bf~216d2:1|Gear:fff~200b2:3|1:4~20021:11c~200b1:19f~21071:3~202e~20151:3|1:af|1:19f|2:1bf~10019:fff~100b1:15~11151:4~100b1:af~11071:50~11051:11c~100b2:3|1:4~10021:11c~10151:3|1:6|2:e6|1:1a0~20019:fff~2048~213e1:19f|1:1bf~200b1:1bf~21151:3~21171:11c~210c1:11c~200b1:1bf~21151:11c~21171:3~21191:3~200b1:11c~211b1:11c|Tavern mat:fff~200b1:1bf~21151:4~21171:3~21191:3~200b1:af~21071:3~21051:14~201c1:11c~20091:af~21071:3~21051:11c~200b2:3|1:4~202a1:113~215aJourney token:fff~200b1:19f~21071:19f~21051:1be~202e~20151:3|1:14|1:15|2:11c~100110:fff~100b1:e6~11151:3~100b1:e6~11151:6~100b1:1a0~11151:3|1:e6~100b3:3~10021:11c~102e~10153:3|1:15|1:11c~200110:fff~200b1:11c~211b1:11c|Tavern mat:fff~200b1:11c~211b1:11c|Tavern mat:fff~200b1:14~21151:1bf~200b1:1bf~21151:103~21171:1be~21191:1be~201c1:11c~20091:1bf~21151:af~21171:19f~210c1:19f~200b1:1be~21151:19f|1:1bf~210b1:15~22151:3~200b1:1bf~21151:4~21171:1bf~21191:1bf~200b1:af~21071:3~21051:11c~201c1:11c~20091:af~21071:3~21051:14~200b1:1bf~212e~21151:14~21171:11c~210c1:11c~200b1:14~21151:11c~200b1:11c~211b1:11c|Tavern mat:fff~200b1:4~20022:3|1:11c~200b1:19f~21071:103~21051:1be~202e~20151:4|1:14|1:af|1:11c|1:19f~100111:fff~100b1:11c~111b1:11c|Tavern mat:fff~100b1:15~11151:4~100b3:3|1:4~102a1:113~115aJourney token:fff~10151:3|1:6|1:e6|1:11c|1:1a0~200111:fff~200b1:11c~211b1:11c|Tavern mat:fff~200b1:14~21151:14~201c1:11c~20091:14~21151:1bf~211c1:11c~21091:14~22151:1bf~200b1:1bf~21151:1be~21171:11c~210c1:11c~200b1:1be~21152:11c~200b1:11c~211b1:11c|Tavern mat:fff~200b1:11c~211b1:11c|Tavern mat:fff~200b1:1bf~21151:1bf~21171:15~210c1:15~200b1:1bf~21151:15~21171:3~21191:3~200b1:15~21151:3~200b1:14~21151:1be~200b1:af~21071:3~21051:e6~201c1:11c~20091:af~21071:3~21051:11c~200b1:1be~212e~21151:e6|1:11c~210b1:e6~221c1:11c~22091:e6~200b1:11c~211b1:11c|Tavern mat:fff~200b1:4~202a1:113~215bJourney token:fff~21051:14|1:e6|1:11c~20021:11c~202e~20151:4|1:af|1:11c|2:1bf~100112:fff~100b1:11c~111b1:11c|Tavern mat:fff~100b1:e6~11151:e6~100b1:e6~11151:11c~101c1:11c~10091:e6~11151:e6~100b1:e6~11151:af~100b1:1a0~11151:6|1:15~101c1:11c~10091:1a0~11152:3~100b1:15~112e~11151:3~100b1:11c~111b1:11c|Tavern mat:fff~100b1:af~11071:6~11051:e6~101c1:11c~10091:af~11071:6~11051:14~100b4:3~10021:e6~102e~10152:3|1:4|1:15|1:e6~200112:fff~200b1:11c~211b1:11c|Tavern mat:fff~200b1:1bf~21151:e6~21171:11c~210c1:11c~201c1:11c~20091:1bf~21151:11c~21171:1be~21191:1be~200b1:11c~211b1:11c|Tavern mat:fff~200b1:1be~21151:11c|1:1be~210b1:e6~22151:11c~221c1:11c~22091:e6~23151:11c~231c1:11c~23091:e6~24151:14~200b1:11c~211b1:11c|Tavern mat:fff~200b1:11c~211b1:11c|Tavern mat:fff~200b1:11c~211b1:11c|Tavern mat:fff~200b1:1bf~21151:14~21171:1bf~21191:1bf~200b1:1bf~21151:15~21171:e6~210c1:e6~200b1:15~21151:e6~200b1:e6~21151:14~200b1:1be~21151:11c|1:19f~210b1:af~22071:19f~22051:e6~200b1:14~212e~21151:e6~200b1:11c~211b1:11c|Tavern mat:fff~200b1:e6~201c1:11c~20091:e6~211c1:11c~21091:e6~221c1:11c~22091:e6~231c1:11c~23091:e6~200b1:14~200b1:14~200b1:4~20021:14|2:15|1:1a0~202e~20151:4|1:11c|1:1be|2:1bf~100113:fff~100b1:15~11151:3~100b1:e6~11151:e6~100b1:e6~11151:11c~100b1:11c~111b1:11c|Tavern mat:fff~100b3:3|1:4~10021:14~10151:14|1:e6|2:11c|1:1a0~200113:fff~200b1:11c~211b1:11c|Tavern mat:fff~200b1:1be~21151:14|1:11c~210b1:11c~221b1:11c|Tavern mat:fff~200b1:1bf~21151:15~21171:e6~210c1:e6~200b1:1bf~21151:e6~21171:14~210c1:14~200b1:15~21151:14~200b1:e6~21151:11c~201c1:11c~20091:e6~21151:15~211c1:11c~21091:e6~22151:af~200b1:11c~211b1:11c|Tavern mat:fff~200b1:15~21151:11c~200b1:11c~211b1:11c|Tavern mat:fff~200b1:14~21151:1bf~201c1:11c~20091:14~21151:1a0~211c1:11c~21091:14~22151:11c~200b1:14~21151:14~200b1:14~21151:e6~200b1:11c~211b1:11c|Tavern mat:fff~200b1:1a0~21151:15|1:e6~200b1:15~21151:14~200b1:e6~21151:11c~201c1:11c~20091:e6~21151:11c~200b1:11c~211b1:11c|Tavern mat:fff~200b1:11c~211b1:11c|Tavern mat:fff~200b1:14~21151:1be~200b1:e6~201c1:11c~20091:e6~211c1:11c~21091:e6~200b1:4~202a1:113~215aJourney token:fff~20022:3|1:8|2:1a0~202e~20151:e6|1:1a0|2:1be|1:1bf~100114:fff~100b1:11c~111b1:11c|Tavern mat:fff~100b1:11c~111b1:11c|Tavern mat:fff~100b1:e6~11151:e6~100b1:e6~11151:3~100b1:14~11151:3~101c1:11c~10091:14~11151:af~100b1:1a0~11151:3|1:15~100b1:15~11151:e6~100b1:e6~112e~11151:4~100b1:af~11071:3~11051:e6~101c1:11c~10091:af~11071:3~11051:e6~100b1:3|1:4~10021:8~10151:3|1:14|1:15|2:e6~200114:fff~200b1:1be~21151:e6|1:11c~210b1:11c~221b1:11c|Tavern mat:fff~200b1:1be~21152:3~210b1:e6~22151:1bf~221c1:11c~22091:e6~23151:4~200b1:e6~21151:14~200b1:1bf~21151:11c~21171:14~210c1:14~200b1:1bf~21151:14~21171:e6~210c1:e6~200b1:11c~211b1:11c|Tavern mat:fff	00210~00614~00708~00808~00360~00440~00530~01510~10310~1a010~01410~11c10~19f10~0d210~0e610~0af10~05010~11301~16001~1bd06~1be13~1bf12	\N	ILYA~ceviri
8808210	00008808210/unrated:fff~10277:3|1:c3|1:cc|1:cd~20277:3|1:c3|1:cc|1:cd~102e~10154:3|1:c3~202e~20155:1~10011:fff~100b3:3~10021:48~10153:3|1:cc|1:cd~20011:fff~200b5:3~20021:9e~21181:1~211f1:9e~20155:1~10012:fff~100b3:3~10021:48~102e~10153:3|1:48|1:c3~20012:fff~200b1:9e~212e~21152:1~21081:1|1:cc~200b3:3~20021:48~202e~20155:1~10013:fff~100b1:48~11183:3~11071:3~11081:3~110c1:3~100b3:3~10021:48~10152:3|1:48|1:cc|1:cd~20013:fff~200b1:48~21183:1~21071:c3~21081:cd~210c1:1~200b4:3~20021:5f~20155:1~10014:fff~100b1:48~112e~11181:3|1:48|1:c3~11071:c3~11081:3~110c1:48~100b2:3~10021:e0~10153:3|2:48~20014:fff~200b1:9e~212e~21152:1~21081:1|1:cc~200b4:3~20021:e0~20155:1~10015:fff~100b1:48~112e~11181:3|1:cd|1:e0~11071:cd~12151:3~11081:3~110c1:e0~100b1:48~11181:3|1:cc|1:e0~11071:e0~12051:11b~11081:cc~110c1:3~100b4:3~10021:5f~102e~10153:3|1:48|1:11b~20015:fff~200b1:48~212e~21183:1~21071:e0~22051:8b~21081:3~210c1:1~200b1:5f|3:3~20021:57~20155:1~10016:fff~100b1:48~11181:3|1:48|1:5f~11071:3~11081:5f~110c1:48~100b1:11b|3:3~214c-Card token/Draw Pile:fff~10021:8b~10152:3|2:48|1:cc~20016:fff~200b1:9e~22640:11b~224c-Card token/Token Limbo:fff~22151:1~21081:1|1:cc~200b2:3~20021:e0~202e~20155:1~10017:fff~100b1:48~112e~11182:3|1:48~11071:3~11081:48~110c1:3~100b1:48~11181:3|1:8b|1:11b~11071:3~11081:11b~110c1:8b~100b2:3~10021:e0~102e~10152:3|1:48|1:5f|1:8b~20017:fff~200b1:e0~200b1:8b~11081:3~11051:3~200b2:3~20021:8b~20155:1~10018:fff~100b1:48~11182:48|1:11b~11071:48~11081:48~110c1:11b~100b1:8b~21081:3~21051:3~100b1:5f|2:3~10021:57~102e~10151:3|1:5f|1:cc|1:e0|1:11b~20018:fff~200b1:9e~21152:1~21081:1|1:cc~200b1:5f|3:3~20021:57~202e~20155:1~10019:fff~100b1:e0~100b1:11b|1:5f|1:3~214c-Card token/Draw Pile:fff~10021:57~10153:3|1:48|1:57~20019:fff~200b1:48~21183:1~21071:3~21081:3~210c1:1~200b1:57~22640:11b~224c-Card token/Token Limbo:fff~22151:1~200b1:9e~21152:1~21081:1|1:3~200b1:5f|2:3~20021:e0~200c1:57~20155:1~100110:fff~100b1:48~112e~11181:48|1:57|1:8b~11071:48~11081:8b~110c1:57~100b1:57~11151:3|1:57~100b1:57~11151:5f|1:11b~100b1:11b|1:5f|4:3~214c-Card token/Draw Pile:fff~10021:57~100c2:57~102e~10151:3|2:57|1:cc|1:e0~200110:fff~200b1:57~22640:11b~224c-Card token/Token Limbo:fff~22151:1~200b1:8b~11081:8b~21051:8b~200b1:3~20021:a4~202e~20155:1~100111:fff~100b1:57~11151:3|1:11b~100b1:57~11151:3|1:57~100b1:57~11151:48|1:5f~100b1:48~112e~11181:3|1:8b~11071:3~11081:8b~100b1:cc~100b1:e0~100b1:11b|1:5f|3:3~214c-Card token/Draw Pile:fff~10021:57|1:a4~100c3:57~102e~10151:3|3:57|1:a4~200111:fff~200b1:57~22640:11b~224c-Card token/Token Limbo:fff~22151:1~200b1:8b~11081:3~11051:3~200b3:3~20021:9e~21181:1~211f1:9e~20155:1~100112:fff~100b1:57~11151:cc|1:e0~100b1:57~11151:3|1:48~100b1:57~11151:5f|1:11b~100b1:cc~100b1:48~112e~11181:3|1:57|1:8b~11071:3~11081:8b~110c1:57~100b1:a4~11171:3|1:57~110c1:3|1:57~21171:cd|1:e0~210c1:cd|1:e0~11151:3|1:57~100b1:57~112e~11151:8b~100b1:e0~100b1:11b|1:5f|3:3~214c-Card token/Draw Pile:fff~10021:57|1:e0~100c4:57~102e~10151:3|4:57~200112:fff~200b1:48~21183:1~21071:cd~23640:11b~234c-Card token/Token Limbo:fff~21081:cc~210c1:1~200b1:57~21152:1~200b1:9e~21152:1~21081:1|1:3~200b1:a4~21172:3~210c2:3~11171:8b|1:cc~11081:8b|1:cc~21152:1~200b1:9e~21152:1~21081:1|1:3~200b1:8b~11081:48~21051:48~200b1:e0~200b1:5f|1:3~20021:57~200c1:57~202e~20155:1~100113:fff~100b1:57~11151:3|1:e0~100b1:57~11151:3|1:11b~100b1:57~11151:57|1:5f~100b1:57~11151:a4|1:e0~100b1:57~112e~11151:48|1:8b~100b1:e0~100b1:8b~21081:48~21051:48~100b1:48~11181:cc~11071:cc~100b1:e0~100b1:11b|1:5f|3:3~214c-Card token/Draw Pile:fff~10021:3f|1:57|1:e0~100c5:57~10155:57~200113:fff~200b1:e0~200b1:a4~21171:3|1:48~21081:3|1:48~112e~11171:3|1:5f~11081:3|1:5f~22640:11b~224c-Card token/Token Limbo:fff~22151:1~200b1:57~21152:1~200b1:8b~11081:3f~21051:3f~200b1:5f~20021:57~200c1:57~20155:1~100114:fff~100b1:57~11151:3|1:e0~100b1:57~11151:3|1:8b~100b1:57~11151:48|1:a4~100b1:57~11152:e0~100b1:57~11151:57|1:11b~100b1:e0~100b1:8b~21081:8b~11051:8b~100b1:57~112e~11151:3f|1:8b~100b1:e0~100b1:8b~21081:3~21051:3~100b1:48~11181:3|1:5f~11071:3~11081:5f~100b1:3f~112e~11151:5f~100b1:e0~100b1:11b|1:5f|2:3~214c-Card token/Draw Pile:fff~10021:9e|1:11b~11181:11b|1:9e~111f1:9e~100c6:57~10155:57~200114:fff~200b1:57~22640:11b~224c-Card token/Token Limbo:fff~22151:1~200b1:57~21152:1~200b1:57~21152:1~200b1:9e~212e~21152:1~21081:1|1:3~200b1:48~21183:1~21071:48~21081:8b~210c1:1~200b1:9e~21152:1~21081:1|1:3~200b1:a4~21172:3~21082:3~11171:57|1:9e~11081:57|1:9e~21152:1~200b1:57~21152:1~200b1:8b~112e~11081:57~200b1:e0~200b1:8b~11081:11b~21051:11b~200b3:3~20021:8~202e~20155:1~100115:fff~1048~11111:e0~100b1:57~11151:3|1:8b~100b1:57~11151:48|1:9e~100b1:57~11151:8b|1:a4~100b1:57~11151:5f|1:e0~100b1:57~11151:3|1:e0~100b1:e0~100b1:8b~21081:57~100b1:9e~112e~11152:11b~11082:3~100b1:8b~21081:8~21051:2~100b1:48~112e~11182:3|1:57~11071:3~11081:3~110c1:57~100b1:e0~100b1:a4~112e~11171:3|1:57~110c1:3|1:57~21171:3|1:57~21081:3|1:57~11151:3|1:57~100b1:57~100b1:e0~100b1:11b|1:5f|1:3~214c-Card token/Draw Pile:fff~100b1:11b~10021:8|1:3f~100c6:57~10155:57~200115:fff~200b1:48~21183:1~21071:3~21081:3~210c1:1~200b1:3f~22640:11b~224c-Card token/Token Limbo:fff~200b1:e0~200b1:3~20021:e0~20155:1~100116:fff~100b1:57~112e~11151:57|1:e0~100b1:57~11151:8|1:48~100b1:57~11151:e0|1:11b~100b1:57~11152:8b~100b1:57~11151:3f|1:a4~100b1:3f~11151:11b~100b1:57~11151:3|1:5f~100b1:e0~100b1:a4~11171:3f|1:e0~11081:3f|1:e0~21171:8b|1:e0~21081:8b|1:e0~112e~11151:9e|1:e0~100b1:e0~100b1:8b~21081:57~100b1:9e~11151:3f~11081:3|1:8~100b1:8b~21081:3~21051:3~100b1:48~112e~11181:3|1:8~11071:3~11081:8~100b1:3f~112e~11151:8~100b1:e0~100b1:11b|1:5f~214c-Card token/Draw Pile:fff~100b1:11b~10021:8|1:a4~100c6:57~10155:57~200116:fff~2048~22640:11b~224c-Card token/Token Limbo:fff~200b1:57~21152:1~200b1:cc~200b1:a4~21171:8b|1:11b~21081:8b|1:11b~112e~11171:57|1:e0~11081:57|1:e0~21152:1~200b1:9e~212e~21152:1~21081:1|1:3~200b1:9e~21152:1~21081:1|1:3~200b1:e0~200b1:8b~11081:8~11051:2~200b1:48~21183:1~21071:3~21081:57~210c1:1~200b1:11b~114c-Card token/Draw Pile:fff~20021:11b~20155:1~100117:fff~1048~12640:11b~124c-Card token/Token Limbo:fff~11111:a4	00210~00608~00708~00808~00360~00440~00530~05f16~04810~08b10~0a410~11b10~0e010~06e10~03f10~09e10~03310~05710~11801~16f01~0cc02~0c302~0cd02	\N	Dan Brooks~Mercury444F
11533288	000011533288/unrated:fff~10277:3|3:6~20277:3|3:6~102e~10155:3~202e~20153:3|2:6~10011:fff~100b5:3~10021:b5~10152:3|3:6~20011:fff~200b3:3~20021:154~20154:3|1:6~10012:fff~100b2:3~10021:e0~102e~10153:3|1:6|1:e0~20012:fff~200b4:3~20021:8f~202e~20153:3|2:6~10013:fff~100b1:e0~11051:4~100b3:3~10021:2c~10153:3|2:6~20013:fff~200b3:3~20021:154~20152:3|1:6|1:8f|1:154~10014:fff~100b3:3~10021:154~102e~10152:3|1:6|1:b5|1:154~20014:fff~200b1:8f~21151:3~200b1:154~200b3:3~20021:8f~202e~20151:3|2:6|2:8f~10015:fff~100b1:154~117a0:154|Enchantress:fff~11151:6~100b1:b5~11051:3~11072:3|2:6~10154:3|1:2c~20015:fff~2048~210f2:3~200b1:8f~21151:3~200b1:8f~21151:3~200b5:3~20021:b5~202e~20152:3|1:6|2:154~10016:fff~100b1:2c~11051:8f~100b4:3~10021:8f~102e~10151:3|1:4|1:6|1:8f|1:e0~20016:fff~200b1:154~200b2:3~20021:e0~20152:3|2:6|1:8f~10017:fff~100b1:e0~117a0:e0|Enchantress:fff~11151:3~100b1:8f~11151:3~100b1:4|3:3~10021:5~10153:3|1:b5|1:154~20017:fff~2048~210f1:3|1:b5~200b1:8f~21151:3~200b1:b5~21051:3~21074:3|2:6~202e~20152:3|1:8f|1:e0|1:154~10018:fff~100b1:b5~110c1:154~11073:3~102e~10151:3|1:4|1:2c|1:8f|1:154~20018:fff~200b1:8f~21151:154~200b1:e0~200b1:154~200b1:154~200b2:3~20021:2c~20152:3|1:6|1:8f|1:b5~10019:fff~100b1:8f~117a0:8f|Enchantress:fff~11151:b5~100b1:2c~11051:8f~100b1:154~100b1:4|1:3~10021:154~10152:3|1:6|1:8f|1:e0~20019:fff~2048~212e~210f2:3|1:8f|1:e0~200b1:8f~217a0:8f|Enchantress:fff~21151:2c~200b1:e0~200b1:2c~21051:154~200b1:8f~212e~21151:154~200b1:154~200b1:b5~21051:3~21074:3|1:6~20021:e0~202e~20151:3|1:8f|1:b5|1:e0|1:154~100110:fff~1048~112e~110f1:5|1:8f~100b1:e0~117a0:e0|Enchantress:fff~11151:8f~100b1:8f~11151:2c~100b1:8f~11151:3~100b1:8f~11151:b5~100b1:2c~11051:8f~100b1:b5~110c1:5~11073:3|1:6~10021:154~102e~10151:4|1:5|2:8f|1:154~200110:fff~2048~210f1:2c|1:154~200b1:8f~21151:e0~200b1:e0~200b1:e0~200b1:b5~210c1:154~200b1:2c~21051:4~200b1:154~200b1:3~20021:8~202e~20151:8|2:8f|2:154~100111:fff~100b1:8f~117a0:8f|Enchantress:fff~11151:2c~100b1:8f~21171:8~100b1:2c~11051:e0~100b1:154~100b1:4|1:5~10021:4f~10151:8f|1:b5|1:e0|2:154~200111:fff~2048~210f1:3|1:b5~200b1:154~217a0:154|Enchantress:fff~21151:4~200b1:8f~21171:8~21081:8~21051:90~21151:90~200b1:90~21151:2c|1:e0~200b1:8f~21151:e0~200b1:e0~200b1:154~200b1:2c~21051:4f~200b1:b5~21081:3|1:e0~200b1:4~20021:8~202e~20151:8|2:8f|1:b5|1:e0~100112:fff~1048~112e~110f2:8f~100b1:8f~117a0:8f|Enchantress:fff~11151:e0~100b1:8f~21171:8~100b1:8f~21171:8~100b1:e0~100b1:e0~100b1:154~100b1:154~100b1:b5~10021:8f~10151:4|1:5|1:2c|1:4f|1:8f~200112:fff~2048~210f1:e0|1:154~200b1:154~217a0:154|Enchantress:fff~21151:8~200b1:8f~21171:8~21081:8~21051:84~21151:84~200b1:e0~200b1:84~21151:4|1:4f~21051:6~11051:2~11081:4|1:4f~200b1:8f~21151:3~200b1:e0~200b1:4f~21071:3~200b1:b5~210c1:8~200b1:4~20022:a6~202e~20151:8|1:2c|1:90|1:a6|1:154~100113:fff~1048~112e~110f1:2|1:8f|1:e0|1:154~100b1:8f~21171:8~100b1:8f~21171:8	00210~00614~00708~00808~00360~00440~00530~0e010~04f10~15410~08f10~0d710~02c10~0b510~02710~07810~0a610~16601~16f01~08001~08101~08401~08d01~09001	\N	Anders~Dan Brooks
11969148	000011969148/unrated:fff~10277:3|3:6~20277:3|3:6~102e~10152:3|3:6~202e~20155:3~10011:fff~10155:3~20011:fff~200b5:3~20021:a0~210c5:3~20155:3~10012:fff~100b5:3~10021:c6~102e~10154:3|1:6~20012:fff~200b5:3~20021:c6~20152:3|3:6~10013:fff~100b4:3~10021:35~10152:3|2:6|1:c6~20013:fff~202e~20152:3|2:6|1:a0~10014:fff~100b1:c6~11151:3~11071:6~100b3:3~10021:4~102e~10152:3|1:4|1:6|1:c6~20014:fff~200b1:a0~210c1:6~200b2:3~20021:c6~20153:3|2:6~10015:fff~100b1:c6~11151:3~11071:6~100b2:3|1:4~10021:c6~10154:3|1:6~20015:fff~200b3:3~20021:4~202e~20153:3|1:4|1:c6~10016:fff~100b4:3~10021:35~102e~10152:3|1:6|2:35~20016:fff~200b1:c6~21151:3~21071:3~200b3:3|1:4~20021:159~20152:3|1:6|1:a0|1:c6~10017:fff~100b1:35~11151:3|1:c6~110c1:6~100b1:c6~11151:6~11071:6~100b1:35~11152:3~110c1:3~100b4:3~10021:25~10153:3|1:4|1:c6~20017:fff~200b1:c6~21151:6~21071:6~200b1:a0~210c1:3~200b1:3~20021:159~202e~20153:3|1:6|1:c6~10018:fff~100b1:c6~112e~11151:25~11071:3~100b1:25~11171:3~11051:5~100b2:3|1:4~10021:159~10153:3|1:35|1:c6~20018:fff~200b1:c6~21151:4~21071:6~200b3:3|1:4~20021:159~20152:3|1:6|1:a0|1:159~10019:fff~100b1:35~11151:3|1:35~110c1:3~100b1:35~112e~11151:3|1:4~110c1:4~100b1:c6~11151:25~11071:3~100b1:25~11171:3~100b1:3~10021:159~10152:3|1:5|1:c6|1:159~20019:fff~200b1:a0~210c1:159~200b2:3~20021:159~202e~20152:3|1:c6|2:159~100110:fff~100b1:159~11151:4~100b1:c6~112e~11151:35~11071:3~100b1:35~11151:3|1:159~110c1:3~100b1:159~11151:3~100b2:3|1:5|1:4~10021:159~10152:3|1:25|1:35|1:c6~200110:fff~200b1:159~21151:159~200b1:159~21151:3~200b1:159~21151:159~200b1:159~21151:3~200b1:c6~21151:6~21071:6~200b4:3~20021:159~20152:3|1:4|1:a0|1:c6~100111:fff~100b1:35~112e~11151:5|1:c6~110c1:3~100b1:c6~11151:3~11071:3~100b1:c6~11151:159~11071:3~100b1:159~11151:35~100b1:35~11151:4|1:159~110c1:4~100b1:159~11151:3~100b1:25~11171:5~11051:5~100b1:3|1:5~102a1:11f~11051:35~114c+Buy token/the Secret Passage pile:fff~102e~10151:3|1:4|1:35|1:c6|1:159~200111:fff~200b1:c6~212e~21151:c6~21071:3~200b1:c6~21151:3~21071:3~200b1:3|1:4~20021:159~20151:3|4:159~100112:fff~100b1:35~117cL gets +1 Buy (from Seaway):fff~11151:3|1:35~110c1:3~100b1:35~117cL gets +1 Buy (from Seaway):fff~11151:25|1:159~110c1:159~100b1:159~11151:159~100b1:159~11151:c6~100b1:c6~11151:5~11071:c6~100b1:25~11171:5~11051:5~100b1:3|1:5|1:4~10021:6|1:159~114e2:fff~102e~10151:3|2:5|1:35|1:159~200112:fff~200b1:159~21151:159~200b1:159~21151:3~200b1:159~21151:3~200b1:159~212e~21151:a0~200b1:a0~210c1:159~200b3:3~202a1:11f~21051:35~214c+Buy token/the Secret Passage pile:fff~20151:3|1:4|2:c6|1:159~100113:fff~100b1:159~11151:35~100b1:35~117cL gets +1 Buy (from Seaway):fff~11151:3|1:159~110c1:3~100b1:159~11151:25~100b1:35~117cL gets +1 Buy (from Seaway):fff~11151:4|1:6~110c1:6~100b1:25~11171:5~11051:5~100b1:3|2:5|1:4~10021:8~114e2:fff~10151:5|1:35|1:c6|2:159~200113:fff~200b1:159~21151:159~200b1:159~212e~21151:3~200b1:c6~21151:159~21071:3~200b1:159~21151:3~200b1:c6~21151:159~21071:3~200b1:159~21151:35~200b1:35~217cc gets +1 Buy (from Seaway):fff~21151:3|1:a0~210c1:a0~200b2:3|1:4~20021:6|1:35~214e4:fff~202e~20151:4|1:a0|3:159~100114:fff~100b1:159~11151:3~100b1:159~11151:6~100b1:c6~112e~11151:3~11071:6~100b1:35~117cL gets +1 Buy (from Seaway):fff~11151:25|1:35~110c1:3~100b1:35~117cL gets +1 Buy (from Seaway):fff~11151:5|1:8~110c1:8~100b1:25~11171:5~100b1:3|2:5~10021:8~114e2:fff~10021:6~114e2:fff~10151:4|1:5|1:35|2:159~200114:fff~200b1:159~21151:c6~200b1:159~21151:35~200b1:159~21151:159~200b1:159~21151:159~200b1:159~21151:c6~200b1:35~217cc gets +1 Buy (from Seaway):fff~21152:3~210c1:a0~200b1:c6~21151:35~21071:3~200b1:35~217cc gets +1 Buy (from Seaway):fff~21151:6|1:159~210c1:6~200b1:159~21151:6~200b1:c6~21151:a0~21071:6~200b1:a0~210c1:3~200b1:4~20021:6~214e6:fff~20021:6~214e6:fff~20021:6~214e6:fff~202e~20151:3|1:4|1:35|1:c6|1:159~100115:fff~100b1:159~11151:5~100b1:159~11151:3~100b1:35~117cL gets +1 Buy (from Seaway):fff~112e~11151:8|1:159~110c1:8~100b1:159~11151:25~100b1:25~11171:5~100b1:3|2:5|1:4~10021:8~114e3:fff~10021:6~114e3:fff~10151:3|1:5|1:8|1:35|1:159~200115:fff~200b1:159~21151:6~200b1:c6~21151:159~21071:6~200b1:159~21151:6~200b1:35~217cc gets +1 Buy (from Seaway):fff~21151:6|1:159~210c1:6~200b1:159~21151:159~200b1:159~21151:c6~200b1:c6~21151:35~21071:6~200b1:35~217cc gets +1 Buy (from Seaway):fff~21151:a0|1:159~210c1:3~200b1:159~21151:159~200b1:159~21151:3~200b1:a0~210c1:3~200b1:4~20021:7~214e6:fff~20021:6~214e6:fff~20021:3~202e~20151:3|1:6|1:35|2:c6~100116:fff~100b1:159~11151:6~100b1:35~117cL gets +1 Buy (from Seaway):fff~11151:5|1:35~110c1:8~100b1:35~117cL gets +1 Buy (from Seaway):fff~11151:8|1:c6~110c1:8~100b1:c6~11151:8~11071:6~100b1:3|2:5~10021:8~114e1:fff~102e~10151:4|2:8|1:25|1:35~200116:fff~200b1:35~217cc gets +1 Buy (from Seaway):fff~21151:4|1:159~210c1:6~200b1:159~21151:159~200b1:159~21151:159~200b1:159~21151:159~200b1:159~21151:3~200b1:c6~21151:159~21071:3~200b1:159~21151:a0~200b1:a0~210c1:4~200b1:3~20021:7~214e5:fff~20151:4|1:6|1:7|1:35|1:159~100117:fff~100b1:35~117cL gets +1 Buy (from Seaway):fff~11152:8~110c1:8~100b1:25~11171:8~100b1:4~10021:7~10151:3|1:5|1:35|2:159~200117:fff~200b1:159~21151:6~200b1:35~217cc gets +1 Buy (from Seaway):fff~212e~21151:35|1:159~210c1:6~200b1:159~21151:159~200b1:159~21151:c6~200b1:35~217cc gets +1 Buy (from Seaway):fff~21151:3|1:159~210c1:7~200b1:159~21151:7~200b1:c6~21151:c6~21071:6~200b1:c6~21151:159~21071:3~200b1:159~21151:159~200b1:159~21151:a0~200b1:a0~210c1:4~20021:7~214e6:fff~20022:3~202e~20151:4|1:6|1:7|2:159~100118:fff~100b1:159~11151:c6~100b1:159~11151:159~100b1:159~11151:159~100b1:159~11151:5~100b1:35~117cL gets +1 Buy (from Seaway):fff~11151:6|1:35~110c1:35~100b1:c6~11151:3~11071:6~100b2:3|2:5~10021:8~114e4:fff~102e~10151:4|2:5|1:8|1:35~200118:fff~200b1:159~21151:3~200b1:159~21151:7~200b1:3|1:4~20021:4~20151:3|1:35|2:c6|1:159~100119:fff~100b1:35~117cL gets +1 Buy (from Seaway):fff~11152:8~110c1:8~100b2:5|1:4~10021:8~10151:3|1:25|1:c6|2:159~200119:fff~200b1:159~21151:a0~200b1:35~217cc gets +1 Buy (from Seaway):fff~21151:7|1:159~210c1:7~200b1:159~21151:159~200b1:159~21151:35~200b1:35~217cc gets +1 Buy (from Seaway):fff~21151:7|1:159~210c1:7~200b1:159~21151:7~200b1:c6~212e~21151:6~21071:c6~200b1:a0~210c1:6~200b1:3~20021:7~214e4:fff~20151:4|1:6|2:7|1:159~100120:fff~100b1:159~11151:7~100b1:159~11151:35~100b1:35~117cL gets +1 Buy (from Seaway):fff~11151:3|1:5~110c1:7~100b1:c6~11151:8~11071:3~100b1:25~11171:8~100b1:3|1:5~10021:8~114e2:fff~10151:5|1:8|1:35|2:159~200120:fff~200b1:159~21151:159~200b1:159~21151:4~200b2:4~202a1:170~216a3:fff~21051:5~214d1:fff~202e~20151:3|2:7|2:159~100121:fff~100b1:159~11151:8~100b1:159~11151:7~100b1:35~117cL gets +1 Buy (from Seaway):fff~112e~11152:8~110c1:5~10151:4|1:5|2:8|1:159~200121:fff~200b1:159~21151:35~200b1:159~21151:c6~200b1:35~217cc gets +1 Buy (from Seaway):fff~21151:4|1:5~210c1:7~200b1:c6~21151:6~21071:3~200b1:5|1:4~206b3:fff~20021:3|1:4~20151:3|1:7|1:35|2:159~100122:fff~100b1:159~11151:35~100b1:35~117cL gets +1 Buy (from Seaway):fff~11151:35|1:159~110c1:8~100b1:159~11151:8~100b1:35~117cL gets +1 Buy (from Seaway):fff~11151:5|1:c6~110c1:c6~100b2:5|1:4~10021:8~114e2:fff	00210~00614~00708~00808~00360~00440~00530~0a010~03510~07810~01d10~07010~02510~0c610~14110~15910~17110~11f01~17001	\N	Seprix~Lurker
11968728	000011968728/unrated:fff~10277:3|3:6~20277:3|3:6~102e~10154:3|1:6~202e~20154:3|1:6~10011:fff~100b4:3~102a1:f6~11072:3~10153:3|2:6~20011:fff~200b4:3~202a1:f6~21072:3~20153:3|2:6~10012:fff~100b3:3~10021:c8~102e~10153:3|1:6|1:c8~20012:fff~200b3:3~20021:c8~202e~20153:3|1:6|1:c8~10013:fff~100b3:3~102a1:f6~11072:3~122d1:c8~12081:c8~12051:5~102e~10153:3|2:6~20013:fff~200b3:3~202a1:f6~21072:3~222d1:c8~22081:c8~22051:5~202e~20152:3|1:5|2:6~10014:fff~100b3:3~10021:c8~102e~10152:3|1:5|1:6|1:c8~20014:fff~200b2:3|1:5~20021:31~202e~20151:3|2:6|1:31|1:c8~10015:fff~100b2:3|1:5~102a1:f6~11072:3~122d1:c8~12081:c8~12051:5~102e~10151:3|1:5|2:6|1:c8~20015:fff~200b1:31~200b1:3~202a1:f6~21071:3~222d1:c8~22081:c8~22051:5~202e~20152:3|1:5|2:6~10016:fff~100b1:c8~11151:5~100b2:5~10021:31~102e~10151:3|1:5|1:6|1:31|1:c8~20016:fff~200b2:3|1:5~20021:31~202e~20151:3|1:5|1:6|1:31|1:c8~10017:fff~100b1:31~11081:c8~11492/Arena:fff~100b1:5~10021:31~102e~10151:5|3:6|1:c8~20017:fff~200b1:c8~21151:31~200b1:31~200b1:31~21081:3|1:5|1:6~21151:3|1:5|2:6~11084:fff|1:c8~11151:3|1:5|1:31|1:c8~200b1:3|1:5~20021:31~202e~20151:5|1:6|2:31|1:c8~10018:fff~100b1:31~11081:c8~11492/Arena:fff~100b1:5~10021:31~102e~10151:6|3:31|1:c8~20018:fff~200b1:31~200b1:31~21081:5|1:6|1:c8~21151:3|2:6|1:31~11084:fff|1:31~11152:5|1:6|1:c8~200b1:31~21081:3|2:6~212e~21152:3|1:5|1:6~200b2:3|1:5~20021:31~202e~20151:5|2:6|1:31|1:c8~10019:fff~11081:c8~11492/Arena:fff~100b2:5~10021:31~102e~10151:3|1:5|2:6|1:31~20019:fff~200b1:c8~21151:31~200b1:31~200b1:31~21081:5|2:6~21151:3|1:5|1:6|1:31~11084:fff|1:3~11151:5|1:6|1:31|1:c8~200b1:31~21081:3|1:5|1:6~212e~21151:3|1:5|1:6|1:31~200b1:31~200b1:3|1:5~20021:31~202a1:f6~21071:3~202e~20151:3|1:5|2:6|1:31~100110:fff~100b1:31~11081:c8~11492/Arena:fff~100b1:5~10021:31~102e~10152:6|2:31|1:c8~200110:fff~200b1:31~21081:3|1:5|2:6~21153:31|1:c8~11084:fff|1:c8~11151:3|1:5|2:31~200b1:31~200b1:31~200b1:c8~21151:31~200b1:31~200b1:31~212e~21152:5|2:6~200b2:5~20021:8|1:f9~202e~20151:3|2:6|2:31~100111:fff~100b1:31~100b1:31~11081:3|1:5~11151:5|1:6|1:31|1:c8~21081:3|2:6|2:31~21151:6|1:31|1:c8|1:f9~100b1:c8~112e~11151:31~100b1:31~212d1:f9~210b1:f9~22151:31~100b1:31~11081:5|1:6~11151:3|1:6|1:31|1:c8~100b1:c8~11151:5~11081:31~11492/Arena:fff~100b1:3|1:5~10021:8~102e~10151:3|1:5|1:6|2:31~200111:fff~2048~217cc gets +1 Coin (Caravan Guard).:fff~200b1:31~200b1:31~21081:6|1:c8~21152:5|1:8|1:31~11084:fff|1:6~11151:5|1:6|1:31|1:c8~21081:31~21492/Arena:fff~200b2:5~20021:8~202e~20152:5|2:6|1:c8~100112:fff~100b1:c8~11151:c8~100b1:c8~11151:31~100b1:31~100b1:31~11081:5|1:6~112e~11152:6|1:8|1:31~21082:5|2:6|1:c8~21151:6|1:8|2:31~100b1:31~11082:fff|1:8~11152:5|1:6|1:31~100b1:31~100b2:5~10021:8~102e~10151:3|1:5|1:8|2:31~200112:fff~200b1:31~200b1:31~21081:6|1:8~21151:3|2:31|1:f9~11084:fff|1:31~11151:5|1:6|1:31|1:c8~200b1:31~200b1:f9~21151:31~200b1:31~200b1:31~200b1:3~20021:8~202e~20151:6|2:8|2:31~100113:fff~100b1:c8~11151:c8~100b1:c8~11151:31~100b1:31~100b1:31~11081:5|1:6~11152:6|1:8|1:31~21081:6|2:8|2:31~21152:5|1:6|1:31~100b1:31~11082:fff|1:6~112e~11151:5|2:8|1:31~100b1:31~11082:fff|1:8~11151:3|1:5|2:6~100b1:3|1:5~10021:7~102e~10151:3|1:6|1:7|1:31|1:c8~200113:fff~2048~217cc gets +1 Coin (Caravan Guard).:fff~200b1:31~200b2:5~20021:8~20151:3|1:6|2:31|1:c8~100114:fff~100b1:c8~11151:6~100b1:31~11083:fff|1:6~11151:5|1:6|1:8|1:31~21081:3|1:6|2:31|1:c8~212e~21151:6|1:8|2:31~100b1:31~11082:fff|1:5~11153:31|1:c8~100b1:c8~11151:5~100b1:31~100b1:31~100b1:31~100b1:5~10021:7|1:f9~102e~10151:3|1:7|1:8|2:31~200114:fff~200b1:31~200b1:31~21081:6|1:8~21151:3|1:5|1:8|1:f9~11084:fff|1:8~11151:5|1:6|1:8|1:c8~200b1:f9~21151:c8~200b1:c8~21151:8~200b1:3|1:5~20021:7~20151:5|2:6|1:8|1:31~100115:fff~100b1:c8~11151:31~100b1:31~100b1:5~10021:7~10151:5|2:6|1:7|1:c8~200115:fff~2048~217cc gets +1 Coin (Caravan Guard).:fff~200b1:31~200b1:5~20021:7~202e~20151:5|1:6|1:8|2:31~100116:fff~100b1:c8~11151:f9~100b1:f9~11151:31~100b1:31~100b1:5~10021:7~102e~10151:3|1:6|1:7|2:31~200116:fff~200b1:31~200b1:31~21081:5|1:6|1:8~21151:8|3:31~11084:fff|1:31~11151:5|2:8|1:31~200b1:31~200b1:31~200b1:31~20021:8~20151:7|2:8|1:c8|1:f9~100117:fff~1048~117cL gets +1 Coin (Caravan Guard).:fff~100b1:31~212d1:f9~210b1:f9~22151:6~11082:fff|1:5~11151:5|1:6|1:7|1:31~21081:6|1:7|2:8|1:c8~21151:3|1:5|1:6|1:7~100b1:31~100b1:5~10021:7~10151:6|2:7|1:31|1:c8~200117:fff~2048~217cc gets +1 Coin (Caravan Guard).:fff~200b1:3|1:5~20021:7~202e~20151:6|1:7|1:8|2:31~100118:fff~100b1:c8~11151:c8~100b1:c8~112e~11151:8~100b1:31~11083:fff|1:8~11151:5|1:6|2:7~21081:6|1:7|1:8|2:31~21152:6|1:7|1:8~100b1:5~10021:6~10151:3|1:5|2:31|1:f9~200118:fff~20021:3~20151:3|1:7|1:8|1:31|1:f9~100119:fff~100b1:f9~11151:7~100b1:31~212d1:f9~210b1:f9~22151:8~100b1:31	00210~00614~00708~00808~00360~00440~00530~0c810~14910~04a10~08710~0b310~03610~03110~0f910~0ce10~0ea10~0f601~14301~0de15	\N	Seprix~Trev
11968343	000011968343/unrated:fff~10277:3|3:6~20277:3|3:6~102e~10155:3~202e~20154:3|1:6~10011:fff~100b5:3~10021:f0~10152:3|3:6~20011:fff~200b3:3~20021:4~20153:3|2:6~10012:fff~102e~10152:3|2:6|1:f0~20012:fff~200b3:3~20021:7d~202e~20153:3|2:6~10013:fff~100b1:f0~11051:5~21051:2~21151:3~10154:3|1:6~20013:fff~200b3:3~20021:7d~20153:3|1:4|1:7d~10014:fff~100b4:3~10021:ea~102e~10153:3|2:6~20014:fff~200b1:4|3:3~20021:f0~212d1:7d~210c1:1~202e~20151:3|1:4|2:6|1:f0~10015:fff~100b3:3~10021:7d~10153:3|1:6|1:f0~20015:fff~200b1:f0~21051:5~11051:2~11151:5~200b1:4|1:3~20021:4~20153:3|1:6|1:7d~10016:fff~100b1:f0~11051:5~21051:2~222d1:7d~22071:2~21151:3~100b1:5|3:3~10021:2b~102e~10153:3|1:6|1:ea~20016:fff~200b1:7d~21151:7d~200b4:3~20021:4~212d1:7d~210c1:1~202e~20151:2|2:3|1:4|1:7d~10017:fff~100b1:ea~11151:3~11171:2~100b4:3~10021:1a7~10151:2|1:3|1:5|1:2b|1:7d~20017:fff~200b1:7d~21151:3|1:4~200b2:4|3:3~20021:6e~20153:3|1:4|1:6~10018:fff~100b1:2b~100b1:7d~11151:3|2:6~100b1:5|2:3~102a1:ea~11184:fff|1:1|1:ea|1:1a7~110c1:1~10051:ea~102e~10152:3|1:5|1:ea|1:f0~20018:fff~200b1:4|3:3~20021:d2~20151:3|1:5|1:6|1:7d|1:f0~10019:fff~100b1:ea~11151:2b~11171:3~100b1:2b~100b1:f0~11051:5~21051:2~222d1:7d~22071:2~21151:6~100b1:5|2:3~102a1:ea~11181:5~110c1:1~10051:ea~10151:3|1:5|2:6|1:ea~20019:fff~200b1:f0~21051:5~222d1:7d~220c1:1~11051:2~11151:6~200b1:5|1:3~20021:4~212d1:7d~210c1:1~202e~20153:4|1:5|1:6~100110:fff~100b1:ea~11151:3~11171:3~100b1:5|2:3~102a1:ea~11181:2|1:f0|2:3|1:2b|2:ea|1:5~110c1:1~10051:ea~10153:3|1:5|1:f0~200110:fff~200b3:4|1:5~20021:8~20152:3|1:6|1:7d|1:f0~100111:fff~100b1:f0~11051:5~21051:2~222d1:7d~22071:2~21151:3~100b1:5|3:3~102a1:ea~11181:2|4/2/4/3:fff|1:1|1:2b~110c1:1~11181:2|4/2/3/3:fff|1:1|1:2b~110c1:1~10051:ea~10151:2|1:7d|2:ea|1:1a7~200111:fff~200b1:f0~21051:5~222d1:7d~220c1:1~11051:2~122d1:7d~12071:2~112e~11151:3~200b3:3~20021:4~212d1:7d~210c1:1~20151:2|2:4|1:5|1:6e~100112:fff~100b1:ea~11151:5~11171:3~100b1:ea~11151:3~11171:ea~110b1:ea~12151:5~12171:6~100b1:1a7~110b1:1c2~12071:6~12051:1f~132d1:7d~130c1:1~100b2:5|2:3~10021:2b~112d1:7d~110c1:1~10151:2|1:3|1:6|1:1f|1:2b~200112:fff~200b2:4|1:5|1:6e~202a1:8~21051:5~20051:8~20151:3|1:5|1:6|1:7d|1:d2~100113:fff~100b1:2b~100b1:1f~11081:3~100b1:3~10021:1f~10151:3|2:5|1:6|1:ea~200113:fff~200b1:d2~216f0:8~21173:3~212e~21171:3|1:4|1:5|1:6|1:8|1:6e|1:7d~21084:3|1:4|1:5|1:8|1:6e|1:7d~21071:6~21051:7~200b1:7d~21151:3|1:4|1:6~200b1:4|1:5|2:3~20021:d2~20153:4|1:5|1:8~100114:fff~100b1:ea~11151:2b~11171:3~100b1:2b~11152:3|1:f0~100b2:5|3:3~102a1:ea~11182/4/3/3/2:fff|1:6|1:2b|1:1a7~110c1:1~11182/4/3/2/2:fff|1:6|1:2b|1:1a7~110c1:1~11182/4/3/2/2:fff|1:6|1:2b~110c1:1~11182/4/3/2:fff|1:6|1:2b|1:ea~110c1:1~11182/4/3/2:fff|1:6|1:2b~110c1:1~10051:ea~10151:2b|3:ea|1:1a7~200114:fff~200b3:4|1:5~20021:8~202e~20151:2|1:3|1:5|1:6|1:f0~100115:fff~100b1:ea~11151:ea~112e~11171:1f~110b1:1f~12081:2b~120b1:2b~13151:2|1:3|1:1f~100b1:ea~11151:7d~11171:5~100b1:ea~11151:5~11171:3~100b1:ea~11151:3~11171:3~100b1:2b~100b1:1a7~110b1:1c1~12071:1f~12151:3|1:6|1:ea~100b1:ea~11151:ea~11171:3~100b1:ea~11151:3~11171:3~100b1:7d~100b1:5|4:3~10021:14a~10151:2|2:3|2:5~200115:fff~200b1:f0~21051:5~11051:2~11151:5~200b1:5|1:3~20021:4~20152:4|1:5|1:8|1:d2~100116:fff~100b3:5|2:3~102a1:ea~11182/4/2/2/6:fff|1:14a|1:6|1:5|1:1a7~110c1:1~11182/4/2/2/5:fff|1:14a|1:6|1:5|1:1a7~110c1:1~11182/4/2/2/4:fff|1:14a|1:6|1:5|1:1a7~110c1:1~11182/4/2/2/3:fff|1:14a|1:6|1:5|1:1a7~110c1:1~11182/4/2/3:fff|1:14a|1:6|1:2b|1:5|1:1a7~110c1:1~11182/4/2/3:fff|1:14a|1:6|1:5|1:1a7~110c1:1~11182/4/2/2:fff|1:14a|1:6|1:5|1:1a7~110c1:1~10051:ea~10152:2b|3:ea~200116:fff~200b1:d2~216f0:6~21171:3|1:8|1:6e~21081:3|1:6e~21071:8~21051:8~200b1:4|1:5~20021:7~20151:3|2:4|1:5|1:6~100117:fff~100b1:ea~11151:ea~11171:ea~110b1:ea~12151:f0~12171:6~100b1:ea~11151:6~11171:3~100b1:2b~112e~11151:2|1:3|1:ea~100b1:ea~11151:6~11171:3~100b1:ea~11151:3~11171:5~100b1:ea~11151:5~11171:3~100b1:2b~11151:2|1:3|1:1f~100b1:5|3:3~102a1:126~114c+Coin token/the Herald pile:fff~10152:3|2:5|1:1a7~200117:fff~200b2:4|1:5|1:3~20021:8~20154:3|1:7d~100118:fff~100b1:1a7~110b1:1c2~12071:7d~12051:ea~100b2:5|2:3~102a1:ea~11182/3/2/2/7:fff|1:f0|1:1|1:5~110c1:1~11182/3/2/2/6:fff|1:f0|1:1|1:5~110c1:1~11182/3/2/2/5:fff|1:f0|1:1|1:5~110c1:1~11182/3/2/2/4:fff|1:f0|1:1|1:5~110c1:1~10051:ea~10151:5|4:ea~200118:fff~200b1:7d~21151:5|1:7~200b1:5|2:3~20021:7~202e~20151:4|1:6|1:8|1:7d|1:d2~100119:fff~100b1:ea~117cL gets +1 Coin (from Training):fff~11151:14a~11171:3~100b1:ea~117cL gets +1 Coin (from Training):fff~11151:3~11171:3~100b1:ea~117cL gets +1 Coin (from Training):fff~11151:3~11171:ea~110b1:ea~127cL gets +1 Coin (from Training):fff~12151:2~122e~12171:6~100b1:ea~117cL gets +1 Coin (from Training):fff~11151:6~11171:ea~110b1:ea~127cL gets +1 Coin (from Training):fff~12151:6~12171:2~100b1:14a|1:5|2:3~10021:2b|1:14a~10151:2|2:3|1:ea|1:f0~200119:fff~200b1:d2~216f0:6~21171:4|1:8|1:7d~21081:4|1:7d~21071:8~21051:8~200b1:7d~21151:5|1:6|1:7~200b1:4|1:5~20021:7~20153:4|1:7|1:6e~100120:fff~100b1:ea~117cL gets +1 Coin (from Training):fff~11151:5~11171:3~100b1:f0~11051:5~21051:2~21151:2~100b1:5|2:3~102a1:ea~11181:2|2:14a|2:3|2:6|1:2b|6:ea|2:5~110c1:1~11181:2|2:14a|2:3|2:6|1:2b|5:ea|2:5~110c1:1~10051:ea~10153:3|2:ea~200120:fff~200b3:4|1:6e~202a1:8~21051:5~20051:8~20151:4|1:5|1:8|1:d2|1:f0~100121:fff~100b1:ea~117cL gets +1 Coin (from Training):fff~11151:1f~11171:2b~110b1:2b~12151:2|1:5|1:ea~100b1:ea~117cL gets +1 Coin (from Training):fff~11151:2b~11171:ea~110b1:ea~127cL gets +1 Coin (from Training):fff~12151:5~12171:1a7~120b1:1a7~130b1:1c1~14071:1f~142e~14152:ea|1:14a~100b1:ea~117cL gets +1 Coin (from Training):fff~11151:5~11171:5~100b1:ea~117cL gets +1 Coin (from Training):fff~11151:5~11171:3~100b1:ea~117cL gets +1 Coin (from Training):fff~11151:3~11171:2b~110b1:2b~12151:6|1:ea|1:f0~100b1:ea~117cL gets +1 Coin (from Training):fff~11151:ea~11171:3~100b1:ea~117cL gets +1 Coin (from Training):fff~11151:3~11171:14a~100b1:2b~11151:3|1:5|1:14a~100b1:f0~11051:5~21051:2~21151:5~100b2:14a|5:5|6:3~10022:2b|1:14a~10152:2|1:3|2:ea~200121:fff~200b1:d2~216f0:8~21174:3|2:5|1:7|1:8~21084:3|2:5|1:8~21071:7~21051:8~200b1:f0~21051:5	00210~00614~00708~00808~00360~00440~00530~0ea10~1a710~0f010~02b08~0d210~01f10~06e10~1b010~07d10~14a10~12601~1c101~1c201~1c301~18301~18401~18501~18601~18701~18801~18901~18a01~18b01~18c01~18d01~18e01~19202~19102~18f02~19002~1be13	\N	Trev~Seprix
11972955	000011972955/unrated:fff~10277:3|3:6~20277:3|3:6~102e~10155:3~202e~20153:3|2:6~10011:fff~100b5:3~10021:121~10152:3|3:6~20011:fff~200b3:3~20021:112~20154:3|1:6~10012:fff~100b2:3~10021:112~102e~10152:3|2:6|1:121~20012:fff~200b4:3~20021:2c~202e~20152:3|2:6|1:2c~10013:fff~100b1:121~110b2:3~11152:3|1:112~100b1:112~100b2:3~102a1:f6~11072:3~10231:112~10241:120~102e~10154:3|1:6~20013:fff~200b1:2c~21051:27~200b2:3~20021:112~20153:3|1:6|1:112~10014:fff~100b4:3~10021:2c~10151:3|2:6|1:120|1:121~20014:fff~200b1:112~200b3:3~20021:ea~20231:112~20241:120~202e~20152:3|1:6|1:2c|1:ea~10015:fff~100b1:121~110b1:3~112e~11152:3~100b1:120~21081:6~100b2:3~102a1:f6~11072:3~10231:120~10241:102~102e~10152:3|2:6|1:2c~20015:fff~200b1:2c~21051:ea~200b1:ea~21151:6~21171:6~200b2:3~20021:112~20152:3|1:6|1:112|1:120~10016:fff~100b1:2c~11051:ea~100b2:3~10021:112~102e~10151:3|1:6|1:102|1:112|1:121~20016:fff~200b1:120~11081:6~200b2:3~20021:ea~20231:120~20241:102~202e~20154:3|1:27~10017:fff~100b1:102~11151:3|1:ea~11081:3~100b1:ea~11151:6~11171:6~100b1:121~110b1:3~11151:3|1:6~100b1:112~100b1:3~10021:112~10231:102~10241:fc~10231:112~10241:120~102e~10152:3|1:2c|1:ea|1:112~20017:fff~200b1:27~200b4:3~20021:112|1:157~20152:3|1:6|2:ea~10018:fff~100b1:ea~11151:fc~11171:6~100b1:fc~110b1:2c~12051:ea~11091:2c~12051:ea~11051:2c~100b1:112~100b2:3~102a1:f6~11072:3~10231:fc~10241:123~10231:112~10241:120~10151:3|3:6|1:121~20018:fff~200b1:ea~21151:6~21171:102~210b1:102~22151:ea|1:112~22081:6~200b1:ea~21151:3~21171:112~210b1:112~200b1:ea~21151:6~21171:2c~210b1:2c~22051:ea~200b1:112~200b3:3~20021:77~20231:102~20241:fc~20231:112~20241:120~20231:112~20241:120~202e~20151:3|1:27|2:ea|1:157~10019:fff~100b1:121~110b1:3~112e~11151:ea|1:120~100b1:ea~11151:2c~11171:123~110b1:123~121b1:123|Tavern mat:fff~100b1:2c~11051:ea~100b1:120~21081:3~10021:112~10231:120~10241:102~102e~10151:3|1:2c|2:ea|1:120~20019:fff~200b1:ea~21151:6~21171:ea~210b1:ea~22151:77~22171:3~200b1:ea~21151:3~21171:2c~210b1:2c~22051:ea~200b1:77~21151:3|1:ea|1:fc~11172:6|1:121~11081:121~110c2:6~200b1:fc~210b1:ea~22151:120~22171:6~21091:ea~22151:6~22171:120~220b1:120~13081:3~21051:ea~200b1:157~21152:3|1:6~21082:6~200b1:120~11081:2c~200b1:27~200b4:3~202a1:110~214c+Card token/the Herald pile:fff~20021:1b4~20231:fc~20241:123~20231:120~20241:102~20231:120~20241:102~202e~20152:3|1:27|1:ea|1:112~100110:fff~1048~101c1:123~104c+Card token/the Herald pile:fff~100b1:ea~11131:6|Teacher:fff~11151:6~11171:ea~110b1:ea~12131:2c|Teacher:fff~12151:102~12171:ea~120b1:ea~13131:1|Teacher:fff~13151:6~132e~13171:3~100b1:102~11151:3|1:2c~11081:120~100b1:ea~11131:121|Teacher:fff~112e~11151:120~100b1:2c~11051:27~100b1:121~112e~11151:27~100b1:27~100b1:2c~11051:77~100b1:112~100b1:120~21081:3~10021:77~10231:102~10241:fc~10231:120~10241:102~10231:112~10241:120~102e~10151:3|2:6|1:ea|1:120~200110:fff~200b1:ea~21131:1|Pathfinding:fff~21151:3~21171:3~200b1:102~21151:3|1:77~21081:112~200b1:27~200b3:3~20021:157~20231:102~20241:fc~20153:ea|1:123|1:157~100111:fff~100b1:ea~11131:123|Teacher:fff~11151:fc~11171:ea~110b1:ea~12131:77|Teacher:fff~12151:2c~12171:2c~120b1:2c~13051:112~100b1:fc~110b1:77~12151:6|2:ea~22172:6|1:ea~22081:ea~220c2:6~11091:77~12151:77|1:102|1:121~22173:6~220c3:6~11051:77~100b1:ea~11131:27|Teacher:fff~112e~11151:112~11171:77~110b1:77~22173:6~220c3:6~100b1:27~100b1:2c~11051:77~100b1:102~112e~11151:77~11081:6~100b1:123~111b1:123|Tavern mat:fff~10021:112~10231:102~10241:fc~102e~10151:3|1:6|1:2c|1:ea|1:fc~200111:fff~200b1:157~21153:6~21082:6~200b1:ea~21131:2c|Pathfinding:fff~21151:102~21171:3~200b1:ea~21131:3|Pathfinding:fff~21151:3~21171:3~200b1:ea~21131:3|Pathfinding:fff~21151:ea~21171:1b4~210b1:1b4~222e~22151:6|1:27|1:112~200b1:ea~21131:3|Pathfinding:fff~21151:157~21171:ea~210b1:ea~22131:3|Pathfinding:fff~22151:3~22171:ea~220b1:ea~23131:6|Pathfinding:fff~23151:fc~23171:77~230b1:77~24151:3~14171:27|1:ea|1:112~14081:27|1:ea|1:112~200b1:fc~210b1:27~21091:27~21051:27~200b1:2c~21051:5~200b1:157~212e~21151:5|1:27~21082:6~200b1:102~212e~21152:6~21081:6~200b1:123~211b1:123|Tavern mat:fff~200b7:3|1:5~20021:8|2:27|1:157~20231:102~20241:fc~202e~20151:6|2:27|1:ea|1:157~100112:fff~1048~101c1:123~104c+Action token/the Rabble pile:fff~100b1:ea~11131:ea|Teacher:fff~11151:77~11171:77~110b1:77~127cL gets +1 Action (from Teacher):fff~12151:2c|1:77|1:121~22171:3|1:ea|1:157~22081:3|1:ea|1:157~100b1:fc~110b1:77~127cL gets +1 Action (from Teacher):fff~12152:6|1:77~22171:3|1:2c|1:fc~22081:3|1:2c|1:fc~11091:77~127cL gets +1 Action (from Teacher):fff~12151:ea|1:fc|1:112~22171:8|1:ea|1:1b4~22081:ea|1:1b4~220c1:8~11051:77~100b1:fc~110b1:77~127cL gets +1 Action (from Teacher):fff~122e~12151:27|1:77|1:120~22171:3|1:8|1:ea~22081:3|1:ea~220c1:8~11091:77~127cL gets +1 Action (from Teacher):fff~12151:ea|1:112~22172:3|1:8~22082:3~220c1:8~11051:77~100b1:2c~11051:112~100b1:2c~11051:112~100b1:ea~112e~11131:1|Teacher:fff~11151:77~11171:112~110b1:112~100b1:77~117cL gets +1 Action (from Teacher):fff~21171:5|1:6|1:8~21081:5~210c1:6|1:8~100b1:77~117cL gets +1 Action (from Teacher):fff~21171:6|1:8|1:112~21081:112~210c1:6|1:8~100b1:77~117cL gets +1 Action (from Teacher):fff~21171:6|1:8|1:ea~21081:ea~210c1:6|1:8~100b1:112~100b1:112~100b1:120~21081:6~100b1:27~100b1:3~10021:8|1:77~10231:112~10241:120~10231:112~10241:120~10231:112~10241:120~102e~10151:6|1:2c|1:77|1:ea|1:fc~200112:fff~2048~201c1:123~204c+Action token/the Bridge pile:fff~200b1:157~21151:6|1:8|1:77~21081:6|1:8~200b1:ea~21131:27|Pathfinding:fff~21151:ea~21171:3~200b1:ea~21131:3|Pathfinding:fff~21151:27~21171:157~210b1:157~22151:3|1:6|1:fc~22081:3|1:6~200b1:fc~210b1:77~222e~22151:3|2:6~12171:8|1:77|1:112~12081:77|1:112~120c1:8~21091:77~22152:3|1:fc~12171:6|1:8|1:77~12081:77~120c1:6|1:8~21051:77~200b1:fc~210b1:27~227cc gets +1 Action (from Teacher):fff~21091:27~227cc gets +1 Action (from Teacher):fff~21051:27~200b1:27~217cc gets +1 Action (from Teacher):fff~200b1:27~217cc gets +1 Action (from Teacher):fff~200b1:27~217cc gets +1 Action (from Teacher):fff~200b4:3~20021:8|4:27|1:77	00210~00614~00708~00808~00360~00440~00530~07710~0ea10~12110~02c10~11210~06410~0a010~02710~15710~1b410~11001~0f601~12005~10205~0fc05~12305~18301~18401~18501~18601~18701~18801~18901~18a01~18b01~18c01~18d01~18e01~19202~19102~18f02~19002	\N	xXxseprixfan123xXx~1zzzzz
11973294	000011973294/unrated:fff~10277:3|1:c3|1:cc|1:cd~20277:3|1:c3|1:cc|1:cd~102e~10154:3|1:cc~202e~20153:3|1:cc|1:cd~10011:fff~100b4:3~10021:5f~10153:3|1:c3|1:cd~20011:fff~200b3:3~20021:4~20154:3|1:c3~10012:fff~100b2:3~10021:11a~102e~10153:3|1:cd|1:11a~20012:fff~200b3:3~20021:4~202e~20153:3|1:cc|1:cd~10013:fff~100b1:11a~11071:cd~12151:3~11181:5f~11191:5f~100b2:3|1:5f~10021:58~10153:3|1:c3|1:cc~20013:fff~200b3:3~20021:4~20152:3|2:4|1:c3~10014:fff~100b2:3~10021:86~102e~10153:3|1:86|1:c3~20014:fff~200b1:3|2:4~20021:b5~202e~20152:3|2:4|1:cc~10015:fff~100b1:86~11151:cc~100b2:3~10021:86~10153:3|1:5f|1:11a~20015:fff~200b1:3|2:4~20021:b5~20152:3|1:4|1:c3|1:cd~10016:fff~100b1:11a~11071:3~100b2:3|1:5f~10021:58~102e~10153:3|1:58|1:86~20016:fff~200b1:4~20021:86~202e~20153:3|1:b5|1:cd~10017:fff~100b1:58~11151:3~11171:3|1:58|1:5f|1:11a~11191:3|1:5f~110c1:58|1:11a~100b1:86~11151:58~11081:3~100b1:58~11151:11a~11171:3|1:86|1:c3|1:cc~11191:3~110c1:86|1:c3|1:cc~100b1:11a~11071:3~100b4:3|1:5f~10021:58|1:130~102e~10151:58|2:86|1:c3|1:cc~20017:fff~200b1:b5~21051:3~21073:3|1:cd~22151:3~20152:3|2:4|1:c3~10018:fff~100b1:58~11151:58~11173:3|1:130~11193:3~110c1:130~100b1:58~11151:130~11172:3|1:5f|1:11a~11192:3|1:5f~110c1:11a~100b1:86~11151:11a~11081:3~100b1:11a~11071:c3~11181:58~11191:58~100b1:130~112e~11151:3~100b5:3|1:5f~10021:4|1:58~102e~10152:3|1:58|1:cc|1:11a~20018:fff~200b2:3|2:4~20021:5~20151:3|1:4|1:86|1:b5|1:cc~10019:fff~100b1:58~11151:4~11172:3|1:86|1:130~11192:3~110c1:86|1:130~100b1:11a~11071:cc~11181:86~11191:86~100b1:86~11151:130~11081:3~100b1:130~11151:58~11181:3~11191:3~100b1:58~11151:58~11171:3|1:58|1:5f|1:86~11191:3|1:5f~110c1:58|1:86~100b5:3|1:4|1:5f~10021:4|1:4e~102e~10151:3|2:58|1:86|1:11a~20019:fff~200b1:86~212e~21151:b5~21081:3~200b1:cc~200b1:b5~210c1:4~200b1:b5~20021:1d|1:86~20152:3|2:4|1:5~100110:fff~100b1:58~11151:4~11171:3|2:58|1:5f~11191:3|1:5f~110c2:58~100b1:86~11151:58~11081:3~100b1:58~11151:58~11171:3|1:4|1:86|1:130~11191:3~110c1:4|1:86|1:130~100b1:58~11151:130~11171:3|1:4|1:4e|1:86~11191:3~110c1:4|1:4e|1:86~100b1:130~11151:86~11181:3~11191:3~100b1:58~11151:4~11171:3|1:4e~11191:3~110c1:4e~100b1:86~11151:4e~11081:11a~100b1:4e~21171:3|1:c3~21071:3~21081:c3~100b5:3|2:4|1:5f~10021:4e|1:58|1:86~102e~10152:3|1:58|2:86~200110:fff~200b1:5|2:4~20021:5~202e~20151:3|2:4|2:5~100111:fff~100b1:58~11151:4~11171:4e|1:58|1:5f|1:130~11191:5f~110c1:4e|1:58|1:130~100b1:86~11151:130~11081:3~100b1:130~11151:58~11181:3~11191:3~100b1:58~11151:4e~11171:3|1:4|2:58~11191:3~110c1:4|2:58~100b1:86~11151:58~11081:3~100b1:58~11151:58~11171:3|1:4|1:58|1:11a~11191:3~110c1:4|1:58|1:11a~100b1:58~11151:58~11171:3|1:4|1:86|1:11a~11191:3~110c1:4|1:86|1:11a~100b1:58~11151:11a~112e~11171:3|1:4|1:4e|1:86~11191:3~110c1:4|1:4e|1:86~100b1:11a~11071:5f~11181:4|1:4e|1:86~11191:4e~11081:4|1:86~100b1:4e~21171:3|1:86~21071:3~21081:86~100b1:4e~21171:3|1:86~21071:3~21081:86~100b5:3|1:4~10021:1d|1:130~102e~10152:3|1:1d|1:4e|1:130~200111:fff~200b1:3|2:5|2:4~20021:8~20151:3|1:1d|2:b5|1:cc~100112:fff~100b1:130~11151:3~100b1:4e~21171:4|1:c3~21071:4~21081:c3~100b2:3~10021:130~10151:3|3:58|1:86~200112:fff~200b1:cc~200b1:1d~212e~21151:3|2:5~200b1:b5~210c1:5~200b2:3|1:5~20021:8~20151:5|1:8|2:86|1:c3~100113:fff~100b1:58~11151:3~11171:4|1:4e|1:58|1:11a~110c1:4|1:4e|1:58|1:11a~100b1:86~11151:4e~11081:3~100b1:58~11151:58~11172:4|1:58|1:11a~110c2:4|1:58|1:11a~100b1:58~11151:58~11172:4|1:86|1:11a~110c2:4|1:86|1:11a~100b1:58~11151:86~11172:4|1:86|1:11a~110c2:4|1:86|1:11a~100b1:58~11151:86~11172:4|1:11a|1:130~110c2:4|1:11a|1:130~100b1:86~11151:130~11081:3~100b1:130~11151:11a~11181:4e|2:130|5:3|1:1d~11191:3~100b1:86~11151:4~100b1:11a~11071:11a~112e~11181:4|1:130~11191:130~11081:4~100b1:130~11151:3~11181:4~100b1:4e~21172:4~21071:4~21081:4~100b2:3|1:4~10021:4e~10153:3|1:1d|1:4e~200113:fff~200b1:86~212e~21151:8~21082:8~200b1:86~21151:3~200b1:3|1:5~20021:86|1:1a3~200b1:1a3~20151:3|1:4|1:5|1:1d|1:cc~100114:fff~100b1:4e~10021:86~102e~10151:4|2:58|1:86|1:130~200114:fff~2048~217cc gets +1 Coin (Guardian).:fff~200b1:cc~200b1:1d~212e~21151:86|2:b5~200b1:86~21151:86~21081:3~200b1:86~21151:c3~21081:c3~200b1:b5~210c1:4~200b1:b5~21051:3~200b1:5~20021:8|1:1a3~200b1:1a3~20151:3|1:4|1:5|2:8~100115:fff~100b1:58~11151:3~11172:58|1:86|1:130~110c2:58|1:86|1:130~100b1:86~11151:86~11081:3~100b1:130~11151:58~11181:3~11191:3~100b1:86~11151:130~11081:3~100b1:130~11151:58~11181:3~11191:3~100b1:58~11151:4e~11171:3|1:4|1:1d|1:58~11191:3~110c1:4|1:1d|1:58~100b1:58~11151:1d~11171:3|1:4|1:58|1:86~11191:3~110c1:4|1:58|1:86~100b1:1d~11151:4|1:58|1:86~100b1:86~11151:3~11082:3~100b1:58~11151:4e~11171:3|1:4e|1:86|1:130~11191:3~110c1:4e|1:86|1:130~100b1:58~11151:130~112e~11172:3|1:4e|1:86~11192:3~110c1:4e|1:86~100b1:130~11151:86~100b1:86~110b1:86~12151:4e~12081:3~100b1:4e~100b1:4e~100b1:4e~100b4:3|2:4~10021:4e|2:130~102e~10152:3|2:58|1:130~200115:fff~2048~217cc gets +1 Coin (Guardian).:fff~200b1:3|1:4~20021:1d~202e~20151:3|1:5|1:8|1:86|1:b5~100116:fff~100b1:58~11151:1d~11171:3|1:4e|1:58|1:130~11191:3~110c1:4e|1:58|1:130~100b1:58~11151:130~11171:3|1:4e|2:58~11191:3~110c1:4e|2:58~100b1:130~11151:58~100b1:58~11151:58~11172:4e|2:130~110c2:4e|2:130~100b1:130~11151:4e~100b1:4e~110b1:86~12151:4e~12082:3~100b1:1d~11151:4|2:130~100b1:130~11151:130~11182:3~11191:3~100b1:130~11151:86~11181:3~11191:3~100b1:86~11151:4e~11082:3~100b1:130~11151:86~11182:3~11191:3~100b1:58~11151:86~11171:3|1:4|1:58|1:86~11191:3~110c1:4|1:58|1:86~100b1:86~11151:86~11081:3~100b1:86~110b1:1d~12151:4|1:4e|1:58~100b1:58~112e~11151:3~11171:3~11191:3~100b1:86~11081:3~100b1:4e~21171:cc|1:1a3~21081:cc|1:1a3~100b1:4e~21171:8|1:1d~21081:8|1:1d~100b1:4e~21171:3|1:4~21071:4~21081:3~100b4:3|2:4~10021:86|1:131~102e~10151:3|1:1d|1:58|2:86~200116:fff~200b1:86~21151:5~200b1:b5~21081:3|1:8~200b2:5~20021:8~20151:8|1:1d|2:86|1:1a3~100117:fff~100b1:58~11151:130~11171:4e|2:58|1:131~110c1:4e|2:58|1:131~100b1:86~11151:131~11081:3|1:130~100b1:131~11151:58~11181:130|1:3~11191:130~100b1:130~11151:58~11181:3~11191:3~100b1:58~11151:4e~11171:3|2:4|1:58~11191:3~110c2:4|1:58~100b1:1d~11152:4|1:58~100b1:58~11151:58~11172:86|2:130~110c2:86|2:130~100b1:86~11151:130~11082:3~100b1:130~11151:130~11182:3~11191:3~100b1:130~11151:86~11181:3~11191:3~100b1:58~11151:86~11171:4e|1:86|2:130~110c1:4e|1:86|2:130~100b1:86~11151:86~11081:3~100b1:86~11151:130~11081:3~100b1:130~11151:130~11182:3~11191:3~100b1:130~11151:4e~11181:3~11191:3~100b1:58~11151:3~11172:3|2:4e~11192:3~110c2:4e~100b1:86~110b1:1d~12152:4e~100b1:4e~21171:3|1:b5~21071:3~21081:b5~100b1:4e~212e~21171:8|1:c3~21081:8|1:c3~100b1:4e~21171:5|1:1a3~21071:5~21081:1a3~100b1:4e~110b1:4e~22171:8|1:86~22081:8|1:86~100b5:3|2:4~10021:1d|1:131~102e~10151:3|1:1d|2:4e|1:86~200117:fff~200b1:86~21151:cc~21081:8~200b1:1d~21151:3|1:5|1:b5~200b1:86~21151:3~200b1:b5~210c1:cc~200b2:3|1:5~20021:8~200b1:1a3~202e~20151:5|1:8|1:1d|1:b5|1:cc~100118:fff~100b1:86~110b1:86~12151:58~12081:3~100b1:58~11151:58~11171:3|2:58|1:86~11191:3~110c2:58|1:86~100b1:1d~11152:58|1:86~100b1:58~11151:130~11171:4|1:58|1:130|1:131~110c1:4|1:58|1:130|1:131~100b1:86~11151:131~11081:3|1:130~100b1:131~11151:130~11181:130|2:3~11191:130~100b1:130~11151:58~11182:3~11191:3~100b1:130~11151:4~11181:3~11191:3~100b1:58~11151:4e~11172:3|1:1d|1:130~11192:3~110c1:1d|1:130~100b1:58~11151:130~11171:1d|3:86~110c1:1d|3:86~100b1:58~11151:86~11171:3|1:1d|2:86~11191:3~110c1:1d|2:86~100b1:86~11151:1d~11082:3~100b1:130~11151:86~11182:3~11191:3~100b1:1d~11151:4|1:86|1:131~100b1:86~11151:130~11081:3|1:130~100b1:131~11151:4e~11181:130|2:3~11191:130~100b1:130~11151:130~11182:3~11191:3~100b1:86~112e~11151:3~11082:3~100b1:130~112e~11151:3~100b1:4e~100b1:4e~100b1:4e~100b1:4e~110b1:4e~100b4:3|2:4~10022:7|3:8	00210~00608~00708~00808~00360~00440~00530~05f16~05810~08610~0b510~04510~11a10~0b110~1a310~13105~13005~01d10~04e10~16f01~0cc02~0c302~0cd02	\N	ceviri~gawawa_124
12086221	000012086221/unrated:fff~10277:3|3:6~20277:3|3:6~102e~10153:3|2:6~202e~20153:3|2:6~10011:fff~100b3:3~10021:f9~10154:3|1:6~20011:fff~200b3:3~20021:4~20154:3|1:6~10012:fff~100b4:3~102a1:f9~116a8:fff~10051:f9~106c4/4:fff~102e~10153:3|2:6~20012:fff~200b4:3~20021:4~202e~20153:3|1:4|1:6~10013:fff~100b3:3~106c3/1:fff~10153:3|1:6|1:f9~20013:fff~200b3:3|1:4~20021:1c7~20153:3|2:6~10014:fff~100b1:f9~110b1:1c7~12051:5~22051:4~100b3:3~106b1:fff~102a1:159~116a8:fff~10051:159~106c2/6:fff~102e~10152:3|2:f9|1:159~20014:fff~200b3:3~20021:4~202e~20152:3|2:4|1:6~10015:fff~100b1:f9~11151:6~100b1:f9~110b1:8a~12151:3~12171:159|3:3|1:6~12172:3|1:5|1:6~12191:5~12082:3|1:6~100b1:159~110b1:117~125aJourney token:fff~100b3:3|1:5~106b6:fff~102e~10153:3|1:6|1:f9~20015:fff~200b2:3|2:4~20021:1c7~20152:3|1:4|1:6|1:1c7~10016:fff~1048~117cL gets +1 Coin (Caravan Guard).:fff~100b1:f9~110b1:8a~12151:6~12173:3|2:6~12171:6|1:159~12191:159~12081:6~100b1:159~110b1:8a~12151:3~12174:3|2:6~12171:3|1:5~12191:5~12081:3~100b4:3|1:5~102a1:8a~116a8:fff~10051:8a~106b8:fff~102e~10154:3|1:8a~20016:fff~200b1:1c7~21071:6~21051:117~11071:3~200b2:3|1:4~20021:117~20153:3|1:4|1:6~10017:fff~100b1:8a~110b1:117~125bJourney token:fff~12152:3|1:5|2:f9~100b1:3|1:5~10021:16d~11191:16d~100b1:16d~100b1:f9~11151:6~100b1:f9~110b1:117~125aJourney token:fff~100b4:3~10021:8a~102e~10152:3|2:6|1:159~20017:fff~200b3:3|1:4~20021:8a~202e~20152:3|3:4~10018:fff~1048~117cL gets +1 Coin (Caravan Guard).:fff~100b1:159~110b1:8a~12151:6~12172:3|3:6~12171:3|1:8a~12191:8a~12081:3~100b1:8a~11151:5~11172:3|3:6|1:5~11171:3|1:8a~11191:8a~11081:3~100b1:8a~110b1:1c7~12071:6~12051:117~22071:3~100b1:3|1:5~10021:8a~102e~10152:3|1:6|1:f9|1:16d~20018:fff~200b1:3|3:4~202a1:161~216a8:fff~20051:161~206c7/1:fff~20152:3|2:6|1:117~10019:fff~100b1:16d~100b1:f9~110b1:117~125bJourney token:fff~12152:3|1:8a|1:117|1:159~100b1:8a~110b1:8a~12151:6~12171:159|4:3|2:6|1:117~12171:8a~12191:8a~100b1:8a~11151:f9~11171:159|4:3|2:6|1:117|1:f9~11171:8a~11191:8a~100b1:8a~11151:3~11171:159|5:3|2:6|1:117|1:f9~11171:5~11191:5~100b1:f9~11151:3~100b1:159~110b1:1c7~12071:6~12051:117~22071:6~22051:4~100b1:117~115aJourney token:fff~100b6:3|1:5~10021:64|1:f9~102e~10152:3|1:64|1:8a|1:159~20019:fff~200b1:117~215aJourney token:fff~200b1:3~206b1:fff~20153:3|1:8a|1:117~100110:fff~1048~117cL gets +1 Coin (Caravan Guard).:fff~100b1:8a~11151:117~11171:159|2:3|1:64|1:117~11171:f9|1:117~11191:f9~11081:117~100b1:f9~11151:3~100b1:117~115bJourney token:fff~11151:3|1:5|2:8a|1:f9~100b1:3|1:5~10021:16d~11191:16d~100b1:16d~100b1:8a~11151:6~11171:159|3:3|1:64|1:8a|1:6|1:f9~11171:3|1:16d~11191:16d~11081:3~100b1:8a~110b1:8a~12151:3~12171:159|4:3|1:16d|1:64|1:6|1:f9~122e~12171:3|1:117~12191:117~12081:3~100b1:16d~100b1:f9~110b1:f9~122e~12151:3~100b1:159~110b1:1c7~12051:5~22051:4~100b1:117~115aJourney token:fff~100b5:3|1:64~10023:8a~102e~10151:5|1:6|1:64|1:8a|1:16d~200110:fff~200b1:8a~21151:1c7~21173:3|1:1c7|1:117~21171:4|1:1c7~21191:4~21081:1c7~200b1:1c7~21071:4~21051:8a~11071:5~11051:64~200b1:117~215bJourney token:fff~212e~21151:3|2:4|1:161|1:1c7~200b2:4~20021:16d~21191:16d~200b1:16d~200b1:161~210b1:8a~22151:3~22175:3|1:1c7~22171:6~22191:6~200b1:1c7~21151:3|1:8a|1:117~11151:117~200b1:8a~21151:4~21176:3|1:4|1:6|1:117~21172:4~21082:4~200b1:117~215aJourney token:fff~200b6:3|1:4~20021:1c7~202a1:161~216a8:fff~20051:161~206c4/4:fff~202e~20151:3|1:4|1:8a|1:161|1:1c7~100111:fff~1048~117cL gets +1 Coin (Caravan Guard).:fff~117cL gets +1 Coin (Caravan Guard).:fff~100b1:8a~11151:5~11171:16d|1:64|1:6|1:117|1:5~11171:8a~11191:8a~100b1:16d~100b1:117~115bJourney token:fff~11152:3|2:8a|1:f9~100b1:8a~11151:3~11173:3|1:64|1:6|2:8a|1:5|1:f9~11172:3|1:8a|1:159|1:16d~11191:16d~11082:3|1:8a|1:159~100b1:8a~11151:8a~11173:3|1:16d|1:64|1:6|2:8a|1:5|1:f9~11171:3|1:117~11191:117~11081:3~100b1:f9~112e~11151:64~100b1:8a~11151:3~11174:3|1:16d|2:64|1:6|1:8a|1:5|1:117~11171:8a~11191:8a~100b1:8a~11151:3~11175:3|1:16d|2:64|1:6|1:8a|1:5|1:117~11171:3|1:159~11081:3|1:159~100b1:16d~100b1:117~115aJourney token:fff~100b5:3|1:5~10021:64|1:16d~11191:16d~100b1:8a~110b1:8a~122e~12151:159~12171:159|1:16d|2:64|1:6~12171:3|1:64~12191:3~12081:64~100b1:16d~100b1:159~110b1:159~122e~12151:64~100b1:3|3:64	00210~00614~00708~00808~00360~00440~00530~01008~15910~1c710~16110~08a10~11710~0f910~06410~0a110~16d10~11601~15a01	\N	xXxseprixfan123xXx~Launchywiggin
\.


--
-- Data for Name: woodcutter_preddata; Type: TABLE DATA; Schema: public; Owner: ceviri
--

COPY woodcutter_preddata (id, regex, source, destination) FROM stdin;
0	^(?P<player>Game) #(?P<cards>\\d+), (.*)\\.$	0	0
1	^Turn (?P<cards>\\d+) - (?P<player>.*)$	0	0
2	^(?P<player>.*) buys and gains (?P<cards>.*)\\.$	0	5
3	^(?P<player>.*) gains (?P<cards>.*) onto their drawpile\\.$	0	1
4	^(?P<player>.*) gains (?P<cards>.*) from trash\\.$	3	5
5	^(?P<player>.*) gains (?P<cards>.*)\\.$	0	5
6	^(?P<player>.*) trashes nothing\\.$	0	0
7	^(?P<player>.*) trashes (?P<cards>.*)\\.$	2	3
8	^(?P<player>.*) discards (?P<cards>.*)\\.$	1	5
9	^(?P<player>.*) plays (?P<cards>.*) again\\.$	0	0
10	^(?P<player>.*) plays (?P<cards>.*) a third time\\.$	0	0
11	^(?P<player>.*) plays (?P<cards>.*)\\.$	2	4
12	^(?P<player>.*) topdecks (?P<cards>.*)\\.$	2	1
13	^(?P<player>.*) draws (?P<cards>.*) \\(Wharf\\)\\.$	1	2
14	^(?P<player>.*) draws (?P<cards>.*) \\(Hireling\\)\\.$	1	2
15	^(?P<player>.*) draws (?P<cards>.*) \\(Enchantress\\)\\.$	1	2
16	^(?P<player>.*) draws (?P<cards>.*) \\(Haunted Woods\\)\\.$	1	2
17	^(?P<player>.*) draws (?P<cards>.*) \\(Caravan\\)\\.$	1	2
18	^(?P<player>.*) gets +1 Buy, +1 Action and draws (?P<cards>.*) \\(Tactician\\)\\.$	1	2
19	^(?P<player>.*) draws (?P<cards>.*) \\(from (.*)\\)$	1	2
20	^(?P<player>.*) draws (?P<cards>.*) \\(Ghost Town\\)\\.$	1	2
21	^(?P<player>.*) draws (?P<cards>.*)\\.$	1	2
22	^(?P<player>.*) wishes for (?P<cards>.*) but reveals (.*)\\.$	0	0
23	^(?P<player>.*) reveals (?P<cards>.*)\\.$	0	0
24	^(?P<player>.*) looks at (?P<cards>.*)\\.$	0	0
25	^(?P<player>.*) puts (?P<cards>.*) into their hand\\.$	1	2
26	^(?P<player>.*) sets (?P<cards>.*) aside\\.$	4	6
27	^(?P<player>.*) puts (?P<cards>.*) on their (.*)\\.$	2	6
28	^(?P<player>.*) calls (?P<cards>.*)\\.$	6	4
29	^(?P<player>.*) moves their deck to the discard\\.$	1	5
30	^(?P<player>.*) puts (?P<cards>.*) back onto their deck\\.$	0	0
31	^(?P<player>.*) shuffles (?P<cards>.*) into their deck\\.$	0	0
32	^(?P<player>.*) inserts (?P<cards>.*) into their deck\\.$	0	0
34	^(?P<player>.*) returns (?P<cards>.*) set by (.*)\\.$	0	0
37	^(?P<player>.*) receives (?P<cards>.*)$	0	0
38	^(?P<player>.*) passes (?P<cards>.*) to (.*)\\.$	0	0
39	^(?P<player>.*) starts with (?P<cards>.*)\\.$	0	1
40	^(?P<player>.*) buys Alms but has (?P<cards>.*) in play\\.$	0	0
41	^(?P<player>.*) buys Borrow but already had (?P<cards>.*)$	0	0
42	^(?P<player>.*) buys (?P<cards>.*)\\.$	0	0
43	^COUNTER_ADD$	0	0
44	^COUNTER_RESET$	0	0
45	^(?P<player>.*) reacts with (?P<cards>.*)\\.$	0	0
46	^(?P<player>.*) shuffles their deck\\.$	5	1
47	^(?P<player>.*) wishes for (?P<cards>.*) and finds it\\.$	1	2
48	^Reshuffling the Black Market deck\\.$	0	0
49	^(?P<player>.*) puts (?P<cards>.*) on the bottom of (.*)\\.$	0	0
54	^No differently named Action cards\\.$	0	0
55	^exactly one of (?P<player>.*)\\.$	0	0
56	^(?P<player>.*) cards from the (?P<cards>.*)-pile\\.$	0	0
57	^(?P<player>.*) differently named cards\\.$	0	0
58	^(?P<player>.*) Castles\\.$	0	0
59	^(?P<player>.*) Action cards\\.$	0	0
60	^(?P<player>.*) Victory cards\\.$	0	0
61	^VP tokens\\.$	0	0
62	^(?P<player>.*) puts (?P<cards>.*) in hand \\(Gear\\)\\.$	6	2
63	^(?P<player>.*) puts (?P<cards>.*) in hand \\(Haven\\)\\.$	6	2
64	^(?P<player>.*) puts (?P<cards>.*) in hand \\(Archive\\)\\.$	6	2
65	^(?P<player>.*) gets +1 Action and +1 Coin \\(Fishing Village\\)\\.$	0	0
66	^(?P<player>.*) gets +2 Coins \\(Merchant Ship\\)\\.$	0	0
67	^(?P<player>.*) gets +1 Coin \\(Lighthouse\\)\\.$	0	0
68	^(?P<player>.*) gets +1 Coin \\(Caravan Guard\\)\\.$	0	0
69	^(?P<player>.*) gets +3 Coins \\(Swamp Hag\\)\\.$	0	0
70	^(?P<player>.*) summons (?P<cards>.*)\\.$	0	0
71	^(?P<player>.*) gets +1 Buy \\(Bridge Troll\\)\\.$	0	0
72	^(?P<player>.*) starts their turn\\.$	0	0
73	^(?P<player>.*) takes (?P<cards>.*) VP from (.*)\\.$	0	0
74	^(?P<player>.*) moves (?P<cards>.*) VP from (.*) to (.*)\\.$	0	0
75	^Obelisk chooses (?P<player>.*)\\.$	0	0
77	^(?P<player>.*) gets (?P<cards>.*) VP\\.$	0	0
78	^(?P<player>.*) gets (?P<cards>.*) VP from Groundskeeper\\.$	0	0
79	^(?P<player>.*) gets (?P<cards>.*) VP from Goons\\.$	0	0
80	^(?P<player>.*) gets (?P<cards>.*) VP from (.*)\\.$	0	0
81	^(?P<player>.*) adds (?P<cards>.*) VP to (.*)\\.$	0	0
82	^Waiting for (?P<player>.*)\\.$	0	0
83	^(?P<player>.*) failed to discard an Attack\\.$	0	0
84	^(?P<player>.*) failed to discard 6 cards\\.$	0	0
85	^(?P<player>.*) failed to discard (?P<cards>.*)\\.$	0	0
86	^(?P<player>.*) had no cards to set aside\\.$	0	0
87	^(?P<player>.*) had no cards to discard or topdeck\\.$	0	0
88	^Mission fails because (?P<player>.*) already owned the previous turn\\.$	0	0
76	^(?P<player>.*) moves (.*) to (.*)\\.$	0	0
50	^(?P<cards>.*) loses track of (.*) \\(it moved\\)\\.$	0	0
52	^(?P<cards>.*) loses track of (.*) \\(it was shuffled\\)\\.$	0	0
51	^(?P<cards>.*) loses track of (.*) \\(it was covered up\\)\\.$	0	0
53	^(?P<cards>.*) is lost track of\\.$	0	0
33	^(?P<player>.*) returns (?P<cards>.*) to (.*)\\.$	4	0
36	^(?P<player>.*) receives (?P<cards>.*)\\.$	0	5
35	^(?P<player>.*) returns (?P<cards>.*)\\.$	4	0
89	^(?P<player>.*) takes an extra turn after this one\\.$	0	0
90	^(?P<player>.*) flips (.*) face down\\.$	0	0
91	^(?P<player>.*) flips (.*) face up\\.$	0	0
92	^(?P<player>.*) failed to gain (?P<cards>.*)\\.$	0	0
93	^(?P<player>.*) didn't trash an Action card\\.$	0	0
94	^(?P<player>.*) adds (?P<cards>.*) to (.*)\\.$	0	0
95	^(?P<player>.*) takes (?P<cards>.*) from (.*)\\.$	0	0
96	^(?P<player>.*) isn't empty\\.$	0	0
97	^(?P<player>.*) gets +1 Action \\(from (?P<cards>.*)\\)$	0	0
98	^(?P<player>.*) gets +1 Buy \\(from (?P<cards>.*)\\)$	0	0
99	^(?P<player>.*) gets +1 Coin \\(from (?P<cards>.*)\\)$	0	0
100	^(?P<player>.*) skips a draw \\(because of (?P<cards>.*)\\)$	0	0
101	^(?P<player>.*) takes the coin tokens instead\\.$	0	0
102	^(?P<player>.*) takes the Debt instead\\.$	0	0
103	^(?P<player>.*) takes the VP tokens instead\\.$	0	0
104	^Outpost fails because (?P<player>.*) already owned the previous turn\\.$	0	0
105	^Outpost fails because (?P<player>.*) has already played it\\.$	0	0
106	^(?P<player>.*) takes (?P<cards>.*) debt\\.$	0	0
107	^(?P<player>.*) repays (?P<cards>.*) debt\\.$	0	0
108	^(?P<player>.*) repays (?P<cards>.*) debt \\((.*) remaining\\)\\.$	0	0
109	^(?P<player>.*) sets (?P<cards>.*) aside with (.*)\\.$	2	6
110	^(?P<player>.*) blocks with (?P<cards>.*)\\.$	0	0
111	^(?P<player>.*) names (?P<cards>.*)\\.$	0	0
112	^Obelisk failed to select an Action Supply pile\\.$	0	0
113	^(?P<player>.*) inherits (?P<cards>.*)\\.$	0	1
114	^(?P<player>.*) fails to discard for The Sky's Gift$	0	0
115	^(?P<player>.*) puts (?P<cards>.*) in hand \\(Crypt\\)\\.$	0	0
116	^(?P<player>.*) gets +1 Coin \\(Guardian\\)\\.$	0	0
117	^(?P<player>.*) takes (?P<cards>.*)\\.$	0	0
118	^The Sun's Gift has nothing to discard\\.$	0	0
119	^Druid sets (?P<cards>.*) aside\\.$	0	0
120	^(?P<player>.*) gets +3 Coins \\(Raider\\)\\.$	0	0
121	^(?P<player>.*) gets +3 Coins \\(Secret Cave\\)\\.$	0	0
123	^Between Turns$	0	0
255	^(.*)$	0	0
122	^(?P<cards>.*) is enchanted by (.*)$	0	0
\.


--
-- Name: woodcutter_preddata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ceviri
--

SELECT pg_catalog.setval('woodcutter_preddata_id_seq', 1, false);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: woodcutter_carddata_exceptions_pkey; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_carddata_exceptions
    ADD CONSTRAINT woodcutter_carddata_exceptions_pkey PRIMARY KEY (id);


--
-- Name: woodcutter_carddata_pkey; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_carddata
    ADD CONSTRAINT woodcutter_carddata_pkey PRIMARY KEY (id);


--
-- Name: woodcutter_exceptiondata_exceptiondata_id_carddat_10212e45_uniq; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_cards
    ADD CONSTRAINT woodcutter_exceptiondata_exceptiondata_id_carddat_10212e45_uniq UNIQUE (exceptiondata_id, carddata_id);


--
-- Name: woodcutter_exceptiondata_exceptiondata_id_preddat_35db78c1_uniq; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_root_preds
    ADD CONSTRAINT woodcutter_exceptiondata_exceptiondata_id_preddat_35db78c1_uniq UNIQUE (exceptiondata_id, preddata_id);


--
-- Name: woodcutter_exceptiondata_exceptiondata_id_preddat_fa668097_uniq; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_preds
    ADD CONSTRAINT woodcutter_exceptiondata_exceptiondata_id_preddat_fa668097_uniq UNIQUE (exceptiondata_id, preddata_id);


--
-- Name: woodcutter_exceptiondata_pkey; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata
    ADD CONSTRAINT woodcutter_exceptiondata_pkey PRIMARY KEY (id);


--
-- Name: woodcutter_exceptiondata_root_preds_pkey; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_root_preds
    ADD CONSTRAINT woodcutter_exceptiondata_root_preds_pkey PRIMARY KEY (id);


--
-- Name: woodcutter_exceptiondata_target_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_cards
    ADD CONSTRAINT woodcutter_exceptiondata_target_cards_pkey PRIMARY KEY (id);


--
-- Name: woodcutter_exceptiondata_target_preds_pkey; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_preds
    ADD CONSTRAINT woodcutter_exceptiondata_target_preds_pkey PRIMARY KEY (id);


--
-- Name: woodcutter_gamelog_game_id_3a924450_pk; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_gamelog
    ADD CONSTRAINT woodcutter_gamelog_game_id_3a924450_pk PRIMARY KEY (game_id);


--
-- Name: woodcutter_gamelog_game_id_3a924450_uniq; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_gamelog
    ADD CONSTRAINT woodcutter_gamelog_game_id_3a924450_uniq UNIQUE (game_id);


--
-- Name: woodcutter_preddata_pkey; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_preddata
    ADD CONSTRAINT woodcutter_preddata_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: woodcutter_exceptiondata_root_card_id_4f934848; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX woodcutter_exceptiondata_root_card_id_4f934848 ON woodcutter_exceptiondata USING btree (root_card_id);


--
-- Name: woodcutter_exceptiondata_root_preds_exceptiondata_id_430e88ac; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX woodcutter_exceptiondata_root_preds_exceptiondata_id_430e88ac ON woodcutter_exceptiondata_root_preds USING btree (exceptiondata_id);


--
-- Name: woodcutter_exceptiondata_root_preds_preddata_id_a5210211; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX woodcutter_exceptiondata_root_preds_preddata_id_a5210211 ON woodcutter_exceptiondata_root_preds USING btree (preddata_id);


--
-- Name: woodcutter_exceptiondata_target_cards_carddata_id_51a7c461; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX woodcutter_exceptiondata_target_cards_carddata_id_51a7c461 ON woodcutter_exceptiondata_target_cards USING btree (carddata_id);


--
-- Name: woodcutter_exceptiondata_target_cards_exceptiondata_id_46769911; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX woodcutter_exceptiondata_target_cards_exceptiondata_id_46769911 ON woodcutter_exceptiondata_target_cards USING btree (exceptiondata_id);


--
-- Name: woodcutter_exceptiondata_target_preds_exceptiondata_id_d00d0b5a; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX woodcutter_exceptiondata_target_preds_exceptiondata_id_d00d0b5a ON woodcutter_exceptiondata_target_preds USING btree (exceptiondata_id);


--
-- Name: woodcutter_exceptiondata_target_preds_preddata_id_2d329488; Type: INDEX; Schema: public; Owner: ceviri
--

CREATE INDEX woodcutter_exceptiondata_target_preds_preddata_id_2d329488 ON woodcutter_exceptiondata_target_preds USING btree (preddata_id);


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk; Type: FK CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: woodcutter_carddata_exceptions_carddata_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_carddata_exceptions
    ADD CONSTRAINT woodcutter_carddata_exceptions_carddata_id_fkey FOREIGN KEY (carddata_id) REFERENCES woodcutter_carddata(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: woodcutter_carddata_exceptions_exceptiondata_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_carddata_exceptions
    ADD CONSTRAINT woodcutter_carddata_exceptions_exceptiondata_id_fkey FOREIGN KEY (exceptiondata_id) REFERENCES woodcutter_exceptiondata(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: woodcutter_exception_carddata_id_51a7c461_fk_woodcutte; Type: FK CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_cards
    ADD CONSTRAINT woodcutter_exception_carddata_id_51a7c461_fk_woodcutte FOREIGN KEY (carddata_id) REFERENCES woodcutter_carddata(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: woodcutter_exception_exceptiondata_id_430e88ac_fk_woodcutte; Type: FK CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_root_preds
    ADD CONSTRAINT woodcutter_exception_exceptiondata_id_430e88ac_fk_woodcutte FOREIGN KEY (exceptiondata_id) REFERENCES woodcutter_exceptiondata(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: woodcutter_exception_exceptiondata_id_46769911_fk_woodcutte; Type: FK CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_cards
    ADD CONSTRAINT woodcutter_exception_exceptiondata_id_46769911_fk_woodcutte FOREIGN KEY (exceptiondata_id) REFERENCES woodcutter_exceptiondata(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: woodcutter_exception_exceptiondata_id_d00d0b5a_fk_woodcutte; Type: FK CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_preds
    ADD CONSTRAINT woodcutter_exception_exceptiondata_id_d00d0b5a_fk_woodcutte FOREIGN KEY (exceptiondata_id) REFERENCES woodcutter_exceptiondata(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: woodcutter_exception_preddata_id_2d329488_fk_woodcutte; Type: FK CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_preds
    ADD CONSTRAINT woodcutter_exception_preddata_id_2d329488_fk_woodcutte FOREIGN KEY (preddata_id) REFERENCES woodcutter_preddata(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: woodcutter_exception_preddata_id_a5210211_fk_woodcutte; Type: FK CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_root_preds
    ADD CONSTRAINT woodcutter_exception_preddata_id_a5210211_fk_woodcutte FOREIGN KEY (preddata_id) REFERENCES woodcutter_preddata(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: woodcutter_exception_root_card_id_4f934848_fk_woodcutte; Type: FK CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata
    ADD CONSTRAINT woodcutter_exception_root_card_id_4f934848_fk_woodcutte FOREIGN KEY (root_card_id) REFERENCES woodcutter_carddata(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: TABLE auth_group; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON TABLE auth_group FROM PUBLIC;
REVOKE ALL ON TABLE auth_group FROM ceviri;
GRANT ALL ON TABLE auth_group TO ceviri;


--
-- Name: SEQUENCE auth_group_id_seq; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON SEQUENCE auth_group_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE auth_group_id_seq FROM ceviri;
GRANT ALL ON SEQUENCE auth_group_id_seq TO ceviri;


--
-- Name: TABLE auth_group_permissions; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON TABLE auth_group_permissions FROM PUBLIC;
REVOKE ALL ON TABLE auth_group_permissions FROM ceviri;
GRANT ALL ON TABLE auth_group_permissions TO ceviri;


--
-- Name: SEQUENCE auth_group_permissions_id_seq; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON SEQUENCE auth_group_permissions_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE auth_group_permissions_id_seq FROM ceviri;
GRANT ALL ON SEQUENCE auth_group_permissions_id_seq TO ceviri;


--
-- Name: TABLE auth_permission; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON TABLE auth_permission FROM PUBLIC;
REVOKE ALL ON TABLE auth_permission FROM ceviri;
GRANT ALL ON TABLE auth_permission TO ceviri;


--
-- Name: SEQUENCE auth_permission_id_seq; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON SEQUENCE auth_permission_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE auth_permission_id_seq FROM ceviri;
GRANT ALL ON SEQUENCE auth_permission_id_seq TO ceviri;


--
-- Name: TABLE auth_user; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON TABLE auth_user FROM PUBLIC;
REVOKE ALL ON TABLE auth_user FROM ceviri;
GRANT ALL ON TABLE auth_user TO ceviri;


--
-- Name: TABLE auth_user_groups; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON TABLE auth_user_groups FROM PUBLIC;
REVOKE ALL ON TABLE auth_user_groups FROM ceviri;
GRANT ALL ON TABLE auth_user_groups TO ceviri;


--
-- Name: SEQUENCE auth_user_groups_id_seq; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON SEQUENCE auth_user_groups_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE auth_user_groups_id_seq FROM ceviri;
GRANT ALL ON SEQUENCE auth_user_groups_id_seq TO ceviri;


--
-- Name: SEQUENCE auth_user_id_seq; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON SEQUENCE auth_user_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE auth_user_id_seq FROM ceviri;
GRANT ALL ON SEQUENCE auth_user_id_seq TO ceviri;


--
-- Name: TABLE auth_user_user_permissions; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON TABLE auth_user_user_permissions FROM PUBLIC;
REVOKE ALL ON TABLE auth_user_user_permissions FROM ceviri;
GRANT ALL ON TABLE auth_user_user_permissions TO ceviri;


--
-- Name: SEQUENCE auth_user_user_permissions_id_seq; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON SEQUENCE auth_user_user_permissions_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE auth_user_user_permissions_id_seq FROM ceviri;
GRANT ALL ON SEQUENCE auth_user_user_permissions_id_seq TO ceviri;


--
-- Name: TABLE django_admin_log; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON TABLE django_admin_log FROM PUBLIC;
REVOKE ALL ON TABLE django_admin_log FROM ceviri;
GRANT ALL ON TABLE django_admin_log TO ceviri;


--
-- Name: SEQUENCE django_admin_log_id_seq; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON SEQUENCE django_admin_log_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE django_admin_log_id_seq FROM ceviri;
GRANT ALL ON SEQUENCE django_admin_log_id_seq TO ceviri;


--
-- Name: TABLE django_content_type; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON TABLE django_content_type FROM PUBLIC;
REVOKE ALL ON TABLE django_content_type FROM ceviri;
GRANT ALL ON TABLE django_content_type TO ceviri;


--
-- Name: SEQUENCE django_content_type_id_seq; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON SEQUENCE django_content_type_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE django_content_type_id_seq FROM ceviri;
GRANT ALL ON SEQUENCE django_content_type_id_seq TO ceviri;


--
-- Name: TABLE django_migrations; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON TABLE django_migrations FROM PUBLIC;
REVOKE ALL ON TABLE django_migrations FROM ceviri;
GRANT ALL ON TABLE django_migrations TO ceviri;


--
-- Name: SEQUENCE django_migrations_id_seq; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON SEQUENCE django_migrations_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE django_migrations_id_seq FROM ceviri;
GRANT ALL ON SEQUENCE django_migrations_id_seq TO ceviri;


--
-- Name: TABLE django_session; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON TABLE django_session FROM PUBLIC;
REVOKE ALL ON TABLE django_session FROM ceviri;
GRANT ALL ON TABLE django_session TO ceviri;


--
-- Name: TABLE woodcutter_carddata; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON TABLE woodcutter_carddata FROM PUBLIC;
REVOKE ALL ON TABLE woodcutter_carddata FROM ceviri;
GRANT ALL ON TABLE woodcutter_carddata TO ceviri;


--
-- Name: TABLE woodcutter_carddata_exceptions; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON TABLE woodcutter_carddata_exceptions FROM PUBLIC;
REVOKE ALL ON TABLE woodcutter_carddata_exceptions FROM ceviri;
GRANT ALL ON TABLE woodcutter_carddata_exceptions TO ceviri;


--
-- Name: SEQUENCE woodcutter_carddata_exceptions_id_seq; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON SEQUENCE woodcutter_carddata_exceptions_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE woodcutter_carddata_exceptions_id_seq FROM ceviri;
GRANT ALL ON SEQUENCE woodcutter_carddata_exceptions_id_seq TO ceviri;


--
-- Name: SEQUENCE woodcutter_carddata_id_seq; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON SEQUENCE woodcutter_carddata_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE woodcutter_carddata_id_seq FROM ceviri;
GRANT ALL ON SEQUENCE woodcutter_carddata_id_seq TO ceviri;


--
-- Name: TABLE woodcutter_exceptiondata; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON TABLE woodcutter_exceptiondata FROM PUBLIC;
REVOKE ALL ON TABLE woodcutter_exceptiondata FROM ceviri;
GRANT ALL ON TABLE woodcutter_exceptiondata TO ceviri;


--
-- Name: SEQUENCE woodcutter_exceptiondata_id_seq; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON SEQUENCE woodcutter_exceptiondata_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE woodcutter_exceptiondata_id_seq FROM ceviri;
GRANT ALL ON SEQUENCE woodcutter_exceptiondata_id_seq TO ceviri;


--
-- Name: TABLE woodcutter_exceptiondata_root_preds; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON TABLE woodcutter_exceptiondata_root_preds FROM PUBLIC;
REVOKE ALL ON TABLE woodcutter_exceptiondata_root_preds FROM ceviri;
GRANT ALL ON TABLE woodcutter_exceptiondata_root_preds TO ceviri;


--
-- Name: SEQUENCE woodcutter_exceptiondata_root_preds_id_seq; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON SEQUENCE woodcutter_exceptiondata_root_preds_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE woodcutter_exceptiondata_root_preds_id_seq FROM ceviri;
GRANT ALL ON SEQUENCE woodcutter_exceptiondata_root_preds_id_seq TO ceviri;


--
-- Name: TABLE woodcutter_exceptiondata_target_cards; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON TABLE woodcutter_exceptiondata_target_cards FROM PUBLIC;
REVOKE ALL ON TABLE woodcutter_exceptiondata_target_cards FROM ceviri;
GRANT ALL ON TABLE woodcutter_exceptiondata_target_cards TO ceviri;


--
-- Name: SEQUENCE woodcutter_exceptiondata_target_cards_id_seq; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON SEQUENCE woodcutter_exceptiondata_target_cards_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE woodcutter_exceptiondata_target_cards_id_seq FROM ceviri;
GRANT ALL ON SEQUENCE woodcutter_exceptiondata_target_cards_id_seq TO ceviri;


--
-- Name: TABLE woodcutter_exceptiondata_target_preds; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON TABLE woodcutter_exceptiondata_target_preds FROM PUBLIC;
REVOKE ALL ON TABLE woodcutter_exceptiondata_target_preds FROM ceviri;
GRANT ALL ON TABLE woodcutter_exceptiondata_target_preds TO ceviri;


--
-- Name: SEQUENCE woodcutter_exceptiondata_target_preds_id_seq; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON SEQUENCE woodcutter_exceptiondata_target_preds_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE woodcutter_exceptiondata_target_preds_id_seq FROM ceviri;
GRANT ALL ON SEQUENCE woodcutter_exceptiondata_target_preds_id_seq TO ceviri;


--
-- Name: TABLE woodcutter_gamelog; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON TABLE woodcutter_gamelog FROM PUBLIC;
REVOKE ALL ON TABLE woodcutter_gamelog FROM ceviri;
GRANT ALL ON TABLE woodcutter_gamelog TO ceviri;


--
-- Name: TABLE woodcutter_preddata; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON TABLE woodcutter_preddata FROM PUBLIC;
REVOKE ALL ON TABLE woodcutter_preddata FROM ceviri;
GRANT ALL ON TABLE woodcutter_preddata TO ceviri;


--
-- Name: SEQUENCE woodcutter_preddata_id_seq; Type: ACL; Schema: public; Owner: ceviri
--

REVOKE ALL ON SEQUENCE woodcutter_preddata_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE woodcutter_preddata_id_seq FROM ceviri;
GRANT ALL ON SEQUENCE woodcutter_preddata_id_seq TO ceviri;


--
-- PostgreSQL database dump complete
--

