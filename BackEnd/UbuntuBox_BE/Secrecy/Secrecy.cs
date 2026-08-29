using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace UbuntuBox_BE.Secrecy
{
    public class Secrecy
    {
        //Created an isolated Class following SOLID principles..//
        //create a hashing function to hash the passwords into the database//
        public static string HashPassword(string password)
        {
            using (MD5 md5 = MD5.Create())
            {
                byte[] bytes = Encoding.UTF8.GetBytes(password);
                byte[] hash = md5.ComputeHash(bytes);

                return BitConverter.ToString(hash).Replace("-", "");
            }

        }

    }
}