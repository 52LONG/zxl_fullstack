# 字节h5面试题之Drag and Drop
良好的用户体验
1. 基础好 ， 细节 能力增长梯度
2. 比较复杂的特效


## github 拖拽上传功能 
1. 给要拖拽的元素加 dragable ，cursor:true
2. 拖拽元素在上空的时候 
3. drag 有三个事件 
    js 在前端是基于事件的语言，Event level
    - dragstart
    - drag
    - dragend

    drop 异步
    - dragenter 进入 border
        dashed classList.add
    - drgover border dashed
    - leave 离开

    drag + drop 良好的用户体验模拟的API ，比较复杂
    draggable = true 属性
    dragstart drag dragend
    dragenter dragover dragleave + drop
    要用  event.preventDefault(); 阻止默认行为


作业： 请完成拖回去

