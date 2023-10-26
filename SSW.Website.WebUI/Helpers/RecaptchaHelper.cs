using Newtonsoft.Json;
using System.Collections.Generic;
using System.Net;

namespace SSW.TimePRO.WebCommon
{
    /// <summary>
    /// Implementation of Google's reCAPTCHA 2.0 API. 
    /// So why have we implemented it this way, rather than using a NuGet package? 
    /// Well.. At the time the NuGet packages we're up to date. 
    /// </summary>
    public static class RecaptchaHelper
    {
        public static CaptureIsValid Validate(string recaptchResponse)
        {
            var secret = System.Configuration.ConfigurationManager.AppSettings["recaptchaPrivateKey"].ToString();
            var captureIsValid = new CaptureIsValid();

            using (var webClient = new WebClient())
            {
                var result = webClient.DownloadString(string.Format("https://www.google.com/recaptcha/api/siteverify?secret={0}&response={1}", secret, recaptchResponse));

                var response = JsonConvert.DeserializeObject<CaptchaResponse>(result);

                captureIsValid.Valid = response.Success;

                if (!response.Success)
                {
                    // Sometimes recaptcha will return null instead of list of errors.
                    string error = response.ErrorCodes?[0].ToLower() ?? string.Empty;
                    switch (error)
                    {
                        case "missing-input-secret":
                            captureIsValid.FriendlyError = "The secret parameter is missing.";
                            break;

                        case "invalid-input-secret":
                            captureIsValid.FriendlyError = "The secret parameter is invalid or malformed.";
                            break;

                        case "missing-input-response":
                            captureIsValid.FriendlyError = "The response parameter is missing.";
                            break;

                        case "invalid-input-response":
                            captureIsValid.FriendlyError = "The response parameter is invalid or malformed.";
                            break;

                        default:
                            break;
                    }
                }
            }

            return captureIsValid;
        }
    }

    public class CaptchaResponse
    {
        [JsonProperty("error-codes")]
        public List<string> ErrorCodes { get; set; }

        [JsonProperty("success")]
        public bool Success { get; set; }
    }

    public class CaptureIsValid
    {
        public CaptureIsValid()
        {
            this.Valid = false;
            this.FriendlyError = "Error occurred. Please try again";
        }

        public string FriendlyError { get; set; }

        public bool Valid { get; set; }
    }
}