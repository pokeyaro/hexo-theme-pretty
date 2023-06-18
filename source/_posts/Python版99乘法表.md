---
title: Python版99乘法表
tags:
  - Python
  - 编程语言
categories:
  - 技术
  - 运维
copyright: true
abbrlink: 2019817910
date: 2023-06-19 01:39:02
---
<br />
<blockquote class="blockquote-center">
<p id="hitokoto"></p>
<script src="https://v1.hitokoto.cn/?encode=js&select=%23hitokoto" defer></script>
</blockquote>

# Python版99乘法表

这段代码使用两个嵌套的循环，外层循环用于遍历乘法表的行，内层循环用于遍历乘法表的列。在内层循环中，计算每个乘法表格项的乘积并打印输出。最后通过打印换行符实现输出换行，开始打印下一行的乘法表。

```python
# 循环遍历乘法表的行
for i in range(1, 10):
    # 循环遍历乘法表的列
    for j in range(1, i + 1):
        # 计算乘积
        result = i * j
        # 打印乘法表格形式的输出
        print(f"{j} * {i} = {result}\t", end="")
    # 换行，开始打印下一行
    print()
```

你可以将这段代码保存到一个名为 `multiplication_table.py` 的文件中，并在命令行中运行如下命令，即可看到九九乘法表的输出结果。

```bash
$ python multiplication_table.py
1 * 1 = 1	
1 * 2 = 2	2 * 2 = 4	
1 * 3 = 3	2 * 3 = 6	3 * 3 = 9	
1 * 4 = 4	2 * 4 = 8	3 * 4 = 12	4 * 4 = 16	
1 * 5 = 5	2 * 5 = 10	3 * 5 = 15	4 * 5 = 20	5 * 5 = 25	
1 * 6 = 6	2 * 6 = 12	3 * 6 = 18	4 * 6 = 24	5 * 6 = 30	6 * 6 = 36	
1 * 7 = 7	2 * 7 = 14	3 * 7 = 21	4 * 7 = 28	5 * 7 = 35	6 * 7 = 42	7 * 7 = 49	
1 * 8 = 8	2 * 8 = 16	3 * 8 = 24	4 * 8 = 32	5 * 8 = 40	6 * 8 = 48	7 * 8 = 56	8 * 8 = 64	
1 * 9 = 9	2 * 9 = 18	3 * 9 = 27	4 * 9 = 36	5 * 9 = 45	6 * 9 = 54	7 * 9 = 63	8 * 9 = 72	9 * 9 = 81	
```
