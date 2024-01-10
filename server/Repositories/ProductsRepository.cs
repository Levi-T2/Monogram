



namespace Monogram.Repositories;

public class ProductsRepository
{
    private readonly IDbConnection _db;

    public ProductsRepository(IDbConnection db)
    {
        _db = db;
    }


    internal List<Product> GetAllProducts()
    {
        string sql = @"SELECT * FROM products;";
        List<Product> productList = _db.Query<Product>(sql).ToList();
        return productList;
    }

    internal Product GetProductById(int productId)
    {
        string sql = @"SELECT * FROM products WHERE id = @productId;";
        Product product = _db.Query<Product>(sql, new { productId }).FirstOrDefault();
        return product;
    }

    internal List<Review> GetReviewsByProductId(int productId)
    {
        string sql = @"SELECT * FROM reviews WHERE productId = @productId;";
        List<Review> reviewList = _db.Query<Review>(sql, new { productId }).ToList();
        return reviewList;
    }
    internal List<Product> GetAllPacks()
    {
        string sql = @"SELECT * FROM products WHERE category = 'pack';";
        List<Product> packList = _db.Query<Product>(sql).ToList();
        return packList;
    }
}