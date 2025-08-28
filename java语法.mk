以下是将你提供的 Java 基础语法内容，按照“内容结构化、内容规范化、格式标准化”的要求，整理后的**Markdown格式文档**。已去除冗余层级、统一表述、规范术语，并补充了图片链接提示（因原图未提供，仅作占位说明）。

---

# Java 基础语法

## 1 核心概念

| 术语       | 定义与示例                           |
|------------|--------------------------------------|
| 对象       | 类的实例，具有状态（属性）和行为（方法）。例如：狗对象的状态有颜色、名字、品种；行为有摇尾巴、叫、吃。 |
| 类         | 模板，描述一类对象共有的状态和行为。 |
| 方法       | 行为的具体实现，逻辑运算、数据修改均在此完成。 |
| 实例变量   | 每个对象独有的变量，用于保存对象的状态。 |

## 2 第一个 Java 程序

### 2.1 示例代码
```java
public class HelloWorld {
    /* 第一个 Java 程序
     * 输出字符串 Hello World
     */
    public static void main(String[] args) {
        System.out.println("Hello World"); // 输出 Hello World
    }
}
```

### 2.2 编译与运行流程

1. 将上述代码保存为 `HelloWorld.java`（文件名必须与 `public class` 同名）。  
2. 打开终端（Windows CMD / macOS Terminal / Linux Shell），进入文件所在目录。  
3. 编译：`javac HelloWorld.java`  
4. 运行：`java HelloWorld`  
   预期输出：
   ```
   Hello World
   ```
5. 若出现编码问题，编译时添加 `-encoding UTF-8`：
   ```
   javac -encoding UTF-8 HelloWorld.java
   ```

> **图示**：编译运行流程示意图（请替换为实际可公网访问的 URL）  
> ![编译运行流程](https://example.com/compile-run.gif)

## 3 基本语法规范

| 项目       | 规范说明 |
|------------|----------|
| 大小写敏感 | 标识符区分大小写，如 `Hello` ≠ `hello`。 |
| 类名       | 首字母大写，驼峰命名，如 `MyFirstJavaClass`。 |
| 方法名     | 首字母小写，后续单词首字母大写，如 `calculateSum`。 |
| 源文件名   | 必须与 `public class` 名称完全一致，区分大小写，扩展名 `.java`。 |
| 主方法入口 | `public static void main(String[] args)` 为程序唯一入口。 |

## 4 标识符规则

- **合法字符**：以字母 (A-Z, a-z)、美元符 `$` 或下划线 `_` 开头；后续可跟字母、美元符、下划线或数字。  
- **区分大小写**。  
- **禁止关键字**作为标识符。

**合法示例**：`age`, `$salary`, `_value`, `__1_value`  
**非法示例**：`123abc`, `-salary`

## 5 修饰符

| 类别         | 示例关键字 |
|--------------|------------|
| 访问控制     | `default`, `public`, `protected`, `private` |
| 非访问控制   | `final`, `abstract`, `static`, `synchronized` |

> 后续章节将深入讨论修饰符。

## 6 变量类型

- **局部变量**：方法或代码块内部声明。  
- **成员变量（非静态）**：属于对象，每个对象独立。  
- **类变量（静态变量）**：属于类，所有对象共享。

## 7 数组

数组是**存储在堆上的对象**，可保存多个同类型元素。  
后续章节将介绍声明、构造与初始化。

## 8 枚举（enum）

用于限制变量只能取预定义值，减少错误。

```java
class FreshJuice {
    enum FreshJuiceSize { SMALL, MEDIUM, LARGE }
    FreshJuiceSize size;
}

public class FreshJuiceTest {
    public static void main(String[] args) {
        FreshJuice juice = new FreshJuice();
        juice.size = FreshJuice.FreshJuiceSize.MEDIUM;
    }
}
```

> 枚举可单独定义或嵌套在类中，支持方法、变量、构造函数。

## 9 Java 关键字

| 类别       | 关键字示例 |
|------------|------------|
| 访问控制   | `private`, `protected`, `public`, `default` |
| 类/方法/变量修饰符 | `abstract`, `class`, `extends`, `final`, `implements`, `interface`, `native`, `new`, `static`, `synchronized`, `transient`, `volatile` |
| 程序控制   | `break`, `case`, `continue`, `do`, `else`, `for`, `if`, `instanceof`, `return`, `switch`, `while` |
| 错误处理   | `assert`, `catch`, `finally`, `throw`, `throws`, `try` |
| 包相关     | `import`, `package` |
| 基本类型   | `boolean`, `byte`, `char`, `double`, `float`, `int`, `long`, `short` |
| 变量引用   | `super`, `this`, `void` |
| 保留关键字 | `goto`, `const`（不可使用） |

> `null`, `true`, `false` 是字面常量，不是关键字，也不可作为标识符。

## 10 注释与空行

- **单行注释**：`// 注释内容`  
- **多行注释**：`/* 注释内容 */`  
- **空行或仅含注释的行**：编译器忽略。

```java
public class HelloWorld {
    /* 多行注释示例 */
    public static void main(String[] args) {
        // 单行注释示例
        System.out.println("Hello World");
    }
}
```

## 11 继承

- **超类（父类）**：被继承的类。  
- **子类（派生类）**：继承超类，复用其属性和方法，可扩展新功能。

## 12 接口

- **协议**：定义对象间交互的规范，仅声明方法签名，不提供实现。  
- **实现**：由实现接口的类完成具体逻辑。  
- **多重继承**：Java 通过接口支持。

## 13 Java 源程序与编译型运行区别

> **图示**：请替换为实际可公网访问的 URL  
> ![编译与运行区别](https://example.com/java-compile-vs-runtime.png)

---

**下一节**：深入介绍 Java 中的**类与对象**。