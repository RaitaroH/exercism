let letters = [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z" ]

export const isPangram = (string) => {
  for(let i=0; i< letters.length; i++) {
    var letter = letters[i];
    if( string.toLowerCase().includes(letter) == false ) return(false);
    if( letter == 'z') return(true); // prev if didn't pass so z is in the string
  }
};
