using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentRegistrationAssignment
{
    public class Student
    {
    
        public string Name { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string ConfirmPassword { get; set; }

    }
}