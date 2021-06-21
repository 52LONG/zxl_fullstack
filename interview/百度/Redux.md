# Redux

## Vue

结构

template

script

data(){

​	return{

​		count:0

} 

}

｛

​	methods:{

​	.....function（方法）

}

｝

style



根据一个又一个的事情->type -> 遇到了type对应的事情 ->触发一个方法的执行

每件事所对应的方法集合<- type

派发器 ->action type ->method

dispatch ->action type -> method



dispath (派发器)

type 1 ->method 1

type 2 -> method 2

store -> state ={

count:0;	

}

store.dispath()

登录 

index  login ->登录验证

true  登录后的页面				true -> index

false 未登录页面

