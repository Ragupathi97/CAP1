using CatalogService as service from '../../srv/service';

annotate service.Employee with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Name',
            Value : Name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'EmpGender',
            Value : EmpGender,
        },
        {
            $Type : 'UI.DataField',
            Label : 'EmpEmail',
            Value : EmpEmail,
        },
        {
            $Type : 'UI.DataField',
            Label : 'city_ID',
            Value : city_ID,
        },
        
    ]
);
annotate service.Employee with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Nameofemp',
                Value : Name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EmpGender',
                Value : EmpGender,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EmpEmail',
                Value : EmpEmail,
            },
            {
                $Type : 'UI.DataField',
                Label : 'city_ID',
                Value : city_ID,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);

