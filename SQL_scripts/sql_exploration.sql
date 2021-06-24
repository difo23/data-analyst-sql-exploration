
-- Simple select create table for Dominican Republic
CREATE TABLE covid_rd AS
SELECT *
FROM portafolio.covid
WHERE location = 'United States';

SELECT location, date, total_cases, new_cases, total_deaths, population
FROM covid_rd
order by 1, 2;


-- Select info about Haiti
SELECT location, date, total_cases, new_cases, total_deaths, population 
FROM covid
WHERE location LIKE '%haiti%'
order by 1, 2

-- Looking at total case vs total deaths in RD
SELECT 
	location, 
	date, 
	total_cases, 
	new_cases,
    total_vaccinations,
	total_deaths, 
	((total_deaths)/ total_cases)*100 as deaths_percents 
FROM covid_rd
order by 2 DESC;

-- Looking for immunity of group by case and vaccinations

SELECT 
	location, 
	date, 
	total_cases, 
	new_cases,
    total_vaccinations,
	total_deaths, 
	((total_cases + total_vaccinations - total_deaths)/ population)*100 as group_immunity 
FROM covid_rd
order by 1, 2;


-- Looking at total deaths vs populations in RD


SELECT 
	location, 
	date, 
	total_cases, 
    new_cases,
	population,
    total_vaccinations,
	total_deaths, 
	(( total_deaths)/ population)*100 as deaths_populantion_percents
FROM covid_rd
order by 1, 2;


SELECT 
	location, 
	date, 
	new_cases,
	total_cases, 
	population,
    total_vaccinations,
	total_deaths, 
	(( total_cases)/ population)*100 as casess_populantion_percents
FROM covid_rd
order by 1, 2;

-- Looking at countries with highest infection rate compared to population

SELECT 
	location, 
    population, 
    MAX(total_cases) as highest_infection,
    MAX(( total_cases/ population))*100  as highest_cases_populantion_percents
FROM portafolio.covid
GROUP BY location, population
order by highest_cases_populantion_percents desc;

-- Showing countries with highest death count per population


SELECT 
	location, 
    population, 
    MAX(cast(total_deaths as SIGNED)) as highest_deaths,
    MAX(( cast(total_deaths as SIGNED)/ population))*100  as highest_deaths_populantion_percents
FROM portafolio.covid
WHERE continent is not null
GROUP BY location, population
order by highest_deaths_populantion_percents desc;

