using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using FreeCode.AWSystem.Data;
using FreeCode.AWSystem.BLL;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                ForeignKeyIDController controller = new ForeignKeyIDController();
                System.Collections.Generic.List<ForeignKeyID> data = controller.ListSalesTerritoryIDs();
                SalesTerritories.DataSource = data;
                SalesTerritories.DataTextField = "DisplayText";
                SalesTerritories.DataValueField = "ID";
                SalesTerritories.DataBind();
            }
            catch (Exception ex)
            {
                MessageLabel.Text = ex.Message + "<blockquote><h5>Stack Trace</h5>" + ex.StackTrace + "</blockquote>";
            }
        }
    }
    protected void TableDetails_Selected(object sender, ObjectDataSourceStatusEventArgs e)
    {
        if (e.Exception != null)
        {
            string message = "<h4>Table Details Unavailable</h4><p>Unable to show table details; this is probably due to an outdated version of the AdventureWorks_DMIT database. Be sure to use at least version <b>2.152.0.481</b>.</p>";
            MessageLabel.Text += message;
            e.ExceptionHandled = true;
        }
    }
}
