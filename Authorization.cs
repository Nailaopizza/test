using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace курсач
{
    internal class Authorization
    {
        public static string authorizationRole;
        public static string GetRole(string login, string password) 
        {
            var account = termEntities.GetContext().Accounts.FirstOrDefault(a => a.Login_ == login && a.Password_ == password); 
            if (account != null) return authorizationRole = account.Role_.NameRole;
            return null;
        }
    }
}
