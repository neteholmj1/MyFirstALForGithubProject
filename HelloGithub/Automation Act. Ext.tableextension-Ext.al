tableextension 50000 "Automation Act. Ext" extends "Activities Cue"
{
    fields
    {
        field(50000; "Total Automotives"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Automotive);
        }
    }
}