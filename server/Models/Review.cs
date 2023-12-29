namespace Monogram.Models;

public class Review
{
    public int Id { get; set; }
    public DateTime CreatedAt { get; set; }
    public DateTime UpdatedAt { get; set; }
    public string Name { get; set; }
    public string Email { get; set; }
    public string Title { get; set; }
    public string Body { get; set; }
    public string ImgUrl { get; set; }
    public int ProductId { get; set; }
}