--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

-- Started on 2018-07-12 01:13:45

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2825 (class 0 OID 16468)
-- Dependencies: 196
-- Data for Name: collection; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 2826 (class 0 OID 16474)
-- Dependencies: 197
-- Data for Name: collectionitems; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 2827 (class 0 OID 16477)
-- Dependencies: 198
-- Data for Name: operatinghours; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (1, 1, 'Mon', '11:30:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (2, 1, 'Tue', '11:30:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (3, 1, 'Wed', '11:30:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (4, 1, 'Thu', '11:30:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (5, 1, 'Fri', '11:30:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (6, 1, 'Sat', '11:30:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (7, 1, 'Sun', '11:30:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (8, 2, 'Mon', '11:30:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (9, 2, 'Tue', '11:30:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (10, 2, 'Wed', '11:30:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (11, 2, 'Thu', '11:30:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (12, 2, 'Sun', '11:30:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (13, 2, 'Fri', '11:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (14, 2, 'Sat', '11:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (15, 3, 'Mon', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (16, 3, 'Tue', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (17, 3, 'Wed', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (18, 3, 'Thu', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (19, 3, 'Sun', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (20, 3, 'Fri', '11:30:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (21, 3, 'Sat', '11:30:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (22, 4, 'Mon', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (23, 4, 'Tue', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (24, 4, 'Wed', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (25, 4, 'Thu', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (26, 4, 'Sun', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (27, 4, 'Fri', '11:30:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (28, 4, 'Sat', '11:30:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (29, 5, 'Mon', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (30, 5, 'Tue', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (31, 5, 'Wed', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (32, 5, 'Thu', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (33, 5, 'Fri', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (34, 5, 'Sat', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (35, 5, 'Sun', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (36, 6, 'Mon', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (37, 6, 'Tue', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (38, 6, 'Wed', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (39, 6, 'Thu', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (40, 6, 'Fri', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (41, 6, 'Sat', '00:00:00', '00:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (42, 6, 'Sat', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (43, 6, 'Sun', '00:00:00', '00:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (44, 6, 'Sun', '10:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (45, 7, 'Mon', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (46, 7, 'Tue', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (47, 7, 'Wed', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (48, 7, 'Thu', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (49, 7, 'Fri', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (50, 7, 'Sat', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (51, 7, 'Sun', '17:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (52, 8, 'Mon', '11:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (53, 8, 'Tue', '11:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (54, 8, 'Wed', '11:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (55, 8, 'Thu', '11:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (56, 8, 'Sun', '11:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (57, 8, 'Fri', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (58, 8, 'Sat', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (59, 9, 'Mon', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (60, 9, 'Tue', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (61, 9, 'Wed', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (62, 9, 'Thu', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (63, 9, 'Fri', '11:30:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (64, 9, 'Sat', '11:30:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (65, 9, 'Sun', '11:30:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (66, 10, 'Mon', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (67, 10, 'Tue', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (68, 10, 'Wed', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (69, 10, 'Thu', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (70, 10, 'Fri', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (71, 10, 'Sat', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (72, 10, 'Sun', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (73, 11, 'Mon', '10:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (74, 11, 'Tue', '10:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (75, 11, 'Wed', '10:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (76, 11, 'Thu', '10:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (77, 11, 'Fri', '10:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (78, 11, 'Sat', '10:00:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (79, 11, 'Sun', '10:00:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (80, 12, 'Mon', '10:00:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (81, 12, 'Tue', '10:00:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (82, 12, 'Wed', '10:00:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (83, 12, 'Thu', '10:00:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (84, 12, 'Fri', '10:00:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (85, 12, 'Sat', '09:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (86, 12, 'Sun', '09:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (87, 13, 'Mon', '11:30:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (88, 13, 'Tue', '11:30:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (89, 13, 'Wed', '11:30:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (90, 13, 'Thu', '11:30:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (91, 13, 'Fri', '11:30:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (92, 13, 'Sat', '11:30:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (93, 13, 'Sun', '11:30:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (94, 14, 'Mon', '11:00:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (95, 14, 'Tue', '11:00:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (96, 14, 'Wed', '11:00:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (97, 14, 'Thu', '11:00:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (98, 14, 'Fri', '11:00:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (99, 14, 'Sat', '17:00:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (100, 15, 'Mon', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (101, 15, 'Tue', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (102, 15, 'Wed', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (103, 15, 'Thu', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (104, 15, 'Sun', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (105, 15, 'Fri', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (106, 15, 'Sat', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (107, 16, 'Mon', '11:30:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (108, 16, 'Tue', '11:30:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (109, 16, 'Wed', '11:30:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (110, 16, 'Thu', '11:30:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (111, 16, 'Sun', '11:30:00', '21:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (112, 16, 'Fri', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (113, 16, 'Sat', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (114, 17, 'Mon', '17:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (115, 17, 'Tue', '00:00:00', '00:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (116, 17, 'Tue', '17:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (117, 17, 'Wed', '00:00:00', '00:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (118, 17, 'Wed', '17:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (119, 17, 'Thu', '00:00:00', '00:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (120, 17, 'Thu', '17:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (121, 17, 'Fri', '00:00:00', '01:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (122, 17, 'Fri', '17:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (123, 17, 'Sat', '00:00:00', '01:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (124, 17, 'Sat', '15:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (125, 17, 'Sun', '00:00:00', '01:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (126, 17, 'Sun', '15:00:00', '23:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (127, 18, 'Mon', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (128, 18, 'Tue', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (129, 18, 'Tue', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (130, 18, 'Wed', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (131, 18, 'Wed', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (132, 18, 'Thu', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (133, 18, 'Thu', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (134, 18, 'Fri', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (135, 18, 'Fri', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (136, 18, 'Sat', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (137, 18, 'Sat', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (138, 18, 'Sun', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (139, 18, 'Sun', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (140, 18, 'Mon', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (141, 19, 'Mon', '09:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (142, 19, 'Tue', '09:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (143, 19, 'Wed', '09:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (144, 19, 'Thu', '09:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (145, 19, 'Sun', '09:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (146, 19, 'Fri', '09:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (147, 19, 'Sat', '09:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (148, 20, 'Mon', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (149, 20, 'Tue', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (150, 20, 'Wed', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (151, 20, 'Thu', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (152, 20, 'Fri', '10:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (153, 20, 'Sat', '10:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (154, 20, 'Sun', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (155, 21, 'Mon', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (156, 21, 'Tue', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (157, 21, 'Wed', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (158, 21, 'Thu', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (159, 21, 'Fri', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (160, 21, 'Sat', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (161, 21, 'Sun', '24:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (162, 21, 'Mon', '00:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (163, 22, 'Mon', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (164, 22, 'Tue', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (165, 22, 'Wed', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (166, 22, 'Thu', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (167, 22, 'Fri', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (168, 22, 'Sat', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (169, 22, 'Sun', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (170, 23, 'Mon', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (171, 23, 'Tue', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (172, 23, 'Tue', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (173, 23, 'Wed', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (174, 23, 'Wed', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (175, 23, 'Thu', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (176, 23, 'Thu', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (177, 23, 'Fri', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (178, 23, 'Fri', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (179, 23, 'Sat', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (180, 23, 'Sat', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (181, 23, 'Sun', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (182, 23, 'Sun', '24:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (183, 23, 'Mon', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (184, 24, 'Mon', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (185, 24, 'Tue', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (186, 24, 'Wed', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (187, 24, 'Thu', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (188, 24, 'Sun', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (189, 24, 'Fri', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (190, 24, 'Sat', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (191, 24, 'Sat', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (192, 24, 'Sun', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (193, 25, 'Mon', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (194, 25, 'Tue', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (195, 25, 'Wed', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (196, 25, 'Thu', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (197, 25, 'Fri', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (198, 25, 'Sat', '07:00:00', '15:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (199, 25, 'Sun', '07:00:00', '15:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (200, 26, 'Mon', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (201, 26, 'Tue', '00:00:00', '04:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (202, 26, 'Tue', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (203, 26, 'Wed', '00:00:00', '04:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (204, 26, 'Wed', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (205, 26, 'Thu', '00:00:00', '04:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (206, 26, 'Thu', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (207, 26, 'Fri', '00:00:00', '04:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (208, 26, 'Fri', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (209, 26, 'Sat', '00:00:00', '04:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (210, 26, 'Sat', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (211, 26, 'Sun', '00:00:00', '04:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (212, 26, 'Sun', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (213, 26, 'Mon', '00:00:00', '04:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (214, 27, 'Mon', '11:00:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (215, 27, 'Tue', '11:00:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (216, 27, 'Wed', '11:00:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (217, 27, 'Thu', '11:00:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (218, 27, 'Fri', '11:00:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (219, 27, 'Sat', '11:00:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (220, 27, 'Sun', '11:00:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (221, 28, 'Mon', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (222, 28, 'Tue', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (223, 28, 'Wed', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (224, 28, 'Thu', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (225, 28, 'Sun', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (226, 28, 'Fri', '11:30:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (227, 28, 'Sat', '11:30:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (228, 29, 'Mon', '11:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (229, 29, 'Tue', '11:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (230, 29, 'Wed', '11:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (231, 29, 'Thu', '11:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (232, 29, 'Fri', '11:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (233, 29, 'Sat', '11:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (234, 29, 'Sun', '11:30:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (235, 30, 'Mon', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (236, 30, 'Tue', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (237, 30, 'Tue', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (238, 30, 'Wed', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (239, 30, 'Wed', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (240, 30, 'Thu', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (241, 30, 'Thu', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (242, 30, 'Fri', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (243, 30, 'Fri', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (244, 30, 'Sat', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (245, 30, 'Sat', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (246, 30, 'Sun', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (247, 30, 'Sun', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (248, 30, 'Mon', '00:00:00', '00:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (249, 31, 'Mon', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (250, 31, 'Tue', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (251, 31, 'Wed', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (252, 31, 'Thu', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (253, 31, 'Fri', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (254, 31, 'Sat', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (255, 31, 'Sun', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (256, 32, 'Mon', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (257, 32, 'Tue', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (258, 32, 'Wed', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (259, 32, 'Thu', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (260, 32, 'Fri', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (261, 32, 'Sat', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (262, 32, 'Sun', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (263, 33, 'Mon', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (264, 33, 'Tue', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (265, 33, 'Wed', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (266, 33, 'Thu', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (267, 33, 'Fri', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (268, 33, 'Sat', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (269, 33, 'Sun', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (270, 34, 'Mon', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (271, 34, 'Tue', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (272, 34, 'Wed', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (273, 34, 'Thu', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (274, 34, 'Fri', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (275, 34, 'Sat', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (276, 34, 'Sun', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (277, 35, 'Mon', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (278, 35, 'Wed', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (279, 35, 'Thu', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (280, 35, 'Fri', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (281, 35, 'Sat', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (282, 35, 'Sun', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (283, 36, 'Mon', '11:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (284, 36, 'Tue', '11:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (285, 36, 'Wed', '11:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (286, 36, 'Thu', '11:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (287, 36, 'Fri', '11:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (288, 36, 'Sat', '11:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (289, 36, 'Sun', '11:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (290, 37, 'Mon', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (291, 37, 'Tue', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (292, 37, 'Wed', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (293, 37, 'Thu', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (294, 37, 'Fri', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (295, 37, 'Sat', '17:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (296, 38, 'Mon', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (297, 38, 'Tue', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (298, 38, 'Wed', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (299, 38, 'Thu', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (300, 38, 'Fri', '11:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (301, 38, 'Sat', '17:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (302, 38, 'Sun', '17:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (303, 39, 'Mon', '11:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (304, 39, 'Tue', '11:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (305, 39, 'Wed', '11:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (306, 39, 'Thu', '11:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (307, 39, 'Fri', '11:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (308, 39, 'Sat', '11:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (309, 39, 'Sun', '11:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (310, 40, 'Mon', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (311, 40, 'Tue', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (312, 40, 'Wed', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (313, 40, 'Thu', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (314, 40, 'Fri', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (315, 40, 'Sat', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (316, 40, 'Sun', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (317, 41, 'Mon', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (318, 41, 'Tue', '00:00:00', '01:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (319, 41, 'Tue', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (320, 41, 'Wed', '00:00:00', '01:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (321, 41, 'Wed', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (322, 41, 'Thu', '00:00:00', '01:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (323, 41, 'Thu', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (324, 41, 'Fri', '00:00:00', '01:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (325, 41, 'Fri', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (326, 41, 'Sat', '00:00:00', '01:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (327, 41, 'Sat', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (328, 41, 'Sun', '00:00:00', '01:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (329, 41, 'Sun', '11:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (330, 41, 'Mon', '00:00:00', '01:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (331, 42, 'Mon', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (332, 42, 'Tue', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (333, 42, 'Wed', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (334, 42, 'Thu', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (335, 42, 'Sun', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (336, 42, 'Fri', '11:30:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (337, 42, 'Sat', '11:30:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (338, 43, 'Mon', '24:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (339, 43, 'Tue', '00:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (340, 43, 'Tue', '24:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (341, 43, 'Wed', '00:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (342, 43, 'Wed', '24:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (343, 43, 'Thu', '00:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (344, 43, 'Thu', '24:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (345, 43, 'Fri', '00:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (346, 43, 'Fri', '24:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (347, 43, 'Sat', '00:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (348, 43, 'Sat', '17:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (349, 43, 'Sun', '17:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (350, 44, 'Mon', '10:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (351, 44, 'Tue', '10:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (352, 44, 'Wed', '10:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (353, 44, 'Thu', '10:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (354, 44, 'Sun', '10:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (355, 44, 'Fri', '10:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (356, 44, 'Sat', '00:00:00', '00:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (357, 44, 'Sat', '10:00:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (358, 44, 'Sun', '00:00:00', '00:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (359, 45, 'Mon', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (360, 45, 'Tue', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (361, 45, 'Wed', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (362, 45, 'Thu', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (363, 45, 'Fri', '11:30:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (364, 45, 'Sat', '17:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (365, 46, 'Mon', '09:00:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (366, 46, 'Tue', '09:00:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (367, 46, 'Wed', '09:00:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (368, 46, 'Thu', '09:00:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (369, 46, 'Fri', '09:00:00', '21:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (370, 46, 'Sat', '09:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (371, 46, 'Sun', '09:00:00', '22:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (372, 47, 'Mon', '10:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (373, 47, 'Tue', '10:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (374, 47, 'Wed', '10:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (375, 47, 'Thu', '10:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (376, 47, 'Fri', '10:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (377, 47, 'Sat', '10:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (378, 47, 'Sun', '10:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (379, 48, 'Mon', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (380, 48, 'Tue', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (381, 48, 'Wed', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (382, 48, 'Thu', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (383, 48, 'Fri', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (384, 48, 'Sat', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (385, 48, 'Sun', '11:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (386, 49, 'Mon', '08:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (387, 49, 'Tue', '08:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (388, 49, 'Wed', '08:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (389, 49, 'Thu', '08:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (390, 49, 'Fri', '08:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (391, 49, 'Sat', '08:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (392, 49, 'Sun', '08:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (393, 50, 'Mon', '11:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (394, 50, 'Tue', '11:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (395, 50, 'Wed', '11:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (396, 50, 'Thu', '11:00:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (397, 50, 'Fri', '11:00:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (398, 50, 'Sat', '11:30:00', '23:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (399, 50, 'Sun', '16:30:00', '22:30:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (400, 51, 'Mon', '17:30:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (401, 51, 'Tue', '00:00:00', '02:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (402, 51, 'Tue', '17:30:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (403, 51, 'Wed', '00:00:00', '02:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (404, 51, 'Wed', '17:30:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (405, 51, 'Thu', '00:00:00', '02:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (406, 51, 'Thu', '17:30:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (407, 51, 'Fri', '00:00:00', '02:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (408, 51, 'Fri', '17:30:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (409, 51, 'Sat', '00:00:00', '02:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (410, 51, 'Sat', '17:30:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (411, 51, 'Sun', '00:00:00', '02:00:00');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (412, 51, 'Sun', '17:30:00', '23:59:59');
INSERT INTO public.operatinghours (id, restaurantid, day, openingtime, closingtime) VALUES (413, 51, 'Mon', '00:00:00', '02:00:00');


--
-- TOC entry 2828 (class 0 OID 16483)
-- Dependencies: 199
-- Data for Name: restaurants; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.restaurants (id, name) VALUES (1, 'Kushi Tsuru');
INSERT INTO public.restaurants (id, name) VALUES (2, 'Osakaya Restaurant');
INSERT INTO public.restaurants (id, name) VALUES (3, 'The Stinking Rose');
INSERT INTO public.restaurants (id, name) VALUES (4, 'McCormick & Kuleto''s');
INSERT INTO public.restaurants (id, name) VALUES (5, 'Mifune Restaurant');
INSERT INTO public.restaurants (id, name) VALUES (6, 'The Cheesecake Factory');
INSERT INTO public.restaurants (id, name) VALUES (7, 'New Delhi Indian Restaurant');
INSERT INTO public.restaurants (id, name) VALUES (8, 'Iroha Restaurant');
INSERT INTO public.restaurants (id, name) VALUES (9, 'Rose Pistola');
INSERT INTO public.restaurants (id, name) VALUES (10, 'Alioto''s Restaurant');
INSERT INTO public.restaurants (id, name) VALUES (11, 'Canton Seafood & Dim Sum Restaurant');
INSERT INTO public.restaurants (id, name) VALUES (12, 'All Season Restaurant');
INSERT INTO public.restaurants (id, name) VALUES (13, 'Bombay Indian Restaurant');
INSERT INTO public.restaurants (id, name) VALUES (14, 'Sam''s Grill & Seafood Restaurant');
INSERT INTO public.restaurants (id, name) VALUES (15, '2G Japanese Brasserie');
INSERT INTO public.restaurants (id, name) VALUES (16, 'Restaurant Lulu');
INSERT INTO public.restaurants (id, name) VALUES (17, 'Sudachi');
INSERT INTO public.restaurants (id, name) VALUES (18, 'Hanuri');
INSERT INTO public.restaurants (id, name) VALUES (19, 'Herbivore');
INSERT INTO public.restaurants (id, name) VALUES (20, 'Penang Garden');
INSERT INTO public.restaurants (id, name) VALUES (21, 'John''s Grill');
INSERT INTO public.restaurants (id, name) VALUES (22, 'Quan Bac');
INSERT INTO public.restaurants (id, name) VALUES (23, 'Bamboo Restaurant');
INSERT INTO public.restaurants (id, name) VALUES (24, 'Burger Bar');
INSERT INTO public.restaurants (id, name) VALUES (25, 'Blu Restaurant');
INSERT INTO public.restaurants (id, name) VALUES (26, 'Naan ''N'' Curry');
INSERT INTO public.restaurants (id, name) VALUES (27, 'Shanghai China Restaurant');
INSERT INTO public.restaurants (id, name) VALUES (28, 'Tres');
INSERT INTO public.restaurants (id, name) VALUES (29, 'Isobune Sushi');
INSERT INTO public.restaurants (id, name) VALUES (30, 'Viva Pizza Restaurant');
INSERT INTO public.restaurants (id, name) VALUES (31, 'Far East Cafe');
INSERT INTO public.restaurants (id, name) VALUES (32, 'Parallel 37');
INSERT INTO public.restaurants (id, name) VALUES (33, 'Bai Thong Thai Cuisine');
INSERT INTO public.restaurants (id, name) VALUES (34, 'Alhamra');
INSERT INTO public.restaurants (id, name) VALUES (35, 'A-1 Cafe Restaurant');
INSERT INTO public.restaurants (id, name) VALUES (36, 'Nick''s Lighthouse');
INSERT INTO public.restaurants (id, name) VALUES (37, 'Paragon Restaurant & Bar');
INSERT INTO public.restaurants (id, name) VALUES (38, 'Chili Lemon Garlic');
INSERT INTO public.restaurants (id, name) VALUES (39, 'Bow Hon Restaurant');
INSERT INTO public.restaurants (id, name) VALUES (40, 'San Dong House');
INSERT INTO public.restaurants (id, name) VALUES (41, 'Thai Stick Restaurant');
INSERT INTO public.restaurants (id, name) VALUES (42, 'Cesario''s');
INSERT INTO public.restaurants (id, name) VALUES (43, 'Colombini Italian Cafe Bistro');
INSERT INTO public.restaurants (id, name) VALUES (44, 'Sabella & La Torre');
INSERT INTO public.restaurants (id, name) VALUES (45, 'Soluna Cafe and Lounge');
INSERT INTO public.restaurants (id, name) VALUES (46, 'Tong Palace');
INSERT INTO public.restaurants (id, name) VALUES (47, 'India Garden Restaurant');
INSERT INTO public.restaurants (id, name) VALUES (48, 'Sapporo-Ya Japanese Restaurant');
INSERT INTO public.restaurants (id, name) VALUES (49, 'Santorini''s Mediterranean Cuisine');
INSERT INTO public.restaurants (id, name) VALUES (50, 'Kyoto Sushi');
INSERT INTO public.restaurants (id, name) VALUES (51, 'Marrakech Moroccan Restaurant');


--
-- TOC entry 2829 (class 0 OID 16489)
-- Dependencies: 200
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--



-- Completed on 2018-07-12 01:13:45

--
-- PostgreSQL database dump complete
--

