using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace App_Start.ApplicationInsights
{
    public static class DpapiUtils
    {
        public static void EncryptSections(Configuration config, string[] sections)
        {
            bool isDirty = false;
            foreach (var sectionKey in sections)
            {
                // Get the connectionStrings section. 
                var section = config.GetSection(sectionKey);
                
                //Ensures that the section is not already protected 
                if (section != null && section.SectionInformation.IsProtected) continue;

                //Uses the Windows Data Protection API (DPAPI) to encrypt the 
                //configuration section using a machine-specific secret key 
                section.SectionInformation.ProtectSection("DataProtectionConfigurationProvider");
                isDirty = true;
            }

            if (isDirty)
            {
                config.Save();

                foreach (var sectionKey in sections)
                {
                    ConfigurationManager.RefreshSection(sectionKey);
                }
            }
        }
    }
}