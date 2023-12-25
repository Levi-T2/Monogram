
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
}