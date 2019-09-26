function check(nr, d, suffix) {
  if ( nr % d == 0 ) { word += suffix };
  return word;
};

let stop = 100;

for ( let i = 1; i <= stop; i++) {
  var word = '';
  check(i, 3, 'fizz');
  check(i, 5, 'buzz');
  console.log(i + ' ' + word);
};
