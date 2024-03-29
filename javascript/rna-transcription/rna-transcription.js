//
// This is only a SKELETON file for the 'RNA Transcription' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

let res = ''; // this makes the if not needed for the empty test
export const toRna = (str) => {
    res = str.replace(/G/g, "c"); // avoid further replacements
    res = res.replace(/C/g, "g");
    res = res.replace(/T/g, "a");
    res = res.replace(/A/g, "u");
    res = res.toUpperCase(); // return capital letters now
    return(res);
};

