using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DomainModel.Database;

namespace DomainModel.Repository
{
    public abstract class AbstractRepository<T> where T : class
    {
        public readonly BugTrackerEntities DB = new BugTrackerEntities();

        public abstract IList<T> GetAll();

        public abstract T GetById(int id);

        public abstract int Insert(T instance);

        public abstract void Delete(int id);

        public void SaveChanges()
        {
            DB.SaveChanges();
        }
    }
}
