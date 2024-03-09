using System.Data.SqlClient;

namespace MobileShopping
{
    public static class dbconfig
    {
     public static SqlConnection con = new SqlConnection(@"Data Source=AJAY;Initial Catalog=mobileShoppingDb;Integrated Security=True");
    }
}