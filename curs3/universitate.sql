SELECT c.titlu_curs, COUNT(n.id_nota) AS nr_note FROM `cursuri` c NATURAL JOIN note n GROUP BY n.id_curs;
SELECT * FROM student CROSS JOIN note;
SELECT nume, prenume, c.titlu_curs FROM `profesor` AS p
LEFT JOIN didactic AS d ON p.id = d.id_prof
LEFT JOIN cursuri As c ON d.id_curs = c.id_curs
WHERE id = 1;
SELECT * FROM `student` where id not in (select id_student from note);
SELECT id_student, count(id_student) as nr FROM `note` group by id_student having nr >=2;
SELECT id_student, s.nume, s.prenume, count(id_student) as nr FROM `note` AS n RIGHT JOIN student AS s ON n.id_student = s.id group by id_student having nr >=2;
SELECT id_student, s.nume, s.prenume, count(id_student) as nr FROM student AS s 
LEFT JOIN note AS n ON s.id = n.id_student
group by id_student having nr >=2;