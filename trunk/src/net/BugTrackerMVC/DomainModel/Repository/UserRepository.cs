using System.Linq;
using DomainModel.Database;
using DomainModel.Repository;
using System.Collections.Generic;

namespace BugTrackerMVC.Models
{
    public class UserRepository : AbstractRepository<User>
    {
        public override IList<User> GetAll()
        {
            return DB.Users.ToList();
        }

        public override User GetById(int id)
        {
            return DB.Users.SingleOrDefault(a => a.User_Id == id);
        }

        public override int Insert(User instance)
        {
            DB.Users.AddObject(instance);
            SaveChanges();
            return instance.User_Id;
        }

        public override void Delete(int id)
        {
            DB.DeleteObject(GetById(id));
            SaveChanges();
        }
    }
}