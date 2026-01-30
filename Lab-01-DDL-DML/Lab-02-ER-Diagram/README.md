# Lab 02 – ER Model & Relational Schema

## Objective
To design an Entity–Relationship (ER) diagram for a university database system
and convert the ER model into a relational schema using Oracle SQL.

---

## Contents
- **Lab2_solution.png**  
  ER diagram exported as an image for easy viewing on GitHub.

- **Lab2_solution.drawio**  
  Source file of the ER diagram created using draw.io (diagrams.net).

- **lab2_tables.sql**  
  Oracle SQL script containing `CREATE TABLE` statements based on the ER model.

- **questions.pdf**  
  Original lab questions provided by the faculty.

- **README.md**  
  Description and usage instructions for this lab.

---

## Tools Used
- draw.io (diagrams.net)
- Oracle Database
- Oracle SQL Developer / SQL*Plus
- GitHub

---

## How to View the ER Diagram
- The ER diagram can be viewed directly on GitHub using **Lab2_solution.png**.
- To edit or modify the diagram, open **Lab2_solution.drawio** using:
  - https://app.diagrams.net  
  **or**
  - The draw.io desktop application.

---

## Notes
- The many-to-many relationship between Student and Course is resolved
  using the **Enrollment** table with a composite primary key.
- SQL scripts are written specifically for **Oracle Database**.
