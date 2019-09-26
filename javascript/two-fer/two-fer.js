// let name = prompt("What is your name?", "");
//
// if ( name != '' ) {
  // console.log('One for ' + name + ', one for me.');
// } else {
  // console.log('One for you, one for me.');
// }

export const twoFer = (name) => {
  if ( name ) {
    return('One for ' + name + ', one for me.');
  } else {
    return('One for you, one for me.');
  }
}
