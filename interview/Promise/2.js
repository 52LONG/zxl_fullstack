console.log('script start');

setTimeout(function() {
  console.log('setTimeout');
}, 0);
// new Promise((resolve, rejects) => {
//     console.log('3')
//     resolve()
//   }).then(() => {
//     console.log('4')
//   })
 Promise.resolve().then(function() {
  console.log('promise1');
}).then(function() {
  console.log('promise2');
});

console.log('script end');
