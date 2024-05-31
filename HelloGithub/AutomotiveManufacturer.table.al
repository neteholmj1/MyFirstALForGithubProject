/* table 50002 AutomotiveManufacturer
{
    DataClassification = SystemMetadata;

    fields
    {
        field(2; ManufacturerCode; Code[20])
        {
            DataClassification = SystemMetadata;


        }
    }

    keys
    {
        key(Key1; MyField)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

} */