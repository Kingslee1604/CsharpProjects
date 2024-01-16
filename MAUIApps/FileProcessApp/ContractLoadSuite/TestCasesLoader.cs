using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.IO;

namespace ContractLoadSuite
{
    public static class TestCasesLoader
    {
        public static List<TestCase> LoadTestCases(string excelFilePath)
        {
            try
            {
                FileInfo fileInfo = new FileInfo(excelFilePath);
                using (var package = new ExcelPackage(fileInfo))
                {
                    var worksheet = package.Workbook.Worksheets[0]; // Assuming data is in the first worksheet

                    List<TestCase> testCases = new List<TestCase>();

                    for (int row = 2; row <= worksheet.Dimension.End.Row; row++) // Assuming data starts from the second row
                    {
                        string testCaseNo = worksheet.Cells[row, 1].Text;
                        string inputFileName = worksheet.Cells[row, 2].Text;

                        testCases.Add(new TestCase
                        {
                            TestCaseNo = testCaseNo,
                            InputFileName = inputFileName
                        });
                    }

                    return testCases;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error loading test cases: {ex.Message}");
                return new List<TestCase>();
            }
        }
    }
}
