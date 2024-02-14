using TestPro.Pages;

namespace TestPro
{
    public partial class MainTabbedPage : ContentPage
    {
        public MainTabbedPage()
        {
            InitializeComponent();
        }

        private async void OnCodeOnlyTestEnvClicked(object sender, EventArgs e)
        {
            // Navigate to CodeOnlyTestEnvPage
            await Navigation.PushAsync(new CodeOnlyTestEnvPage());
        }

        private async void OnAWSHostedServiceTestClicked(object sender, EventArgs e)
        {
            // Navigate to AWSHostedServiceTest
            await Navigation.PushAsync(new AWSHostedServiceTest());
        }

        private async void OnEDIFECSAWSServiceTestClicked(object sender, EventArgs e)
        {
            // Navigate to AWSHostedServiceTest
            await Navigation.PushAsync(new EDIFECSAWSServiceTest());
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            NavigationPage.SetHasNavigationBar(this, false);
        }

    }
}
