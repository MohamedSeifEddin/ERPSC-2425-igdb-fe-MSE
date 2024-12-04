using GameService as service from '../../srv/game-service';


annotate service.Student with @(
    odata.draft.enabled,
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Student_ID',
            Value : Student_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'First_name',
            Value : First_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Last_name',
            Value : Last_name,
        },
    ]
);
annotate service.Student with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Student_ID',
                Value : Student_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'First_name',
                Value : First_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Last_name',
                Value : Last_name,
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

annotate service.FavoriteGame with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Game_ID',
                Value : Game_ID,
            },
	{
            $Type : 'UI.DataField',
            Label : 'Student ID',
            Value : Student_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Game',
            Value : to_game.Name,
        },
        ],
    },

);

annotate service.Student with @(
    UI.FieldGroup #FavoriteGamesGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Game ID',
                Value : to_favos.Game_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Game Name',
                Value : to_favos.to_game.Name, 
            },
          
        ]
    }
);

annotate service.Game with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Game_ID',
            Value : Game_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Game_Name',
            Value : Name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Release_Date',
            Value : Release_date,
        },
    ]
);

annotate service.Game with @(
    UI.FieldGroup #GeneratedGroup2 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Game_ID',
                Value : Game_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Game_Name',
                Value : Name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Release_Date',
                Value : Release_date,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet2',
            Label : 'Game Details',
            Target : '@UI.FieldGroup#GeneratedGroup2',
        },
    ]
);

