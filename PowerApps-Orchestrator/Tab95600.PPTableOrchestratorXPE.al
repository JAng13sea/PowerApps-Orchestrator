table 95600 "PP Table Orchestrator XPE"
{
    Caption = 'PP Table Orchestrator XPE';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Name; Code[20])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(2; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            DataClassification = CustomerContent;
        }
        field(3; "Integration Table ID"; Integer)
        {
            Caption = 'Integration Table ID';
            DataClassification = CustomerContent;
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
    }
    keys
    {
        key(PK; Name)
        {
            Clustered = true;
        }
        key(Key2; "Table ID", "Integration Table ID")
        {
        }
    }
}
