
namespace Monogram.Services;

public class ProductsService
{
    private readonly ProductsRepository _repository;

    public ProductsService(ProductsRepository repository)
    {
        _repository = repository;
    }

    internal List<Product> GetAllProducts()
    {
        List<Product> productList = _repository.GetAllProducts();
        return productList;
    }
}