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
}