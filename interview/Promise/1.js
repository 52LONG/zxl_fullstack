console.log('1')
setTimeout(() => {
  console.log('2')
})
new Promise((resolve, rejects) => {
  console.log('3')
  resolve()
}).then(() => {
  console.log('4')
})
console.log(5)

