page 50000 "Automotive Role Center"
{
    PageType = RoleCenter;
    Caption = 'Automotive';

    layout
    {
        area(RoleCenter)
        {
            part(Headline; "Headline RC Business Manager")
            {
                ApplicationArea = All;
            }
            part(Activities; "Automotive Act.")
            {
                ApplicationArea = All;
            }
            part("Help And Chart Wrapper"; "Help And Chart Wrapper")
            {
                ApplicationArea = All;
            }
            part("Report Inbox Part"; "Report Inbox Part")
            {
                ApplicationArea = All;
            }
            part("Power BI Report Spinner Part"; "Power BI Report Spinner Part")
            {
                ApplicationArea = All;
            }
        }


    }
    actions
    {
        area(Reporting)
        {
            action(AutomotiveReport)
            {
                ApplicationArea = All;
                // Caption
                //RunObject:Report AutomotiveReport;

            }
        }
    }
}