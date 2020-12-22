using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class Patient_uploadfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        using (AIDiseaseDetectionDBEntities db = new AIDiseaseDetectionDBEntities())
        {
            tblimage3 img = new tblimage3();
            byte[] bytes;
            using (BinaryReader br = new BinaryReader(flupload.PostedFile.InputStream))
            {
                bytes = br.ReadBytes(flupload.PostedFile.ContentLength);
            }
            img.image = bytes;
            db.tblimage3.Add(img);
            db.SaveChanges();
            lblMsg.Text = "Image Uploaded Successfully";
        }
    }
}