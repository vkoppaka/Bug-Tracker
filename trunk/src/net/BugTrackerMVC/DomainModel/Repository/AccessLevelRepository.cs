using System.Linq;
using DomainModel.Database;
using DomainModel.Repository;
using System.Collections.Generic;

namespace DomainModel.Repository
{
    public class AccessLevelRepository : AbstractRepository<AccessLevel>
    {
        public override IList<AccessLevel> GetAll()
        {
            return DB.AccessLevels.ToList();
        }

        public override AccessLevel GetById(int id)
        {
            return DB.AccessLevels.SingleOrDefault(a => a.Access_Level_Id == id);
        }

        public override int Insert(AccessLevel instance)
        {
            DB.AccessLevels.AddObject(instance);
            SaveChanges();
            return instance.Access_Level_Id;
        }

        public override void Delete(int id)
        {
            DB.DeleteObject(GetById(id));
            SaveChanges();
        }
    }
}