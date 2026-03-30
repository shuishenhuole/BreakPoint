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