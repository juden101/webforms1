﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Chapter4.App_Code
{
    public class Calculator
    {
        public double Add(double a,double b)
        {
            return a + b;
        }
        public double Subtract(double a, double b)
        {
            return a - b;
        }
        public double Multiply(double a, double b)
        {
            return a * b;
        }
        public double Divide(double a, double b)
        {
            return a / b;
        }

        public Calculator() {
            }
    }
}