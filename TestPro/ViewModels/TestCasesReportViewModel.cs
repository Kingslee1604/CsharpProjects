using OfficeOpenXml.Style;
using OfficeOpenXml;
using System.Collections.ObjectModel;
using System.ComponentModel;
using LicenseContext = OfficeOpenXml.LicenseContext;
using System.Windows.Input;
using TestPro.Models;
using TestPro.Services;

namespace TestPro.ViewModels
{
    public class TestCasesReportViewModel : INotifyPropertyChanged
    {
        private ObservableCollection<ReportItem> _reportData;

        public ObservableCollection<ReportItem> ReportData
        {
            get => _reportData;
            set
            {
                if (_reportData != value)
                {
                    _reportData = value;
                    OnPropertyChanged(nameof(ReportData));
                    OnPropertyChanged(nameof(FormattedReportData));
                }
            }
        }

        public ObservableCollection<string> FormattedReportData
        {
            get
            {
                return new ObservableCollection<string>(
                    _reportData.Select(item =>
                        $"SBSBID: {item.SBSBID}\n" +
                        $"FIRSTNAME: {item.FIRSTNAME}\n" +
                        $"LASTNAME: {item.LASTNAME}\n" +
                        $"SBSBEFFDT: {item.SBSBEFFDT}\n" +
                        $"SBSBTERMDT: {item.SBSBTERMDT}\n" +
                        $"SBELEVENTS: {item.SBELEVENTS}\n" +
                        $"MEELEVENTS: {item.MEELEVENTS}"));
            }
        }

        public TestCasesReportViewModel(ObservableCollection<ReportItem> reportItem)
        {
            ReportData = reportItem;
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public async Task<string> ExportToExcel()
        {
            ExcelPackage.LicenseContext = LicenseContext.NonCommercial;

            try
            {
                using (var package = new ExcelPackage())
                {
                    var worksheet = package.Workbook.Worksheets.Add("Report");

                    // Define header titles
                    string[] headers = new string[] { "SBSBID", "FIRSTNAME", "LASTNAME", "SBSBEFFDT", "SBSBTERMDT", "SBELEVENTS", "MEELEVENTS" };

                    // Add headers and style them
                    for (int i = 0; i < headers.Length; i++)
                    {
                        var cell = worksheet.Cells[1, i + 1];
                        cell.Value = headers[i];
                        cell.Style.Font.Color.SetColor(System.Drawing.Color.White);
                        cell.Style.Fill.PatternType = ExcelFillStyle.Solid;
                        cell.Style.Fill.BackgroundColor.SetColor(System.Drawing.Color.Navy);
                    }

                    // Insert data into the worksheet, starting at row 2
                    int currentRow = 2;
                    foreach (var data in ReportData) // Use the property directly
                    {
                        worksheet.Cells[currentRow, 1].Value = data.SBSBID;
                        worksheet.Cells[currentRow, 2].Value = data.FIRSTNAME;
                        worksheet.Cells[currentRow, 3].Value = data.LASTNAME;
                        currentRow++;
                    }

                    // Adjust column widths to content
                    worksheet.Cells[worksheet.Dimension.Address].AutoFitColumns();

                    string fileName = "Report_" + DateTime.Now.ToString("yyyyMMdd_HHmmss") + ".xlsx";
                    var fileInfo = new FileInfo(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, fileName));
                    package.SaveAs(fileInfo);

                    return fileInfo.FullName; // Return the file path
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions...
                return null; // Return null to indicate failure
            }
        }
    }
}