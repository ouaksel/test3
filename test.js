
// on peut également déclarer et initialiser un objet de la façon suivante :

let aPerson= new Object();
aPerson.name = 'Jean';
aPerson.age = 35;
aPerson.gender = 'masculin';
aPerson.interest = ['musique', 'badminton'];


aPerson.sayHello = function() {console.log('Bonjour ! Je suis ' + this.name + '.'); };

aPerson.sayHello();