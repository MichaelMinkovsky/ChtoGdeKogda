using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChtoGdeKogdaPage
{
    public partial class index : System.Web.UI.Page
    {
        String vopros, otvet, adress, message, nazvanieKomandy, avtor, Koment;

        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            adress = txtEmail.Text;
            nazvanieKomandy = txtCName.Text;
            avtor = txtAvtor.Text;
            vopros = txtVopros.Text;
            otvet = txtOtvet.Text;
            Koment = txtKoment.Text;
            message = "Название Команды : " + nazvanieKomandy + Environment.NewLine + ":" + "Email: "+ adress + ":" +" Автор: " + avtor + Environment.NewLine + ":" + ":" +
                "Вопрос: " + vopros + Environment.NewLine+ ":" + ":" + " Ответ: " + otvet + ":" + Environment.NewLine + Koment;
            Email objEmail = new Email();
            String strTO = "chto.gde.kogda.phila@gmail.com";
            String strFROM = adress;
            String strSubject = "Вопрос: Что?Где?Когда? ";
            String strMessage = message;           
            
            try
            {
                objEmail.SendMail(strTO, strFROM, strSubject, strMessage);
                Response.Write("<script>alert('Спасибо " + nazvanieKomandy + " за ваш вопрос!');</script>");
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Ваша вопросне отправилса. На пишите на песьмо об этом: chto.gde.kogda.phila@gmail.com');</script>");
            }
        }
    }
}