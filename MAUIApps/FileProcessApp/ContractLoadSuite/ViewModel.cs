// ViewModel.cs (or your ViewModel file)
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Maui.Controls;

namespace ContractLoadSuite
{
    public class ViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        private string progressMessage;
        public string ProgressMessage
        {
            get { return progressMessage; }
            set
            {
                progressMessage = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(nameof(ProgressMessage)));
            }
        }

        public async void StartProcessing(string excelPath, string xmlFolderPath)
        {
            try
            {
                await Task.Run(() =>
                {
                    var testCases = TestCasesLoader.LoadTestCases(excelPath);

                    foreach (var scenarioGroup in testCases.GroupBy(tc => tc.TestCaseNo))
                    {
                        ProgressMessage = $"Processing Test Scenario: {scenarioGroup.Key}";

                        foreach (var testCase in scenarioGroup)
                        {
                            string addXmlFilePath = Path.Combine(xmlFolderPath, $"{testCase.InputFileName}.xml");
                            string modifyXmlFilePath = Path.Combine(xmlFolderPath, $"{testCase.InputFileName.Replace("Add", "Modify")}.xml");

                            string sbsbID = TestScenarioProcessor.ProcessXmlFile(addXmlFilePath);
                            ProgressMessage = $"SbsbID from {testCase.InputFileName}.xml: {sbsbID}";

                            TestScenarioProcessor.ProcessXmlFile(modifyXmlFilePath, sbsbID);

                            ProgressMessage = $"Processing of {testCase.InputFileName}.xml completed.";
                        }

                        ProgressMessage = $"Processing of Test Scenario {scenarioGroup.Key} completed.\n";
                    }
                });
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
                ProgressMessage = $"Error: {ex.Message}";
            }
        }
    }
}
