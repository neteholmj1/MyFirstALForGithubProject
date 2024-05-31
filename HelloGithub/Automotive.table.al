table 50100 "Automotive"
{
    DataClassification = CustomerContent;
    Caption = 'Automotive';
    DataCaptionFields = "No.", Description;
    LookupPageId = "Automotive List";
    DrillDownPageId = "Automotive List";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';


        }

        field(2; Description; Text[100])
        {
            Caption = 'Description';


        }
        field(3; Manufacturer; Code[20])
        {
            Caption = 'Manufacturer';

        }

        field(4; Model; code[50])
        {
            Caption = 'Model';
        }
        field(5; Year; Integer)
        {
            Caption = 'Year';
        }

        field(6; "Fuel Type"; enum "Fuel Type")
        {
            Caption = 'Fuel Type';
        }

    }


    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description, Manufacturer)
        {
        }
    }
    var
        myInt: Integer;

    trigger OnInsert()
    Var
        AutomotiveSetup: Record "Automotive Setup";
        IsHandled: Boolean;
        NoSeries: Codeunit "No. Series";
        Automotive: Record Automotive;
    begin
        IsHandled := false;
        OnBeforeInsertValidation(Rec, IsHandled);
        if IsHandled then
            exit;

        if Rec."No." = '' then begin
            AutomotiveSetup.InsertIfNotExists();
            AutomotiveSetup.TestField("No. Series");

            Rec."No." := NoSeries.GetNextNo(AutomotiveSetup."No. Series");

        end;

        if Rec.Description = '' then
            Rec.Description := Rec."No.";
        Automotive.ReadIsolation(IsolationLevel::ReadUncommitted);
        Automotive.SetLoadFields("No.");
        while Automotive.Get(Rec."No.") do
            Rec."No." := NoSeries.GetNextNo(AutomotiveSetup."No. Series");

    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeInsertValidation(var Automotive: Record automotive; var IsHandled: Boolean)
    begin
    end;

}