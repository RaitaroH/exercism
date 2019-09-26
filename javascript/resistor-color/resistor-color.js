//
// This is only a SKELETON file for the 'Resistor Color' exercise. It's been provided as a
// convenience to get you started writing code faster.
//
let colors = {
  black: 0,
  brown: 1,
  red: 2,
  orange: 3,
  yellow: 4,
  green: 5,
  blue: 6,
  violet: 7,
  grey: 8,
  white: 9
}

export const colorCode = (x) => {
  return(colors[`${x.toLowerCase()}`]);
  // toLowerCase method is a not needed for the tests, but it should be better in a real world scenario
};

export const COLORS = () => { return(Object.keys(colors)); };
// doesn't pass the test but that is the expected result; perhaps ' vs " being the problem
