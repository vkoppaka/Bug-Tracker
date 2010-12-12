using System.Linq;
using System.Collections.Generic;
using DomainModel.Database;
using DomainModel.Repository;


namespace BugTrackerMVC.Models
{
    public class BugRepository : AbstractRepository<Bug>
    {
        public override IList<Bug> GetAll()
        {
            return DB.Bugs.ToList();
        }

        public override Bug GetById(int id)
        {
            return DB.Bugs.SingleOrDefault(a => a.Bug_Id == id);
        }

        public override int Insert(Bug instance)
        {
            DB.Bugs.AddObject(instance);
            SaveChanges();
            return instance.Bug_Id;
        }

        public override void Delete(int id)
        {
            DB.DeleteObject(GetById(id));
            SaveChanges();
        }
    }
}