page 50004 "Automotive Setup"
{

    PageType = Card;
    SourceTable = "Automotive Setup";
    Caption = 'Automotive Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;


    layout
    {
        area(content)
        {
            group(General)
            {
                field("No. Series"; Rec."No. Series")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.InsertIfNotExists();
    end;

}