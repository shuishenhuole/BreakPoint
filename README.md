# BreakPoint

## 简介

BreakPoint 是一个专为 HarmonyOS（鸿蒙）应用设计的响应式断点管理工具。它提供了简单优雅的 API，帮助开发者轻松实现基于屏幕宽度的响应式布局。

### 特性

- 📱 **响应式断点**：根据屏幕宽度自动切换不同的样式和布局
- 🎨 **类型安全**：支持泛型参数，提供完整的类型提示
- 🚀 **简单易用**：只需几步即可完成集成和使用
- 🔄 **实时更新**：窗口大小变化时自动更新断点状态
- 💡 **灵活配置**：支持自定义断点阈值和默认值

### 断点规格

| 断点 | 说明 | 宽度范围            |
|------|------|-----------------|
| xs | 超小屏 | (0, 320）           |
| sm | 小屏 | [320, 600)           |
| md | 中屏 | [600, 840) |
| lg | 大屏 | [840, 1440) |
| xl | 超大屏 | [1440, +∞)        |


#### 如何下载
1. 通过ohpm一键安装
```bash
ohpm install @shuishenhuole/breakpoint
```
2. 通过文件导入

2.1在build-profile.json5的modules中加入
```json
{
  "name": "BreakPoint",
  "srcPath": "./BreakPoint"
}
```
2.2
module.json5中加入依赖
```json
{
  "dependencies": {
    "@shuishenhuole/breakpoint": "file:../BreakPoint"
  }
}
```
#### 使用方法
1. 在onWindowStageCreate调用BreakPoint.init(windowStage)进行初始化
```ts
onWindowStageCreate(windowStage: window.WindowStage): void {
    ...
    BreakPoint.init(windowStage)
    ...
    });
}
```
2. 在类中直接使用WidthBreakPoint方法获取数据
```ts
#注意这里的实际导入可能会不一样可能是@shuishenhuole/breakpoint不过影响不大
import { WidthBreakPoint } from '../utils/WidthBreakPoint'

@Entry
@ComponentV2
struct Index {
  build() {
    Flex({
      justifyContent:FlexAlign.Center,
      alignItems:ItemAlign.Center
    }){
      Text("Hello World")
        .fontColor(new WidthBreakPoint<ResourceColor>({
          sm:Color.Red,
          md:Color.Orange,
          lg:Color.Green,
          xl:Color.Blue,
          default:Color.Black
        }).getValue())
        .fontSize(50)
    }
    .height("100%")
    .width("100%")
  }
}
```