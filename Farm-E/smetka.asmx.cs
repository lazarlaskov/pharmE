using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Farm_E
{
    /// <summary>
    /// Summary description for smetka
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class smetka : System.Web.Services.WebService
    {

        [WebMethod(Description ="Metod sto generira broj na poracka")]
        public string Generate()
        {
            Random r = new Random();
            long n = r.Next();
            return n.ToString();
        }
    }
}
