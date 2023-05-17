namespace db;

using { cuid, managed, temporal, Currency } from '@sap/cds/common';

entity City {
    key ID      : Integer;
    name        : localized String(100) not null @assert.unique;
}
entity Employee : cuid, managed {
    Name       : String;
    EmpGender   : String;
    EmpEmail    : String;
    city        : Association to one City;
    technology  : Composition of many technologies on technology.techname = $self;
}
entity technologies: managed {
    Key Id        : Integer @assert.unique;
    expinyears    : Integer;
    skillname     : String;
    techname      : Composition of Employee;
}