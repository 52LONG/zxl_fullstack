function test(N,arr){
    let length =0;
    let H = 0;
    for(let i = 0;i<N;i++){
        H = arr[i][2];
       if(arr[i][0]<arr[i+1][0]){
            length =length + Math.sqrt(Math.pow(((arr[i+1][0]-arr[i][0]),2)+Math.pow((arr[i+1][1]-arr[i][1]),2)))
            H = H + arr[i+1]-length;
       }else{
           break;
       } 
    }
    return H;
}
let N =3;
let arr=[];
arr[0] = [0,0,2];
arr[1] = [3,1,1];
arr[2] = [6,0,9]


console.log(test(N,arr));