using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class UploadAndSell_upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label7.Visible = false;
        HyperLink1.Visible = false;
    }

    protected void uploadbutton_Click(object sender, EventArgs e)
    {
          HttpPostedFile postedFile = imageuploadup.PostedFile;
          string fileName = Path.GetFileName(postedFile.FileName);
          string fileExtension = Path.GetExtension(fileName);

          int fileSize = postedFile.ContentLength;

          if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".jpeg" || fileExtension.ToLower() == ".JPEG" || fileExtension.ToLower() == ".JPG" || fileExtension.ToLower() == ".bmp"|| fileExtension.ToLower() == ".gif"
              || fileExtension.ToLower() == ".png") {

              Stream stream= postedFile.InputStream;
              BinaryReader binaryreader = new BinaryReader(stream);
              byte[] bytes= binaryreader.ReadBytes((int)stream.Length);

              string cs = ConfigurationManager.ConnectionStrings["CHTproductionConnectionString"].ConnectionString;

              using(SqlConnection con=new SqlConnection(cs))
              {
                  SqlCommand cmd = new SqlCommand("spUpload", con);
                  cmd.CommandType = CommandType.StoredProcedure;

                  SqlParameter paramtitle = new SqlParameter()
                  {
                      ParameterName="@title",
                      Value=  titleup.Text
                  };
                  cmd.Parameters.Add(paramtitle);

                  SqlParameter paramDescription = new SqlParameter()
                  {
                      ParameterName = "@description",
                      Value = descriptionup.Text
                  };
                  cmd.Parameters.Add(paramDescription);

                  SqlParameter paramImageName = new SqlParameter()
                  {
                      ParameterName = "@imageName",
                      Value = fileName
                  };
                  cmd.Parameters.Add(paramImageName);

                  SqlParameter paramimageSize = new SqlParameter()
                  {
                      ParameterName = "@imageSize",
                      Value = fileSize
                  };
                  cmd.Parameters.Add(paramimageSize);

                  SqlParameter paramimageData = new SqlParameter()
                  {
                      ParameterName = "@imageData",
                      Value = bytes
                  };
                  cmd.Parameters.Add(paramimageData);


                 
        
        SqlParameter paramCatagory = new SqlParameter()
        {
            ParameterName = "@catagory",
            Value = catagoryup.SelectedValue
        };
        cmd.Parameters.Add(paramCatagory);




        SqlParameter paramquantityAvailable = new SqlParameter()
        {
            ParameterName = "@quantityAvailable ",
            Value = quantityup.SelectedValue
        };
        cmd.Parameters.Add(paramquantityAvailable);
        
                        SqlParameter parampricePerUnit = new SqlParameter()
                        {
                            ParameterName = "@pricePerUnit",
                            Value = priceup.Text
                        };
                        cmd.Parameters.Add(parampricePerUnit);
                        SqlParameter paramNewId = new SqlParameter()
                        {
                            ParameterName = "@NewId",
                            Value = -1,
                            Direction=ParameterDirection.Output
                        };
                        cmd.Parameters.Add(paramNewId);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();


                        Label7.Visible = true;
                        Label7.Text = "succesfully uploaded";
                        Label7.ForeColor = System.Drawing.Color.Green;
                        HyperLink1.Visible = true;
                        HyperLink1.NavigateUrl = "~/AfterSignUp/Page1.aspx?Id=" + cmd.Parameters["@NewId"].Value.ToString();


                    }

                }

                else
                {
                    Label7.Visible = true;
                    Label7.Text = "only (.jpg,.png,.gif,.jpeg,.bmp) file can be uploaded";
                    Label7.ForeColor = System.Drawing.Color.Red;
                    HyperLink1.Visible = false;
                }

       
    }
}