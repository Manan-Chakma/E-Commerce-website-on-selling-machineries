using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

public partial class Delivered_Delivered : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       


    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        string filename = Server.MapPath("~/Delivered/Demo.xml");
        if (File.Exists(filename) == true) {
            XmlDocument xdoc = new XmlDocument();
            xdoc.Load(Server.MapPath("~/Delivered/Demo.xml"));

            XmlElement record = xdoc.CreateElement("record");


            XmlElement customerName = xdoc.CreateElement("customerName");
            XmlText xmlcustomerName = xdoc.CreateTextNode(TextBox1.Text);

            XmlElement customerAddressDelivered = xdoc.CreateElement("customerAddressDelivered");
            XmlText xmlcustomerAddressDelivered = xdoc.CreateTextNode(TextBox2.Text);

            XmlElement productNameAndQuantity = xdoc.CreateElement("productNameAndQuantity");
            XmlText xmlproductNameAndQuantity = xdoc.CreateTextNode(TextBox3.Text);

            XmlElement amountPaid = xdoc.CreateElement("amountPaid");
            XmlText xmlamountPaid = xdoc.CreateTextNode(TextBox4.Text);

            XmlElement dateOfOrder = xdoc.CreateElement("dateOfOrder");
            XmlText xmldateOfOrder = xdoc.CreateTextNode(TextBox5.Text);

            XmlElement dateOfDelivery = xdoc.CreateElement("dateOfDelivery");
            XmlText xmldateOfDelivery = xdoc.CreateTextNode(TextBox6.Text);


            customerName.AppendChild(xmlcustomerName);
            customerAddressDelivered.AppendChild(xmlcustomerAddressDelivered);
            productNameAndQuantity.AppendChild(xmlproductNameAndQuantity);
            amountPaid.AppendChild(xmlamountPaid);
            dateOfOrder.AppendChild(xmldateOfOrder);
            dateOfDelivery.AppendChild(xmldateOfDelivery);


            record.AppendChild(customerName);
            record.AppendChild(customerAddressDelivered);
            record.AppendChild(productNameAndQuantity);
            record.AppendChild(amountPaid);
            record.AppendChild(dateOfOrder);
            record.AppendChild(dateOfDelivery);

            xdoc.DocumentElement.AppendChild(record);

            xdoc.Save(Server.MapPath("~/Delivered/Demo.xml"));
        }
        else
        {
            XmlTextWriter xtw = new XmlTextWriter(filename, null);
            xtw.WriteStartDocument();
            xtw.WriteStartElement("sent");
            xtw.WriteStartElement("record");

            xtw.WriteElementString("customerName", TextBox1.Text);
            xtw.WriteElementString("customerAddressDelivered",TextBox2.Text);
            xtw.WriteElementString("productNameAndQuantity",TextBox3.Text);
            xtw.WriteElementString("amountPaid",TextBox4.Text);
            xtw.WriteElementString("dateOfOrder",TextBox5.Text);
            xtw.WriteElementString("dateOfDelivery",TextBox6.Text);

            xtw.WriteEndElement();
            xtw.WriteEndElement();
            xtw.WriteEndDocument();

            xtw.Close();
        }

        System.Data.DataSet ds = new System.Data.DataSet();
        ds.ReadXml(Server.MapPath("~/Delivered/Demo.xml"));

        GridView1.DataSource = ds;
        GridView1.DataBind();


    }


}