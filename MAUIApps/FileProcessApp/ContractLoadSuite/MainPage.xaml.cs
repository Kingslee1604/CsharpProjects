// MainPage.xaml.cs
namespace ContractLoadSuite
{
    public partial class MainPage : ContentPage
    {
        private readonly ViewModel viewModel;

        public MainPage()
        {
            InitializeComponent();
            viewModel = new ViewModel();
            BindingContext = viewModel;
        }

        private void OnProcessClicked(object sender, EventArgs e)
        {
            string excelPath = excelPathEntry.Text;
            string xmlFolderPath = xmlFolderPathEntry.Text;

            viewModel.StartProcessing(excelPath, xmlFolderPath);
        }

        private async void OnSelectExcelPathClicked(object sender, EventArgs e)
        {
            string selectedPath = await PickDirectory();
            if (!string.IsNullOrWhiteSpace(selectedPath))
            {
                excelPathEntry.Text = selectedPath;
            }
        }

        private async void OnSelectXmlFolderPathClicked(object sender, EventArgs e)
        {
            string selectedPath = await PickDirectory();
            if (!string.IsNullOrWhiteSpace(selectedPath))
            {
                xmlFolderPathEntry.Text = selectedPath;
            }
        }
        private async Task<string> PickDirectory()
        {
            try
            {
                var result = await FilePicker.PickAsync(new PickOptions
                {
                    PickerTitle = "Pick a Directory"
                });

                if (result != null)
                {
                    return result.FullPath;
                }

                return string.Empty;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error picking directory: {ex.Message}");
                return string.Empty;
            }
        }

    }
}
