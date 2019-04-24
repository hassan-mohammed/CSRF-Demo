using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AuthenticationDemo
{
    public partial class Comments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
                LoadComments();
            else
            {
                Label1.Text = "Please login to view this page";
                txt_comment.Visible = false;
                btn_insert.Visible = false;
                

            }
        }

        private void LoadComments()
        {
            var dc = new AuthenticationDemoEntities();

            gv_comments.DataSource = dc.Comments.ToList();
            gv_comments.DataBind();
        }

        protected void Btn_Insert_Click(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                var dc = new AuthenticationDemoEntities();
                dc.Comments.Add(new Comment
                {
                    Comment1 = txt_comment.Text
                });

                dc.SaveChanges();
                LoadComments();
            }
        }
    }
}