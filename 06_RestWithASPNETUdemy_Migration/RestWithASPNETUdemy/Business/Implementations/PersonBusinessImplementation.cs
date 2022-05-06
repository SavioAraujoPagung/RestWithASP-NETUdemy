using RestWithASPNETUdemy.Model;
using RestWithASPNETUdemy.Model.Context;
using RestWithASPNETUdemy.Repository;
using System.Collections.Generic;
using System.Threading;
using System.Linq;


namespace RestWithASPNETUdemy.Business.Implementations
{
    class PersonBusinessImplementation : IPersonBusiness
    {

        private readonly IPersonRepository _repository;
        public PersonBusinessImplementation(IPersonRepository context)
        {
            _repository = context;
        }

        public Person FindByID (long id){
            return _repository.FindByID(id);
        }

        public List<Person> FindAll(){
            
            return _repository.FindAll();
        }

        public Person Create (Person newPerson){
            return _repository.Create(newPerson);
        }

        public Person Update (Person newPerson){
            return _repository.Update(newPerson);
        }

        public void Delete (long id){
            _repository.Delete(id);
        }
    }
}