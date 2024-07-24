using Microsoft.AspNetCore.Mvc;
using Moderation.Repositories;
using Moderation.Data;

namespace Moderation.Controllers;

[ApiController]
[Route("[controller]")]
public class PostController : ControllerBase
{
    private PostRepository _postRepository;

    public PostController(PostRepository postRepository)
    {
        _postRepository = postRepository;
    }

    [HttpGet(Name = "GetPosts")]
    public async Task<IEnumerable<Post>> GetPosts()
    {
        
        return await _postRepository.GetAllPostsAsync();
    }

    [HttpGet("unreviewed", Name = "GetUnreviewedPosts")]
    public async Task<IEnumerable<Post>> GetUnreviewedPosts()
    {
        return await _postRepository.GetUnreviewedPostsAsync();
    }

    

}
