using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class rule
    {
        /// <summary>
        /// check number  
        /// </summary>
        /// <param name="p"></param>
        /// <returns></returns>
        public bool check_number(string number)
        {


            // check number

            for (int i = 0; i < number.Length; i++)
            {
                try
                {
                    int a = int.Parse(number[i].ToString());
                }
                catch (Exception e)
                {
                    return false;
                }
            }
                
           

            return true;
        }
        /// <summary>
        /// check lengh
        /// </summary>
        /// <param name="text"></param>
        /// <returns></returns>
        public int check_lengh(string text)
        {
            return text.Length;
            
        }
        /// <summary>
        /// check phone
        /// </summary>
        /// <param name="number"></param>
        /// <returns></returns>
        public bool check_phone(string number)
        {
            if (check_number(number) == true && check_lengh(number) > 9 && check_lengh(number) <12)
                return true;
            return false;
        }

    }

   
}
