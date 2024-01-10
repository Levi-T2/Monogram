

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
    internal Product GetProductById(int productId)
    {
        Product product = _repository.GetProductById(productId);
        if (product == null)
        {
            throw new Exception($"The Id supplied was null or invalid: {productId}");
        }
        else
        {
            return product;
        }
    }
    internal List<Review> GetReviewsByProductId(int productId)
    {
        List<Review> reviewList = _repository.GetReviewsByProductId(productId);
        return reviewList;
    }
    internal List<Product> GetAllPacks()
    {
        List<Product> packList = _repository.GetAllPacks();
        return packList;
    }
}