
var spiralOrder = function(matrix) {
    const m =matrix.length;
    const n = matrix[0].length;
    const size = m * n;
    let t=0,r=n-1,b=m-1,l=0;
    const res =[];
    while(res.length!==size){
        //   从左到右移动
        for (let i = l; i <= r; i++) {
            res.push(matrix[t][i])
        }
            t++;
        // 从上到下移动
        for (let i = t; i <= b; i++){
            res.push(matrix[i][r])
        }
            r--;

        // 检查下是否越界
        if (res.length === size){
           break 
        } 
        // 从右到左移动
        for (let i = r; i >= l; i--) {
            res.push(matrix[b][i])
        }
            b-- ;
        // 从下到上移动
        for (let i = b; i >= t; i--) {
            res.push(matrix[i][l])
        }
            l++;
    }
    return res;

};
const mx= [[1,2,3],[4,5,6],[7,8,9]];
const mx1= [[1,2,3,4],[5,6,7,8],[9,10,11,12]];
console.log(spiralOrder(mx));
console.log(spiralOrder(mx1));