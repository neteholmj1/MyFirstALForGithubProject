pagecustomization CustomerCustomization customizes "Customer List"
{
    layout
    {
        Modify("Name 2")
        {
            Visible = true;
        }
    }
    views
    {
        addfirst
        {
            view(BalanceDue)
            {
                Caption = 'BalanceDue';
                filters = where("Balance (LCY)" = filter(> 0));
                SharedLayout = true;
            }

        }
    }



    //Variables, procedures and triggers are not allowed on Page Customizations
}