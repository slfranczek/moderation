using Microsoft.EntityFrameworkCore;

namespace Moderation.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options)
            : base(options)
        {
        }

        // Define DbSets for your tables
        public DbSet<Post> Posts { get; set; }

        // Add more DbSets for other tables
    }
}