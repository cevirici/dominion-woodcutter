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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: u_ceviri
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO u_ceviri;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: u_ceviri
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO u_ceviri;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u_ceviri
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: u_ceviri
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO u_ceviri;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: u_ceviri
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO u_ceviri;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u_ceviri
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: u_ceviri
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO u_ceviri;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: u_ceviri
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO u_ceviri;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u_ceviri
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: u_ceviri
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


ALTER TABLE auth_user OWNER TO u_ceviri;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: u_ceviri
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO u_ceviri;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: u_ceviri
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO u_ceviri;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u_ceviri
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: u_ceviri
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO u_ceviri;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u_ceviri
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: u_ceviri
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO u_ceviri;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: u_ceviri
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO u_ceviri;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u_ceviri
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: u_ceviri
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


ALTER TABLE django_admin_log OWNER TO u_ceviri;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: u_ceviri
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO u_ceviri;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u_ceviri
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: u_ceviri
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO u_ceviri;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: u_ceviri
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO u_ceviri;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u_ceviri
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: u_ceviri
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO u_ceviri;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: u_ceviri
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO u_ceviri;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u_ceviri
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: u_ceviri
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO u_ceviri;

--
-- Name: woodcutter_carddata; Type: TABLE; Schema: public; Owner: u_ceviri
--

CREATE TABLE woodcutter_carddata (
    id integer NOT NULL,
    single_name character varying(30) NOT NULL,
    multi_name character varying(30) NOT NULL,
    phrase_name character varying(30) NOT NULL,
    cost integer NOT NULL,
    color character varying(8) NOT NULL,
    border_color character varying(8) NOT NULL
);


ALTER TABLE woodcutter_carddata OWNER TO u_ceviri;

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
-- Name: woodcutter_carddata_id_seq; Type: SEQUENCE; Schema: public; Owner: u_ceviri
--

CREATE SEQUENCE woodcutter_carddata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE woodcutter_carddata_id_seq OWNER TO u_ceviri;

--
-- Name: woodcutter_carddata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u_ceviri
--

ALTER SEQUENCE woodcutter_carddata_id_seq OWNED BY woodcutter_carddata.id;


--
-- Name: woodcutter_exceptiondata; Type: TABLE; Schema: public; Owner: u_ceviri
--

CREATE TABLE woodcutter_exceptiondata (
    id integer NOT NULL,
    source integer NOT NULL,
    destination integer NOT NULL,
    root_card_id integer NOT NULL
);


ALTER TABLE woodcutter_exceptiondata OWNER TO u_ceviri;

--
-- Name: woodcutter_exceptiondata_id_seq; Type: SEQUENCE; Schema: public; Owner: u_ceviri
--

CREATE SEQUENCE woodcutter_exceptiondata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE woodcutter_exceptiondata_id_seq OWNER TO u_ceviri;

--
-- Name: woodcutter_exceptiondata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u_ceviri
--

ALTER SEQUENCE woodcutter_exceptiondata_id_seq OWNED BY woodcutter_exceptiondata.id;


--
-- Name: woodcutter_exceptiondata_root_preds; Type: TABLE; Schema: public; Owner: u_ceviri
--

CREATE TABLE woodcutter_exceptiondata_root_preds (
    id integer NOT NULL,
    exceptiondata_id integer NOT NULL,
    preddata_id integer NOT NULL
);


ALTER TABLE woodcutter_exceptiondata_root_preds OWNER TO u_ceviri;

--
-- Name: woodcutter_exceptiondata_root_preds_id_seq; Type: SEQUENCE; Schema: public; Owner: u_ceviri
--

CREATE SEQUENCE woodcutter_exceptiondata_root_preds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE woodcutter_exceptiondata_root_preds_id_seq OWNER TO u_ceviri;

--
-- Name: woodcutter_exceptiondata_root_preds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u_ceviri
--

ALTER SEQUENCE woodcutter_exceptiondata_root_preds_id_seq OWNED BY woodcutter_exceptiondata_root_preds.id;


--
-- Name: woodcutter_exceptiondata_target_cards; Type: TABLE; Schema: public; Owner: u_ceviri
--

CREATE TABLE woodcutter_exceptiondata_target_cards (
    id integer NOT NULL,
    exceptiondata_id integer NOT NULL,
    carddata_id integer NOT NULL
);


ALTER TABLE woodcutter_exceptiondata_target_cards OWNER TO u_ceviri;

--
-- Name: woodcutter_exceptiondata_target_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: u_ceviri
--

CREATE SEQUENCE woodcutter_exceptiondata_target_cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE woodcutter_exceptiondata_target_cards_id_seq OWNER TO u_ceviri;

--
-- Name: woodcutter_exceptiondata_target_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u_ceviri
--

ALTER SEQUENCE woodcutter_exceptiondata_target_cards_id_seq OWNED BY woodcutter_exceptiondata_target_cards.id;


--
-- Name: woodcutter_exceptiondata_target_preds; Type: TABLE; Schema: public; Owner: u_ceviri
--

CREATE TABLE woodcutter_exceptiondata_target_preds (
    id integer NOT NULL,
    exceptiondata_id integer NOT NULL,
    preddata_id integer NOT NULL
);


ALTER TABLE woodcutter_exceptiondata_target_preds OWNER TO u_ceviri;

--
-- Name: woodcutter_exceptiondata_target_preds_id_seq; Type: SEQUENCE; Schema: public; Owner: u_ceviri
--

CREATE SEQUENCE woodcutter_exceptiondata_target_preds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE woodcutter_exceptiondata_target_preds_id_seq OWNER TO u_ceviri;

--
-- Name: woodcutter_exceptiondata_target_preds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u_ceviri
--

ALTER SEQUENCE woodcutter_exceptiondata_target_preds_id_seq OWNED BY woodcutter_exceptiondata_target_preds.id;


--
-- Name: woodcutter_gamelog; Type: TABLE; Schema: public; Owner: u_ceviri
--

CREATE TABLE woodcutter_gamelog (
    game_id integer NOT NULL,
    log character varying(20000) NOT NULL,
    supply character varying(500) NOT NULL,
    player character varying(100),
    players character varying(100) NOT NULL
);


ALTER TABLE woodcutter_gamelog OWNER TO u_ceviri;

--
-- Name: woodcutter_preddata; Type: TABLE; Schema: public; Owner: u_ceviri
--

CREATE TABLE woodcutter_preddata (
    id integer NOT NULL,
    regex character varying(150) NOT NULL,
    source integer NOT NULL,
    destination integer NOT NULL
);


ALTER TABLE woodcutter_preddata OWNER TO u_ceviri;

--
-- Name: woodcutter_preddata_id_seq; Type: SEQUENCE; Schema: public; Owner: u_ceviri
--

CREATE SEQUENCE woodcutter_preddata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE woodcutter_preddata_id_seq OWNER TO u_ceviri;

--
-- Name: woodcutter_preddata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u_ceviri
--

ALTER SEQUENCE woodcutter_preddata_id_seq OWNED BY woodcutter_preddata.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_carddata ALTER COLUMN id SET DEFAULT nextval('woodcutter_carddata_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_carddata_exceptions ALTER COLUMN id SET DEFAULT nextval('woodcutter_carddata_exceptions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata ALTER COLUMN id SET DEFAULT nextval('woodcutter_exceptiondata_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_root_preds ALTER COLUMN id SET DEFAULT nextval('woodcutter_exceptiondata_root_preds_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_cards ALTER COLUMN id SET DEFAULT nextval('woodcutter_exceptiondata_target_cards_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_preds ALTER COLUMN id SET DEFAULT nextval('woodcutter_exceptiondata_target_preds_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_preddata ALTER COLUMN id SET DEFAULT nextval('woodcutter_preddata_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: u_ceviri
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u_ceviri
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: u_ceviri
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u_ceviri
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: u_ceviri
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
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u_ceviri
--

SELECT pg_catalog.setval('auth_permission_id_seq', 30, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: u_ceviri
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$100000$9nEujCPbX9TB$/IOJCJhssWQFaAOQHUu5x8yQhfdrKGOTZICziKE+22Q=	2018-02-16 02:32:36.636612+08	t	ceviri			test@test.com	t	t	2018-02-15 16:49:48.261869+08
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: u_ceviri
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u_ceviri
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u_ceviri
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: u_ceviri
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u_ceviri
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: u_ceviri
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
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u_ceviri
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 28, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: u_ceviri
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
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u_ceviri
--

SELECT pg_catalog.setval('django_content_type_id_seq', 10, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: u_ceviri
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
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u_ceviri
--

SELECT pg_catalog.setval('django_migrations_id_seq', 23, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: u_ceviri
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
p53u7togo93ya4sbzw0q34d72gkf8azo	ZTllNTgwMjZkODU0ZGNhM2I1NWMyMmE1ZGZhNTRhODEwYzMzZmYzYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzE3ZWIyZGMyZTJiYzUzYjhiNzQwYmM3MGE5N2RmNjAzNzMyYmQ4In0=	2018-03-01 16:49:58.392489+08
lpj2ae4gcybkst0hmfcftdy1xyz0flbs	ZTllNTgwMjZkODU0ZGNhM2I1NWMyMmE1ZGZhNTRhODEwYzMzZmYzYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzE3ZWIyZGMyZTJiYzUzYjhiNzQwYmM3MGE5N2RmNjAzNzMyYmQ4In0=	2018-03-02 01:02:29.572982+08
ghs3r697kyxm4cvrnbz6amfvrw970gl3	ZTllNTgwMjZkODU0ZGNhM2I1NWMyMmE1ZGZhNTRhODEwYzMzZmYzYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NzE3ZWIyZGMyZTJiYzUzYjhiNzQwYmM3MGE5N2RmNjAzNzMyYmQ4In0=	2018-03-02 02:32:36.639025+08
\.


--
-- Data for Name: woodcutter_carddata; Type: TABLE DATA; Schema: public; Owner: u_ceviri
--

COPY woodcutter_carddata (id, single_name, multi_name, phrase_name, cost, color, border_color) FROM stdin;
0	nothing	nothing	nothing	0	666666	666666
1	card	cards	a card	0	666666	666666
2	Curse	Curses	a Curse	0	a2b8b8	b571b3
3	Copper	Coppers	a Copper	0	a05624	f1d14d
4	Silver	Silvers	a Silver	3	709aa4	f1d14d
5	Gold	Golds	a Gold	6	ffae06	f1d14d
6	Estate	Estates	an Estate	2	bfb597	548C2B
7	Duchy	Duchies	a Duchy	5	6aa09a	548C2B
8	Province	Provinces	a Province	8	efaf49	548C2B
9	Artisan	Artisans	an Artisan	6	bc5a00	c4c0b4
10	Bandit	Bandits	a Bandit	5	8a861e	c4c0b4
11	Bureaucrat	Bureaucrats	a Bureaucrat	4	95633b	c4c0b4
12	Cellar	Cellars	a Cellar	2	3e4646	c4c0b4
13	Chapel	Chapels	a Chapel	2	605444	c4c0b4
14	Council Room	Council Rooms	a Council Room	5	815121	c4c0b4
15	Festival	Festivals	a Festival	5	636d61	c4c0b4
16	Gardens	Gardens	a Gardens	4	5f792f	9cbe8a
17	Harbinger	Harbingers	a Harbinger	3	8e8a3c	c4c0b4
18	Laboratory	Laboratories	a Laboratory	5	614739	c4c0b4
19	Library	Libraries	a Library	5	7a7e4a	c4c0b4
20	Market	Markets	a Market	5	684830	c4c0b4
21	Merchant	Merchants	a Merchant	3	917911	c4c0b4
22	Militia	Militias	a Militia	4	856961	c4c0b4
23	Mine	Mines	a Mine	5	433935	c4c0b4
24	Moat	Moats	a Moat	2	586472	8ca2be
25	Moneylender	Moneylenders	a Moneylender	4	7a644c	c4c0b4
26	Poacher	Poachers	a Poacher	4	8f810d	c4c0b4
27	Remodel	Remodels	a Remodel	4	8e7e4a	c4c0b4
28	Sentry	Sentries	a Sentry	5	5a361e	c4c0b4
29	Smithy	Smithies	a Smithy	4	6a523a	c4c0b4
30	Throne Room	Throne Rooms	a Throne Room	4	d76315	c4c0b4
31	Vassal	Vassals	a Vassal	3	ba6816	c4c0b4
32	Village	Villages	a Village	3	7e9078	c4c0b4
33	Witch	Witches	a Witch	5	52444e	c4c0b4
34	Workshop	Workshops	a Workshop	3	8c6428	c4c0b4
35	Courtyard	Courtyards	a Courtyard	2	74a454	c4c0b4
36	Conspirator	Conspirators	a Conspirator	4	2b5989	c4c0b4
37	Courtier	Courtiers	a Courtier	5	ac6228	c4c0b4
38	Baron	Barons	a Baron	4	876341	c4c0b4
39	Bridge	Bridges	a Bridge	4	859b6b	c4c0b4
40	Diplomat	Diplomats	a Diplomat	4	91595f	8ca2be
41	Duke	Dukes	a Duke	5	8a7e5e	9cbe8a
42	Harem	Harems	a Harem	6	c3510d	a9c35d
43	Nobles	Nobles	a Nobles	6	816155	aac298
44	Ironworks	Ironworks	an Ironworks	4	7d3b1f	c4c0b4
45	Lurker	Lurkers	a Lurker	2	909ab2	c4c0b4
46	Masquerade	Masquerades	a Masquerade	3	635d51	c4c0b4
47	Mill	Mills	a Mill	4	78b294	aac298
48	Mining Village	Mining Villages	a Mining Village	4	aea090	c4c0b4
49	Minion	Minions	a Minion	5	6c382e	c4c0b4
50	Patrol	Patrols	a Patrol	5	98ae70	c4c0b4
51	Pawn	Pawns	a Pawn	2	3f2f25	c4c0b4
52	Replace	Replaces	a Replace	5	564850	c4c0b4
53	Secret Passage	Secret Passages	a Secret Passage	4	261e12	c4c0b4
54	Shanty Town	Shanty Towns	a Shanty Town	3	124e44	c4c0b4
55	Steward	Stewards	a Steward	3	4f4d5d	c4c0b4
56	Swindler	Swindlers	a Swindler	3	b78d49	c4c0b4
57	Torturer	Torturers	a Torturer	5	842804	c4c0b4
58	Trading Post	Trading Posts	a Trading Post	5	686434	c4c0b4
59	Upgrade	Upgrades	an Upgrade	5	979773	c4c0b4
60	Wishing Well	Wishing Wells	a Wishing Well	3	61756b	c4c0b4
61	Ambassador	Ambassadors	an Ambassador	3	b8602c	c4c0b4
62	Bazaar	Bazaars	a Bazaar	5	a6765e	c4c0b4
63	Caravan	Caravans	a Caravan	4	b9ab7f	dda561
64	Cutpurse	Cutpurses	a Cutpurse	4	826a4e	c4c0b4
65	Embargo	Embargos	an Embargo	2	9da381	c4c0b4
66	Explorer	Explorers	an Explorer	5	92887a	c4c0b4
67	Fishing Village	Fishing Villages	a Fishing Village	3	7db9b3	dda561
68	Ghost Ship	Ghost Ships	a Ghost Ship	5	59814d	c4c0b4
69	Haven	Havens	a Haven	2	866846	dda561
70	Island	Islands	an Island	4	5d9fbd	aac298
71	Lighthouse	Lighthouses	a Lighthouse	2	559773	dda561
72	Lookout	Lookouts	a Lookout	3	723a6a	c4c0b4
73	Merchant Ship	Merchant Ships	a Merchant Ship	5	b58127	dda561
74	Native Village	Native Villages	a Native Village	2	6f919f	c4c0b4
75	Navigator	Navigators	a Navigator	4	5ba7ad	c4c0b4
76	Outpost	Outposts	an Outpost	5	949ab2	dda561
77	Pearl Diver	Pearl Divers	a Pearl Diver	2	00aee6	c4c0b4
78	Pirate Ship	Pirate Ships	a Pirate Ship	4	7e9ec2	c4c0b4
79	Salvager	Salvagers	a Salvager	4	397b7b	c4c0b4
80	Sea Hag	Sea Hags	a Sea Hag	4	745a44	c4c0b4
81	Smugglers	Smugglers	a Smugglers	3	464c50	c4c0b4
82	Tactician	Tacticians	a Tactician	5	785c44	dda561
83	Treasure Map	Treasure Maps	a Treasure Map	4	9d651b	c4c0b4
84	Treasury	Treasuries	a Treasury	5	884a00	c4c0b4
85	Warehouse	Warehouses	a Warehouse	3	59635b	c4c0b4
86	Wharf	Wharves	a Wharf	5	7b778f	dda561
87	Alchemist	Alchemists	an Alchemist	5	898573	c4c0b4
88	Apothecary	Apothecaries	an Apothecary	4	a36713	c4c0b4
89	Apprentice	Apprentices	an Apprentice	5	ce5800	c4c0b4
90	Familiar	Familiars	a Familiar	5	aa6656	c4c0b4
91	Golem	Golems	a Golem	6	5e6c80	c4c0b4
92	Herbalist	Herbalists	a Herbalist	2	b8884e	c4c0b4
93	Philosopher's Stone	Philosopher's Stones	a Philosopher's Stone	5	980642	d8c280
94	Possession	Possessions	a Possession	8	736157	c4c0b4
95	Potion	Potions	a Potion	4	90563c	f1d14d
96	Scrying Pool	Scrying Pools	a Scrying Pool	4	a45e08	c4c0b4
97	Transmute	Transmutes	a Transmute	2	764a76	c4c0b4
98	University	Universities	a University	4	77714b	c4c0b4
99	Vineyard	Vineyards	a Vineyard	2	8c9652	9cbe8a
100	Bank	Banks	a Bank	7	616745	d8c280
101	Bishop	Bishops	a Bishop	4	6a587c	c4c0b4
102	Colony	Colonies	a Colony	11	9494d8	548C2B
103	Contraband	Contrabands	a Contraband	5	68442c	d8c280
104	Counting House	Counting Houses	a Counting House	5	6f5143	c4c0b4
105	City	Cities	a City	5	a4a07c	c4c0b4
106	Expand	Expands	an Expand	7	d77b07	c4c0b4
107	Forge	Forges	a Forge	7	d05a2a	c4c0b4
108	Grand Market	Grand Markets	a Grand Market	6	ab735b	c4c0b4
109	Goons	Goons	a Goons	6	6d6129	c4c0b4
110	Hoard	Hoards	a Hoard	6	917d25	d8c280
111	King's Court	King's Courts	a King's Court	7	926634	c4c0b4
112	Loan	Loans	a Loan	3	9d936f	d8c280
113	Mint	Mints	a Mint	5	7a5e40	c4c0b4
114	Monument	Monuments	a Monument	4	8191ab	c4c0b4
115	Mountebank	Mountebanks	a Mountebank	5	866a6a	c4c0b4
116	Peddler	Peddlers	a Peddler	8	9a5a2e	c4c0b4
117	Platinum	Platina	a Platinum	9	948266	f1d14d
118	Quarry	Quarries	a Quarry	4	b9b59f	d8c280
119	Rabble	Rabbles	a Rabble	5	88422c	c4c0b4
120	Royal Seal	Royal Seals	a Royal Seal	5	d8b08e	d8c280
121	Talisman	Talismans	a Talisman	4	b28038	d8c280
122	Trade Route	Trade Routes	a Trade Route	3	65a167	c4c0b4
123	Vault	Vaults	a Vault	5	947e4e	c4c0b4
124	Venture	Ventures	a Venture	5	624e36	d8c280
125	Watchtower	Watchtowers	a Watchtower	3	7496c0	8ca2be
126	Worker's Village	Worker's Villages	a Worker's Village	4	cd7119	c4c0b4
127	Prize Pile	Prize Piles	a Prize Pile	0	666666	666666
128	Bag of Gold	Bags of Gold	a Bag of Gold	0	b47214	c4c0b4
129	Diadem	Diadems	a Diadem	0	ffba14	d8c280
130	Fairgrounds	Fairgrounds	a Fairgrounds	6	9a8462	9cbe8a
131	Farming Village	Farming Villages	a Farming Village	4	8d7f67	c4c0b4
132	Followers	Followers	a Followers	0	ab670b	c4c0b4
133	Fortune Teller	Fortune Tellers	a Fortune Teller	3	884214	c4c0b4
134	Hamlet	Hamlets	a Hamlet	2	8e9886	c4c0b4
135	Harvest	Harvests	a Harvest	5	cd9f49	c4c0b4
136	Horse Traders	Horse Traders	a Horse Traders	4	595561	8ca2be
137	Horn of Plenty	Horns of Plenty	a Horn of Plenty	5	7b4d27	d8c280
138	Hunting Party	Hunting Parties	a Hunting Party	5	4e4e48	c4c0b4
139	Jester	Jesters	a Jester	5	9f7967	c4c0b4
140	Menagerie	Menageries	a Menagerie	3	8a7234	c4c0b4
141	Princess	Princesses	a Princess	0	804e10	c4c0b4
142	Remake	Remakes	a Remake	4	b46614	c4c0b4
143	Tournament	Tournaments	a Tournament	4	937755	c4c0b4
144	Trusty Steed	Trusty Steeds	a Trusty Steed	0	6e726a	c4c0b4
145	Young Witch	Young Witches	a Young Witch	4	7b653b	c4c0b4
146	Border Village	Border Villages	a Border Village	6	758791	c4c0b4
147	Cache	Caches	a Cache	5	6e7846	d8c280
148	Cartographer	Cartographers	a Cartographer	5	a45a14	c4c0b4
149	Crossroads	Crossroads	a Crossroads	2	a7a187	c4c0b4
150	Develop	Develops	a Develop	3	c09864	c4c0b4
151	Duchess	Duchesses	a Duchess	2	999b77	c4c0b4
152	Embassy	Embassies	an Embassy	5	8e725c	c4c0b4
153	Farmland	Farmlands	a Farmland	6	4fbb9d	9cbe8a
154	Fool's Gold	Fool's Golds	a Fool's Gold	2	b8a62e	666666
155	Haggler	Hagglers	a Haggler	5	a07a56	c4c0b4
156	Highway	Highways	a Highway	5	a0be8c	c4c0b4
157	Ill-Gotten Gains	Ill-Gotten Gains	an Ill-Gotten Gains	5	9d6d41	d8c280
158	Inn	Inns	an Inn	5	71957d	c4c0b4
159	Jack of All Trades	Jacks of All Trades	a Jack of All Trades	4	7aa2a4	c4c0b4
160	Mandarin	Mandarins	a Mandarin	5	b38f2d	c4c0b4
161	Noble Brigand	Noble Brigands	a Noble Brigand	4	645c46	c4c0b4
162	Nomad Camp	Nomad Camps	a Nomad Camp	4	87a1b1	c4c0b4
163	Oasis	Oases	an Oasis	3	8e9864	c4c0b4
164	Oracle	Oracles	an Oracle	3	69491b	c4c0b4
165	Margrave	Margraves	a Margrave	5	7c6c48	c4c0b4
166	Scheme	Schemes	a Scheme	3	7f7d7d	c4c0b4
167	Silk Road	Silk Roads	a Silk Road	4	948452	9cbe8a
168	Spice Merchant	Spice Merchants	a Spice Merchant	4	af7b4d	c4c0b4
169	Stables	Stables	a Stables	5	875d33	c4c0b4
170	Trader	Traders	a Trader	4	988a34	8ca2be
171	Tunnel	Tunnels	a Tunnel	3	545258	666666
172	Ruins	Ruins	a Ruins	0	666666	b29462
173	Knights	Knights	a Knights	5	819381	c4c0b4
174	Abandoned Mine	Abandoned Mines	an Abandoned Mine	0	633b29	b29462
175	Altar	Altars	an Altar	6	7e3800	c4c0b4
176	Armory	Armories	an Armory	4	54564e	c4c0b4
177	Band of Misfits	Bands of Misfits	a Band of Misfits	5	56505c	c4c0b4
178	Bandit Camp	Bandit Camps	a Bandit Camp	5	42889e	c4c0b4
179	Beggar	Beggars	a Beggar	2	503626	8ca2be
180	Catacombs	Catacombs	a Catacombs	5	472f1f	c4c0b4
181	Count	Counts	a Count	5	58605c	c4c0b4
182	Counterfeit	Counterfeits	a Counterfeit	5	a66e28	d8c280
183	Cultist	Cultists	a Cultist	5	4b4957	c4c0b4
184	Dame Anna	Dame Annas	a Dame Anna	5	775f35	c4c0b4
185	Dame Josephine	Dame Josephines	a Dame Josephine	5	635147	aac298
186	Dame Molly	Dame Mollies	a Dame Molly	5	946e50	c4c0b4
187	Dame Natalie	Dame Natalies	a Dame Natalie	5	56665a	c4c0b4
188	Dame Sylvia	Dame Sylvias	a Dame Sylvia	5	744c36	c4c0b4
189	Death Cart	Death Carts	a Death Cart	4	826636	c4c0b4
190	Feodum	Feoda	a Feodum	4	b4a67e	9cbe8a
191	Forager	Foragers	a Forager	3	a46618	c4c0b4
192	Fortress	Fortresses	a Fortress	4	62524c	c4c0b4
193	Graverobber	Graverobbers	a Graverobber	5	4e4052	c4c0b4
194	Hermit	Hermits	a Hermit	3	977d5b	c4c0b4
195	Hovel	Hovels	a Hovel	1	25716f	a48892
196	Hunting Grounds	Hunting Grounds	a Hunting Grounds	6	a08250	c4c0b4
197	Ironmonger	Ironmongers	an Ironmonger	4	72787a	c4c0b4
198	Junk Dealer	Junk Dealers	a Junk Dealer	5	7b5f2d	c4c0b4
199	Madman	Madmen	a Madman	0	8b513d	c4c0b4
200	Market Square	Market Squares	a Market Square	3	956d43	8ca2be
201	Marauder	Marauders	a Marauder	4	7e4826	c4c0b4
202	Mercenary	Mercenaries	a Mercenary	0	6b8193	c4c0b4
203	Mystic	Mystics	a Mystic	5	695729	c4c0b4
204	Necropolis	Necropolis	a Necropolis	1	778793	d59f89
205	Overgrown Estate	Overgrown Estates	an Overgrown Estate	1	58664c	b4a65e
206	Pillage	Pillages	a Pillage	5	8d7f63	c4c0b4
207	Poor House	Poor Houses	a Poor House	1	65573d	c4c0b4
208	Procession	Processions	a Procession	4	775f3d	c4c0b4
209	Rats	Rats	a Rats	4	795743	c4c0b4
210	Rebuild	Rebuilds	a Rebuild	5	64748c	c4c0b4
211	Rogue	Rogues	a Rogue	5	363c4c	c4c0b4
212	Ruined Library	Ruined Libraries	a Ruined Library	0	806a34	b29462
213	Ruined Market	Ruined Markets	a Ruined Market	0	6d5753	b29462
214	Ruined Village	Ruined Villages	a Ruined Village	0	a4886a	b29462
215	Sage	Sages	a Sage	3	89612f	c4c0b4
216	Scavenger	Scavengers	a Scavenger	4	34404e	c4c0b4
217	Sir Bailey	Sir Baileys	a Sir Bailey	5	506070	c4c0b4
218	Sir Destry	Sir Destries	a Sir Destry	5	797d7f	c4c0b4
219	Sir Martin	Sir Martins	a Sir Martin	4	cc9e60	c4c0b4
220	Sir Michael	Sir Michaels	a Sir Michael	5	47454b	c4c0b4
221	Sir Vander	Sir Vanders	a Sir Vander	5	9ca6ac	c4c0b4
222	Spoils	Spoils	a Spoils	0	646032	d8c280
223	Storeroom	Storerooms	a Storeroom	3	69492f	c4c0b4
224	Squire	Squires	a Squire	2	937b4b	c4c0b4
225	Survivors	Survivors	a Survivors	0	706a46	b29462
226	Urchin	Urchins	an Urchin	3	634b33	c4c0b4
227	Vagrant	Vagrants	a Vagrant	2	593f2b	c4c0b4
228	Wandering Minstrel	Wandering Minstrels	a Wandering Minstrel	4	905414	c4c0b4
229	Advisor	Advisors	an Advisor	4	77675b	c4c0b4
230	Baker	Bakers	a Baker	5	815b3b	c4c0b4
231	Butcher	Butchers	a Butcher	5	9c6426	c4c0b4
232	Candlestick Maker	Candlestick Makers	a Candlestick Maker	2	7d6137	c4c0b4
233	Doctor	Doctors	a Doctor	3	895923	c4c0b4
234	Herald	Heralds	a Herald	4	996941	c4c0b4
235	Journeyman	Journeymen	a Journeyman	5	78704e	c4c0b4
236	Masterpiece	Masterpieces	a Masterpiece	3	d5c361	d8c280
237	Merchant Guild	Merchant Guilds	a Merchant Guild	5	a44410	c4c0b4
238	Plaza	Plazas	a Plaza	4	87573f	c4c0b4
239	Taxman	Taxmen	a Taxman	4	70583a	c4c0b4
240	Soothsayer	Soothsayers	a Soothsayer	5	514135	c4c0b4
241	Stonemason	Stonemasons	a Stonemason	2	915d23	c4c0b4
242	Alms	Alms	an Alms	0	9f793f	a9a39d
243	Amulet	Amulets	an Amulet	3	d39d25	dda561
244	Artificer	Artificers	an Artificer	5	754f2b	c4c0b4
245	Ball	Balls	a Ball	5	8b6323	a9a39d
246	Bonfire	Bonfires	a Bonfire	3	844e52	a9a39d
247	Borrow	Borrows	a Borrow	0	8a3620	a9a39d
248	Bridge Troll	Bridge Trolls	a Bridge Troll	5	524830	dda561
249	Caravan Guard	Caravan Guards	a Caravan Guard	3	7c8e68	a7a39b
250	Champion	Champions	a Champion	6	666666	dda561
251	Coin of the Realm	Coins of the Realm	a Coin of the Realm	2	ae6c00	c2a85c
252	Disciple	Disciples	a Disciple	5	666666	666666
253	Distant Lands	Distant Lands	a Distant Lands	5	c49e8c	666666
254	Dungeon	Dungeons	a Dungeon	3	4f472d	dda561
255	Duplicate	Duplicates	a Duplicate	4	8a887c	c5af85
256	Expedition	Expeditions	an Expedition	3	ca8c28	a9a39d
257	Ferry	Ferries	a Ferry	3	798593	a9a39d
258	Fugitive	Fugitives	a Fugitive	4	666666	666666
259	Gear	Gears	a Gear	3	877969	dda561
260	Giant	Giants	a Giant	5	9c7c5a	c4c0b4
261	Guide	Guides	a Guide	3	486e4a	c5af85
262	Haunted Woods	Haunted Woods	a Haunted Woods	5	314b39	dda561
263	Hero	Heroes	a Hero	5	666666	666666
264	Hireling	Hirelings	a Hireling	6	745666	dda561
265	Inheritance	Inheritances	an Inheritance	7	657759	a9a39d
266	Lost Arts	Lost Arts	a Lost Arts	6	ab4f1f	a9a39d
267	Lost City	Lost Cities	a Lost City	5	969c6c	c4c0b4
268	Magpie	Magpies	a Magpie	4	707870	c4c0b4
269	Messenger	Messengers	a Messenger	4	99afc3	c4c0b4
270	Miser	Misers	a Miser	4	726a60	c4c0b4
271	Mission	Missions	a Mission	4	7e767c	a9a39d
272	Pathfinding	Pathfindings	a Pathfinding	8	664820	a9a39d
273	Page	Pages	a Page	2	553d33	666666
274	Peasant	Peasants	a Peasant	2	cab026	666666
275	Pilgrimage	Pilgrimages	a Pilgrimage	4	6e4e28	a9a39d
276	Plan	Plans	a Plan	3	6c4630	a9a39d
277	Port	Ports	a Port	4	586c6e	c4c0b4
278	Quest	Quests	a Quest	0	685456	a9a39d
279	Ranger	Rangers	a Ranger	4	8c7236	c4c0b4
280	Raid	Raids	a Raid	5	4f4347	a9a39d
281	Ratcatcher	Ratcatchers	a Ratcatcher	2	655d4f	c5af85
282	Raze	Razes	a Raze	2	6b5949	c4c0b4
283	Relic	Relics	a Relic	5	616959	d8c280
284	Royal Carriage	Royal Carriages	a Royal Carriage	5	9a7450	c5af85
285	Save	Saves	a Save	1	814d3b	a9a39d
286	Scouting Party	Scouting Parties	a Scouting Party	2	97875b	a9a39d
287	Seaway	Seaways	a Seaway	5	7195a3	a9a39d
288	Soldier	Soldiers	a Soldier	3	666666	666666
289	Storyteller	Storytellers	a Storyteller	5	ad735f	c4c0b4
290	Swamp Hag	Swamp Hags	a Swamp Hag	5	8c462e	dda561
291	Teacher	Teachers	a Teacher	6	666666	c5af85
292	Travelling Fair	Travelling Fairs	a Travelling Fair	2	d2942c	a9a39d
293	Trade	Trades	a Trade	5	735941	a9a39d
294	Training	Trainings	a Training	6	533f33	a9a39d
295	Transmogrify	Transmogrifies	a Transmogrify	4	6e6258	c5af85
296	Treasure Trove	Treasure Troves	a Treasure Trove	5	95795f	d8c280
297	Treasure Hunter	Treasure Hunters	a Treasure Hunter	3	666666	666666
298	Warrior	Warriors	a Warrior	4	666666	666666
299	Wine Merchant	Wine Merchants	a Wine Merchant	5	855b31	c5af85
300	Encampment	Encampments	an Encampment	2	6d4527	c4c0b4
301	Plunder	Plunders	a Plunder	5	666666	d8c280
302	Patrician	Patricians	a Patrician	2	6a80a0	c4c0b4
303	Emporium	Emporia	an Emporium	5	666666	c4c0b4
304	Settlers	Settlers	a Settlers	2	784624	c4c0b4
305	Bustling Village	Bustling Villages	a Bustling Village	5	666666	c4c0b4
306	Catapult	Catapults	a Catapult	3	839f55	c4c0b4
307	Rocks	Rocks	a Rocks	4	80963a	d8c280
308	Gladiator	Gladiators	a Gladiator	3	b28674	c4c0b4
309	Fortune	Fortunes	a Fortune	16	666666	d8c280
310	Castles	Castles	a Castles	3	2d7bbb	9cbe8a
311	Humble Castle	Humble Castles	a Humble Castle	3	63af7f	a9c35d
312	Crumbling Castle	Crumbling Castles	a Crumbling Castle	4	ceb22c	9cbe8a
313	Small Castle	Small Castles	a Small Castle	5	96a692	aac298
314	Haunted Castle	Haunted Castles	a Haunted Castle	6	4a6064	9cbe8a
315	Opulent Castle	Opulent Castles	an Opulent Castle	7	4f9391	aac298
316	Sprawling Castle	Sprawling Castles	a Sprawling Castle	8	ffb300	9cbe8a
317	Grand Castle	Grand Castles	a Grand Castle	9	9e7e5a	9cbe8a
318	King's Castle	King's Castles	a King's Castle	10	cd8959	9cbe8a
319	Advance	Advances	an Advance	0	714d41	a9a39d
320	Annex	Annexes	an Annex	8	7a5a36	a9a39d
321	Archive	Archives	an Archive	5	7b5d47	dda561
322	Aqueduct	Aqueducts	an Aqueduct	0	9a905c	65ab6f
323	Arena	Arenas	an Arena	0	b0587c	65ab6f
324	Bandit Fort	Bandit Forts	a Bandit Fort	0	b0a66e	65ab6f
325	Banquet	Banquets	a Banquet	3	6f5735	a9a39d
326	Basilica	Basilicas	a Basilica	0	835945	65ab6f
327	Baths	Baths	a Baths	0	746c44	65ab6f
328	Battlefield	Battlefields	a Battlefield	0	528ec6	65ab6f
329	Capital	Capitals	a Capital	5	765648	d8c280
330	Charm	Charms	a Charm	5	756349	d8c280
331	Chariot Race	Chariot Races	a Chariot Race	3	7f7569	c4c0b4
332	City Quarter	City Quarters	a City Quarter	8	7e6a30	c4c0b4
333	Colonnade	Colonnades	a Colonnade	0	9f7b27	65ab6f
334	Conquest	Conquests	a Conquest	6	7c9692	a9a39d
335	Crown	Crowns	a Crown	5	7b4b33	cec28a
336	Delve	Delves	a Delve	2	716149	a9a39d
337	Defiled Shrine	Defiled Shrines	a Defiled Shrine	0	5a746e	65ab6f
338	Dominate	Dominates	a Dominate	14	896b71	a9a39d
339	Donate	Donates	a Donate	8	886c7a	a9a39d
340	Enchantress	Enchantresses	an Enchantress	3	a5855f	dda561
341	Engineer	Engineers	an Engineer	4	733719	c4c0b4
342	Farmers' Market	Farmers' Markets	a Farmers' Market	3	867642	c4c0b4
343	Forum	Forums	a Forum	5	bc9256	c4c0b4
344	Fountain	Fountains	a Fountain	0	7c5a34	65ab6f
345	Groundskeeper	Groundskeepers	a Groundskeeper	5	978957	c4c0b4
346	Keep	Keeps	a Keep	0	6f4f7d	65ab6f
347	Labyrinth	Labyrinths	a Labyrinth	0	5e884c	65ab6f
348	Legionary	Legionaries	a Legionary	5	714b41	c4c0b4
349	Mountain Pass	Mountain Passes	a Mountain Pass	0	657d8d	65ab6f
350	Museum	Museums	a Museum	0	c47a00	65ab6f
351	Obelisk	Obelisks	an Obelisk	0	774d29	65ab6f
352	Orchard	Orchards	an Orchard	0	707c5c	65ab6f
353	Overlord	Overlords	an Overlord	8	9a8a90	c4c0b4
354	Palace	Palaces	a Palace	0	c07442	65ab6f
355	Ritual	Rituals	a Ritual	4	7a5224	a9a39d
356	Royal Blacksmith	Royal Blacksmiths	a Royal Blacksmith	8	69452b	c4c0b4
357	Sacrifice	Sacrifices	a Sacrifice	4	9b675f	c4c0b4
358	Salt the Earth	Salt the Earths	a Salt the Earth	4	7b8383	a9a39d
359	Tax	Taxes	a Tax	2	a0745a	a9a39d
360	Temple	Temples	a Temple	4	d6b452	c4c0b4
361	Tomb	Tombs	a Tomb	0	8b8585	65ab6f
362	Tower	Towers	a Tower	0	bb9b3d	65ab6f
363	Triumph	Triumphs	a Triumph	5	913d05	a9a39d
364	Triumphal Arch	Triumphal Arches	a Triumphal Arch	0	8f8b51	65ab6f
365	Villa	Villas	a Villa	4	87b34f	c4c0b4
366	Wall	Walls	a Wall	0	5e4a54	65ab6f
367	Wolf Den	Wolf Dens	a Wolf Den	0	a1a18f	65ab6f
368	Wedding	Weddings	a Wedding	7	715919	a9a39d
369	Wild Hunt	Wild Hunts	a Wild Hunt	5	15516f	c4c0b4
370	Windfall	Windfalls	a Windfall	5	9e5402	a9a39d
371	Boon Drawpile	Boon Drawpiles	a Boon Drawpile	0	666666	dbcf00
372	Boon Discardpile	Boon Discardpiles	a Boon Discardpile	0	666666	dbcf00
373	The Earth's Gift	The Earth's Gifts	The Earth's Gift	0	6b6733	dbcf00
374	The Field's Gift	The Field's Gifts	The Field's Gift	0	d3cd17	dbcf00
375	The Flame's Gift	The Flame's Gifts	The Flame's Gift	0	ff8f00	dbcf00
376	The Forest's Gift	The Forest's Gifts	The Forest's Gift	0	3b8d0b	dbcf00
377	The Moon's Gift	The Moon's Gifts	The Moon's Gift	0	001ee4	dbcf00
378	The Mountain's Gift	The Mountain's Gifts	The Mountain's Gift	0	005cff	dbcf00
379	The River's Gift	The River's Gifts	The River's Gift	0	4e9c92	dbcf00
380	The Sea's Gift	The Sea's Gifts	The Sea's Gift	0	0071d7	dbcf00
381	The Sky's Gift	The Sky's Gifts	The Sky's Gift	0	1cbeff	dbcf00
382	The Sun's Gift	The Sun's Gifts	The Sun's Gift	0	fcbe00	dbcf00
383	The Swamp's Gift	The Swamp's Gifts	The Swamp's Gift	0	39650b	dbcf00
384	The Wind's Gift	The Wind's Gifts	The Wind's Gift	0	67d35b	dbcf00
385	Hex Drawpile	Hex Drawpiles	a Hex Drawpile	0	666666	4137df
386	Hex Discardpile	Hex Discardpiles	a Hex Discardpile	0	666666	4137df
387	Bad Omens	Bad Omens	Bad Omens	0	4d4135	4137df
388	Delusion	Delusions	Delusion	0	65634d	4137df
389	Envy	Envies	Envy	0	618f55	4137df
390	Famine	Famines	Famine	0	919f8f	4137df
391	Fear	Fears	Fear	0	1f3347	4137df
392	Greed	Greeds	Greed	0	c13f0b	4137df
393	Haunting	Hauntings	Haunting	0	344860	4137df
394	Locusts	Locusts	Locusts	0	43c95f	4137df
395	Misery	Miseries	Misery	0	1c161a	4137df
396	Plague	Plagues	Plague	0	42aa6c	4137df
397	Poverty	Poverties	Poverty	0	2e2a2a	4137df
398	War	Wars	War	0	a12700	4137df
399	Miserable	Miserables	Miserable	0	1c161a	ceb0a4
400	Twice Miserable	Twice Miserables	Twice Miserable	0	1c161a	ceb0a4
401	Envious	Envious	Envious	0	618f55	ceb0a4
402	Deluded	Deludeds	Deluded	0	65634d	ceb0a4
403	Lost In The Woods	Lost In The Woods	Lost In The Woods	0	527052	ceb0a4
404	Bard	Bards	a Bard	4	57932f	c4c0b4
405	Blessed Village	Blessed Villages	a Blessed Village	4	8f7737	c4c0b4
406	Changeling	Changelings	a Changeling	3	183442	30484e
407	Cemetery	Cemeteries	a Cemetery	4	53735b	9cbe8a
408	Cobbler	Cobblers	a Cobbler	5	5a501c	7a5622
409	Conclave	Conclaves	a Conclave	4	9c6a14	c4c0b4
410	Crypt	Crypts	a Crypt	5	0d494f	7a5622
411	Cursed Village	Cursed Villages	a Cursed Village	5	265ea6	c4c0b4
412	Den Of Sin	Dens Of Sin	a Den Of Sin	5	2c2226	7a5622
413	Devil's Workshop	Devil's Workshops	a Devil's Workshop	4	7d5b83	30484e
414	Druid	Druids	a Druid	2	49b921	c4c0b4
415	Exorcist	Exorcists	an Exorcist	4	3763b5	30484e
416	Faithful Hound	Faithful Hounds	a Faithful Hound	2	8c7640	8ca2be
417	Fool	Fools	a Fool	3	a7af3f	c4c0b4
418	Ghost Town	Ghost Towns	a Ghost Town	3	173b57	7a5622
419	Guardian	Guardians	a Guardian	2	376db9	7a5622
420	Idol	Idols	a Idol	5	b13700	d8c280
421	Leprechaun	Leprechauns	a Leprechaun	3	5e7c04	c4c0b4
422	Monastery	Monasteries	a Monastery	2	02268a	30484e
423	Necromancer	Necromancers	a Necromancer	4	525a36	c4c0b4
424	Night Watchman	Night Watchmen	a Night Watchman	3	464266	30484e
425	Pixie	Pixies	a Pixie	2	a9db75	c4c0b4
426	Pooka	Pookas	a Pooka	5	6b6700	c4c0b4
427	Raider	Raiders	a Raider	6	00238b	7a5622
428	Sacred Grove	Sacred Groves	a Sacred Grove	5	5e7632	c4c0b4
429	Secret Cave	Secret Caves	a Secret Cave	3	be741c	dda561
430	Shepherd	Shepherds	a Shepherd	4	9caa90	c4c0b4
431	Skulk	Skulks	a Skulk	4	7e6060	c4c0b4
432	Tormentor	Tormentors	a Tormentor	5	884c6a	c4c0b4
433	Tragic Hero	Tragic Heroes	a Tragic Hero	5	5c88a4	c4c0b4
434	Tracker	Trackers	a Tracker	2	87c7d9	c4c0b4
435	Vampire	Vampires	a Vampire	5	523a4c	30484e
436	Werewolf	Werewolves	a Werewolf	5	9f8193	666666
437	Cursed Gold	Cursed Golds	a Cursed Gold	4	666666	d8c280
438	Goat	Goats	a Goat	2	a1e15d	d8c280
439	Haunted Mirror	Haunted Mirrors	a Haunted Mirror	0	666666	d8c280
440	Lucky Coin	Lucky Coins	a Lucky Coin	4	9ed654	d8c280
441	Magic Lamp	Magic Lamps	a Magic Lamp	0	8c3400	d8c280
442	Pasture	Pastures	a Pasture	2	666666	a9c35d
443	Pouch	Pouches	a Pouch	2	666666	d8c280
444	Bat	Bats	a Bat	2	666666	30484e
445	Ghost	Ghosts	a Ghost	4	13b12f	7a5622
446	Imp	Imps	an Imp	2	936d69	c4c0b4
447	Will-o'-wisp	Will-o'-wisps	a Will-o'-wisp	0	1d593f	c4c0b4
448	Wish	Wishes	a Wish	0	0f6551	c4c0b4
449	Zombie Apprentice	Zombie Apprentices	a Zombie Apprentice	3	292d23	c4c0b4
450	Zombie Mason	Zombie Masons	a Zombie Mason	3	5f513d	c4c0b4
451	Zombie Spy	Zombie Spies	a Zombie Spy	3	363438	c4c0b4
452	Avanto	Avantos	an Avanto	5	9fa3af	c4c0b4
453	Black Market	Black Markets	a Black Market	3	b5b5b5	c4c0b4
454	Envoy	Envoys	an Envoy	4	425064	c4c0b4
455	Governor	Governors	a Governor	5	8f9989	c4c0b4
456	Prince	Princes	a Prince	8	a4863c	c4c0b4
457	Sauna	Saunas	a Sauna	5	9f8d7b	c4c0b4
458	Stash	Stashes	a Stash	5	666666	d8c280
459	Summon	Summons	a Summon	5	c19b59	a9a39d
460	Walled Village	Walled Villages	a Walled Village	4	6eaa70	c4c0b4
461	Black Market Deck	Black Market Decks	a Black Market Deck	0	666666	666666
462	Dismantle	Dismantles	a Dismantle	4	666666	c4c0b4
463	Debt	Debt	Debt	0	666666	666666
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
-- Name: woodcutter_carddata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u_ceviri
--

SELECT pg_catalog.setval('woodcutter_carddata_id_seq', 1, false);


--
-- Data for Name: woodcutter_exceptiondata; Type: TABLE DATA; Schema: public; Owner: u_ceviri
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
15	4	0	448
16	4	3	441
17	0	0	0
\.


--
-- Name: woodcutter_exceptiondata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u_ceviri
--

SELECT pg_catalog.setval('woodcutter_exceptiondata_id_seq', 17, true);


--
-- Data for Name: woodcutter_exceptiondata_root_preds; Type: TABLE DATA; Schema: public; Owner: u_ceviri
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
33	15	9
34	15	10
35	15	11
36	16	9
37	16	10
38	16	11
\.


--
-- Name: woodcutter_exceptiondata_root_preds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u_ceviri
--

SELECT pg_catalog.setval('woodcutter_exceptiondata_root_preds_id_seq', 38, true);


--
-- Data for Name: woodcutter_exceptiondata_target_cards; Type: TABLE DATA; Schema: public; Owner: u_ceviri
--

COPY woodcutter_exceptiondata_target_cards (id, exceptiondata_id, carddata_id) FROM stdin;
5	5	2
6	6	251
7	9	3
9	15	448
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
\.


--
-- Name: woodcutter_exceptiondata_target_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u_ceviri
--

SELECT pg_catalog.setval('woodcutter_exceptiondata_target_cards_id_seq', 22, true);


--
-- Data for Name: woodcutter_exceptiondata_target_preds; Type: TABLE DATA; Schema: public; Owner: u_ceviri
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
15	15	33
16	16	7
17	17	8
\.


--
-- Name: woodcutter_exceptiondata_target_preds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u_ceviri
--

SELECT pg_catalog.setval('woodcutter_exceptiondata_target_preds_id_seq', 17, true);


--
-- Data for Name: woodcutter_gamelog; Type: TABLE DATA; Schema: public; Owner: u_ceviri
--

COPY woodcutter_gamelog (game_id, log, supply, player, players) FROM stdin;
11456279	000011456279/unrated:fff~10276:3|3:6|1:1b9~20276:3|3:6|1:1b9~102e~10153:3|2:6~202e~20153:3|2:6~10011:fff~100b3:3~10021:4~10153:3|1:6|1:1b9~20011:fff~200b3:3~20021:4~20153:3|1:6|1:1b9~10012:fff~100b1:1b9|2:3~10021:df~102e~10153:3|1:4|1:1b9~20012:fff~200b1:1b9|2:3~20021:df~202e~20152:3|1:4|1:6|1:df~10013:fff~100b1:4|3:3~10021:3b~10152:3|2:6|1:df~20013:fff~200b1:df~21082:0|1:6~21151:3|1:6|1:1b9~21081:3|1:6~200b1:1b9|1:4~20021:3b~202e~20154:3|1:6~10014:fff~100b1:df~11082:3|1:6~112e~11152:3|1:6~11082:6~100b2:3~10021:1e~10152:3|1:4|1:6|1:3b~20014:fff~200b4:3~20021:1e~20151:4|2:6|1:3b|1:df~10015:fff~100b1:3b~11151:3~11071:6~11051:8c~100b1:4|3:3~10021:8a~102e~10151:3|2:6|1:8a|1:1b9~20015:fff~200b1:3b~21151:1b9~21071:6~21051:8c~200b1:df~21081:6|1:1b9~21152:3~200b1:4|2:3~20021:1ad~202e~20152:3|1:6|1:8c|1:1ad~10016:fff~100b1:8a~11151:3b~11171:3b|1:1b9|2:6|1:3~11171:1e~11191:1e~100b1:1e~110b1:3b~12151:df~12071:6~12051:1ad~11091:3b~12151:3~12071:6~12051:8c~100b1:df~11082:3~11151:3|1:4~100b1:1b9|1:4|1:3~11071:1b9~11053:1c0~10021:1e~102e~10153:3|1:8c|1:df~20016:fff~200b1:1ad~21151:1b9~21082:0|1:6~200b1:8c~21171:1b9~21151:3|1:1e|1:3b~200b1:1e~210b1:3b~22151:4~22071:3~21091:3b~22151:3~22071:3~200b1:1b9|1:4~21071:1b9~21053:1c0~202a1:145~21052:3|1:8a~202e~20152:3|1:6|1:df|1:1c0~10017:fff~100b1:8c~11173:3|1:df~11151:1c0~100b1:1c0~11211:1c0|the Wish pile:fff~11051:8a~100b1:8a~11151:1c0~11171:1c0|3:3|1:df~11171:1e~11191:1e~100b1:1c0~11211:1c0|the Wish pile:fff~11051:8a~100b1:1e~110b1:8a~12151:3b~12171:3b|3:3|1:df~12171:3|1:1ad~12191:1ad~12081:3~11091:8a~12151:3~12171:3b|4:3|1:df|1:1ad~12171:8a~12191:8a~100b1:8a~11151:4~11171:3b|1:4|4:3|1:df|1:1ad~11171:1c0~11191:1c0~100b1:3b~11151:8c~11071:3~100b1:1ad~11151:1e~11083:3~100b1:8c~11171:1c0|1:4|1:1e|1:df~112e~11153:3~100b1:1c0~11211:1c0|the Wish pile:fff~11051:54~100b1:1e~110b1:54~12151:3~11091:54~12151:3~100b1:df~100b1:4|5:3~102a1:f1~11052:8a~10051:f1~100c1:54~102e~10151:3|1:54|2:8a|1:df~20017:fff~2048~217cL gets +3 Coins (Secret Cave).:fff~200b1:1c0~21211:1c0|the Wish pile:fff~21051:8a~200b1:8a~21151:3~21171:6|3:3|1:df~21171:8c~21191:8c~200b1:8c~21171:6|3:3|1:df~21151:3~200b4:3~202a1:f1~21052:8a~20051:f1~20152:3|1:4|1:6|1:3b~10018:fff~1048~117cc gets +3 Coins (Secret Cave).:fff~100b1:8a~11151:8a~11172:8a|1:54|1:3|1:df~11171:8c~11191:8c~100b1:8a~11151:3~11171:8a|1:8c|1:54|2:3|1:df~11171:3|1:3b~11191:3b~11081:3~100b1:3b~11151:8a~11071:3~100b1:8a~11151:3~11171:8a|1:8c|1:54|2:3|1:df~11171:8c|1:f1~11191:f1~11081:8c~100b1:8a~11151:1e~11171:f1|1:8c|1:54|1:1e|2:3|1:df~11171:8a~11191:8a~100b1:1e~110b1:54~12151:3~11091:54~12151:4~100b1:df~11081:f1~11151:1e~11082:3~100b1:8c~11171:8a|1:4|1:1e|1:3~112e~11151:3|1:8c|1:f1~100b1:1e~110b1:8c~12171:f1|1:8a|1:4|2:3~12151:3~11091:8c~12171:f1|1:8a|1:4|3:3~12151:3~100b1:f1~11071:3~100b1:4|3:3~102a1:f1~11051:54|1:8a~10051:f1~10021:54~100c1:54~102e~10151:3|1:1e|1:54|1:8a|1:f1~20018:fff~200b1:3b~21151:8a~21071:6~21051:8c~200b1:8a~21151:1e~21171:4|1:1e|2:3~21171:1c0~21191:1c0~200b1:1c0~21211:1c0|the Wish pile:fff~21051:54~200b1:1e~210b1:54~22151:1c0~21091:54~222e~22151:8a~200b1:8a~21151:8c~21171:1c0|1:8c|1:4|2:3~21171:8a~21191:8a~200b1:8a~21151:3~21171:1c0|1:8c|1:4|3:3~21171:6~21191:6~200b1:1c0~21211:1c0|the Wish pile:fff~21051:5~200b1:8c~21171:6|1:4|3:3|1:5~21151:8a~200b1:8a~21151:1ad~21171:6|1:4|3:3|1:5|1:1ad~21172:3|1:8c~21191:8c~21082:3~200b1:1ad~21151:3~21082:0|1:3~200b1:4|3:3|1:5~20021:8~202e~20151:3|1:8a|1:8c|1:df|1:f1~10019:fff~100b1:1e~110b1:8a~12151:8a~12171:f1|1:8a|1:54|1:3~12171:1ad~12191:1ad~11091:8a~12151:54~12171:f1|1:8a|2:54|1:3|1:1ad~12171:df~12191:df~100b1:54~11151:8a~100b1:8a~11151:8a~11171:f1|2:8a|1:54|1:3|1:1ad|1:df~11171:8c~11191:8c~100b1:8a~11151:8a~11171:f1|2:8a|1:8c|1:54|1:3|1:1ad|1:df~11171:1e|1:8c|1:f1~11191:1e~11081:8c|1:f1~100b1:8a~11151:3~11171:f1|1:8a|1:8c|1:54|1:1e|2:3|1:1ad|1:df~11171:3b|1:54~11191:3b~11081:54~100b1:1ad~11151:4~11082:3|1:f1~100b1:8c~11171:3b|1:8a|1:54|1:1e|1:4|1:df~112e~11151:3|1:8a|1:f1~100b1:1e~110b1:54~12151:3~11091:54~12151:f1~100b1:3b~11151:54~11071:f1~11051:4~100b1:8a~11151:3~11171:f1|1:8a|1:4|1:54|3:3|1:df~11171:8c~11191:8c~100b1:54~112e~11151:4~100b1:df~11081:8a|1:8c|1:f1~100b2:4|3:3~10021:5|1:8~102e~10152:4|1:1e|1:df|1:f1~20019:fff~2048~217cL gets +3 Coins (Secret Cave).:fff~200b1:8c~21171:f1|1:8a|1:3|1:df~21151:8|1:1e|1:54~200b1:54~21151:3b~200b1:1e~210b1:8a~22151:8c~22171:3b|1:f1|1:8c|1:3|1:8|1:df~22171:8a~22191:8a~21091:8a~22151:4~22171:3b|1:f1|1:8c|1:8a|1:4|1:3|1:8|1:df~22171:5~22191:5~200b1:8c~21171:3b|1:f1|1:8a|1:4|1:3|1:8|1:5|1:df~21151:3|1:6|1:8a~200b1:3b~21151:3~21071:3~200b1:8a~21151:8a~21171:f1|2:8a|1:6|1:4|2:3|1:8|1:5|1:df~21173:3~21083:3~200b1:df~21082:0|1:3~212e~21152:3|1:8~21081:6~200b1:8a~21151:3~21171:f1|1:8a|1:4|1:5|1:8|3:3~21172:3~212e~21171:6~21191:6~21082:3~200b1:8a~212e~21151:3~21171:f1|1:6|1:4|1:5|1:8|4:3~21171:3~21081:3~200b1:f1~21071:3~200b1:4|1:5|3:3~20021:8|1:be~202e~20151:4|1:8|1:8a|1:8c|1:f1~100110:fff~1048~117cc gets +3 Coins (Secret Cave).:fff~100b1:df~11081:1e|1:f1~100b2:4~10021:8~10151:3|1:5|2:54|1:8a~200110:fff~200b1:8c~21171:f1|1:8a|1:4|1:8~21151:3|1:3b|1:8a~200b1:8a~21151:3~21171:3b|1:f1|1:8a|1:4|1:8|2:3~21171:3|1:54|1:8a~21191:54~21081:3|1:8a~200b1:3b~21151:1e~21071:3~200b1:1e~210b1:54~22151:8~21091:54~22151:8a~200b1:8a~21151:5~21171:f1|1:8a|1:4|2:8|1:3|1:5~21171:1ad~21191:1ad~200b1:8a~21151:df~21171:f1|1:4|2:8|1:3|1:5|1:1ad|1:df~21171:8c~21191:8c~200b1:1ad~21151:6~21082:0|1:f1~200b1:8c~21171:6|1:4|1:3|1:5|1:df~212e~21151:3|1:8a|1:be~200b1:8a~21151:f1~21171:f1|1:6|1:4|2:3|1:5|1:be|1:df~21171:8~21191:8~200b1:df~21081:6|1:be~21151:3|1:8~21082:0|1:8~200b1:4|3:3|1:5~20021:8|1:3b~202e~20151:5|1:8|1:54|1:8c|1:df~100111:fff~100b1:8a~11151:3~11172:54|2:3|1:5~11171:8a~11191:8a~100b1:8a~11151:8c~11171:8c|2:54|2:3|1:5~11171:3|1:8a~11191:8a~11081:3~100b1:8a~11151:8a~11171:8c|1:8a|2:54|2:3|1:5~11171:3b|1:8c~11191:3b~11081:8c~100b1:54~11151:54~100b1:54~11151:8a~100b1:8a~11151:8a~11171:3b|1:8c|2:8a|1:54|2:3|1:5~11171:8~11191:8~100b1:8a~11151:1e~11171:3b|1:8c|1:8a|1:54|1:1e|2:3|1:5|1:8~112e~11171:4|1:1e~11191:4~11081:1e~100b1:3b~11151:8c~11071:3~100b1:8c~11171:8c|1:8a|1:54|1:1e|1:4|1:3|1:5|1:8~11151:8|1:df|1:f1~100b1:1e~110b1:54~12151:3~11091:54~12151:4~100b1:8a~11151:1ad~11171:f1|1:8c|2:4|2:3|1:5|2:8|1:df|1:1ad~112e~11171:1e~11191:1e~100b1:df~11082:8|1:1e|1:8c|1:f1|1:1ad~100b2:4|2:3|1:5~10022:7~102e~10151:3|1:7|1:54|2:8a~200111:fff~2048~217cL gets +3 Coins (Secret Cave).:fff~200b1:8c~21171:54|1:5|1:8|1:df~21151:3|1:3b|1:be~200b1:54~21151:8a~200b1:3b~21151:f1~21071:be~22053:4~21051:7~200b1:8a~21151:8~21171:f1|1:5|2:8|1:3|1:df~21171:8c~21191:8c~200b1:8c~21171:f1|1:5|2:8|1:3|1:df~21151:6~200b1:df~21084:0|1:6~21151:3|1:4|1:8|1:1e|1:3b~21082:0|1:1e~200b1:4|1:5|1:3~20021:7|1:8~202e~20151:3|3:8a|1:f1~100112:fff~100b1:8a~11151:1ad~11171:8a|1:7|1:54|1:3|1:1ad~11171:8|1:8a~11191:8~11081:8a~100b1:8a~11151:3~11171:7|1:54|2:3|1:8|1:1ad~11171:1e~11191:1e~100b1:1e~110b1:54~12151:f1~11091:54~12151:5~100b1:1ad~11151:54~11081:3|1:7|1:8~100b1:54~11151:df~100b1:f1~11071:df~11052:6~100b1:3|1:5~102a1:f1~11051:8c|1:df~10051:f1~100c2:54~10151:4|2:54|1:8a|1:8c~200112:fff~200b1:8a~21151:3b~21171:3b|1:f1|2:8a|1:3~21171:3|1:8~21191:8~21081:3~200b1:8a~21151:8~21171:3b|1:f1|1:8a|1:3|2:8~21171:5~21191:5~200b1:8a~21151:8~21171:3b|1:f1|1:3|3:8|1:5~21171:4~21191:4~200b1:3b~21151:8~21071:3~200b1:f1~21071:5~21052:7~200b1:4~20021:2~20151:4|1:7|1:54|1:8a|1:8c~100113:fff~1048~117cc gets +3 Coins (Secret Cave).:fff~100b1:54~11151:54~100b1:54~11151:3b~100b1:8c~11171:3b|1:8a|1:4|1:54~11151:4|1:8|1:8a~100b1:8a~11151:8a~11171:3b|2:8a|2:4|1:54|1:8~11171:8c~11191:8c~100b1:8a~11151:1e~11171:3b|1:8a|1:8c|2:4|1:54|1:1e|1:8~11171:7~11191:7~100b1:1e~110b1:8a~122e~12151:3~12171:3b|1:8c|1:7|2:4|1:54|1:8|1:3~12171:8a~12191:8a~11091:8a~12151:5~12171:3b|1:8c|1:7|1:8a|2:4|1:54|1:8|1:3|1:5~12171:8a|1:f1~12191:f1~12081:8a~100b1:8a~11151:6~11171:3b|1:f1|1:8c|1:7|1:6|2:4|1:54|1:8|1:3|1:5~11171:1e~11191:1e~100b1:3b~11151:3~11071:4~11051:be~100b1:f1~11071:3~100b1:8c~11171:7|1:6|1:4|1:54|1:1e|1:8|1:3|1:5~11151:6|1:8c|1:df~100b1:1e~110b1:54~12151:8a~11091:54~12151:8~100b1:8a~11151:f1~11171:f1|1:7|2:6|1:8c|1:4|2:8|1:3|1:5|1:df~11171:7~112e~11171:be~11191:be~11081:7~100b1:8c~11171:f1|1:7|2:6|1:4|2:8|1:3|1:5|1:be|1:df~11151:8a~100b1:f1~11071:5~11052:7~100b1:8a~112e~11151:7~11172:7|2:6|1:4|2:8|1:3|1:be|1:df~11172:7~11082:7~100b1:df~11082:6|2:7|2:8|1:be~100b1:4|1:3~10021:8	00210~00614~00708~00808~00360~00440~00530~07010~0be08~0f110~08a10~01e10~03b10~0df10~08c10~1ad10~05410~14501~15e01~1c012~1b902	\N	ceviri~bonkura
11712695	000011712695/unrated:fff~10277:3|3:6~20277:3|3:6~102e~10155:3~202e~20153:3|2:6~10011:fff~100b5:3	00210~00614~00708~00808~00360~00440~00530~0f810~1a710~05910~0a810~13305~13205~08a10~09a10~03210~1a610~09b10~15e01~1c101~1c201~1c301	\N	Lord Rattington~ceviri
11456891	000011456891/unrated:fff~10277:3|3:6~20277:3|3:6~102e~10154:3|1:6~202e~20155:3~10011:fff~100b4:3~10021:bf~10153:3|2:6~20011:fff~200b5:3~20021:156~20152:3|3:6~10012:fff~100b3:3~10021:4~102e~10152:3|2:6|1:bf~20012:fff~202a1:f2~21051:4~202e~20152:3|3:6~10013:fff~100b1:bf~11071:6~102a1:f2~11051:bf~10154:3|1:6~20013:fff~202a1:f2~21051:4~20153:3|1:4|1:156~10014:fff~100b4:3~10021:117~102e~10154:3|1:4~20014:fff~200b1:156~210b1:156~22511/the Farmers' Market pile:fff~200b3:3|1:4~202a1:153~216a8:fff~206c6/2:fff~202e~20154:3|1:4~207b~21193:3|1:4|3:6|1:156~21077:3|3:6~211f1:156|2:4~21152:4|1:156~10015:fff~100b4:3|1:4~10021:af~10152:3|2:6|1:bf~20015:fff~200b1:156~210b1:156~22511/the Farmers' Market pile:fff~200b2:4~206b2:fff~20022:4a~202e~20152:4|2:4a|1:156~10016:fff~100b1:bf~11071:6~102a1:f2~11051:156~102e~10151:3|1:6|2:bf|1:117~20016:fff~200b1:156~210b1:156~22511/the Farmers' Market pile:fff~200b2:4~20021:4|1:156~202e~20151:4|2:4a|2:156~10017:fff~100b1:bf~11071:6~100b1:bf~11071:3~100b1:117~115aJourney token:fff~10021:4a~102a1:f2~11051:117~10153:3|1:4|1:af~20017:fff~200b1:4a~216d1:4|Native Village:fff~200b1:4a~21191:4~200b1:156~210b1:156~22511/the Farmers' Market pile:fff~200b1:156~21494/the Farmers' Market pile:fff~21071:156~200b2:4~20021:156|1:1b4~202e~20153:4|1:4a|1:1b4~10018:fff~100b1:af~11071:3~11051:1b4~100b2:3|1:4~10021:bf~102e~10153:3|1:bf|1:156~20018:fff~200b1:4a~200b1:1b4~21151:4a|2:156~200b1:4a~200b1:156~21511/the Farmers' Market pile:fff~200b1:156~210b1:156~22511/the Farmers' Market pile:fff~200b3:4~20022:4a|1:1b4~202e~20153:4a|2:156~10019:fff~100b1:bf~11071:3~100b1:156~11511/the Farmers' Market pile:fff~10022:4a~102a1:f2~11051:4a~10151:3|1:4|1:4a|1:117|1:1b4~20019:fff~200b1:4a~216d1:1b4|Native Village:fff~200b1:4a~216d1:4|Native Village:fff~200b1:4a~21191:4|1:1b4~200b1:1b4~21151:4|1:4a|1:1b4~200b1:4a~216d1:4|Native Village:fff~200b1:156~210b1:4a~22191:4~200b1:156~21511/the Farmers' Market pile:fff~200b3:4~20022:4a~200b1:1b4~2175Locusts:fff~1125Locusts:fff~11171:3~11071:3~11051:2~2108Locusts:fff~202e~20152:4|1:4a|2:156~100110:fff~100b1:4a~116d1:1|Native Village:fff~100b1:117~115bJourney token:fff~112e~11151:2|1:3|2:bf|1:117~100b1:bf~11071:4~100b1:bf~11071:2~100b1:117~115aJourney token:fff~100b2:3~10021:b1~100b1:1b4~1175Delusion:fff~2125Delusion:fff~2175Deluded:fff~1108Delusion:fff~10151:3|3:4a|1:156~200110:fff~200b1:4a~216d1:4a|Native Village:fff~200b1:156~210b1:117~225aJourney token:fff~200b1:156~21494/the Farmers' Market pile:fff~21071:156~2023Deluded:fff~202a1:f2~21051:156~20151:4|2:4a|2:1b4~100111:fff~100b1:4a~116d1:1|Native Village:fff~100b1:4a~112e~116d1:b1|Native Village:fff~100b1:4a~11191:af|1:b1|1:bf~100b1:b1~110b1:117~125bJourney token:fff~12152:3|1:4a|1:bf|1:117~100b1:4a~116d1:1b4|Native Village:fff~100b1:117~115aJourney token:fff~100b1:bf~11071:3~100b1:bf~11071:3~100b1:156~11511/the Farmers' Market pile:fff~100b1:af~11071:3~11051:1b4~10021:1b4~102a1:f2~11051:156~102e~10152:bf|1:117|2:156~200111:fff~200b1:4a~216d1:4a|Native Village:fff~200b1:1b4~212e~21151:4a|2:156~200b1:4a~216d1:4|Native Village:fff~200b1:4a~21191:4|2:4a~200b1:4a~216d1:4|Native Village:fff~200b1:4a~21191:4~200b1:156~21511/the Farmers' Market pile:fff~200b1:156~210b1:156~22511/the Farmers' Market pile:fff~200b3:4~20022:1b4~200b1:1b4~2175Poverty:fff~1125Poverty:fff~11081:117|1:156~2108Poverty:fff~202e~20151:4|1:4a|1:156|2:1b4~100112:fff~100b1:bf~11071:bf~100b1:156~11511/the Farmers' Market pile:fff~10021:2a~102a1:f2~11051:117~10152:4a|1:af|1:b1|1:1b4~200112:fff~200b1:4a~216d1:1b4|Native Village:fff~200b1:1b4~21152:4|1:4a~200b1:4a~216d1:4a|Native Village:fff~200b1:1b4~21151:4a|1:156|1:1b4~200b1:4a~21191:4a|1:1b4~200b1:1b4~21152:4a~200b1:4a~200b1:4a~200b1:156~21494/the Farmers' Market pile:fff~21071:156~200b1:156~210b1:156~22511/the Farmers' Market pile:fff~200b3:4~20022:156~200b1:1b4~2175War:fff~1125War:fff~11171:bf~11071:bf~2108War:fff~202e~20152:4|1:156|2:1b4~100113:fff~100b1:4a~116d1:1b4|Native Village:fff~100b1:b1~110b1:117~125bJourney token:fff~122e~12152:4a|3:117~100b1:4a~116d1:1|Native Village:fff~100b1:4a~116d1:bf|Native Village:fff~100b1:4a~11191:2a|1:bf|2:1b4~100b1:117~115aJourney token:fff~100b1:117~115bJourney token:fff~11152:156~100b1:bf~11071:2a~100b1:156~11511/the Farmers' Market pile:fff~100b1:156~11511/the Farmers' Market pile:fff~10021:8~100b1:1b4~1175Misery:fff~2125Misery:fff~2175Miserable:fff~1108Misery:fff~100b1:1b4~1175Famine:fff~2125Famine:fff~21172:4a|1:156~21082:4a|1:156~211fnothing:fff~1108Famine:fff~100b1:1b4~1175Greed:fff~2125Greed:fff~21051:3~1108Greed:fff~102e~10151:8|1:4a|1:156|2:1b4~200113:fff~200b1:156~21511/the Farmers' Market pile:fff~200b2:4~20021:bf|1:1b4~200b1:1b4~2175Haunting:fff~1125Haunting:fff~110c1:8~2108Haunting:fff~200b1:1b4~2175Fear:fff~1125Fear:fff~2108Fear:fff~20151:3|2:4a|1:156|1:1b4~100114:fff~100b1:4a~116d1:8|Native Village:fff~100b1:1b4~11151:4a|2:117~100b1:4a~116d1:1|Native Village:fff~100b1:1b4~11151:4a|1:117|1:1b4~100b1:4a~116d1:1|Native Village:fff~100b1:1b4~11151:4a|1:b1|1:bf~100b1:4a~11191:8|1:af|1:156~100b1:b1~110b1:bf~12071:117~100b1:bf~11071:117~100b1:156~11494/the Farmers' Market pile:fff~11071:156~100b1:156~11511/the Farmers' Market pile:fff~10021:5~102a1:f2~11051:156~102e~10151:5|1:8|1:4a|1:af|1:bf~200114:fff~200b1:4a~216d1:4a|Native Village:fff~200b1:1b4~21151:4|1:4a|1:1b4~200b1:4a~212e~216d1:156|Native Village:fff~200b1:1b4~21151:4|1:156|1:1b4~200b1:4a~216d1:1b4|Native Village:fff~200b1:1b4~21151:4|2:4a~200b1:4a~216d1:1|Native Village:fff~200b1:4a~21191:4a|1:bf|1:156|1:1b4~200b1:bf~21071:3~200b1:4a~216d1:1b4|Native Village:fff~200b1:156~21511/the Farmers' Market pile:fff~200b1:156~21511/the Farmers' Market pile:fff~200b1:156~210b1:156~22511/the Farmers' Market pile:fff~200b3:4~20022:8~200b1:1b4~2175Plague:fff~1125Plague:fff~11051:2~2108Plague:fff~202e~20151:8|2:4a|1:156|1:1b4~100115:fff~100b1:bf~11071:2~100b1:af~11071:4a~11051:7~100b1:5~10021:7~10152:4a|1:156|2:1b4~200115:fff~200b1:4a~216d1:4a|Native Village:fff~200b1:1b4~21151:4a|1:156|1:1b4~200b1:4a~216d1:4|Native Village:fff~200b1:1b4~21151:8|1:4a|1:bf~200b1:4a~216d1:4|Native Village:fff~200b1:4a~21192:4|1:4a|1:1b4~200b1:1b4~21151:4a|1:156|1:1b4~200b1:4a~216d1:4|Native Village:fff~200b1:4a~21191:4~200b1:156~210b1:bf~22071:bf~200b1:156~21494/the Farmers' Market pile:fff~21071:156~200b1:156~21511/the Farmers' Market pile:fff~200b3:4~20021:5|1:156~200b1:1b4~21750:183~11250:183~111d~11171:b1|1:156|1:bf|1:af|1:8|1:5|1:4a|1:117|1:1b4|2:7~21080:183~202e~20151:4|2:156|2:1b4~100116:fff~100b1:4a~112e~116d1:1|Native Village:fff~100b1:1b4~11151:7|1:bf|1:117~100b1:4a~116d1:7|Native Village:fff~100b1:1b4~11151:5|1:4a|1:156~100b1:4a~11191:7|1:af~100b1:bf~11071:117~100b1:156~11511/the Farmers' Market pile:fff~100b1:af~11071:156~11051:7~100b1:5~10021:8~102e~10152:8|1:4a|1:b1|1:1b4~200116:fff~200b1:156~21511/the Farmers' Market pile:fff~200b1:4~20021:7~200b1:1b4~2175Envy:fff~1125Envy:fff~1175Envious:fff~2108Envy:fff~200b1:1b4~2175Poverty:fff~1125Poverty:fff~11082:8~2108Poverty:fff~20152:8|2:4a|1:1b4~100117:fff~100b1:4a~116d1:1|Native Village:fff~100b1:1b4~11151:4a|1:af|1:bf~100b1:4a~11191:5~100b1:bf~11071:5~100b1:b1~110b1:bf~12071:af~1023Envious:fff~10021:8~102a1:f2~11051:6~10153:7|1:4a|1:156~200117:fff~200b1:4a~216d1:1b4|Native Village:fff~200b1:1b4~21151:4|1:156|1:1b4~200b1:4a~216d1:4a|Native Village:fff~200b1:1b4~21151:5|2:4a~200b1:4a~216d1:4|Native Village:fff~200b1:4a~21191:4|1:4a|1:1b4~200b1:1b4~212e~21151:7|1:4a|1:156~200b1:4a~216d1:4|Native Village:fff~200b1:4a~21191:4~200b1:156~210b1:156~22511/the Farmers' Market pile:fff~200b1:156~21494/the Farmers' Market pile:fff~21071:156~200b1:5|3:4~20021:7|1:156|1:1b4	00210~00614~00708~00808~00360~00440~00530~15610~0af10~11710~04a10~0b110~0bf10~02a08~12110~1b410~01710~15301~0f201~18301~18401~18501~18601~18701~18801~18901~18a01~18b01~18c01~18d01~18e01~19202~19102~18f02~19002	\N	RobertJ~ceviri
10005861	000010005861/unrated:fff~10277:3|3:6~20277:3|3:6~102e~10154:3|1:6~202e~20153:3|2:6~10011:fff~100b4:3~10021:b0~10153:3|2:6~20011:fff~200b3:3~20021:4~20154:3|1:6~10012:fff~100b3:3~10021:4~102e~10154:3|1:6~20012:fff~200b4:3~20021:b0~202e~20153:3|1:4|1:b0~10013:fff~100b4:3~10021:117~10152:3|2:6|1:b0~20013:fff~200b1:b0~21051:40~200b1:4|3:3~20021:1c~20152:3|2:6|1:40~10014:fff~100b1:b0~11051:117~100b2:3~10021:fb~102e~10152:3|1:4|2:117~20014:fff~200b1:40~11081:3~200b2:3~20021:117~202e~20153:3|2:6~10015:fff~100b1:117~115a~100b1:4|1:3~10021:fb~10154:3|1:fb~20015:fff~200b2:3~20021:fb~20151:3|1:4|1:6|1:40|1:117~10016:fff~100b1:fb|4:3~111b1:fb|Tavern mat:fff~10021:1c~10151:3|3:6|1:b0~20016:fff~200b1:40~11081:3~200b1:4|1:3~20021:1c~20153:3|1:1c|1:b0~10017:fff~100b1:b0~11051:117~102e~10152:3|1:4|2:117~20017:fff~200b1:1c~212e~21151:117~21172:3~21072:3~22502/Tomb:fff~200b1:117~215a~200b2:3~20021:fb~20151:3|1:6|1:1c|1:40|1:fb~10018:fff~100b1:117~115b~11152:6|1:1c|1:b0|1:fb~101c1:fb~100b1:1c~11151:3~11172:3~11072:3~12502/Tomb:fff~100b1:b0~11051:117~100b1:117~115a~100b1:fb|1:4|3:3~111b1:fb|Tavern mat:fff~10023:fb~10152:3|1:6|2:117~20018:fff~200b1:1c~21151:6~21171:3|1:6~21071:3|1:6~22502/Tomb:fff~200b1:40~11081:3~200b1:fb~211b1:fb|Tavern mat:fff~200b1:3~20021:117~202e~20152:3|1:4|1:b0|1:117~10019:fff~100b1:117~115b~112e~11151:3|1:6|1:b0|2:fb~101c1:fb~100b1:117~115a~100b1:b0~11051:fb~100b1:fb|2:3~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~10022:fb~10151:3|1:4|1:6|1:fb|1:117~20019:fff~200b1:b0~21051:117~201c1:fb~200b1:117~215b~21151:3|1:6|1:1c|2:117~200b1:1c~21151:1c~21171:40|1:fb~21081:40~210c1:fb~200b1:1c~21151:fb~21171:3|1:6~21071:3|1:6~22502/Tomb:fff~200b1:117~215a~200b1:fb|1:4|3:3~211b1:fb|Tavern mat:fff~20021:5~202e~20151:3|1:6|1:40|1:fb|1:117~100110:fff~100b1:117~115b~11152:3|1:1c|1:fb|1:117~101c1:fb~100b1:1c~11151:fb~112e~11171:3|1:fb~11071:3~12501/Tomb:fff~110c1:fb~100b1:117~115a~100b1:fb|1:4|3:3~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~10021:1c8~10151:6|1:b0|2:fb|1:117~200110:fff~200b1:117~215b~21151:4|1:1c|1:b0|2:117~201c1:fb~200b1:1c~21151:3~21171:5|1:1c~21081:1c~210c1:5~200b1:117~215a~200b1:117~215b~212e~21151:3|1:5|1:1c~200b1:fb~211b1:fb|Tavern mat:fff~200b1:4|1:5|2:3~20021:1c8~202e~20151:3|1:6|1:b0|1:117|1:1c8~100111:fff~100b1:b0~11051:28~101c1:fb~100b1:117~115b~11151:3|1:6|1:28|1:fb|1:117~100b1:28~112e~11151:6|1:1c8~101c1:fb~100b1:1c8~116d1:117|Prince:fff~100b1:fb|1:3~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~10021:50~10151:3|1:4|1:1c|1:fb|1:117~200111:fff~200b1:1c8~216d1:117|Prince:fff~20151:3|1:5|2:1c|1:117~100112:fff~1048~110b1:117~125a~100b1:117~115b~112e~11152:3|1:fb|2:117~101c1:fb~100b1:1c~11151:3~11171:6|1:28~11071:6~12501/Tomb:fff~110c1:28~100b1:117~115a~100b1:117~115b~11151:6|1:28|1:50|1:b0|1:fb~101c1:fb~100b1:b0~11051:117~100b1:28~11151:6|1:117~101c1:fb~100b1:117~115a~100b1:50~21081:fb~21051:2~100b1:fb|1:4|4:3~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~10021:aa|1:117~111a1:117~102e~10151:6|1:1c|1:fb|2:117~200112:fff~2048~210b1:117~225a~200b1:1c~21151:2~21171:3|1:40~21071:3|1:40~22502/Tomb:fff~200b1:1c~21151:117~212e~21171:4|1:fb~210c1:4|1:fb~200b1:117~215b~21151:3|1:4|1:6|1:b0|1:fb~201c1:fb~200b1:117~215a~200b1:b0~21051:aa~200b1:fb|1:4|2:3|1:5~211b1:fb|Tavern mat:fff~20021:4|1:1c~211a1:117~202e~20152:3|1:5|1:aa|1:b0~100113:fff~1048~110b1:117~125b~12153:3|1:28|1:b0~100b1:1c~11151:6~11171:4|1:fb~110c1:4|1:fb~100b1:117~115a~101c1:fb~100b1:117~115b~11151:4|1:50|2:fb|1:117~101c1:fb~100b1:117~115a~100b1:28~11151:3|1:aa~100b1:b0~11051:117~101c1:fb~100b1:50~21081:117~222d1:aa~22051:4~100b1:aa~11071:6~12501/Tomb:fff~11052:4~100b1:fb|1:4|4:3~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~10021:8~111a1:117~102e~10151:4|1:50|3:117~200113:fff~2048~210b1:117~225b~22151:2|1:4|2:1c|1:fb~200b1:1c~21151:1c~21171:6|1:117~21071:6~22501/Tomb:fff~210c1:117~200b1:1c~21151:117~212e~21171:4|1:117~21081:117~210c1:4~200b1:aa~21071:4~22501/Tomb:fff~21053:4~201c1:fb~200b1:1c~21151:4~212e~21172:4~21072:4~22502/Tomb:fff~200b1:117~215a~200b1:b0~21051:aa~200b1:fb|1:4|2:3|1:5~211b1:fb|Tavern mat:fff~20021:1c8~211a1:117~202e~20151:3|2:4|1:aa|1:117~100114:fff~1048~110b1:117~125b~12151:8|1:aa|1:b0|2:117~100b1:117~115a~101c1:fb~100b1:117~115b~11152:3|1:1c|1:fb|1:117~100b1:1c~11151:fb~11171:6|1:28~11071:6~12501/Tomb:fff~110c1:28~100b1:117~115a~101c1:fb~100b1:117~115b~11152:3|1:4|1:28|1:fb~100b1:aa~11071:50~12501/Tomb:fff~11054:4~101c1:fb~100b1:117~115a~100b1:117~115b~112e~11155:4~101c1:fb~100b1:b0~11051:6~100b1:28~11151:6~100b1:fb|7:4|4:3~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~100b1:fb~111b1:fb|Tavern mat:fff~10027:6	00210~00614~00708~00808~00360~00440~00530~1c810~11710~0aa10~01c10~04010~0a210~0b010~05010~02810~0fb10~16301~16901	\N	breppert~ceviri
11652601	000011652601/unrated:fff~10276:3|1:c3|1:cc|1:cd|1:1bb~20276:3|1:c3|1:cc|1:cd|1:1bb~102e~10153:3|1:cc|1:1bb~202e~20154:3|1:c3~10011:fff~100b1:1bb|3:3~10021:c5~10153:3|1:c3|1:cd~20011:fff~200b4:3~20021:c5~20152:3|1:cc|1:cd|1:1bb~10012:fff~100b3:3~10021:c2~102e~10153:3|1:c2|1:c5~20012:fff~200b1:1bb|2:3~20021:c2~202e~20152:3|1:c2|1:c3|1:cd~10013:fff~100b1:c5~11151:3~11171:cc~11081:cc~100b1:c2~11181:1~11071:cc~11051:c2~100b3:3~102a1:114~114cTrashing token/the Ironmonger pile:fff~11071:c2~11051:c7~10152:3|1:c3|1:cd|1:1bb~20013:fff~200b1:c2~21071:c3~21051:c2~21071:c2~21051:c7~20152:3|1:c5|1:cc|1:1bb~10014:fff~100b1:1bb|2:3~10021:4~102e~10153:3|1:c5|1:1bb~20014:fff~200b1:c5~21151:3~21171:3~21081:3~200b1:cc~200b1:1bb|3:3~20021:1b3~202e~20152:3|1:c5|1:cc|1:1bb~10015:fff~100b1:c5~11151:c7~11171:c3~11081:c3~100b1:c7~11211:c7|the Madman pile:fff~11151:3|1:4|1:c2|1:cd~100b1:c2~11181:1~11071:cd~12151:3~11051:4~100b1:1bb|5:3|1:4~10021:4|1:1b3~102e~10153:3|2:4~20015:fff~200b1:c5~21151:3~21171:c2~210c1:c2~200b1:cc~200b1:1bb|3:3~20021:c5~20152:3|1:c2|1:c7|1:cd~10016:fff~100b1:3|2:4~10021:1b3~10151:3|1:4|1:c2|1:1b3|1:1bb~20016:fff~200b1:c2~21181:cc|1:1bb|4:0|1:3~21071:cd~22151:3~21051:4~200b3:3~20021:4~202e~20152:3|1:4|1:c2|1:1b3~10017:fff~100b1:c2~11185:0|1:4~11051:4~100b1:1bb|1:3|1:4~10021:c5~100b1:1b3~1175Delusion:fff~2125Delusion:fff~2175Deluded:fff~1108Delusion:fff~11051:56~11231:1b3~11241:1bc~102e~10152:3|1:4|1:c3|1:c5~20017:fff~200b1:c2~21051:4~2023Deluded:fff~200b2:3|1:4~202a1:114~214cTrashing token/the Ironmonger pile:fff~200b1:1b3~2175Haunting:fff~1125Haunting:fff~110c1:3~2108Haunting:fff~21051:56~21231:1b3~21241:1bc~21071:c2~21051:c7~20152:c5|1:c7|1:cc|1:1bb~10018:fff~100b1:c5~11151:3~11171:1bc~110c1:1bc~100b2:3|1:4~102a1:c5~11071:c3~10051:c5~10151:3|1:4|1:c2|1:c5|1:1bc~20018:fff~200b1:c5~21151:3~21171:3~21081:3~200b1:c7~21211:c7|the Madman pile:fff~212e~21152:3|1:4|1:1bc~200b1:c5~21151:c7~21171:3~21081:3~200b1:c7~21211:c7|the Madman pile:fff~212e~21153:3|2:4|1:56~200b1:cc~200b1:56~200b1:1bb|4:3|3:4~20021:5|1:56|1:1b2~200b1:1bc~21072:3~21231:1bc~21241:1b3~202e~20151:3|1:4|1:5|1:c5|1:1b3~10019:fff~100b1:c5~11151:3~11171:3~11081:3~100b1:c2~11186:0~11051:1b2~100b1:1bc~11072:3~11231:1bc~11241:1b3~11071:c2~11051:c7~10151:3|2:4|1:56|1:1bb~20019:fff~2048~210d1:3|1:56~200b1:c5~21151:cc~21171:1b2~210c1:1b2~200b1:cc~200b1:56~21151:4|1:1b2~200b1:1b2~21750:179~21250:179~21080:179~200b1:5|2:3|2:4~20021:8~200b1:1b3~2175War:fff~1125War:fff~11171:1b3~112e~11171:3|1:c5|1:c7~11071:c5~11081:3|1:c7|1:1b3~2108War:fff~21051:c5~222d1:1b2~220c1:1~21231:1b3~21241:1bc~20151:3|1:4|2:c5|1:1bb~100110:fff~100b1:56~11151:c5|1:1b3~100b2:4~102a1:c5~11071:3~10051:c5~100b1:1b3~1175Greed:fff~2125Greed:fff~21051:3~1108Greed:fff~11051:56~11231:1b3~11241:1bc~10152:3|2:4|1:1b2~200110:fff~2048~210d2:3~200b1:c5~212e~21151:4~21171:1b2~210c1:1b2~200b1:c5~21151:1b2~21171:cc~21081:cc~200b1:1b2~21750:176~21250:176~200b1:1bb|1:3|2:4~202a1:c5~21071:3~20051:c5~212d1:1b2~210c1:1~202a1:c5~21071:3~20051:c5~212d1:1b2~210c1:1~20080:176~20152:3|1:56|2:c5~100111:fff~1048~112e~110d1:c5|1:1b3~100b1:c5~11151:c7~11171:56~110c1:56~100b1:c7~11211:c7|the Madman pile:fff~11151:3|1:4|1:56|1:c5|1:1bb|1:1bc~100b1:c5~11151:c5~11171:4~110c1:4~100b1:1b2~11750:180~11250:180~11151:4~11082:3~11080:180~100b1:c5~112e~11151:3~11171:3~11081:3~100b1:56~112e~11151:3~100b1:1bb|1:3|4:4~10021:c5~112d1:1b2~110c1:1~10021:56~112d1:1b2~110c1:1~10021:4~100b1:1b3~1175Envy:fff~2125Envy:fff~2175Envious:fff~1108Envy:fff~11051:56~122d1:1b2~120c1:1~11231:1b3~11241:1bc~100b1:1bc~11072:3~11231:1bc~11241:1b3~102e~10151:3|2:56|2:c5~200111:fff~200b1:c5~21151:c5~21171:5~210c1:5~200b1:c5~21151:5~21171:1bc~210c1:1bc~200b1:c5~21151:1bc~21171:8~21081:8~21151:4~200b1:56~212e~21151:4|1:1b2~2023Envious:fff~200b1:5|2:3|2:4~20021:1ac~200b1:1bc~21071:1b2~21231:1bc~21241:1b3~20151:3|1:4|1:c5|1:cc|1:1bb~100112:fff~1048~110d1:4|1:c5~100b1:c5~11151:1b2~11171:1b3~110c1:1b3~100b1:c5~11151:1b3~11171:4~11081:4~100b1:c5~11151:1bc~11171:c5~110c1:c5~100b1:56~11151:c5|1:1bb~100b1:c5~11151:4~11171:4~110c1:4~100b1:56~11152:4~100b1:1bb|4:4~10021:4|1:8~100b1:1bc~11071:3|1:1b2~11231:1bc~11241:1b3~100b1:1b3~1175Poverty:fff~2125Poverty:fff~21081:3|1:cc~1108Poverty:fff~11051:34~11231:1b3~11241:1bc~102e~10152:4|1:34|1:56|1:1b3~200112:fff~2048~210d1:8|1:56~200b1:c5~21151:c5~212e~21171:5~210c1:5~200b1:c5~21151:5~21171:1b3~210c1:1b3~200b1:56~21151:cc|1:1b3~200b1:1bb|1:5|1:4~20021:b5|1:1b2~200b1:1b3~2175Locusts:fff~1125Locusts:fff~11171:4~11071:4~11051:3~2108Locusts:fff~21051:56~21231:1b3~21241:1bc~20151:3|1:4|3:c5~100113:fff~1048~110d1:4|1:56|2:c5~100b1:c5~11151:4~11171:1bc~11081:1bc~100b1:c5~11151:1bb~11171:c5~110c1:c5~100b1:56~11151:8|1:c5~100b1:c5~11151:4~11171:c5~110c1:c5~100b1:56~112e~11151:c5|1:1bc~100b1:c5~11151:3~100b1:34~11071:8~11051:8~21051:2~100b1:1bb|5:4~10021:4|1:8~100b1:1b3~11750:183~21250:183~211d~21181:8|2:56|1:5|1:1b2|1:1bc|1:1ac|2:4|1:cc|1:b5|1:1bb|1:2|2:c5|2:3~210c2:3~11080:183~11051:4~11231:1b3~11241:1bc~100b1:1bc~11071:3~11231:1bc~11241:1b3~102e~10151:4|1:8|1:34|2:c5~200113:fff~2048~210d2:3~200b1:c5~212e~21151:5~21171:c5~210c1:c5~200b1:c5~21151:c5~21171:56~210c1:56~200b1:c5~21151:56~21171:c5~210c1:c5~200b1:c5~21151:c5~21171:4~210c1:4~200b1:56~21151:4|1:56~200b1:c5~21151:1ac~21171:2~21081:2~200b1:56~21151:b5|1:1bb~200b1:1ac~21750:17c~21250:17c~21151:cc~21080:17c~11151:4~200b1:b5~21081:3|1:cc~200b1:1bb|1:5|2:3|2:4~20022:8~202e~20151:3|1:4|1:8|1:1b2|1:1bc~100114:fff~1048~110d1:56|2:c5|1:1b3~100b1:c5~11151:4~11171:4~110c1:4~100b1:c5~11151:4~11171:4~110c1:4~100b1:c5~11151:4~11171:1bc~11081:1bc~100b1:c5~11151:56~11171:4~110c1:4~100b1:34~11071:8~11051:8~21051:2~100b3:4~10021:8~100b1:1b3~1175Misery:fff~2125Misery:fff~2175Miserable:fff~1108Misery:fff	00210~00608~00708~00808~00360~00440~00530~03410~0b510~0c210~07910~05610~0be08~0c510~1ac10~1b310~1b210~11601~11401~0c710~17501~17601~17701~17801~17901~17a01~17b01~17c01~17d01~17e01~17f01~18001~1bf12~18301~18401~18501~18601~18701~18801~18901~18a01~18b01~18c01~18d01~18e01~19202~19102~18f02~19002~1bc10~1bb02~0cc02~0c302~0cd02	\N	ceviri~David Goldfarb
11423201	000011423201/unrated:fff~10276:3|3:6|1:1bb~20276:3|3:6|1:1bb~102e~10154:3|1:6~202e~20153:3|2:6~10011:fff~100b3:3~10021:4~10152:3|2:6|1:1bb~20011:fff~200b3:3~20021:4~20153:3|1:6|1:1bb~10012:fff~100b1:1bb|2:3~10021:15~102e~10153:3|1:6|1:1bb~20012:fff~200b1:1bb|2:3~20021:15~202e~20152:3|1:4|1:6|1:15~10013:fff~100b1:1bb|3:3~10021:33|1:1b2~10152:3|1:4|1:6|1:15~20013:fff~200b1:15~21151:3~200b3:3|1:4~20021:8a~20153:3|2:6~10014:fff~100b1:15~11151:6~100b2:3|1:4~10021:8a~102e~10152:3|1:4|1:33|1:8a~20014:fff~200b3:3~20021:196~202e~20153:3|1:8a|1:1bb~10015:fff~100b1:8a~11151:6~11171:6|1:33|2:3|1:4~11174:3|1:1b2~11191:1b2~11084:3~100b1:33~100b1:1b2~11750:17f~11250:17f~11051:1bf~122d1:1b2~120c1:1~11080:17f~100b1:3|1:4~10021:8a~112d1:1b2~110c1:1~1132Changeling/Hunting Party:fff~10151:6|1:15|1:8a|1:1bb|1:1bf~20015:fff~200b1:8a~21151:4~21171:1bb|3:3|1:4~21171:6~21191:6~200b1:1bb|3:3|1:4~20021:8a~20152:3|2:6|1:196~10016:fff~100b1:1bf~11151:6~112e~11171:3~11191:3~100b1:15~11151:33~100b1:8a~11151:6~11171:1bb|3:6|1:33|1:3~11171:8a~11191:8a~100b1:8a~11151:3~11171:1bb|3:6|1:33|2:3~11171:1b2~11191:1b2~100b1:33~100b1:1b2~11750:17d~11250:17d~11082:0|1:6~11051:5~122d1:1b2~120c1:1~1232Changeling/Gold:fff~11080:17d~100b1:1bb|2:3~10021:8a~112d1:1b2~110c1:1~1132Changeling/Hunting Party:fff~10152:3|1:4|1:5|1:8a~20016:fff~200b2:3~20021:33~202e~20151:3|1:6|1:15|1:33|1:1bb~10017:fff~100b1:8a~11151:3~11173:3|1:5|1:4~11171:3~112e~11171:1bb~11191:1bb~11081:3~100b1:1bb|3:3|1:5|1:4~10021:15|1:8a~10151:3|2:6|1:15|1:1bf~20017:fff~200b1:15~21151:3~200b1:33~21151:4~200b1:1bb|2:3|1:4~20021:8a~20152:3|1:6|2:8a~10018:fff~100b1:1bf~11151:6~11171:33~11191:33~100b1:15~11151:3~100b1:33~11151:8a~100b1:8a~11151:8a~11173:6|2:3|1:8a~11171:1b2~11191:1b2~100b1:8a~112e~11151:8a~11173:6|2:3|1:1b2|1:8a~11171:3|1:15~11191:15~11081:3~100b1:8a~11151:1bb~11171:15|1:1bb|3:6|2:3|1:1b2~11171:8a~11191:8a~100b1:15~11151:5~100b1:8a~11151:3~11171:1bb|3:6|3:3|1:5|1:1b2~11171:4~11191:4~100b1:1b2~11750:179~11250:179~11181:3~11080:179~100b1:1bb|3:3|1:5|1:4~10021:8a~112d1:1b2~110c1:1~1132Changeling/Hunting Party:fff~10021:8a~112d1:1b2~110c1:1~1132Changeling/Hunting Party:fff~102e~10152:3|2:8a|1:1b2~20018:fff~200b1:8a~21151:3~21171:6|3:3|1:8a~21171:3|1:6|1:196~21191:196~21081:3|1:6~200b1:8a~212e~21151:33~21171:6|1:33|3:3|1:196~21171:15~21191:15~200b1:15~21151:3~200b1:33~21151:6~200b4:3~20021:15~200b1:196~21071:196~21051:8a~20152:3|1:4|1:8a|1:1bb~10019:fff~100b1:8a~11151:3~11173:3|1:1b2|1:8a~11171:6~11191:6~100b1:8a~11151:1bb~11171:1bb|1:6|3:3|1:1b2~11172:3|1:4|1:6~11191:4~11082:3|1:6~100b1:1b2~11750:177~11250:177~11071:6~11080:177~100b1:1bb|3:3|1:4~10021:10b~21151:6~112d1:1b2~110c1:1~1132Changeling/Lost City:fff~10021:33~112d1:1b2~110c1:1~10152:33|1:8a|1:10b|1:1bf~20019:fff~200b1:8a~212e~21151:15~21171:1bb|1:15|1:6|2:3|1:4~21173:3|1:6|1:15|1:8a~21191:8a~21083:3|1:6|1:15~200b1:15~21151:6~200b1:8a~21151:8a~21171:1bb|2:6|2:3|1:4|1:8a~21171:3|1:33|1:8a~21191:33~21081:3|1:8a~200b1:8a~212e~21151:3~21171:1bb|2:6|1:33|3:3|1:4~21171:3|1:8a~21191:8a~21081:3~200b1:8a~21151:15~21171:1bb|1:15|2:6|1:33|3:3|1:4~21172:3|1:6~212e~21171:3~21083:3|1:6~200b1:15~212e~21151:3~200b1:33~21151:3~200b1:1bb|5:3|1:4~20021:5|1:10b~11151:5~202e~20152:3|2:6|1:15~100110:fff~100b1:1bf~11151:15~11171:6~11191:6~100b1:10b~11152:8a~100b1:15~11151:15~100b1:15~11151:8a~100b1:33~11151:3~100b1:8a~112e~11151:3~11171:6|1:33|2:3|1:5|3:8a~11172:3|1:6|1:8a|1:1bb~11191:1bb~11082:3|1:6|1:8a~100b1:8a~11151:3~11171:1bb|1:6|1:33|3:3|1:5|2:8a~11171:4|1:8a~11191:4~11081:8a~100b1:8a~11151:1b2~11171:1bb|1:6|1:33|3:3|1:5|1:1b2|1:8a|1:4~11171:3~112e~11172:3|1:6|2:8a~11083:3|1:6|2:8a~100b1:8a~112e~11151:3~11171:1bb|1:6|1:33|4:3|1:5|1:1b2|1:4~11171:3|1:8a~11191:8a~11081:3~100b1:8a~11151:8a~11171:1bb|1:6|1:33|4:3|1:5|1:1b2|1:4|1:8a~11171:3|1:6~112e~11171:3~11082:3|1:6~100b1:8a~112e~11151:3~11171:1bb|1:6|1:33|5:3|1:5|1:1b2|1:4~11171:3|1:6~11081:3|1:6~100b1:33~100b1:1b2~11750:178~11250:178~100b1:1bb|5:3|1:5|1:4~10021:15~112d1:1b2~110c1:1~1132Changeling/Merchant:fff~10021:15~112d1:1b2~110c1:1~1132Changeling/Merchant:fff~10021:14b~112d1:1b2~110c1:1~1132Changeling/Chariot Race:fff~10021:14b~112d1:1b2~110c1:1~1132Changeling/Chariot Race:fff~10080:178~102e~10152:15|1:33|2:14b~200110:fff~200b1:15~21151:3~200b3:3~20021:14b~20151:4|1:5|1:15|2:8a~100111:fff~100b1:14b~11171:3~11191:3~21171:33~100b1:14b~11171:33~11191:33~21171:33~100b1:15~11151:8a~100b1:15~11151:10b~100b1:8a~11151:6~11171:6|2:33|1:10b|1:3~11171:8a~11191:8a~100b1:8a~11151:3~11171:6|2:33|1:10b|2:3~11171:3|1:6|1:8a~11191:8a~11081:3|1:6~100b1:8a~11151:4~11171:6|2:33|1:10b|2:3|1:4~11171:3|1:8a~11191:8a~11081:3~100b1:8a~11151:1bf~11171:6|2:33|1:10b|2:3|1:1bf|1:4~11171:3|1:8a~11191:8a~11081:3~100b1:10b~11151:5|1:8a~100b1:1bf~11151:1bb~11171:15~110c1:15~100b1:8a~11151:15~11171:1bb|1:15|1:6|2:33|2:3|1:5|1:4|1:8a~11171:1b2~11191:1b2~100b1:15~11151:15~100b1:8a~11151:3~11171:1bb|1:15|1:6|2:33|3:3|1:5|1:1b2|1:4~112e~11173:3|1:6~11083:3|1:6~100b1:15~112e~11151:3~100b1:33~11151:6~100b1:33~11151:3~100b1:1b2~11750:17c~11250:17c~11151:3~11080:17c~100b1:1bb|6:3|1:5|1:4~10021:10b~21151:33~112d1:1b2~110c1:1~1132Changeling/Lost City:fff~10021:10b~21151:8a~112d1:1b2~110c1:1~1132Changeling/Lost City:fff~102a1:170~116a3:fff~11051:5~114d1:fff~106b3:fff~102e~10151:33|2:10b|1:1bb|1:1bf~200111:fff~200b1:15~21151:3~200b1:8a~21151:10b~21171:33|1:10b|1:3|1:5|2:8a|1:4~21171:3|1:8a|1:1bb~21191:1bb~21081:3|1:8a~200b1:10b~21151:3|1:6~200b1:8a~212e~21151:3~21171:1bb|1:6|1:33|3:3|1:5|1:8a|1:4~21172:3|1:8a|1:14b~21191:14b~21082:3|1:8a~200b1:14b~21171:3~21191:3~11171:10b~200b1:8a~21151:6~21171:1bb|2:6|1:33|4:3|1:5|1:4~21171:6|1:15~21191:15~21081:6~200b1:15~212e~21151:6~200b1:33~21151:8a~200b1:8a~21151:3~21171:1bb|3:6|5:3|1:5|1:4~21171:3~21081:3~200b1:1bb|5:3|1:5|1:4~202a1:170~216a3:fff~21051:5~214d1:fff~206b3:fff~202a1:170~216a3:fff~21051:5~214d1:fff~206b3:fff~202e~20151:3|1:5|2:8a|1:1bb~100112:fff~100b1:10b~11151:3|1:10b~100b1:10b~11151:4|1:5~100b1:10b~11151:3|1:6~100b1:1bf~11151:8a~11171:8a~110c1:8a~100b1:8a~11151:8a~11171:1bb|1:6|1:33|2:3|1:5|1:4|1:8a~11171:3|1:14b~11191:14b~11081:3~100b1:14b~11171:8a~11191:8a~21171:3~114d1:fff~100b1:8a~11151:15~11171:1bb|1:15|1:6|1:33|2:3|1:5|1:4|1:8a~11172:3|1:6|3:15|2:8a|1:14b~11191:14b~11082:3|1:6|3:15|2:8a~100b1:14b~11171:5~11191:5~21171:3~114d1:fff~100b1:15~11151:8a~100b1:8a~11151:3~11171:1bb|1:6|1:33|3:3|2:5|1:4|1:8a~11171:1b2~11191:1b2~100b1:8a~11151:33~11171:1bb|1:6|2:33|3:3|2:5|1:1b2|1:4~112e~11171:15~11191:15~100b1:15~11151:3~100b1:33~11151:8a~100b1:33~11151:15~100b1:8a~11151:15~11171:1bb|2:15|1:6|4:3|2:5|1:1b2|1:4~11172:3|1:6|1:8a~11191:8a~11082:3|1:6~100b1:15~112e~11151:3~100b1:8a~11151:3~11171:1bb|1:15|1:6|6:3|2:5|1:1b2|1:4~11171:6~11081:6~100b1:15~112e~11151:6~100b1:1b2~11750:180~11250:180~11082:6~11080:180~100b1:1bb|6:3|2:5|1:4~10021:10b~21151:3~112d1:1b2~110c1:1~1132Changeling/Lost City:fff~10021:8|1:14b~112d1:1b2~110c1:1~1132Changeling/Chariot Race:fff~10021:14b~112d1:1b2~110c1:1~1132Changeling/Chariot Race:fff~102e~10151:3|1:33|1:10b|2:14b~200112:fff~200b1:8a~21151:33~21171:1bb|1:33|2:3|1:5|1:8a~21171:6~21191:6~200b1:8a~21151:6~21171:1bb|2:6|1:33|2:3|1:5~21171:10b~21191:10b~200b1:10b~21151:5|1:15~200b1:15~21151:3~200b1:33~21151:8a~200b1:8a~21151:3~21171:1bb|2:6|4:3|2:5~21171:5|1:8a~21191:8a~21081:5~200b1:8a~21151:3~21171:1bb|2:6|5:3|2:5~21171:14b~21191:14b~200b1:14b~21171:3~21191:3~11171:1b2~200b1:1bb|6:3|2:5~20021:8|1:10b~11151:1b2~202e~20151:3|1:4|1:5|1:6|1:15~100113:fff~100b1:14b~11171:33~11191:33~21171:8a~100b1:10b~11151:3|1:15~100b1:15~11151:3~100b1:14b~11171:5~11191:5~21171:8a~114d1:fff~100b1:33~11151:10b~100b1:10b~11151:8a|1:10b~100b1:33~11151:1bf~100b1:8a~11151:10b~11172:10b|3:3|1:5|1:1b2|1:1bf~11171:14b~11191:14b~100b1:1bf~11151:6~11171:8~110c1:8~100b1:10b~11151:8|1:8a~100b1:8a~11151:5~11171:6|1:10b|3:3|2:5|1:1b2|1:14b|1:8~11171:15~11191:15~100b1:14b~11171:8a~11191:8a~21171:8a~100b1:10b~11151:3|1:15~100b1:15~11151:8a~100b1:15~11151:1bb~100b1:8a~11151:14b~11171:1bb|1:6|4:3|2:5|1:1b2|1:14b|1:8|1:8a~11171:15~11191:15~100b1:8a~11151:8a~11171:1bb|1:15|1:6|4:3|2:5|1:1b2|1:14b|1:8|1:8a~11171:3|1:4~11191:4~11081:3~100b1:15~11151:8a~100b1:8a~11151:3~11171:1bb|1:6|5:3|2:5|1:1b2|1:14b|1:8|1:8a|1:4~11171:6~112e~11171:3~11081:3|1:6~100b1:8a~112e~11151:6~11171:1bb|2:6|5:3|2:5|1:1b2|1:14b|1:8|1:4~11171:3~11081:3~100b1:1b2~11750:176~11250:176~100b1:14b~112e~11171:3~11191:3~21171:8a~100b1:1bb|6:3|2:5|1:4~10022:8|1:10b~21151:8a~112d1:1b2~110c1:1~1132Changeling/Lost City:fff~10080:176~102e~10151:3|1:5|1:6|1:8a|1:10b~200113:fff~200b1:15~21151:10b~200b1:10b~21151:5|1:8a~200b1:8a~21151:33~21171:6|1:33|1:3|2:5|1:4|1:8a~21171:15~21191:15~200b1:15~21151:10b~200b1:10b~21152:3~200b1:8a~21151:1bb~21171:1bb|1:6|1:33|3:3|2:5|1:4~21171:8a~21191:8a~200b1:8a~21151:8a~21171:1bb|1:6|1:33|3:3|2:5|1:4|1:8a~21171:3|1:5|2:6|1:14b~21191:14b~21081:3|1:5|2:6~200b1:14b~21171:8~21191:8~11171:8a~214d1:fff~200b1:33~21151:3~200b1:8a~21151:3~21171:1bb|1:6|5:3|2:5|1:8|1:4~212e~21171:3|1:5|2:6~21081:3|1:5|2:6~200b1:1bb|5:3|2:5|1:4~20022:8~202e~20151:3|1:4|1:5|2:6~100114:fff~100b1:10b~11151:8|1:8a~100b1:8a~11151:8~11171:6|1:3|1:5|2:8|1:8a~11171:1bb~11191:1bb~100b1:8a~11151:10b~11171:1bb|1:6|1:10b|1:3|1:5|2:8~11171:8|1:14b~11191:14b~11081:8~100b1:14b~11171:5~11191:5~21171:5~100b1:10b~11151:3|1:8a~100b1:8a~11151:6~11171:1bb|2:6|2:3|2:5|2:8~11171:33~11191:33~100b1:33~11151:15~100b1:15~11151:10b~100b1:10b~11151:3|1:15~100b1:15~11151:3~100b1:1bb|4:3|2:5~10022:7~10151:3|2:8a|1:14b|1:1bf~200114:fff~200b1:5|1:4~20021:7~20152:3|1:5|1:8|1:10b~100115:fff~100b1:8a~11151:33~11171:33|1:3|1:14b|1:1bf|1:8a~11171:10b~11191:10b~100b1:1bf~11151:4~11171:8a~110c1:8a~100b1:10b~11151:15|1:8a~100b1:15~11151:3~100b1:14b~11171:14b~11191:14b~21171:3~114d1:fff~100b1:14b~11171:10b~11191:10b~21171:3~114d1:fff~100b1:10b~11151:15|1:14b~100b1:14b~11171:1b2~11191:1b2~21171:3~114d1:fff~100b1:15~112e~11151:15~100b1:15~11151:8a~100b1:8a~11151:8a~11171:33|2:3|1:1b2|3:8a|1:4~11171:10b~11191:10b~100b1:8a~11151:3~11171:33|1:10b|3:3|1:1b2|2:8a|1:4~11171:8|1:10b~11191:8~11081:10b~100b1:8a~11151:33~11172:33|1:10b|3:3|1:1b2|1:8|1:8a|1:4~11172:3|1:6|1:8|1:8a|1:10b~11191:6~11082:3|1:8|1:8a|1:10b~100b1:10b~11151:6|1:8~100b1:8a~11151:3~11172:6|2:33|4:3|1:1b2|2:8|1:4~11171:7~11191:7~100b1:33~11151:5~100b1:33~11151:1bb~100b1:1b2~11750:17e~11250:17e~11171:5|1:7|1:15|1:14b~11081:7~110c1:5|1:15|1:14b~11080:17e~100b1:1bb|4:3|1:5|1:4~10021:6|2:8	00210~00614~00708~00808~00360~00440~00530~03310~08a10~1cc10~19610~14b10~06e10~02a08~10b10~1b210~01510~17001~17501~17601~17701~17801~17901~17a01~17b01~17c01~17d01~17e01~17f01~18001~1bf12~1bb02	\N	ceviri~mongoose700
\.


--
-- Data for Name: woodcutter_preddata; Type: TABLE DATA; Schema: public; Owner: u_ceviri
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
33	^(?P<player>.*) returns (?P<cards>.*) to (.*)\\.$	0	0
34	^(?P<player>.*) returns (?P<cards>.*) set by (.*)\\.$	0	0
35	^(?P<player>.*) returns (?P<cards>.*)\\.$	0	0
36	^(?P<player>.*) receives (?P<cards>.*)\\.$	0	0
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
122	^(?P<player>.*) is enchanted by (?P<cards>.*)$	0	0
123	^Between Turns$	0	0
255	^(.*)$	0	0
\.


--
-- Name: woodcutter_preddata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u_ceviri
--

SELECT pg_catalog.setval('woodcutter_preddata_id_seq', 1, false);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: woodcutter_carddata_exceptions_pkey; Type: CONSTRAINT; Schema: public; Owner: ceviri
--

ALTER TABLE ONLY woodcutter_carddata_exceptions
    ADD CONSTRAINT woodcutter_carddata_exceptions_pkey PRIMARY KEY (id);


--
-- Name: woodcutter_carddata_pkey; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_carddata
    ADD CONSTRAINT woodcutter_carddata_pkey PRIMARY KEY (id);


--
-- Name: woodcutter_exceptiondata_exceptiondata_id_carddat_10212e45_uniq; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_cards
    ADD CONSTRAINT woodcutter_exceptiondata_exceptiondata_id_carddat_10212e45_uniq UNIQUE (exceptiondata_id, carddata_id);


--
-- Name: woodcutter_exceptiondata_exceptiondata_id_preddat_35db78c1_uniq; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_root_preds
    ADD CONSTRAINT woodcutter_exceptiondata_exceptiondata_id_preddat_35db78c1_uniq UNIQUE (exceptiondata_id, preddata_id);


--
-- Name: woodcutter_exceptiondata_exceptiondata_id_preddat_fa668097_uniq; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_preds
    ADD CONSTRAINT woodcutter_exceptiondata_exceptiondata_id_preddat_fa668097_uniq UNIQUE (exceptiondata_id, preddata_id);


--
-- Name: woodcutter_exceptiondata_pkey; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata
    ADD CONSTRAINT woodcutter_exceptiondata_pkey PRIMARY KEY (id);


--
-- Name: woodcutter_exceptiondata_root_preds_pkey; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_root_preds
    ADD CONSTRAINT woodcutter_exceptiondata_root_preds_pkey PRIMARY KEY (id);


--
-- Name: woodcutter_exceptiondata_target_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_cards
    ADD CONSTRAINT woodcutter_exceptiondata_target_cards_pkey PRIMARY KEY (id);


--
-- Name: woodcutter_exceptiondata_target_preds_pkey; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_preds
    ADD CONSTRAINT woodcutter_exceptiondata_target_preds_pkey PRIMARY KEY (id);


--
-- Name: woodcutter_gamelog_game_id_3a924450_pk; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_gamelog
    ADD CONSTRAINT woodcutter_gamelog_game_id_3a924450_pk PRIMARY KEY (game_id);


--
-- Name: woodcutter_gamelog_game_id_3a924450_uniq; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_gamelog
    ADD CONSTRAINT woodcutter_gamelog_game_id_3a924450_uniq UNIQUE (game_id);


--
-- Name: woodcutter_preddata_pkey; Type: CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_preddata
    ADD CONSTRAINT woodcutter_preddata_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: woodcutter_exceptiondata_root_card_id_4f934848; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX woodcutter_exceptiondata_root_card_id_4f934848 ON woodcutter_exceptiondata USING btree (root_card_id);


--
-- Name: woodcutter_exceptiondata_root_preds_exceptiondata_id_430e88ac; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX woodcutter_exceptiondata_root_preds_exceptiondata_id_430e88ac ON woodcutter_exceptiondata_root_preds USING btree (exceptiondata_id);


--
-- Name: woodcutter_exceptiondata_root_preds_preddata_id_a5210211; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX woodcutter_exceptiondata_root_preds_preddata_id_a5210211 ON woodcutter_exceptiondata_root_preds USING btree (preddata_id);


--
-- Name: woodcutter_exceptiondata_target_cards_carddata_id_51a7c461; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX woodcutter_exceptiondata_target_cards_carddata_id_51a7c461 ON woodcutter_exceptiondata_target_cards USING btree (carddata_id);


--
-- Name: woodcutter_exceptiondata_target_cards_exceptiondata_id_46769911; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX woodcutter_exceptiondata_target_cards_exceptiondata_id_46769911 ON woodcutter_exceptiondata_target_cards USING btree (exceptiondata_id);


--
-- Name: woodcutter_exceptiondata_target_preds_exceptiondata_id_d00d0b5a; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX woodcutter_exceptiondata_target_preds_exceptiondata_id_d00d0b5a ON woodcutter_exceptiondata_target_preds USING btree (exceptiondata_id);


--
-- Name: woodcutter_exceptiondata_target_preds_preddata_id_2d329488; Type: INDEX; Schema: public; Owner: u_ceviri
--

CREATE INDEX woodcutter_exceptiondata_target_preds_preddata_id_2d329488 ON woodcutter_exceptiondata_target_preds USING btree (preddata_id);


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk; Type: FK CONSTRAINT; Schema: public; Owner: u_ceviri
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
-- Name: woodcutter_exception_carddata_id_51a7c461_fk_woodcutte; Type: FK CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_cards
    ADD CONSTRAINT woodcutter_exception_carddata_id_51a7c461_fk_woodcutte FOREIGN KEY (carddata_id) REFERENCES woodcutter_carddata(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: woodcutter_exception_exceptiondata_id_430e88ac_fk_woodcutte; Type: FK CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_root_preds
    ADD CONSTRAINT woodcutter_exception_exceptiondata_id_430e88ac_fk_woodcutte FOREIGN KEY (exceptiondata_id) REFERENCES woodcutter_exceptiondata(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: woodcutter_exception_exceptiondata_id_46769911_fk_woodcutte; Type: FK CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_cards
    ADD CONSTRAINT woodcutter_exception_exceptiondata_id_46769911_fk_woodcutte FOREIGN KEY (exceptiondata_id) REFERENCES woodcutter_exceptiondata(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: woodcutter_exception_exceptiondata_id_d00d0b5a_fk_woodcutte; Type: FK CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_preds
    ADD CONSTRAINT woodcutter_exception_exceptiondata_id_d00d0b5a_fk_woodcutte FOREIGN KEY (exceptiondata_id) REFERENCES woodcutter_exceptiondata(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: woodcutter_exception_preddata_id_2d329488_fk_woodcutte; Type: FK CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_target_preds
    ADD CONSTRAINT woodcutter_exception_preddata_id_2d329488_fk_woodcutte FOREIGN KEY (preddata_id) REFERENCES woodcutter_preddata(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: woodcutter_exception_preddata_id_a5210211_fk_woodcutte; Type: FK CONSTRAINT; Schema: public; Owner: u_ceviri
--

ALTER TABLE ONLY woodcutter_exceptiondata_root_preds
    ADD CONSTRAINT woodcutter_exception_preddata_id_a5210211_fk_woodcutte FOREIGN KEY (preddata_id) REFERENCES woodcutter_preddata(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: woodcutter_exception_root_card_id_4f934848_fk_woodcutte; Type: FK CONSTRAINT; Schema: public; Owner: u_ceviri
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
-- Name: TABLE auth_group; Type: ACL; Schema: public; Owner: u_ceviri
--

REVOKE ALL ON TABLE auth_group FROM PUBLIC;
REVOKE ALL ON TABLE auth_group FROM u_ceviri;
GRANT ALL ON TABLE auth_group TO u_ceviri;
GRANT ALL ON TABLE auth_group TO ceviri;


--
-- Name: TABLE auth_group_permissions; Type: ACL; Schema: public; Owner: u_ceviri
--

REVOKE ALL ON TABLE auth_group_permissions FROM PUBLIC;
REVOKE ALL ON TABLE auth_group_permissions FROM u_ceviri;
GRANT ALL ON TABLE auth_group_permissions TO u_ceviri;
GRANT ALL ON TABLE auth_group_permissions TO ceviri;


--
-- Name: TABLE auth_permission; Type: ACL; Schema: public; Owner: u_ceviri
--

REVOKE ALL ON TABLE auth_permission FROM PUBLIC;
REVOKE ALL ON TABLE auth_permission FROM u_ceviri;
GRANT ALL ON TABLE auth_permission TO u_ceviri;
GRANT ALL ON TABLE auth_permission TO ceviri;


--
-- Name: TABLE auth_user; Type: ACL; Schema: public; Owner: u_ceviri
--

REVOKE ALL ON TABLE auth_user FROM PUBLIC;
REVOKE ALL ON TABLE auth_user FROM u_ceviri;
GRANT ALL ON TABLE auth_user TO u_ceviri;
GRANT ALL ON TABLE auth_user TO ceviri;


--
-- Name: TABLE auth_user_groups; Type: ACL; Schema: public; Owner: u_ceviri
--

REVOKE ALL ON TABLE auth_user_groups FROM PUBLIC;
REVOKE ALL ON TABLE auth_user_groups FROM u_ceviri;
GRANT ALL ON TABLE auth_user_groups TO u_ceviri;
GRANT ALL ON TABLE auth_user_groups TO ceviri;


--
-- Name: TABLE auth_user_user_permissions; Type: ACL; Schema: public; Owner: u_ceviri
--

REVOKE ALL ON TABLE auth_user_user_permissions FROM PUBLIC;
REVOKE ALL ON TABLE auth_user_user_permissions FROM u_ceviri;
GRANT ALL ON TABLE auth_user_user_permissions TO u_ceviri;
GRANT ALL ON TABLE auth_user_user_permissions TO ceviri;


--
-- Name: TABLE django_admin_log; Type: ACL; Schema: public; Owner: u_ceviri
--

REVOKE ALL ON TABLE django_admin_log FROM PUBLIC;
REVOKE ALL ON TABLE django_admin_log FROM u_ceviri;
GRANT ALL ON TABLE django_admin_log TO u_ceviri;
GRANT ALL ON TABLE django_admin_log TO ceviri;


--
-- Name: TABLE django_content_type; Type: ACL; Schema: public; Owner: u_ceviri
--

REVOKE ALL ON TABLE django_content_type FROM PUBLIC;
REVOKE ALL ON TABLE django_content_type FROM u_ceviri;
GRANT ALL ON TABLE django_content_type TO u_ceviri;
GRANT ALL ON TABLE django_content_type TO ceviri;


--
-- Name: TABLE django_migrations; Type: ACL; Schema: public; Owner: u_ceviri
--

REVOKE ALL ON TABLE django_migrations FROM PUBLIC;
REVOKE ALL ON TABLE django_migrations FROM u_ceviri;
GRANT ALL ON TABLE django_migrations TO u_ceviri;
GRANT ALL ON TABLE django_migrations TO ceviri;


--
-- Name: TABLE django_session; Type: ACL; Schema: public; Owner: u_ceviri
--

REVOKE ALL ON TABLE django_session FROM PUBLIC;
REVOKE ALL ON TABLE django_session FROM u_ceviri;
GRANT ALL ON TABLE django_session TO u_ceviri;
GRANT ALL ON TABLE django_session TO ceviri;


--
-- Name: TABLE woodcutter_carddata; Type: ACL; Schema: public; Owner: u_ceviri
--

REVOKE ALL ON TABLE woodcutter_carddata FROM PUBLIC;
REVOKE ALL ON TABLE woodcutter_carddata FROM u_ceviri;
GRANT ALL ON TABLE woodcutter_carddata TO u_ceviri;
GRANT ALL ON TABLE woodcutter_carddata TO ceviri;


--
-- Name: TABLE woodcutter_exceptiondata; Type: ACL; Schema: public; Owner: u_ceviri
--

REVOKE ALL ON TABLE woodcutter_exceptiondata FROM PUBLIC;
REVOKE ALL ON TABLE woodcutter_exceptiondata FROM u_ceviri;
GRANT ALL ON TABLE woodcutter_exceptiondata TO u_ceviri;
GRANT ALL ON TABLE woodcutter_exceptiondata TO ceviri;


--
-- Name: TABLE woodcutter_exceptiondata_root_preds; Type: ACL; Schema: public; Owner: u_ceviri
--

REVOKE ALL ON TABLE woodcutter_exceptiondata_root_preds FROM PUBLIC;
REVOKE ALL ON TABLE woodcutter_exceptiondata_root_preds FROM u_ceviri;
GRANT ALL ON TABLE woodcutter_exceptiondata_root_preds TO u_ceviri;
GRANT ALL ON TABLE woodcutter_exceptiondata_root_preds TO ceviri;


--
-- Name: TABLE woodcutter_exceptiondata_target_cards; Type: ACL; Schema: public; Owner: u_ceviri
--

REVOKE ALL ON TABLE woodcutter_exceptiondata_target_cards FROM PUBLIC;
REVOKE ALL ON TABLE woodcutter_exceptiondata_target_cards FROM u_ceviri;
GRANT ALL ON TABLE woodcutter_exceptiondata_target_cards TO u_ceviri;
GRANT ALL ON TABLE woodcutter_exceptiondata_target_cards TO ceviri;


--
-- Name: TABLE woodcutter_exceptiondata_target_preds; Type: ACL; Schema: public; Owner: u_ceviri
--

REVOKE ALL ON TABLE woodcutter_exceptiondata_target_preds FROM PUBLIC;
REVOKE ALL ON TABLE woodcutter_exceptiondata_target_preds FROM u_ceviri;
GRANT ALL ON TABLE woodcutter_exceptiondata_target_preds TO u_ceviri;
GRANT ALL ON TABLE woodcutter_exceptiondata_target_preds TO ceviri;


--
-- Name: TABLE woodcutter_gamelog; Type: ACL; Schema: public; Owner: u_ceviri
--

REVOKE ALL ON TABLE woodcutter_gamelog FROM PUBLIC;
REVOKE ALL ON TABLE woodcutter_gamelog FROM u_ceviri;
GRANT ALL ON TABLE woodcutter_gamelog TO u_ceviri;
GRANT ALL ON TABLE woodcutter_gamelog TO ceviri;


--
-- Name: TABLE woodcutter_preddata; Type: ACL; Schema: public; Owner: u_ceviri
--

REVOKE ALL ON TABLE woodcutter_preddata FROM PUBLIC;
REVOKE ALL ON TABLE woodcutter_preddata FROM u_ceviri;
GRANT ALL ON TABLE woodcutter_preddata TO u_ceviri;
GRANT ALL ON TABLE woodcutter_preddata TO ceviri;


--
-- PostgreSQL database dump complete
--

