﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Salao.Camadas.Model
{
    public class Cliente
    {
        public int id { get; set; }
        public string nome { get; set; }
        public DateTime aniversario { get; set; }
        public string telefone { get; set; }
        public string celular { get; set; }
        public string endereco { get; set; }
        public string numero { get; set; }
        public string bairro { get; set; }
        public string cidade { get; set; }
        public string uf { get; set; }
        public string cep { get; set; }

    }
}
