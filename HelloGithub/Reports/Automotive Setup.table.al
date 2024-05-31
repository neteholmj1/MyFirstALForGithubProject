table 50007 "Automotive Setup"
{
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Primary Key"; code[10])
        {
            Caption = 'Primary Key';

        }
        field(2; "No. Series"; Code[50])
        {
            Dataclassification = SystemMetadata;
            TableRelation = "No. Series";
            Caption = 'No. Series';

        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    procedure InsertIfNotExists()
    begin
        Reset();
        if not Get() then begin
            Init();
            Insert(true);
        end;
    end;

}