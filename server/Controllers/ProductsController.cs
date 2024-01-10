using Microsoft.AspNetCore.Http.HttpResults;

namespace Monogram.Controllers;

[ApiController]
[Route("api/[controller]")]

public class ProductsController : ControllerBase
{
    private readonly ProductsService _productsService;
    public ProductsController(ProductsService productsService)
    {
        _productsService = productsService;
    }

    // Get All Products 
    [HttpGet]
    public ActionResult<List<Product>> GetAllProducts()
    {
        try
        {
            List<Product> productList = _productsService.GetAllProducts();
            return Ok(productList);
        }
        catch (Exception error)
        {
            return BadRequest(error.Message);
        }
    }

    // Get Product By Id
    [HttpGet("{productId}")]
    public ActionResult<Product> GetProductById(int productId)
    {
        try
        {
            Product product = _productsService.GetProductById(productId);
            return Ok(product);
        }
        catch (Exception error)
        {
            return BadRequest(error.Message);
        }
    }

    // Get Reviews By Product Id
    [HttpGet("{productId}/reviews")]
    public ActionResult<List<Review>> GetReviewsByProductId(int productId)
    {
        try
        {
            List<Review> reviewList = _productsService.GetReviewsByProductId(productId);
            return Ok(reviewList);
        }
        catch (Exception error)
        {
            return BadRequest(error.Message);
        }
    }

    // Get all add-on packs
    [HttpGet("packs")]
    public ActionResult<List<Product>> GetAllPacks()
    {
        try
        {
            List<Product> packList = _productsService.GetAllPacks();
            return Ok(packList);
        }
        catch (Exception error)
        {
            return BadRequest(error.Message);
        }
    }
}