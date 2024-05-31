page 50001 "Automotive List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Automotive;
    Editable = false;
    Caption = 'Automotive List';
    CardPageId = "Automotive Card";


    layout
    {
        area(Content)
        {
            repeater(Automotives)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
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
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(PrintAllNames)
            {
                ApplicationArea = All;
                Caption = 'Print all names';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
                Image = ShowList;

                trigger OnAction()
                var
                    MyListCodeunit: Codeunit MyListCodeunit;
                begin
                    MyListCodeunit.GothrougAllAutomotives();
                end;
            }
        }
    }
}