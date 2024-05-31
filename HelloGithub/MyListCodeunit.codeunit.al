codeunit 50003 MyListCodeunit
{
    procedure GothrougAllAutomotives()
    var
        Automotive: Record Automotive;
        AutomotiveList: List of [Text];
        AutomotiveName: Text;
        StringOfNames: Text;
    begin
        Automotive.SetLoadFields(Description);
        if Automotive.FindSet() then
            repeat
                if not AutomotiveList.Contains(Automotive.Description) then
                    AutomotiveList.add(Automotive.Description);
            until Automotive.Next() = 0;
        foreach AutomotiveName in AutomotiveList do begin
            if StringOfNames <> '' then
                StringOfNames += ', ';
            StringOfNames += AutomotiveName;
        end;
        Message(StringOfNames);
    end;

    procedure StoreAllCustomerBalances()
    var
        CustomerBalances: Dictionary of [Code[20], Decimal];
        Customer: Record Customer;
        Balance: Decimal;
    begin
        Customer.SetAutoCalcFields("Balance (LCY)");
        if Customer.FindSet() then
            repeat
                CustomerBalances.Add(Customer."No.", Customer."Balance (LCY)");
            until Customer.Next() = 0;
        if CustomerBalances.Get('10000', Balance) then
            Message('Balance of cust. 10000: %1', Balance);// + Format(Balance));
    end;

    procedure ConvertTextToNumber(NewText: Text)
    var
        myInt: Integer;
    begin
        Evaluate(myInt, NewText);

        if myInt > 10 then
            Message('Number>10: %1', NewText)
        else
            Message('Error - number is < 10');
    end;

}