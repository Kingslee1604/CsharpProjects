using Microsoft.Maui.Graphics;

namespace TestPro
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new NavigationPage(new MainTabbedPage())
            {
                BarBackgroundColor = Colors.Transparent,
                BarTextColor = Colors.White
            };

            // Hide the navigation bar
            NavigationPage.SetHasNavigationBar(MainPage, false);
        }
    }
}

