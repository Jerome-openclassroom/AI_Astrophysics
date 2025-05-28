
# Galaxy Structure Analysis

This document summarizes the SQL-based analyses carried out on the Astres database to infer the galactic distribution of stellar clusters.

## 1. Objective

The goal was to statistically evaluate whether **open clusters** and **globular clusters** differ in their galactic positioning, based on:
- Their average distances from Earth
- The constellations in which they are located (as indirect indicators of galactic disk vs halo positioning)

## 2. Method

Using SQL queries, we extracted and grouped:
- All **open clusters** (`type_amas = 'ouvert'`) by constellation
- All **globular clusters** (`type_amas = 'globulaire'`) by constellation

We calculated:
- The number of clusters per constellation
- The average distance (`distance_années_lumière`) per constellation

## 3. Results

### Open Clusters

These were found to be concentrated at relatively short distances:

| Constellation            | Number of Clusters | Avg Distance (AL) |
|--------------------------|--------------------|-------------------|
| Chevelure de Bérénice    | 1                  | 280               |
| Taureau                  | 2                  | 298               |
| Cygne                    | 1                  | 825               |
| Orion                    | 1                  | 1300              |
| Ophiuchus                | 1                  | 1400              |
| Cancer                   | 2                  | 1690              |
| Sagittaire               | 4                  | 3053              |
| Gémeaux                  | 1                  | 3870              |
| Cocher                   | 3                  | 4110              |
| Grand Chien              | 2                  | 4225              |
| Persée                   | 4                  | 5425              |
| Cassiopée                | 4                  | 6038              |
| Ecu de Sobieski          | 1                  | 6120              |

> These distances, mostly below ~6,000 AL, are consistent with objects located within the **galactic disk**.

### Globular Clusters

These are much more distant:

| Constellation            | Number of Clusters | Avg Distance (AL) |
|--------------------------|--------------------|-------------------|
| Chiens de chasse         | 1                  | 33,900            |
| Grand carré de Pégase    | 1                  | 33,000            |
| Hercule                  | 2                  | 24,450            |
| Ophiuchus                | 1                  | 14,300            |
| Scorpion                 | 1                  | 7,200             |

> Their distances are significantly greater, often exceeding 20,000 AL, consistent with a **halo distribution** around the galactic center.

## 4. Interpretation

These results confirm the classical structural model of the Milky Way:
- **Open clusters**: young, found in the **thin disk**
- **Globular clusters**: ancient, located in the **halo**

This analysis was conducted interactively via SQL and interpreted with the help of a language model (Lyra), simulating a scientific dialogue between human and AI.
