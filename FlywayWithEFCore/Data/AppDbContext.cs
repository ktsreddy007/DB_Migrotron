using Microsoft.EntityFrameworkCore;
using FlywayWithEFCore.Models;

public class AppDbContext : DbContext
{
    public DbSet<User> Users => Set<User>();

    protected override void OnConfiguring(DbContextOptionsBuilder options)
    {
        options.UseSqlServer("Server=localhost;Database=Payroll;Trusted_Connection=True;TrustServerCertificate=True");
        // Use your actual DB connection string here
    }
}