
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
    internal string DeleteReview(int reviewId)
    {
        _repository.DeleteReview(reviewId);
        return $"The review with the id: {reviewId} has been deleted.";
    }
}