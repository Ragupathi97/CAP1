using {db as mydb} from '../db/data';

service CatalogService {

    entity Employee as projection on mydb.Employee {
        key ID as EmployeeId,
        Name,
        EmpGender,
        EmpEmail,
        city,
        technology
    };

    entity Skill    as projection on mydb.technologies {
        Id,
        expinyears,
        skillname,
        techname
    };
}
