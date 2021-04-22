const fs = require('fs')
const parser = require('@babel/parser')
const traverse = require('@babel/traverse').default
const path = require('path')
const babel = require('@babel/core')
const getModileInfo = (file)=>{
    const body = fs.readFileSync(file,'utf-8')
    // console.log(body);
    const ast = parser.parse(body,{
        sourceType:'module' //表示我们要解析的是ES模块
    })
    // console.log(ast.program.body);
    const deps ={}
    //依赖收集
    traverse(ast,{
        ImportDeclaration({node}){
            const dirname = path.dirname(file)
            const abspath = './'+path.join(dirname,node.source.value)
            deps[node.source.value] = abspath
            
        }
    })
    // console.log(deps);
    // ES6->Es5
    const {code } = babel.transformFromAst(ast,null,{
        presets:['@babel/preset-env']
    })
    // console.log(code);

    //获取所有的依赖
    const moduleInfo = {file,deps,code}
    return moduleInfo
}
const parseModiles = (file)=>{
    const entry = getModileInfo(file)
    const temp = [entry]
    const depsGrap = {}
    for(let i =0;i<temp.length;i++){
        const deps = temp[i].deps
        if(deps){
            for(const key in deps){//key =>'./add.js' 
                if(deps.hasOwnProperty(key)){
                    temp.push(getModileInfo(deps[key]))
                }
            }
        }
    }
    // console.log( temp);
    temp.forEach(moduleInfo=>{
        depsGrap[moduleInfo.file]={
            deps:moduleInfo.deps,
            code:moduleInfo.code
        }
    })
    console.log(depsGrap);
    return depsGrap
}

// getModileInfo('./src/index.js')
const bundle = (file)=>{
    const depsGrap  = JSON.stringify(parseModiles(file))
    return `(function(graph){
        function require(file){
           function absRequire(relPath){
               return require(graph[file].deps[relPath])
           } 
        var exports = {}
        (function(require,exports,code){
            eval(code)
        })(absRequire,exports,graph[file].code)
    }
        require('${file}')
    })(${depsGrap }) ` 
       
}
const content = bundle('./src/index.js')
// parseModiles()
console.log(content);
fs.mkdirSync('./dist')
fs.writeFileSync('./dist/bundle.js',content)