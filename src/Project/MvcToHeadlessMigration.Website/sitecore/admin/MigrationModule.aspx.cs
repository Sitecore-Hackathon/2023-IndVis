using Sitecore.sitecore.admin;
using System;

namespace MvcToHeadlessMigration.Website.sitecore.admin
{
    public partial class MigrationModule : AdminPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected override void OnInit(EventArgs e)
        {
            //CheckSecurity will check that user should have admin rights  
            CheckSecurity(true);
            base.OnInit(e);
        }

        protected void btnClick_Click1(object sender, EventArgs e)
        {
            lblMessage.Text = ConnectionStringTextBox.Text;
            // Do your custom code  
        }
    }
}