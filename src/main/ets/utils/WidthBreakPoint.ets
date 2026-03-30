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
        if(this.bp?.xs){
          return this.bp.xs
        }
        break
      case WidthBreakpoint.WIDTH_SM:
        if(this.bp?.sm){
          return this.bp.sm
        }
        break
      case WidthBreakpoint.WIDTH_MD:
        if(this.bp?.md){
          return this.bp.md
        }
        break
      case WidthBreakpoint.WIDTH_LG:
        if(this.bp?.lg){
          return this.bp.lg
        }
        break
      case WidthBreakpoint.WIDTH_XL:
        if(this.bp?.xl){
          return this.bp.xl
        }
      default:
        return this.bp?.default
    }
    return this.bp?.default
  }
}