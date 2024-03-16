var CryptoJS = require('crypto-js');

// Encrypt
var ciphertext = CryptoJS.AES.encrypt('LOREM_IPSUM_DOLOR_ISSET_LOONY_2024', '20240103').toString();

console.log(ciphertext);
