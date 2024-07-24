using Microsoft.EntityFrameworkCore;
using Moderation.Data;

namespace Moderation.Repositories;

public class PostRepository
{
    private readonly AppDbContext _context;

    public PostRepository(AppDbContext context)
    {
        _context = context;
    }

    public async Task<List<Post>> GetAllPostsAsync()
    {
        return await _context.Posts.ToListAsync();
    }
    
    public async Task<List<Post>> GetUnreviewedPostsAsync()
    {
        return await _context.Posts
                             .Where(p => !p.IsReviewed)
                             .ToListAsync();
    }

    
}