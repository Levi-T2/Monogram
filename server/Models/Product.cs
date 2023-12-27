namespace Monogram.Models;

public class Product
{
    public int Id { get; set; }
    public DateTime CreatedAt { get; set; }
    public DateTime UpdatedAt { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    public int Price { get; set; }
    public string ImgUrl { get; set; }
    public string ImgUrl2 { get; set; }
    public string ImgUrl3 { get; set; }
}