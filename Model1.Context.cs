namespace курсач
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;

    public partial class termEntities : DbContext
    {
        private static termEntities _context;
        public static termEntities GetContext()
        {
            if (_context == null) _context = new termEntities();
            return _context;
        }
        public termEntities()
            : base("name=termEntities")
        {
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }

        public virtual DbSet<Account> Accounts { get; set; }
        public virtual DbSet<Client> Clients { get; set; }
        public virtual DbSet<Item> Items { get; set; }
        public virtual DbSet<Order_> Order_ { get; set; }
        public virtual DbSet<Role_> Role_ { get; set; }
        public virtual DbSet<Status> Status { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<Worker> Workers { get; set; }
    }
}

