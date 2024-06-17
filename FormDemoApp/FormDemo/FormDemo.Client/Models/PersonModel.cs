using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace FormDemo.Client.Models;

public class PersonModel
{
    [Required(ErrorMessage = "The First Name is required.")]
    [DisplayName("First Name")]
    [MinLength(5, ErrorMessage = "The First Name is not long enough.")]
    public string? FirstName { get; set; }

    [Required(ErrorMessage = "The Last Name is required.")]
    [MinLength(5, ErrorMessage = "The Last Name needs to be at least 5 characters.")]
    public string? LastName { get; set; }
    public string LifeStory { get; set; }
    public bool IsEnrolled { get; set; } = true;

    //public DateTime DateOfBirth { get; set; } = DateTime.Now;
    public DateOnly DateOfBirth { get; set; } = DateOnly.FromDateTime(DateTime.Now);

    [Range(1, 5)]
    public double MyNumber { get; set; }
    public string Department { get; set; }           
    public EmployeeType TypeOfEmployment { get; set; }
}

public enum EmployeeType
{
    Salary,
    Hourly,
    Contract    
}