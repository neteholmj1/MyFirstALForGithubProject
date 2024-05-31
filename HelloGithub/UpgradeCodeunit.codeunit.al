codeunit 50000 UpgradeCodeunit
{
    Subtype = Upgrade;
    trigger OnUpgradePerCompany()
    var
        dt: DataTransfer;
        Item: Record Item;
        Automotive: Record Automotive;
    begin
        Automotive.Init();

        ;


        dt.SetTables(Database::Item, Database::Automotive);
        dt.AddFieldValue((Item.FieldNo("No.")), Automotive.FieldNo("No."));
    end;


}