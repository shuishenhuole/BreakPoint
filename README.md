# BreakPoint
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