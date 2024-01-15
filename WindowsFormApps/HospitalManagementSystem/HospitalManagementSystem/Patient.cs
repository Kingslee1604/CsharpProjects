// Patient.cs
using System.Net;
using System.Xml.Linq;

namespace HospitalManagementSystem
{
    public class Patient
    {
        public string? Name { get; set; }
        public string? Address { get; set; }
        public string? PhoneNumber { get; set; }

        public override string ToString()
        {
            return $"{Name} - {Address} - {PhoneNumber}";
        }
    }
}
