SELECT
    person.name, person.id
FROM
    person

JOIN drivers_license
    ON person.license_id = drivers_license.id

JOIN get_fit_now_member
    ON person.id = get_fit_now_member.person_id

JOIN get_fit_now_check_in
    ON get_fit_now_member.id = get_fit_now_check_in.membership_id

WHERE
    drivers_license.plate_number LIKE "%H42W%"
    AND drivers_license.gender = "male"
    AND get_fit_now_member.membership_status = "gold"
    AND get_fit_now_check_in.check_in_date = 20180109
    AND get_fit_now_member.id LIKE "48Z%";