using System.Collections.ObjectModel;
using TestPro.Models;

namespace TestPro.Services
{
    public class ReportDataService
    {
        public ObservableCollection<ReportItem> GetReportData()
        {
            // Here you would load data from your source. For now, let's hardcode some values:
            return new ObservableCollection<ReportItem>
            {
                new ReportItem { SBSBID = "12345", FIRSTNAME = "John", LASTNAME = "Doe", SBSBEFFDT = "TEST", SBSBTERMDT = "TEST", SBELEVENTS ="TEST", MEELEVENTS = "TEST"},
                new ReportItem { SBSBID = "67890", FIRSTNAME = "Jane", LASTNAME = "Smith", SBSBEFFDT = "TEST", SBSBTERMDT = "TEST", SBELEVENTS ="TEST", MEELEVENTS = "TEST" }
                // Add more items as needed
            };
        }
    }
}
