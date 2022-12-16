table 95600 "PP Table Orchestrator XPE"
{
    Caption = 'PP Table Orchestrator';
    DataClassification = ToBeClassified;

    fields
    {

        field(1; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            DataClassification = CustomerContent;
            NotBlank = true;
            TableRelation = AllObj."Object ID" WHERE("Object Type" = CONST(Table), "Object ID" = filter(50000..999999));
        }
        field(2; "Table Name"; Text[100])
        {
            CalcFormula = Lookup(AllObjWithCaption."Object Name" WHERE("Object Type" = CONST(Table),
                                                                        "Object ID" = FIELD("Table ID")));
            Caption = 'Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "Integration Table ID"; Integer)
        {
            Caption = 'Integration Table ID';
            DataClassification = CustomerContent;
            NotBlank = true;
            TableRelation = AllObj."Object ID" WHERE("Object Type" = CONST(Table), "Object ID" = filter(1..49999));
        }
        field(4; "Synch. Records"; Boolean)
        {
            Caption = 'Synch. Records';
            DataClassification = CustomerContent;
        }
        field(5; "Synch. Codeunit"; Integer)
        {
            Caption = 'Synch. Codeunit';
            DataClassification = CustomerContent;
        }
        field(6; "Integration Table Name"; Text[100])
        {
            CalcFormula = Lookup(AllObjWithCaption."Object Name" WHERE("Object Type" = CONST(Table),
                                                                        "Object ID" = FIELD("Table ID")));
            Caption = 'Integration Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
    }
    keys
    {
        key(PK; "Table ID")
        {
            Clustered = true;
        }
        key(Key2; "Integration Table ID")
        {
        }
    }
}
