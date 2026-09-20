using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UbuntuBox_BE.LandingPage
{
    public class PopulationManagement
    {
        UbuntuBox_BE.dbaUbuntuBoxDataContext dbaUbuntuBox = new dbaUbuntuBoxDataContext();
        public List<AttractionDetails> getAttractionList()
        {
            var attractions = (from u in dbaUbuntuBox.Attractions select new AttractionDetails 
            {

                AttractionID = u.AttractionID,
                AttractionName = u.AttractionName,
                AttractionDescription = u.AttractionDescription,
                Province = u.Province,
                AttractionImageUrls = u.AttractionImageURL

            });


            return attractions.ToList();
        }

        public AttractionDetails GetAttractionId(int attractionID)
        {

            var attraction = (from a in dbaUbuntuBox.Attractions where
                           a.AttractionID == attractionID select a).SingleOrDefault();

            if (attraction == null)
            { return null; }

            AttractionDetails result = new AttractionDetails();

            result.AttractionID = attraction.AttractionID;
            result.AttractionName = attraction.AttractionName;
            result.AttractionDescription = attraction.AttractionDescription;
            result.Province = attraction.Province;
            result.AttractionImageUrls = attraction.AttractionImageURL;

            return result;

        }
    }

    
}