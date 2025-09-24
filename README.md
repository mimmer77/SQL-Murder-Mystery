The SQL Murder Mystery Case Study 🕵️‍♀️
Overview
This project is a data-driven investigation into a fictional crime. Using SQL, I worked as a detective to analyze a series of database tables—including crime reports, citizen records, and financial data—to solve a murder mystery. This was a practical and engaging way to sharpen my database querying skills.
Problem Statement
A murder took place in SQL City on January 15, 2018. The objective of this project was to use the provided database to solve the crime. My investigation followed the clues to identify the killer and their motive.
Tools Used
    • SQL
    • DB Browser for SQLite (for running queries and exploring the database)

Methodology
My investigation was a step-by-step process of using SQL to uncover clues and narrow down my list of suspects.
    1. Initial Investigation: I started by querying the crime_scene_report table to get the details of the crime that occurred on January 15, 2018, in SQL City. This provided me with a crucial clue: a witness.
    2. Witness Interviews: Based on the information from the crime report, I found the two witnesses and read their interview transcripts. Their statements provided key descriptions and details about the killer.
    3. Suspect Identification: Using the descriptions from the witnesses' interviews, I filtered through citizen records to find individuals who matched the description. I cross-referenced this information with other database tables to find additional clues, like gym memberships, vehicle information, or financial records.
    4. Final Conclusion: I used the final clue to link the suspect to the crime and correctly identified the killer, putting a stop to their criminal career.

Final SQL Query
Here is the final query that solved the case:

SELECT
    person.name
FROM
    person

JOIN drivers_license
    ON person.license_id = drivers_license.id

JOIN facebook_event_checkin
    ON person.id = facebook_event_checkin.person_id

WHERE
    drivers_license.car_make = "Tesla"
    AND drivers_license.car_model = "Model S"
    AND drivers_license.hair_color = "red"
    AND drivers_license.height BETWEEN 65 AND 67
    AND drivers_license.gender = "female"
    AND facebook_event_checkin.date BETWEEN 20171201 AND 20171231
    AND facebook_event_checkin.event_name = "SQL Symphony Concert"

GROUP BY person.id
HAVING COUNT(person.id) = 3;

Solution: The killer is Jeremy Bowers!

The motive was: The motive was that Jeremy Bowers was a hired killer who was paid by the mastermind to commit the crime. The mastermind, Miranda Priestly, wanted the victim dead to prevent her own secrets from being exposed.

Acknowledgments
A huge thank you to the creator of the SQL Murder Mystery for building this brilliant and fun project. It's an excellent resource for anyone looking to practice their SQL skills.

