<template>
<div>
    <section class="todoapp">
        <header class="header">
            <h1>Vue3 todos</h1>
            <!-- v-model 双向数据绑定 -->
            <input type="text" class="new-todo" placeholder="想干的事" @keyup.enter="addTodo" v-model="newTodo">
        </header>
    </section>
    <section class="main">
        <ul class="todo-list">
            <!-- for in更适合遍历对象，不要使用for in遍历数组 -->
             <li class="(todo,index)" :key="todo.id" v-for="todo in todos">
                 <div class="view">
                     <label >{{todo.title}}</label>
                     <button class="destroy" @click="delectTodo(idnex)"></button>
                 </div>
             </li>
        </ul>
    </section>
    </div>
</template>

<script>
import {reactive, toRefs} from 'vue'
export default {
    setup(){
        const state = reactive({
            newTodo:'',
            todos:[
             { id: '1', title: '吃饭', complated: false },
             { id: '2', title: '睡觉', complated: false }
            ]
        })
        function addTodo(){
            // console.log('enter');
            // console.log(state.newTodo);
            let value = state.newTodo && state.newTodo.trim()
            if(!value)return 
            state.todos.push({
                id:state.todos.length+1,
                title:value,
                complated:false
            })
            state.newTodo = ''
        }
        function delectTodo(index){
            state.todos.splice(index,1)
            
            
        }
        return {
            ...toRefs(state),
            addTodo,
            delectTodo
        }
    }
}
</script>

<style>

</style>