using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UbuntuBox_BE.LandingPage
{
    public class PopulationManagement
    {
        UbuntuBox_BE.dbaUbuntuBoxDataContext dbaUbuntuBox = new dbaUbuntuBoxDataContext();
        public List<Attraction> getAttractionList()
        {
            var attractions = (from u in dbaUbuntuBox.Attractions select u).ToList();

            return attractions;
        }

        public Attraction GetAttractionId(string attractionID)
        {

            var attraction = (from a in dbaUbuntuBox.Attractions where
                           a.AttractionID.Equals(attractionID) select a).SingleOrDefault();

            return attraction;

        }
    }

    
}