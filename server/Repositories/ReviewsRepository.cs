


namespace Monogram.Repositories;

public class ReviewsRepository
{
    private readonly IDbConnection _db;
    public ReviewsRepository(IDbConnection db)
    {
        _db = db;
    }

    internal Review CreateReview(Review reviewData)
    {
        string sql = @"
        INSERT INTO reviews 
        (name,email,title,body,imgUrl,productId)
        VAlUES 
        (@Name,@Email,@Title,@Body,@ImgUrl,@ProductId);
        
        SELECT * FROM reviews WHERE id = LAST_INSERT_ID();";
        Review review = _db.Query<Review>(sql, reviewData).FirstOrDefault();
        return review;
    }
    internal Review GetReviewById(int reviewId)
    {
        string sql = @"SELECT * FROM reviews WHERE id = @reviewId;";
        Review review = _db.Query<Review>(sql, new { reviewId }).FirstOrDefault();
        return review;
    }
    internal void DeleteReview(int reviewId)
    {
        string sql = @"DELETE FROM reviews WHERE id = @reviewId;";
        _db.Execute(sql, new { reviewId });
    }
}