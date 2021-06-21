function unique(arr) {
    if (!Array.isArray(arr)) {
        console.log('type error!')
        return
    }
    return [...new Set(arr)]
}

var arr = [1,2,3,4,1,1,2,2,4,4,6,8]
console.log(unique(arr));