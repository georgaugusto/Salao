﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Salao.Camadas.DAL
{
    public class Conexao
    {
        public static string getConexao()
        {
            return @"Data Source=.\sqlexpress;Initial Catalog=SALAO2019;Integrated Security=True";
        }
    }
}
