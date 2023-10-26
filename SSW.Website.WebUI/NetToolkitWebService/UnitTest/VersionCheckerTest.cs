using System;
using System.Collections.Generic;
using System.Text;
using SSW.NETToolkit.WebService.UnitTest.VersionCheckerWebService;
using NUnit.Framework;

namespace SSW.NETToolkit.WebService.UnitTest
{
    [TestFixture]
    public class VersionCheckerTest
    {
        [Test]
        public void Test()
        {
            DownloadTable downloadTableWS = new DownloadTable();
            string[] results = null;
            try
            {
                results = downloadTableWS.GetLatestVersionAndUpdateUrl("SampleProductID");
            }
            catch (InvalidOperationException)
            {
                Assert.Fail("Error occured in Web Service.");
            }
            Console.WriteLine("LastestVesion: " + results[0]);
            Console.WriteLine("LastestDownloadURL: " + results[1]);
            Assert.AreEqual("2.23",results[0]);
            Assert.AreEqual("http://www.ssw.com.au/ssw/NETToolkit/",results[1]);
        }
    }

    
}
