using System;
using System.Xml.Linq;

namespace ContractLoadSuite
{
    public static class TestScenarioProcessor
    {
        public static string ProcessXmlFile(string xmlFilePath)
        {
            try
            {
                XDocument xmlDoc = XDocument.Load(xmlFilePath);

                // Your XML processing logic goes here
                // For example, extracting data from XML
                XElement rootElement = xmlDoc.Root;
                XElement sbsbIDElement = rootElement.Element("SbsbID");

                if (sbsbIDElement != null)
                {
                    string sbsbID = sbsbIDElement.Value;
                    // Your additional processing logic
                    return sbsbID;
                }

                // If SbsbID is not found, return a default value or handle accordingly
                return "SbsbIDNotFound";
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error processing XML file ({xmlFilePath}): {ex.Message}");
                return "ProcessingError";
            }
        }

        public static void ProcessXmlFile(string xmlFilePath, string previousSbsbID)
        {
            try
            {
                XDocument xmlDoc = XDocument.Load(xmlFilePath);

                // Your XML processing logic goes here
                // For example, modifying data in XML
                XElement rootElement = xmlDoc.Root;
                XElement sbsbIDElement = rootElement.Element("SbsbID");

                if (sbsbIDElement != null)
                {
                    // Modify the XML with the previous SbsbID
                    sbsbIDElement.Value = previousSbsbID;
                }

                // Save the modified XML back to the file
                xmlDoc.Save(xmlFilePath);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error processing XML file ({xmlFilePath}): {ex.Message}");
            }
        }
    }
}
