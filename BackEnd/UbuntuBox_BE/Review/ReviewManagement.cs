using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UbuntuBox_BE.Review
{
    public class ReviewManagement
    {

        UbuntuBox_BE.dbaUbuntuBoxDataContext dbaUbuntuBox = new dbaUbuntuBoxDataContext();

        public bool AddReview(int userID, int productID, int rating, string TextReview)
        {
            try
            {

                var review = (from r in dbaUbuntuBox.ProductReviews where
                              r.UserID == userID && r.ProductID == productID
                              select r).SingleOrDefault();

                if (review != null)
                { return false; }

                ProductReview newReview = new ProductReview
                { 
                UserID = userID,
                ProductID = productID,
                Rating = rating,
                ReviewText = TextReview
                };

                dbaUbuntuBox.ProductReviews.InsertOnSubmit(newReview);
                dbaUbuntuBox.SubmitChanges();

                return true;




            }
            catch(Exception)
            { return false; }
        
        }


    }
}