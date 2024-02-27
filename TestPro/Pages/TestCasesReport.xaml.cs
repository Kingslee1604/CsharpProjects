using System.Collections.ObjectModel;
using TestPro.Models;
using TestPro.Services;
using TestPro.ViewModels;

namespace TestPro.Pages
{
    public partial class TestCasesReport : ContentPage
    {

        public TestCasesReport(ObservableCollection<ReportItem> reportItems)
        {
            InitializeComponent();
            // Initialize components specific to CodeOnlyTestEnv functionality
            BindingContext = new TestCasesReportViewModel(reportItems);
        }

        private async void OnExportButtonClicked(object sender, EventArgs e)
        {
            var viewModel = BindingContext as TestCasesReportViewModel;
            if (viewModel != null)
            {
                string filePath = await viewModel.ExportToExcel();
                if (!string.IsNullOrEmpty(filePath))
                {
                    bool openFile = await DisplayAlert("Export Successful", "File exported to " + filePath + ". Open file now?", "Yes", "No");
                    if (openFile)
                    {
                        // Open the file
                        try
                        {
                            System.Diagnostics.Process.Start(new System.Diagnostics.ProcessStartInfo(filePath) { UseShellExecute = true });
                        }
                        catch
                        {
                            // Handle exceptions for opening the file, if necessary
                        }
                    }
                }
            }
            else
            {
                await DisplayAlert("Export Failed", "Failed to export the file.", "OK");
            }

        }
    }
}
