namespace Moderation.Data;
public class Post{
    public int Id { get; set; }
    public int UserId {get; set;}
    required public string Title { get; set; }
    required public string Content { get; set; }
    public DateTime CreatedAt { get; set; }
    public bool IsReviewed { get; set; }
    public bool IsVisible { get; set; }
    public string? ReviewNotes {get; set;}
}