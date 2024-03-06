var CryptoJS = require('crypto-js');

// Encrypt
var ciphertext = CryptoJS.AES.encrypt(
  'LOREM_IPSUM_DOLOR_ISSET_CLOUD_CIVIL_2024',
  '20240103'
).toString();

console.log(ciphertext);
