using System;
using System.ComponentModel.DataAnnotations;

namespace myWeb.Pages.Models 
{

    public class Student
    {
        [Required]
        public string Name { get; set; }

        [DataType(DataType.Date)]
        public DateTime RelDate { get; set; }
    }
}