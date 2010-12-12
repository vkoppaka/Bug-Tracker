using System.Linq;
using DomainModel.Database;
using DomainModel.Repository;
using System.Collections.Generic;

namespace DomainModel.Repository
{
    public class BugStatusRepository : AbstractRepository<BugStatus>
    {
        public override IList<BugStatus> GetAll()
        {
            return DB.BugStatus.ToList();
        }

        public override BugStatus GetById(int id)
        {
            return DB.BugStatus.SingleOrDefault(a => a.Bug_Status_Id == id);
        }

        public override int Insert(BugStatus instance)
        {
            DB.BugStatus.AddObject(instance);
            SaveChanges();
            return instance.Bug_Status_Id;
        }

        public override void Delete(int id)
        {
            DB.DeleteObject(GetById(id));
            SaveChanges();
        }
    }
}