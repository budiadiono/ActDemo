using System;
using System.Diagnostics;
using System.Reflection;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;

namespace ActDemo {
    public partial class _Default : Page {
        protected void Page_Load(object sender, EventArgs e) {
            if (IsPostBack) {
                lblResult.Text = CheckBox1.Checked ? "Thanks!" : "Oh no, why you don't like me?";
                return;
            }

            var assembly = typeof (AjaxControlToolkit.Accordion).Assembly;
            var fvi = FileVersionInfo.GetVersionInfo(assembly.Location);
            lblActVersion.Text = fvi.FileVersion;

            for (int i = 0; i < 15; i++) {
                var pane = new AccordionPane();
                var num = "#" + (i + 1).ToString();
                pane.ID = "DynamicAccordion_Pane_" + i;
                pane.HeaderContainer.Controls.Add(new Label {
                    Text = "Header " + num
                });
                pane.ContentContainer.Controls.Add(new Label {
                    Text = "Text " + num
                });
                DynamicAccordion.Panes.Add(pane);
            }
        }
    }
}