using System.Linq;
using System.Collections;
using System.Collections.Generic;
using DomainModel.Database;
using DomainModel.Repository;


namespace DomainModel.Repository
{
    public class ProjectRepository : AbstractRepository<Project>
    {
        public override IList<Project> GetAll()
        {
            return DB.Projects.ToList();
        }

        public override Project GetById(int id)
        {
            return DB.Projects.SingleOrDefault(a => a.Project_Id == id);
        }

        public override int Insert(Project instance)
        {
            DB.Projects.AddObject(instance);
            SaveChanges();
            return instance.Project_Id;
        }

        public override void Delete(int id)
        {
            DB.DeleteObject(GetById(id));
            SaveChanges();
        }
    }
}