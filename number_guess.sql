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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    number_guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(1000) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 7, 1);
INSERT INTO public.games VALUES (2, 805, 2);
INSERT INTO public.games VALUES (3, 189, 2);
INSERT INTO public.games VALUES (4, 1, 3);
INSERT INTO public.games VALUES (5, 68, 3);
INSERT INTO public.games VALUES (6, 319, 2);
INSERT INTO public.games VALUES (7, 290, 2);
INSERT INTO public.games VALUES (8, 129, 2);
INSERT INTO public.games VALUES (9, 1, 4);
INSERT INTO public.games VALUES (10, 932, 4);
INSERT INTO public.games VALUES (11, 679, 5);
INSERT INTO public.games VALUES (12, 33, 5);
INSERT INTO public.games VALUES (13, 193, 4);
INSERT INTO public.games VALUES (14, 146, 4);
INSERT INTO public.games VALUES (15, 968, 4);
INSERT INTO public.games VALUES (16, 1, 6);
INSERT INTO public.games VALUES (17, 862, 6);
INSERT INTO public.games VALUES (18, 744, 7);
INSERT INTO public.games VALUES (19, 630, 7);
INSERT INTO public.games VALUES (20, 686, 6);
INSERT INTO public.games VALUES (21, 520, 6);
INSERT INTO public.games VALUES (22, 397, 6);
INSERT INTO public.games VALUES (23, 413, 8);
INSERT INTO public.games VALUES (24, 585, 8);
INSERT INTO public.games VALUES (25, 1, 9);
INSERT INTO public.games VALUES (26, 1, 9);
INSERT INTO public.games VALUES (27, 365, 8);
INSERT INTO public.games VALUES (28, 180, 8);
INSERT INTO public.games VALUES (29, 512, 8);
INSERT INTO public.games VALUES (30, 1, 11);
INSERT INTO public.games VALUES (31, 1, 11);
INSERT INTO public.games VALUES (32, 530, 13);
INSERT INTO public.games VALUES (33, 934, 13);
INSERT INTO public.games VALUES (34, 688, 11);
INSERT INTO public.games VALUES (35, 692, 11);
INSERT INTO public.games VALUES (36, 884, 11);
INSERT INTO public.games VALUES (37, 1, 14);
INSERT INTO public.games VALUES (38, 387, 14);
INSERT INTO public.games VALUES (39, 997, 15);
INSERT INTO public.games VALUES (40, 937, 15);
INSERT INTO public.games VALUES (41, 595, 14);
INSERT INTO public.games VALUES (42, 940, 14);
INSERT INTO public.games VALUES (43, 775, 14);
INSERT INTO public.games VALUES (44, 1, 16);
INSERT INTO public.games VALUES (45, 888, 16);
INSERT INTO public.games VALUES (46, 772, 17);
INSERT INTO public.games VALUES (47, 116, 17);
INSERT INTO public.games VALUES (48, 896, 16);
INSERT INTO public.games VALUES (49, 488, 16);
INSERT INTO public.games VALUES (50, 785, 16);
INSERT INTO public.games VALUES (51, 309, 18);
INSERT INTO public.games VALUES (52, 555, 18);
INSERT INTO public.games VALUES (53, 165, 19);
INSERT INTO public.games VALUES (54, 437, 19);
INSERT INTO public.games VALUES (55, 919, 18);
INSERT INTO public.games VALUES (56, 224, 18);
INSERT INTO public.games VALUES (57, 868, 18);
INSERT INTO public.games VALUES (58, 1, 20);
INSERT INTO public.games VALUES (59, 755, 20);
INSERT INTO public.games VALUES (60, 917, 21);
INSERT INTO public.games VALUES (61, 306, 21);
INSERT INTO public.games VALUES (62, 737, 20);
INSERT INTO public.games VALUES (63, 624, 20);
INSERT INTO public.games VALUES (64, 941, 20);
INSERT INTO public.games VALUES (65, 1, 22);
INSERT INTO public.games VALUES (66, 362, 22);
INSERT INTO public.games VALUES (67, 785, 23);
INSERT INTO public.games VALUES (68, 569, 23);
INSERT INTO public.games VALUES (69, 938, 22);
INSERT INTO public.games VALUES (70, 138, 22);
INSERT INTO public.games VALUES (71, 201, 22);
INSERT INTO public.games VALUES (72, 1, 25);
INSERT INTO public.games VALUES (73, 817, 25);
INSERT INTO public.games VALUES (74, 383, 26);
INSERT INTO public.games VALUES (75, 649, 26);
INSERT INTO public.games VALUES (76, 370, 25);
INSERT INTO public.games VALUES (77, 629, 25);
INSERT INTO public.games VALUES (78, 926, 25);
INSERT INTO public.games VALUES (79, 953, 27);
INSERT INTO public.games VALUES (80, 36, 27);
INSERT INTO public.games VALUES (81, 946, 28);
INSERT INTO public.games VALUES (82, 652, 28);
INSERT INTO public.games VALUES (83, 759, 27);
INSERT INTO public.games VALUES (84, 784, 27);
INSERT INTO public.games VALUES (85, 957, 27);
INSERT INTO public.games VALUES (86, 1, 34);
INSERT INTO public.games VALUES (87, 760, 34);
INSERT INTO public.games VALUES (88, 1, 35);
INSERT INTO public.games VALUES (89, 945, 35);
INSERT INTO public.games VALUES (90, 760, 34);
INSERT INTO public.games VALUES (91, 245, 34);
INSERT INTO public.games VALUES (92, 304, 34);
INSERT INTO public.games VALUES (119, 397, 67);
INSERT INTO public.games VALUES (120, 601, 67);
INSERT INTO public.games VALUES (121, 1, 68);
INSERT INTO public.games VALUES (122, 302, 68);
INSERT INTO public.games VALUES (123, 480, 67);
INSERT INTO public.games VALUES (124, 870, 67);
INSERT INTO public.games VALUES (125, 415, 67);
INSERT INTO public.games VALUES (126, 10, 69);
INSERT INTO public.games VALUES (127, 873, 70);
INSERT INTO public.games VALUES (128, 540, 70);
INSERT INTO public.games VALUES (129, 1, 71);
INSERT INTO public.games VALUES (130, 636, 71);
INSERT INTO public.games VALUES (131, 914, 70);
INSERT INTO public.games VALUES (132, 354, 70);
INSERT INTO public.games VALUES (133, 575, 70);
INSERT INTO public.games VALUES (134, 1, 72);
INSERT INTO public.games VALUES (135, 767, 72);
INSERT INTO public.games VALUES (136, 939, 73);
INSERT INTO public.games VALUES (137, 238, 73);
INSERT INTO public.games VALUES (138, 746, 72);
INSERT INTO public.games VALUES (139, 802, 72);
INSERT INTO public.games VALUES (140, 50, 72);
INSERT INTO public.games VALUES (141, 15, 1);
INSERT INTO public.games VALUES (142, 1, 74);
INSERT INTO public.games VALUES (143, 49, 74);
INSERT INTO public.games VALUES (144, 252, 75);
INSERT INTO public.games VALUES (145, 725, 75);
INSERT INTO public.games VALUES (146, 564, 74);
INSERT INTO public.games VALUES (147, 803, 74);
INSERT INTO public.games VALUES (148, 628, 74);
INSERT INTO public.games VALUES (149, 11, 76);
INSERT INTO public.games VALUES (150, 1, 77);
INSERT INTO public.games VALUES (151, 956, 77);
INSERT INTO public.games VALUES (152, 1, 78);
INSERT INTO public.games VALUES (153, 746, 78);
INSERT INTO public.games VALUES (154, 218, 77);
INSERT INTO public.games VALUES (155, 403, 77);
INSERT INTO public.games VALUES (156, 70, 77);
INSERT INTO public.games VALUES (157, 1, 79);
INSERT INTO public.games VALUES (158, 869, 79);
INSERT INTO public.games VALUES (159, 1, 80);
INSERT INTO public.games VALUES (160, 320, 80);
INSERT INTO public.games VALUES (161, 801, 79);
INSERT INTO public.games VALUES (162, 577, 79);
INSERT INTO public.games VALUES (163, 737, 79);
INSERT INTO public.games VALUES (164, 268, 81);
INSERT INTO public.games VALUES (165, 915, 81);
INSERT INTO public.games VALUES (166, 181, 82);
INSERT INTO public.games VALUES (167, 910, 82);
INSERT INTO public.games VALUES (168, 463, 81);
INSERT INTO public.games VALUES (169, 707, 81);
INSERT INTO public.games VALUES (170, 795, 81);
INSERT INTO public.games VALUES (171, 1, 83);
INSERT INTO public.games VALUES (172, 284, 83);
INSERT INTO public.games VALUES (173, 53, 84);
INSERT INTO public.games VALUES (174, 809, 84);
INSERT INTO public.games VALUES (175, 601, 83);
INSERT INTO public.games VALUES (176, 731, 83);
INSERT INTO public.games VALUES (177, 67, 83);
INSERT INTO public.games VALUES (178, 689, 85);
INSERT INTO public.games VALUES (179, 45, 85);
INSERT INTO public.games VALUES (180, 1, 86);
INSERT INTO public.games VALUES (181, 468, 86);
INSERT INTO public.games VALUES (182, 456, 85);
INSERT INTO public.games VALUES (183, 481, 85);
INSERT INTO public.games VALUES (184, 240, 85);
INSERT INTO public.games VALUES (185, 1, 87);
INSERT INTO public.games VALUES (186, 305, 87);
INSERT INTO public.games VALUES (187, 407, 88);
INSERT INTO public.games VALUES (188, 289, 88);
INSERT INTO public.games VALUES (189, 467, 87);
INSERT INTO public.games VALUES (190, 315, 87);
INSERT INTO public.games VALUES (191, 442, 87);
INSERT INTO public.games VALUES (192, 1, 89);
INSERT INTO public.games VALUES (193, 332, 89);
INSERT INTO public.games VALUES (194, 1, 90);
INSERT INTO public.games VALUES (195, 609, 90);
INSERT INTO public.games VALUES (196, 831, 89);
INSERT INTO public.games VALUES (197, 877, 89);
INSERT INTO public.games VALUES (198, 398, 89);
INSERT INTO public.games VALUES (199, 831, 91);
INSERT INTO public.games VALUES (200, 993, 91);
INSERT INTO public.games VALUES (201, 61, 92);
INSERT INTO public.games VALUES (202, 794, 92);
INSERT INTO public.games VALUES (203, 729, 91);
INSERT INTO public.games VALUES (204, 690, 91);
INSERT INTO public.games VALUES (205, 651, 91);
INSERT INTO public.games VALUES (206, 1, 93);
INSERT INTO public.games VALUES (207, 211, 93);
INSERT INTO public.games VALUES (208, 552, 94);
INSERT INTO public.games VALUES (209, 42, 94);
INSERT INTO public.games VALUES (210, 527, 93);
INSERT INTO public.games VALUES (211, 708, 93);
INSERT INTO public.games VALUES (212, 553, 93);
INSERT INTO public.games VALUES (213, 1, 95);
INSERT INTO public.games VALUES (214, 397, 95);
INSERT INTO public.games VALUES (215, 302, 96);
INSERT INTO public.games VALUES (216, 363, 96);
INSERT INTO public.games VALUES (217, 504, 95);
INSERT INTO public.games VALUES (218, 714, 95);
INSERT INTO public.games VALUES (219, 85, 95);
INSERT INTO public.games VALUES (220, 1, 97);
INSERT INTO public.games VALUES (221, 909, 97);
INSERT INTO public.games VALUES (222, 648, 98);
INSERT INTO public.games VALUES (223, 639, 98);
INSERT INTO public.games VALUES (224, 221, 97);
INSERT INTO public.games VALUES (225, 356, 97);
INSERT INTO public.games VALUES (226, 156, 97);
INSERT INTO public.games VALUES (227, 1, 99);
INSERT INTO public.games VALUES (228, 689, 99);
INSERT INTO public.games VALUES (229, 1, 100);
INSERT INTO public.games VALUES (230, 331, 100);
INSERT INTO public.games VALUES (231, 777, 99);
INSERT INTO public.games VALUES (232, 928, 99);
INSERT INTO public.games VALUES (233, 756, 99);
INSERT INTO public.games VALUES (234, 619, 108);
INSERT INTO public.games VALUES (235, 277, 108);
INSERT INTO public.games VALUES (236, 298, 109);
INSERT INTO public.games VALUES (237, 786, 109);
INSERT INTO public.games VALUES (238, 980, 108);
INSERT INTO public.games VALUES (239, 653, 108);
INSERT INTO public.games VALUES (240, 715, 108);
INSERT INTO public.games VALUES (241, 1, 110);
INSERT INTO public.games VALUES (242, 129, 110);
INSERT INTO public.games VALUES (243, 899, 111);
INSERT INTO public.games VALUES (244, 258, 111);
INSERT INTO public.games VALUES (245, 663, 110);
INSERT INTO public.games VALUES (246, 6, 110);
INSERT INTO public.games VALUES (247, 255, 110);
INSERT INTO public.games VALUES (248, 34, 112);
INSERT INTO public.games VALUES (249, 718, 112);
INSERT INTO public.games VALUES (250, 160, 113);
INSERT INTO public.games VALUES (251, 97, 113);
INSERT INTO public.games VALUES (252, 27, 112);
INSERT INTO public.games VALUES (253, 94, 112);
INSERT INTO public.games VALUES (254, 406, 112);
INSERT INTO public.games VALUES (255, 1, 114);
INSERT INTO public.games VALUES (256, 557, 114);
INSERT INTO public.games VALUES (257, 87, 115);
INSERT INTO public.games VALUES (258, 971, 115);
INSERT INTO public.games VALUES (259, 264, 114);
INSERT INTO public.games VALUES (260, 525, 114);
INSERT INTO public.games VALUES (261, 331, 114);
INSERT INTO public.games VALUES (262, 1, 116);
INSERT INTO public.games VALUES (263, 764, 116);
INSERT INTO public.games VALUES (264, 736, 117);
INSERT INTO public.games VALUES (265, 270, 117);
INSERT INTO public.games VALUES (266, 581, 116);
INSERT INTO public.games VALUES (267, 835, 116);
INSERT INTO public.games VALUES (268, 245, 116);
INSERT INTO public.games VALUES (269, 1, 118);
INSERT INTO public.games VALUES (270, 1, 118);
INSERT INTO public.games VALUES (271, 849, 120);
INSERT INTO public.games VALUES (272, 206, 120);
INSERT INTO public.games VALUES (273, 479, 118);
INSERT INTO public.games VALUES (274, 520, 118);
INSERT INTO public.games VALUES (275, 991, 118);
INSERT INTO public.games VALUES (276, 1, 121);
INSERT INTO public.games VALUES (277, 155, 121);
INSERT INTO public.games VALUES (278, 516, 122);
INSERT INTO public.games VALUES (279, 716, 122);
INSERT INTO public.games VALUES (280, 358, 121);
INSERT INTO public.games VALUES (281, 908, 121);
INSERT INTO public.games VALUES (282, 226, 121);
INSERT INTO public.games VALUES (283, 123, 123);
INSERT INTO public.games VALUES (284, 335, 123);
INSERT INTO public.games VALUES (285, 1, 124);
INSERT INTO public.games VALUES (286, 169, 124);
INSERT INTO public.games VALUES (287, 491, 123);
INSERT INTO public.games VALUES (288, 210, 123);
INSERT INTO public.games VALUES (289, 415, 123);
INSERT INTO public.games VALUES (290, 2, 136);
INSERT INTO public.games VALUES (291, 3, 136);
INSERT INTO public.games VALUES (292, 4, 136);
INSERT INTO public.games VALUES (293, 5, 136);
INSERT INTO public.games VALUES (294, 6, 136);
INSERT INTO public.games VALUES (295, 7, 136);
INSERT INTO public.games VALUES (296, 8, 136);
INSERT INTO public.games VALUES (297, 9, 136);
INSERT INTO public.games VALUES (298, 10, 136);
INSERT INTO public.games VALUES (299, 2, 137);
INSERT INTO public.games VALUES (300, 3, 137);
INSERT INTO public.games VALUES (301, 4, 137);
INSERT INTO public.games VALUES (302, 5, 137);
INSERT INTO public.games VALUES (303, 6, 137);
INSERT INTO public.games VALUES (304, 2, 137);
INSERT INTO public.games VALUES (305, 3, 137);
INSERT INTO public.games VALUES (306, 4, 137);
INSERT INTO public.games VALUES (307, 2, 136);
INSERT INTO public.games VALUES (308, 3, 136);
INSERT INTO public.games VALUES (309, 2, 136);
INSERT INTO public.games VALUES (310, 3, 136);
INSERT INTO public.games VALUES (311, 4, 136);
INSERT INTO public.games VALUES (312, 2, 136);
INSERT INTO public.games VALUES (313, 3, 136);
INSERT INTO public.games VALUES (314, 4, 136);
INSERT INTO public.games VALUES (315, 5, 136);
INSERT INTO public.games VALUES (316, 6, 136);
INSERT INTO public.games VALUES (317, 7, 136);
INSERT INTO public.games VALUES (318, 8, 136);
INSERT INTO public.games VALUES (319, 9, 136);
INSERT INTO public.games VALUES (320, 2, 138);
INSERT INTO public.games VALUES (321, 3, 138);
INSERT INTO public.games VALUES (322, 4, 138);
INSERT INTO public.games VALUES (323, 5, 138);
INSERT INTO public.games VALUES (324, 6, 138);
INSERT INTO public.games VALUES (325, 7, 138);
INSERT INTO public.games VALUES (326, 8, 138);
INSERT INTO public.games VALUES (327, 9, 138);
INSERT INTO public.games VALUES (328, 10, 138);
INSERT INTO public.games VALUES (329, 11, 138);
INSERT INTO public.games VALUES (330, 2, 139);
INSERT INTO public.games VALUES (331, 3, 139);
INSERT INTO public.games VALUES (332, 4, 139);
INSERT INTO public.games VALUES (333, 5, 139);
INSERT INTO public.games VALUES (334, 6, 139);
INSERT INTO public.games VALUES (335, 7, 139);
INSERT INTO public.games VALUES (336, 8, 139);
INSERT INTO public.games VALUES (337, 9, 139);
INSERT INTO public.games VALUES (338, 10, 139);
INSERT INTO public.games VALUES (339, 11, 139);
INSERT INTO public.games VALUES (340, 12, 139);
INSERT INTO public.games VALUES (341, 2, 139);
INSERT INTO public.games VALUES (342, 3, 139);
INSERT INTO public.games VALUES (343, 2, 138);
INSERT INTO public.games VALUES (344, 3, 138);
INSERT INTO public.games VALUES (345, 4, 138);
INSERT INTO public.games VALUES (346, 5, 138);
INSERT INTO public.games VALUES (347, 6, 138);
INSERT INTO public.games VALUES (348, 7, 138);
INSERT INTO public.games VALUES (349, 8, 138);
INSERT INTO public.games VALUES (350, 9, 138);
INSERT INTO public.games VALUES (351, 2, 138);
INSERT INTO public.games VALUES (352, 3, 138);
INSERT INTO public.games VALUES (353, 4, 138);
INSERT INTO public.games VALUES (354, 5, 138);
INSERT INTO public.games VALUES (355, 6, 138);
INSERT INTO public.games VALUES (356, 2, 138);
INSERT INTO public.games VALUES (357, 3, 138);
INSERT INTO public.games VALUES (358, 4, 138);
INSERT INTO public.games VALUES (359, 5, 138);
INSERT INTO public.games VALUES (360, 6, 138);
INSERT INTO public.games VALUES (361, 2, 140);
INSERT INTO public.games VALUES (362, 2, 140);
INSERT INTO public.games VALUES (363, 3, 140);
INSERT INTO public.games VALUES (364, 3, 140);
INSERT INTO public.games VALUES (365, 2, 141);
INSERT INTO public.games VALUES (366, 3, 141);
INSERT INTO public.games VALUES (367, 4, 141);
INSERT INTO public.games VALUES (368, 5, 141);
INSERT INTO public.games VALUES (369, 6, 141);
INSERT INTO public.games VALUES (370, 7, 141);
INSERT INTO public.games VALUES (371, 8, 141);
INSERT INTO public.games VALUES (372, 2, 141);
INSERT INTO public.games VALUES (373, 3, 141);
INSERT INTO public.games VALUES (374, 4, 141);
INSERT INTO public.games VALUES (375, 5, 141);
INSERT INTO public.games VALUES (376, 6, 141);
INSERT INTO public.games VALUES (377, 7, 141);
INSERT INTO public.games VALUES (378, 8, 141);
INSERT INTO public.games VALUES (379, 9, 141);
INSERT INTO public.games VALUES (380, 10, 141);
INSERT INTO public.games VALUES (381, 11, 141);
INSERT INTO public.games VALUES (382, 12, 141);
INSERT INTO public.games VALUES (383, 13, 141);
INSERT INTO public.games VALUES (384, 2, 140);
INSERT INTO public.games VALUES (385, 3, 140);
INSERT INTO public.games VALUES (386, 4, 140);
INSERT INTO public.games VALUES (387, 5, 140);
INSERT INTO public.games VALUES (388, 6, 140);
INSERT INTO public.games VALUES (389, 7, 140);
INSERT INTO public.games VALUES (390, 8, 140);
INSERT INTO public.games VALUES (391, 2, 140);
INSERT INTO public.games VALUES (392, 3, 140);
INSERT INTO public.games VALUES (393, 4, 140);
INSERT INTO public.games VALUES (394, 5, 140);
INSERT INTO public.games VALUES (395, 6, 140);
INSERT INTO public.games VALUES (396, 7, 140);
INSERT INTO public.games VALUES (397, 8, 140);
INSERT INTO public.games VALUES (398, 9, 140);
INSERT INTO public.games VALUES (399, 2, 140);
INSERT INTO public.games VALUES (400, 3, 140);
INSERT INTO public.games VALUES (401, 4, 140);
INSERT INTO public.games VALUES (402, 5, 140);
INSERT INTO public.games VALUES (403, 1, 142);
INSERT INTO public.games VALUES (404, 234, 142);
INSERT INTO public.games VALUES (405, 602, 143);
INSERT INTO public.games VALUES (406, 597, 143);
INSERT INTO public.games VALUES (407, 553, 142);
INSERT INTO public.games VALUES (408, 520, 142);
INSERT INTO public.games VALUES (409, 176, 142);
INSERT INTO public.games VALUES (410, 1, 144);
INSERT INTO public.games VALUES (411, 406, 144);
INSERT INTO public.games VALUES (412, 1, 145);
INSERT INTO public.games VALUES (413, 662, 145);
INSERT INTO public.games VALUES (414, 88, 144);
INSERT INTO public.games VALUES (415, 353, 144);
INSERT INTO public.games VALUES (416, 626, 144);
INSERT INTO public.games VALUES (417, 697, 146);
INSERT INTO public.games VALUES (418, 631, 146);
INSERT INTO public.games VALUES (419, 178, 147);
INSERT INTO public.games VALUES (420, 395, 147);
INSERT INTO public.games VALUES (421, 930, 146);
INSERT INTO public.games VALUES (422, 177, 146);
INSERT INTO public.games VALUES (423, 863, 146);
INSERT INTO public.games VALUES (424, 152, 148);
INSERT INTO public.games VALUES (425, 570, 148);
INSERT INTO public.games VALUES (426, 1, 149);
INSERT INTO public.games VALUES (427, 338, 149);
INSERT INTO public.games VALUES (428, 967, 148);
INSERT INTO public.games VALUES (429, 493, 148);
INSERT INTO public.games VALUES (430, 385, 148);
INSERT INTO public.games VALUES (431, 1, 150);
INSERT INTO public.games VALUES (432, 799, 150);
INSERT INTO public.games VALUES (433, 956, 151);
INSERT INTO public.games VALUES (434, 771, 151);
INSERT INTO public.games VALUES (435, 402, 150);
INSERT INTO public.games VALUES (436, 234, 150);
INSERT INTO public.games VALUES (437, 40, 150);
INSERT INTO public.games VALUES (438, 1, 152);
INSERT INTO public.games VALUES (439, 101, 152);
INSERT INTO public.games VALUES (440, 943, 153);
INSERT INTO public.games VALUES (441, 717, 153);
INSERT INTO public.games VALUES (442, 17, 152);
INSERT INTO public.games VALUES (443, 971, 152);
INSERT INTO public.games VALUES (444, 544, 152);
INSERT INTO public.games VALUES (445, 91, 154);
INSERT INTO public.games VALUES (446, 678, 154);
INSERT INTO public.games VALUES (447, 1, 155);
INSERT INTO public.games VALUES (448, 1, 155);
INSERT INTO public.games VALUES (449, 30, 154);
INSERT INTO public.games VALUES (450, 474, 154);
INSERT INTO public.games VALUES (451, 391, 154);
INSERT INTO public.games VALUES (452, 222, 157);
INSERT INTO public.games VALUES (453, 301, 157);
INSERT INTO public.games VALUES (454, 264, 158);
INSERT INTO public.games VALUES (455, 549, 158);
INSERT INTO public.games VALUES (456, 617, 157);
INSERT INTO public.games VALUES (457, 150, 157);
INSERT INTO public.games VALUES (458, 16, 157);
INSERT INTO public.games VALUES (459, 1, 159);
INSERT INTO public.games VALUES (460, 26, 159);
INSERT INTO public.games VALUES (461, 480, 160);
INSERT INTO public.games VALUES (462, 320, 160);
INSERT INTO public.games VALUES (463, 626, 159);
INSERT INTO public.games VALUES (464, 737, 159);
INSERT INTO public.games VALUES (465, 666, 159);
INSERT INTO public.games VALUES (466, 113, 161);
INSERT INTO public.games VALUES (467, 25, 161);
INSERT INTO public.games VALUES (468, 335, 162);
INSERT INTO public.games VALUES (469, 797, 162);
INSERT INTO public.games VALUES (470, 488, 161);
INSERT INTO public.games VALUES (471, 10, 161);
INSERT INTO public.games VALUES (472, 130, 161);
INSERT INTO public.games VALUES (473, 683, 163);
INSERT INTO public.games VALUES (474, 267, 163);
INSERT INTO public.games VALUES (475, 292, 164);
INSERT INTO public.games VALUES (476, 904, 164);
INSERT INTO public.games VALUES (477, 326, 163);
INSERT INTO public.games VALUES (478, 845, 163);
INSERT INTO public.games VALUES (479, 753, 163);
INSERT INTO public.games VALUES (480, 399, 165);
INSERT INTO public.games VALUES (481, 604, 165);
INSERT INTO public.games VALUES (482, 1, 166);
INSERT INTO public.games VALUES (483, 1, 166);
INSERT INTO public.games VALUES (484, 966, 165);
INSERT INTO public.games VALUES (485, 417, 165);
INSERT INTO public.games VALUES (486, 119, 165);
INSERT INTO public.games VALUES (487, 1, 168);
INSERT INTO public.games VALUES (488, 264, 168);
INSERT INTO public.games VALUES (489, 4, 169);
INSERT INTO public.games VALUES (490, 599, 169);
INSERT INTO public.games VALUES (491, 256, 168);
INSERT INTO public.games VALUES (492, 868, 168);
INSERT INTO public.games VALUES (493, 320, 168);
INSERT INTO public.games VALUES (494, 1, 170);
INSERT INTO public.games VALUES (495, 478, 170);
INSERT INTO public.games VALUES (496, 52, 171);
INSERT INTO public.games VALUES (497, 173, 171);
INSERT INTO public.games VALUES (498, 518, 170);
INSERT INTO public.games VALUES (499, 637, 170);
INSERT INTO public.games VALUES (500, 23, 170);
INSERT INTO public.games VALUES (501, 1, 172);
INSERT INTO public.games VALUES (502, 87, 172);
INSERT INTO public.games VALUES (503, 1, 173);
INSERT INTO public.games VALUES (504, 1, 173);
INSERT INTO public.games VALUES (505, 940, 172);
INSERT INTO public.games VALUES (506, 70, 172);
INSERT INTO public.games VALUES (507, 190, 172);
INSERT INTO public.games VALUES (508, 44, 175);
INSERT INTO public.games VALUES (509, 602, 175);
INSERT INTO public.games VALUES (510, 237, 176);
INSERT INTO public.games VALUES (511, 238, 176);
INSERT INTO public.games VALUES (512, 182, 175);
INSERT INTO public.games VALUES (513, 272, 175);
INSERT INTO public.games VALUES (514, 864, 175);
INSERT INTO public.games VALUES (515, 351, 177);
INSERT INTO public.games VALUES (516, 560, 177);
INSERT INTO public.games VALUES (517, 184, 178);
INSERT INTO public.games VALUES (518, 455, 178);
INSERT INTO public.games VALUES (519, 276, 177);
INSERT INTO public.games VALUES (520, 796, 177);
INSERT INTO public.games VALUES (521, 280, 177);
INSERT INTO public.games VALUES (522, 1, 179);
INSERT INTO public.games VALUES (523, 389, 179);
INSERT INTO public.games VALUES (524, 1, 180);
INSERT INTO public.games VALUES (525, 698, 180);
INSERT INTO public.games VALUES (526, 702, 179);
INSERT INTO public.games VALUES (527, 933, 179);
INSERT INTO public.games VALUES (528, 210, 179);
INSERT INTO public.games VALUES (529, 592, 181);
INSERT INTO public.games VALUES (530, 305, 181);
INSERT INTO public.games VALUES (531, 814, 182);
INSERT INTO public.games VALUES (532, 369, 182);
INSERT INTO public.games VALUES (533, 1002, 181);
INSERT INTO public.games VALUES (534, 101, 181);
INSERT INTO public.games VALUES (535, 747, 181);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Alice');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 535, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 182, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

