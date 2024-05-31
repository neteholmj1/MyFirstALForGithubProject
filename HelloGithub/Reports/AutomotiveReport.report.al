report 50000 AutomotiveReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = WordReport;

    dataset
    {
        dataitem(DataItemName; Automotive)
        {
            column(No_DataItemName; "No.")
            {
            }
            column(Description_DataItemName; Description)
            {
            }
            column(Model_DataItemName; Model)
            {
            }
            column(Manufacturer_DataItemName; Manufacturer)
            {
            }
            column(FuelType_DataItemName; "Fuel Type")
            {
            }
            column(Year_DataItemName; Year)
            {
            }
            // captions
            column(No_DataItemNameCpt; FieldCaption("No."))
            {
            }
            column(Description_DataItemNameCpt; FieldCaption(Description))
            {
            }
            column(Model_DataItemNameCpt; FieldCaption(Model))
            {
            }
            column(Manufacturer_DataItemNameCpt; FieldCaption(Manufacturer))
            {
            }
            column(FuelType_DataItemNameCpt; FieldCaption("Fuel Type"))
            {
            }
            column(Year_DataItemNameCpt; FieldCaption(Year))
            {
            }
            trigger OnAfterGetRecord()
            var
                LanguageCU: Codeunit Language;
            begin
                CurrReport.Language := LanguageCU.GetLanguageIdOrDefault(('DAN'));
            end;
        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    //field(Name; SourceExpression)
                    //{
                    //    ApplicationArea = All;

                }
            }
        }
    }

    //       actions
    //       {
    //           area(processing)
    //           {
    //               action(LayoutName)
    //               {
    //                   ApplicationArea = All;
    //
    //               }
    //           }
    //            }


    rendering
    {
        layout(WordReport)
        {
            Type = Word;
            LayoutFile = './Reports/Automotive.docx';
        }
        layout(ExcelReport)
        {
            Type = Excel;
            LayoutFile = './Reports/Automotive.xlsx';
        }
    }
    labels
    {
        TitleLbl = 'List of Automotives';
    }
    trigger OnPreReport()
    var
        LanguageCU: Codeunit Language;
    begin
        CurrReport.Language := LanguageCU.GetLanguageIdOrDefault('DAN')
    end;
}