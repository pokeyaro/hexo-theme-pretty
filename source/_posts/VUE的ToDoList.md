---
title: VUE的ToDoList
tags:
  - VUE
  - 框架
categories:
  - 技术
  - 前端
copyright: true
abbrlink: 3081675717
date: 2023-06-19 01:52:49
---
<br />
<blockquote class="blockquote-center">
<p id="hitokoto"></p>
<script src="https://v1.hitokoto.cn/?encode=js&select=%23hitokoto" defer></script>
</blockquote>

# VUE的ToDoList

## 体验

[码上掘金 - 在线运行](https://code.juejin.cn/pen/7142022906812301353)

## 说明

这段代码是一个简单的待办事项列表的案例，使用了`Vue.js`框架来实现动态数据绑定和交互功能。以下是对代码的说明：

1. 在`<div id="app">`中定义了一个`Vue`实例，它将管理整个应用程序的数据和方法。

2. 数据部分：

- `title`：输入框中的标题内容，通过`v-model`指令与输入框进行双向绑定。
- `listData`：待办事项的列表，每个事项包括`title`和`checked`属性，用于记录是否选中。
- `isAll`：用于记录全选复选框的状态。
- `result`：用于存储提交后的数据。

3. 计算属性：

- `message`：根据`result`数组的长度判断是否有提交的数据，并返回相应的提示信息。

4. 方法部分：

- `addItem`：添加新的待办事项到列表中，如果标题为空，则弹出提示。
- `selectItem`：选择每个事项，将其`checked`属性取反，并调用`checkedAllSelect`方法进行全选检测。
- `checkedAllSelect`：检测是否全选，遍历待办事项列表，如果有未选中的事项，则将`isAll`设置为`false`，否则设置为`true`。
- `allSelect`：全选或取消全选，根据`isAll`的值更新待办事项列表的`checked`属性。
- `delItem`：删除单个事项，根据选中状态进行删除操作，并调用`checkedAllSelect`方法进行全选检测。
- `allDelItem`：批量删除选中的事项，遍历待办事项列表，如果某个事项被选中，则将其删除。
- `submitData`：提交数据，将选中的待办事项存储在`result`数组中，并使用`JSON.stringify`将其转换为字符串格式。

这段代码使用`Vue.js`实现了一个简单的待办事项列表，包括添加、选择、删除和提交功能。用户可以在输入框中输入待办事项的标题，点击添加按钮即可将其添加到列表中。用户可以通过复选框选择待办事项，并可以进行单个或批量删除操作。最后，用户可以点击提交按钮，将选中的待办事项的数据以`JSON`字符串的形式输出到控制台。

## 代码

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ToDoList案例</title>
    <style type="text/css">
        [v-cloak] {
            display: none !important;
        }
    </style>
</head>
<body>
<div id="app" style="width: 30%" v-cloak>
    <input type="text" v-model.trim="title">
    <button type="button" @click="addItem">添加</button>
    <table width="100%" border="1" cellspacing="0" cellpadding="0">
        <tr style="color: #FFFFFF">
            <td height="40" bgcolor="#3399FF" align="center"><label><input type="checkbox" :checked="isAll"
                                                                           @click="allSelect">全选</label></td>
            <td height="40" bgcolor="#3399FF" align="center">标题</td>
            <td height="40" bgcolor="#3399FF" align="center">管理</td>
        </tr>
        <tr v-for="(item, index) in listData" :key="index">
            <td height="40" align="center"><input type="checkbox" :checked="item.checked" @click="selectItem(index)">
            </td>
            <td height="40" align="center">{{item.title}}</td>
            <td height="40" align="center"><span @click="delItem(index)">删除</span></td>
        </tr>
        <tr>
            <td height="40" colspan="3">
                <button type="button" @click="allDelItem()">批量删除</button>
                <button type="button" @click="submitData()">提交</button>
            </td>
        </tr>
    </table>
    <span>{{message}}</span>
</div>
<script src="https://cdn.jsdelivr.net/npm/vue@2.6.14/dist/vue.min.js"></script>
<script>
    new Vue({
        el: "#app",
        data() {
            return {
                title: "",
                listData: [],
                isAll: false,
                result: []
            }
        },
        computed: {
            message() {
                if (this.result.length > 0) {
                    return "提交后的数据：" + this.result;
                }
                return "";
            }
        },
        methods: {
            // 添加数据
            addItem() {
                if (this.title === "") {
                    alert("请输入内容");
                    return;
                }
                this.listData.push({title: this.title, checked: false});
            },
            // 选择每条数据
            selectItem(index) {
                // 选择取反
                this.listData[index].checked = !this.listData[index].checked;
                // 避免页面不能及时渲染的问题
                this.$set(this.listData, index, this.listData[index]);
                // 调用检测方法
                this.checkedAllSelect()
            },
            // 检测是否全选
            checkedAllSelect() {
                let isAll = false;
                if (this.listData.length > 0) {
                    for (let i = 0; i < this.listData.length; i++) {
                        if (!this.listData[i].checked) {
                            isAll = false;
                            this.isAll = isAll;
                            return;
                        }
                    }
                    isAll = true;
                } else {
                    isAll = false;
                }
                this.isAll = isAll;
            },
            // 全选
            allSelect() {
                this.isAll = !this.isAll;
                if (this.listData.length > 0) {
                    for (let i = 0; i < this.listData.length; i++) {
                        this.listData[i].checked = this.isAll;
                    }
                }
            },
            // 删除数据
            delItem(index) {
                let flag = this.listData[index].checked;
                if (flag) {
                    this.listData.splice(index, 1);
                    this.checkedAllSelect();
                } else {
                    alert("请勾选 □ 条目后再删除");
                }
            },
            // 批量删除
            allDelItem() {
                if (this.listData.length > 0) {
                    for (let i = 0; i < this.listData.length; i++) {
                        if (this.listData[i].checked) {
                            this.listData.splice(i--, 1);
                        }
                    }
                }
                this.checkedAllSelect();
            },
            // 提交数据
            submitData() {
                let data = [];
                if (this.listData.length > 0) {
                    for (let i = 0; i < this.listData.length; i++) {
                        if (this.listData[i].checked) {
                            data.push(this.listData[i]);
                        }
                    }
                }
                console.log(data);
                this.result = JSON.stringify(data);
            }
        }
    });
</script>
</body>
</html>
```
