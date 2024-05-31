page 50003 "Automotive Act."
{
    PageType = CardPart;
    SourceTable = "Activities Cue";
    RefreshOnActivate = true;
    ShowFilter = false;

    layout
    {
        area(Content)
        {
            cuegroup("Activities")
            {
                field("Total Automotives"; Rec."Total Automotives")
                {
                    ApplicationArea = All;
                }
                field("Sales This Month"; Rec."Sales This Month")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the sum of sales in the current month excluding taxes.';
                }
                field("Ongoing Sales Orders"; Rec."Ongoing Sales Orders")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies sales orders that are not yet posted or only partially posted.';
                }


            }
        }
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        Rec.reset();
        if not Rec.get() then
            Rec.Init();
        Rec.Insert();
        Commit();
    end;

}