table 95602 "PP Table Field Orchestrator"
{
    Caption = 'PP Table Field Orchestrator';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(2; "Integration Table Mapping Name"; Code[20])
        {
            Caption = 'Integration Table Mapping Name';
            DataClassification = CustomerContent;
        }
        field(3; "Field No."; Integer)
        {
            Caption = 'Field No.';
            DataClassification = CustomerContent;
        }
        field(4; Status; Boolean)
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
        }
        field(5; "Integration Table Field No."; Integer)
        {
            Caption = 'Integration Table Field No.';
            DataClassification = CustomerContent;
        }
        field(6; "Constant Value"; Text[100])
        {
            Caption = 'Constant Value';
            DataClassification = CustomerContent;
        }
        field(7; "Validate Field"; Boolean)
        {
            Caption = 'Validate Field';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Integration Table Mapping Name")
        {
        }
    }
}
