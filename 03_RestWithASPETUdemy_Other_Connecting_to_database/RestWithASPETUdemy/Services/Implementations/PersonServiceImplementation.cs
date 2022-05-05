using RestWithASPETUdemy.Model;
using RestWithASPETUdemy.Model.Context;
using System.Collections.Generic;
using System.Threading;
using System.Linq;


namespace RestWithASPETUdemy.Services.Implementations
{
    class PersonServiceImplementation : IPersonService
    {
        private MySQLContext _context;

        public PersonServiceImplementation(MySQLContext context)
        {
            _context = context;
        }

        public Person FindByID (long id){
            return _context.Persons.SingleOrDefault(p => p.Id.Equals(id));
        }

        public List<Person> FindAll(){
            
            return _context.Persons.ToList();
        }

        public Person Create (Person person){
            try
            {
                _context.Add(person);
                _context.SaveChanges();
            }
            catch (System.Exception ex)
            {
                
                throw ex;
            }
            return person;
        }

        public Person Update (Person newPerson){
            var toUpdate = this.FindByID(newPerson.Id);
            if (toUpdate == null) return new Person();

            try
            {
                _context.Entry(toUpdate).CurrentValues.SetValues(newPerson);
                _context.SaveChanges();
            }
            catch (System.Exception ex)
            {
                
                throw ex;
            }
            return newPerson;
        }

        public void Delete (long id){
            var toDetele = this.FindByID(id);
            if (toDetele == null) return;

            try
            {
                _context.Persons.Remove(toDetele);
                _context.SaveChanges();
            }
            catch (System.Exception ex)
            {
                
                throw ex;
            }
        }
    }
}