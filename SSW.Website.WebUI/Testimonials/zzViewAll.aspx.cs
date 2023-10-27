using Microsoft.VisualBasic;

namespace SSW.Website.WebUI.Testimonials
{

    partial class ViewAll : System.Web.UI.Page
	{
        private string webServiceUrl;
        //TestimonialApi testimonialClient;
		#region " Web Form Designer Generated Code "

		//This call is required by the Web Form Designer.
		[System.Diagnostics.DebuggerStepThrough()]

		private void InitializeComponent()
		{
		}


		private void Page_Init(System.Object sender, System.EventArgs e)
		{
			//CODEGEN: This method call is required by the Web Form Designer
			//Do not modify it using the code editor.
			InitializeComponent();
		}

		#endregion

		// TODO: Evaluate and remove this logic that references the old API since this page only rediredct to default.aspx
		private void Page_Load(System.Object sender, System.EventArgs e)
		{
			/*List<TestimonialModel> tc = null;
			string tempCID = null;

			tempCID = Request.QueryString["CategoryID"];

			if (((!string.IsNullOrEmpty(tempCID)) & Information.IsNumeric(tempCID))) {
				tc = testimonialClient.TestimonialGetByCategory(Convert.ToInt32(tempCID));
			} else {
                tc = testimonialClient.TestimonialGetAll().Take(10).ToList();
			}

			repTestimonials.DataSource = tc;
			repTestimonials.DataBind();
			*/
		}
		public ViewAll()
		{
			Load += Page_Load;
			Init += Page_Init;

            //testimonialClient = WebApiClientHelper.GetTestimonialClient();
		}
	}

}
