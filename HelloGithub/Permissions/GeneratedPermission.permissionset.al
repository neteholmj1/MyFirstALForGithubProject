/* permissionset 50000 GeneratedPermission
{
    Assignable = true;
    Permissions = tabledata Automotive = RIMD,
        tabledata AutomotiveManufacturer = RIMD,
        table Automotive = X,
        table AutomotiveManufacturer = X,
        report AutomotiveReport = X,
        codeunit "Car Factory" = X,
        codeunit "Car Factory Impl." = X,
        codeunit UpgradeCodeunit = X,
        xmlport AutomotiveExport = X,
        page "Automative Card" = X,
        page "Automotive Act." = X,
        page "Automotive List" = X,
        page "Automotive Role Center" = X;
}codeunit 50200 Installation
    {  
                Subtype = Install;
                    trigger OnInstallAppPerDatabase();
                        var
                                myAppInfo: ModuleInfo;
                                begin
                                            NavApp.GetCurrentModuleInfo(myAppInfo);
                                                if myAppInfo.DataVersion = Version.Create(0, 0, 0, 0) then
                                                        HandleFreshInstall()
                                                        else
                                                                HandleReinstall();
                                end;
                                    local procedure HandleFreshInstall();
                                        begin
                                                    CreateSalespeople();
                                            end;
                                            local procedure HandleReinstall();
                                                begin        end;
                                                    local CreateSalespeople()
                                                        var
                                                                SalespersonPurchaer: Record "Salesperson/Purchaser";
                                                                  Counter: Integ            SalpersonCode: code[2 ]end;
                                    end;
                            end;
    } */