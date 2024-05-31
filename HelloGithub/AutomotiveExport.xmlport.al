xmlport 50000 "AutomotiveExport"
{
    Direction = Export;
    FileName = 'Automotives.xml';
    Format = Xml;

    schema
    {
        textelement(RootElement)
        {
            XmlName = 'root';
            tableelement(Automotive; Automotive)
            {
                // autosave, autoupdate...
                fieldattribute(No; Automotive."No.") { }
                fieldattribute(Description; Automotive.Description)
                {
                    //minimum occurence zero
                }
                textelement(Configuration)
                {
                    XmlName = 'Configuration';
                    fieldelement(Model; Automotive.Model)
                    {
                        fieldattribute(Manufacturer; Automotive.Manufacturer) { }
                        fieldattribute(Year; Automotive.Year) { }
                    }
                }
                fieldelement(FuelType; Automotive."Fuel Type")
                {
                    XmlName = 'Fuel';
                }
            }
        }
    }
}