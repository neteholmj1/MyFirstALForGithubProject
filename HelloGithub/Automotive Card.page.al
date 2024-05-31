page 50002 "Automotive Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Automotive;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
            }
            group(Configuration)
            {
                field(Manufacturer; Rec.Manufacturer)
                {
                    ApplicationArea = All;

                }
                field(Model; Rec.Model)
                {
                    ApplicationArea = All;

                }
                field(Year; Rec.Year)
                {
                    ApplicationArea = All;

                }
                field("Fuel Type"; Rec."Fuel Type")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}