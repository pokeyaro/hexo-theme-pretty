---
title: Rust的猜字游戏
tags:
  - Rust
  - 编程语言
categories:
  - 技术
  - 后端
copyright: true
abbrlink: 3409567072
date: 2023-06-19 01:39:08
---
<br />
<blockquote class="blockquote-center">
<p id="hitokoto"></p>
<script src="https://v1.hitokoto.cn/?encode=js&select=%23hitokoto" defer></script>
</blockquote>

# Rust的猜字游戏

> Rust 语言实现的猜字游戏代码

这是一个简单的 `Rust` 猜数字游戏的代码。游戏的规则如下：

1. 程序会随机生成一个介于`1`和`100`之间的秘密数字。
2. 玩家需要通过输入猜测的数字来猜测秘密数字。
3. 程序会根据玩家的猜测给出相应的提示，告诉玩家猜的数字是大了还是小了。
4. 如果玩家猜对了秘密数字，程序会显示恭喜信息并结束游戏。

请注意，为了运行此代码，您需要在您的项目中添加以下依赖项：

```toml
[dependencies]
rand = "0.8.4"
```

以下是代码示例：

```rust
use std::io;
use rand::Rng;
use std::cmp::Ordering;

fn main() {
    println!("猜数字游戏开始!");

    let secret_number = rand::thread_rng().gen_range(1..101);

    loop {
        println!("请输入你猜测的数字：");

        let mut guess = String::new();

        io::stdin().read_line(&mut guess)
            .expect("读取输入失败!");

        let guess: u32 = match guess.trim().parse() {
            Ok(num) => num,
            Err(_) => continue,
        };

        match guess.cmp(&secret_number) {
            Ordering::Less => println!("猜小了!"),
            Ordering::Greater => println!("猜大了!"),
            Ordering::Equal => {
                println!("恭喜你，猜对了!");
                break;
            }
        }
    }
}
```

请将以上代码保存为 `.rs` 文件，并使用 `Rust` 编译器进行编译和运行。在游戏开始后，按照程序的提示输入猜测的数字，直到猜对为止。

当然，我会帮助您试玩三次。以下是示例游戏的运行情况：

```bash
猜数字游戏开始!
请输入你猜测的数字：
50
猜小了!
请输入你猜测的数字：
75
猜大了!
请输入你猜测的数字：
63
恭喜你，猜对了!
```
