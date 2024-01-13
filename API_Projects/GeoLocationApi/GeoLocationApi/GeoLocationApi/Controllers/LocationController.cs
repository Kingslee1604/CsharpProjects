using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace GeoLocationApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class LocationController : ControllerBase
    {

        private readonly ILogger<LocationController> _logger;
        private readonly IHttpClientFactory _httpClientFactory;

        public LocationController(ILogger<LocationController> logger, IHttpClientFactory httpClientFactory)
        {
            _logger = logger;
            _httpClientFactory = httpClientFactory;
        }

        [HttpGet(Name = "GetLocations")]
        public async Task<IActionResult> GetLocationsAsync()
        {
            try
            {
                var apiKey = "f0abae82ec96427353008ef8ee6fd321"; // Replace with your actual ipstack API key
                var apiUrl = $"http://api.ipstack.com/check?access_key={apiKey}";

                using (var httpClient = _httpClientFactory.CreateClient())
                {
                    var response = await httpClient.GetStringAsync(apiUrl);

                    // Deserialize the JSON response into LocationInfo object
                    var location = JsonConvert.DeserializeObject<LocationInfo>(response);

                    // Return the location information
                    return Ok(new List<LocationInfo> {location!});
                }
            }
            catch (Exception ex)
            {
                    _logger.LogError(ex, "Error occurred while fetching locations.");
                    return StatusCode(500, "Internal Server Error");
            }
        }
    }
}
