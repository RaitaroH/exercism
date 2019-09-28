//
// This is only a SKELETON file for the 'Space Age' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

let years = {
  mercury: 0.2408467,
  venus: 0.61519726,
  earth: 1.0,
  mars: 1.8808158,
  jupiter: 11.862615,
  saturn: 29.447498,
  uranus: 84.016846,
  neptune: 164.79132
};

export const age = (planet, sec) => {
  return(
    Math.round(
      (sec / 31557600 / years[planet]) // number of seconds put into earth years, then devided by planet years
    * 100 ) / 100 // decimal point
  );
};

