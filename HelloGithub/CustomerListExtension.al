pageextension 50000 "CustomerListExt" extends "Customer List"
{
    actions
    {
        addfirst(processing)
        {
            action(HelloWorld)
            {
                ApplicationArea = All;
                Caption = 'Hello World';
                Promoted = true;
                trigger OnAction()
                begin
                    Message('Hello World');
                end;
            }

        }

    }
}
