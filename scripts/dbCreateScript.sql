--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

-- Started on 2018-07-12 01:16:37

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
-- TOC entry 2830 (class 1262 OID 16394)
-- Name: MyRestaurant; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE "MyRestaurant" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Singapore.1252' LC_CTYPE = 'English_Singapore.1252';


\connect "MyRestaurant"

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
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2832 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16468)
-- Name: collection; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.collection (
    id serial primary key,
    ownerid integer NOT NULL,
    collectionname text NOT NULL,
    isdeleted boolean NOT NULL,
    lastupdateddate timestamp without time zone NOT NULL,
    lastupdatedby integer NOT NULL
);


--
-- TOC entry 197 (class 1259 OID 16474)
-- Name: collectionitems; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.collectionitems (
    id serial primary key,
    collectionid integer NOT NULL,
    restaurantid integer NOT NULL,
    isdeleted boolean NOT NULL,
    lastupdateddate timestamp without time zone NOT NULL,
    lastupdatedby integer NOT NULL
);


--
-- TOC entry 198 (class 1259 OID 16477)
-- Name: operatinghours; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.operatinghours (
    id serial primary key,
    restaurantid integer NOT NULL,
    day text NOT NULL,
    openingtime time without time zone NOT NULL,
    closingtime time without time zone NOT NULL
);


--
-- TOC entry 199 (class 1259 OID 16483)
-- Name: restaurants; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.restaurants (
    id serial primary key,
    name text NOT NULL
);


--
-- TOC entry 200 (class 1259 OID 16489)
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id serial primary key,
    email text NOT NULL
);

--
-- TOC entry 2694 (class 1259 OID 16503)
-- Name: fki_collectionId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "fki_collectionId" ON public.collectionitems USING btree (collectionid);


--
-- TOC entry 2695 (class 1259 OID 16504)
-- Name: fki_colrestaurantId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "fki_colrestaurantId" ON public.collectionitems USING btree (restaurantid);


--
-- TOC entry 2691 (class 1259 OID 16505)
-- Name: fki_userId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "fki_userId" ON public.collection USING btree (ownerid);


--
-- TOC entry 2701 (class 2606 OID 16506)
-- Name: collectionitems collectionId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.collectionitems
    ADD CONSTRAINT "collectionId" FOREIGN KEY (collectionid) REFERENCES public.collection(id);


--
-- TOC entry 2702 (class 2606 OID 16511)
-- Name: collectionitems colrestaurantId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.collectionitems
    ADD CONSTRAINT "colrestaurantId" FOREIGN KEY (restaurantid) REFERENCES public.restaurants(id);


--
-- TOC entry 2703 (class 2606 OID 16516)
-- Name: collectionitems restaurantId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.collectionitems
    ADD CONSTRAINT "restaurantId" FOREIGN KEY (restaurantid) REFERENCES public.restaurants(id);


--
-- TOC entry 2700 (class 2606 OID 16521)
-- Name: collection userId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.collection
    ADD CONSTRAINT "userId" FOREIGN KEY (ownerid) REFERENCES public.users(id);


-- Completed on 2018-07-12 01:16:37

--
-- PostgreSQL database dump complete
--

