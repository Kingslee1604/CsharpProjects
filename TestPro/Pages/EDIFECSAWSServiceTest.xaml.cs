
using System.Collections.ObjectModel;
using TestPro.Models;
using TestPro.Services;

namespace TestPro.Pages
{
    public partial class EDIFECSAWSServiceTest : ContentPage
    {
        private ObservableCollection<ReportItem> reportData;

        public EDIFECSAWSServiceTest()
        {
            InitializeComponent();
            reportData = new ObservableCollection<ReportItem>();
            // Initialize components specific to CodeOnlyTestEnv functionality
        }

        private void OnBrowseExcelClicked(object sender, EventArgs e)
        {
            // Code to handle browsing for an Excel file
        }

        private void OnBrowseFolderClicked(object sender, EventArgs e)
        {
            // Code to handle browsing for a folder
        }

        private async void OnProcessClicked(object sender, EventArgs e)
        {
            // Show progress bar
            ProgressBar.IsVisible = true;
            ProgressBar.Progress = 0;

            // Simulate a process by incrementing the progress
            // This is where you would add your processing logic
            await ProgressBar.ProgressTo(1.0, 1000, Easing.Linear);

            // Hide progress bar after process is complete
            ProgressBar.IsVisible = false;
        }

        private async void OnTestCaseValidationClicked(object sender, EventArgs e)
        {
            // Navigate to TestCasesResults
            await Navigation.PushAsync(new TestCasesResults());
        }

        private async void OnReportClicked(object sender, EventArgs e)
        {
            reportData.Clear();
            reportData.Add(new ReportItem { SBSBID = "12345", FIRSTNAME = "John", LASTNAME = "Doe", SBSBEFFDT = "TEST", SBSBTERMDT = "TEST", SBELEVENTS = "TEST", MEELEVENTS = "TEST" });
            reportData.Add(new ReportItem { SBSBID = "67890", FIRSTNAME = "Jane", LASTNAME = "Smith", SBSBEFFDT = "FILE PROCESS IS FAILED FOR REASON CODE 123", SBSBTERMDT = "TEST", SBELEVENTS = "TEST", MEELEVENTS = "TEST" });
            reportData.Add(new ReportItem { SBSBID = "12345", FIRSTNAME = "John", LASTNAME = "Doe", SBSBEFFDT = "TEST", SBSBTERMDT = "TEST", SBELEVENTS = "TEST", MEELEVENTS = "TEST" });
            reportData.Add(new ReportItem { SBSBID = "67890", FIRSTNAME = "Jane", LASTNAME = "Smith", SBSBEFFDT = "FILE PROCESS IS FAILED FOR REASON CODE 123", SBSBTERMDT = "TEST", SBELEVENTS = "TEST", MEELEVENTS = "TEST" });
            reportData.Add(new ReportItem { SBSBID = "12345", FIRSTNAME = "John", LASTNAME = "Doe", SBSBEFFDT = "TEST", SBSBTERMDT = "TEST", SBELEVENTS = "TEST", MEELEVENTS = "TEST" });
            reportData.Add(new ReportItem { SBSBID = "67890", FIRSTNAME = "Jane", LASTNAME = "Smith", SBSBEFFDT = "FILE PROCESS IS FAILED FOR REASON CODE 123", SBSBTERMDT = "TEST", SBELEVENTS = "TEST", MEELEVENTS = "TEST" });
            reportData.Add(new ReportItem { SBSBID = "12345", FIRSTNAME = "John", LASTNAME = "Doe", SBSBEFFDT = "TEST", SBSBTERMDT = "TEST", SBELEVENTS = "TEST", MEELEVENTS = "TEST" });
            reportData.Add(new ReportItem { SBSBID = "67890", FIRSTNAME = "Jane", LASTNAME = "Smith", SBSBEFFDT = "FILE PROCESS IS FAILED FOR REASON CODE 123", SBSBTERMDT = "TEST", SBELEVENTS = "TEST", MEELEVENTS = "TEST" });
            reportData.Add(new ReportItem { SBSBID = "12345", FIRSTNAME = "John", LASTNAME = "Doe", SBSBEFFDT = "TEST", SBSBTERMDT = "TEST", SBELEVENTS = "TEST", MEELEVENTS = "TEST" });
            reportData.Add(new ReportItem { SBSBID = "67890", FIRSTNAME = "Jane", LASTNAME = "Smith", SBSBEFFDT = "FILE PROCESS IS FAILED FOR REASON CODE 123", SBSBTERMDT = "TEST", SBELEVENTS = "TEST", MEELEVENTS = "TEST" });
            reportData.Add(new ReportItem { SBSBID = "12345", FIRSTNAME = "John", LASTNAME = "Doe", SBSBEFFDT = "TEST", SBSBTERMDT = "TEST", SBELEVENTS = "TEST", MEELEVENTS = "TEST" });
            reportData.Add(new ReportItem { SBSBID = "67890", FIRSTNAME = "Jane", LASTNAME = "Smith", SBSBEFFDT = "FILE PROCESS IS FAILED FOR REASON CODE 123", SBSBTERMDT = "TEST", SBELEVENTS = "TEST", MEELEVENTS = "TEST" });
            reportData.Add(new ReportItem { SBSBID = "12345", FIRSTNAME = "John", LASTNAME = "Doe", SBSBEFFDT = "TEST", SBSBTERMDT = "TEST", SBELEVENTS = "TEST", MEELEVENTS = "TEST" });
            reportData.Add(new ReportItem { SBSBID = "67890", FIRSTNAME = "Jane", LASTNAME = "Smith", SBSBEFFDT = "FILE PROCESS IS FAILED FOR REASON CODE 123", SBSBTERMDT = "TEST", SBELEVENTS = "TEST", MEELEVENTS = "TEST" });
            reportData.Add(new ReportItem { SBSBID = "12345", FIRSTNAME = "John", LASTNAME = "Doe", SBSBEFFDT = "TEST", SBSBTERMDT = "TEST", SBELEVENTS = "TEST", MEELEVENTS = "TEST" });
            reportData.Add(new ReportItem { SBSBID = "67890", FIRSTNAME = "Jane", LASTNAME = "Smith", SBSBEFFDT = "FILE PROCESS IS FAILED FOR REASON CODE 123", SBSBTERMDT = "TEST", SBELEVENTS = "TEST", MEELEVENTS = "TEST" });
            reportData.Add(new ReportItem { SBSBID = "12345", FIRSTNAME = "John", LASTNAME = "Doe", SBSBEFFDT = "TEST", SBSBTERMDT = "TEST", SBELEVENTS = "TEST", MEELEVENTS = "TEST" });
            reportData.Add(new ReportItem { SBSBID = "67890", FIRSTNAME = "Jane", LASTNAME = "Smith", SBSBEFFDT = "FILE PROCESS IS FAILED FOR REASON CODE 123", SBSBTERMDT = "TEST", SBELEVENTS = "TEST", MEELEVENTS = "TEST" });

            await Navigation.PushAsync(new TestCasesReport(reportData));

        }
    }
}
