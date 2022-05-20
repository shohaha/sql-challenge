--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2022-05-18 20:35:00 BST

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
-- TOC entry 209 (class 1259 OID 17069)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    dept_no character varying(5) NOT NULL,
    dept_name character varying(50)
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 17074)
-- Name: dept_emp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_emp (
    emp_no character varying NOT NULL,
    dept_no character varying(5)
);


ALTER TABLE public.dept_emp OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 17079)
-- Name: dept_manager; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_manager (
    dept_no character varying(5) NOT NULL,
    emp_no character varying NOT NULL
);


ALTER TABLE public.dept_manager OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 17084)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    emp_title_id character varying,
    emp_no character varying NOT NULL,
    birth_date date,
    first_name character varying(30),
    last_name character varying(30),
    sex character varying(1),
    hire_date date
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 17091)
-- Name: salaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salaries (
    emp_no character varying NOT NULL,
    salary integer
);


ALTER TABLE public.salaries OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 17096)
-- Name: titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titles (
    title_id character varying NOT NULL,
    title character varying(30)
);


ALTER TABLE public.titles OWNER TO postgres;

--
-- TOC entry 3450 (class 2606 OID 17073)
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_no);


--
-- TOC entry 3452 (class 2606 OID 17147)
-- Name: dept_manager emp_no; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT emp_no PRIMARY KEY (emp_no);


--
-- TOC entry 3454 (class 2606 OID 17116)
-- Name: salaries salaries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT salaries_pkey PRIMARY KEY (emp_no);


--
-- TOC entry 3456 (class 2606 OID 17102)
-- Name: titles titles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (title_id);


--
-- TOC entry 3457 (class 2606 OID 17103)
-- Name: dept_emp dept_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_emp
    ADD CONSTRAINT dept_no FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no) NOT VALID;


--
-- TOC entry 3458 (class 2606 OID 17132)
-- Name: dept_manager dept_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_no FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no) NOT VALID;


--
-- TOC entry 3460 (class 2606 OID 17125)
-- Name: employees emp_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT emp_no FOREIGN KEY (emp_no) REFERENCES public.salaries(emp_no) NOT VALID;


--
-- TOC entry 3459 (class 2606 OID 17108)
-- Name: employees emp_title_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT emp_title_id FOREIGN KEY (emp_title_id) REFERENCES public.titles(title_id) NOT VALID;


-- Completed on 2022-05-18 20:35:01 BST

--
-- PostgreSQL database dump complete
--

