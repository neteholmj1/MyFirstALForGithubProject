/* page 50007 ControlAddinPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                usercontrol(MyCustomControlAddin; MyControlAddIn)
                {
                    trigger JSInitialized(MyText: Text)
                    begin
                        Message(MyText);
                    end;

                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        CurrPage.MyCustomControlAddin.InitializeJS();
    end;

} */