namespace Monogram.Controllers;

[ApiController]
[Route("api/[controller]")]

public class ReviewsController : ControllerBase
{
    private readonly ReviewsService _reviewsService;
    public ReviewsController(ReviewsService reviewsService)
    {
        _reviewsService = reviewsService;
    }

    // Get Review By Id
    [HttpGet("{reviewId}")]
    public ActionResult<Review> GetReviewById(int reviewId)
    {
        try
        {
            Review review = _reviewsService.GetReviewById(reviewId);
            return Ok(review);
        }
        catch (Exception error)
        {
            return BadRequest(error.Message);
        }
    }

    // Create Review
    [HttpPost]
    public ActionResult<Review> CreateReview([FromBody] Review reviewData)
    {
        try
        {
            Review review = _reviewsService.CreateReview(reviewData);
            return Ok(review);
        }
        catch (Exception error)
        {
            return BadRequest(error.Message);
        }
    }

    // Delete Review
    [HttpDelete("{reviewId}")]
    public ActionResult<Review> DeleteReview(int reviewId)
    {
        try
        {
            string message = _reviewsService.DeleteReview(reviewId);
            return Ok(message);
        }
        catch (Exception error)
        {
            return BadRequest(error.Message);
        }
    }
}