import { BreakPointStore } from "../viewmodel/BreakPointStore"
import { AppStorageV2 } from "@kit.ArkUI"

interface WidthBreakPointType<T>{
  xs?:T
  sm?:T
  md?:T
  lg?:T
  xl?:T
}

export class WidthBreakPoint<T>{
  bp:WidthBreakPointType<T>|null = null
  BPS:BreakPointStore = AppStorageV2.connect(BreakPointStore,
    ()=>new BreakPointStore())!!
  constructor(BP:WidthBreakPointType<T>) {
    this.bp = BP
  }
  getValue(){
    switch (this.BPS.wBP){
      case WidthBreakpoint.WIDTH_XS:
        return this.bp?.xs
      case WidthBreakpoint.WIDTH_SM:
        return this.bp?.sm
      case WidthBreakpoint.WIDTH_MD:
        return this.bp?.md
      case WidthBreakpoint.WIDTH_LG:
        return this.bp?.lg
      case WidthBreakpoint.WIDTH_XL:
        return this.bp?.xl
      default:
        return this.bp?.sm
    }
  }
}