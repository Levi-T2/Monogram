
namespace Monogram.Services;

public class ReviewsService
{
    private readonly ReviewsRepository _repository;

    public ReviewsService(ReviewsRepository repository)
    {
        _repository = repository;
    }

    internal Review CreateReview(Review reviewData)
    {
        Review review = _repository.CreateReview(reviewData);
        return review;
    }

    internal Review GetReviewById(int reviewId)
    {
        Review review = _repository.GetReviewById(reviewId);
        if (review == null)
        {
            throw new Exception($"The Id supplied was invalid or null: {reviewId}");
        }
        return review;
    }
}