import { BreakPointStore } from "../viewmodel/BreakPointStore"
import { AppStorageV2 } from "@kit.ArkUI"

interface WidthBreakPointType<T>{
  xs?:T
  sm?:T
  md?:T
  lg?:T
  xl?:T
  default?:T
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
        return this.bp?.xs??this.bp?.default
      case WidthBreakpoint.WIDTH_SM:
        return this.bp?.sm??this.bp?.default
      case WidthBreakpoint.WIDTH_MD:
        return this.bp?.md??this.bp?.default
      case WidthBreakpoint.WIDTH_LG:
        return this.bp?.lg??this.bp?.default
      case WidthBreakpoint.WIDTH_XL:
        return this.bp?.xl??this.bp?.default
    }
  }
}