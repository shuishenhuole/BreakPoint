import { BreakPointStore } from "../viewmodel/BreakPointStore"
import { AppStorageV2 } from "@kit.ArkUI"

interface WidthBreakPointType<T> {
  xs?: T
  sm?: T
  md?: T
  lg?: T
  xl?: T
  default?: T
}

export class WidthBreakPoint<T> {
  bp: WidthBreakPointType<T> | null = null
  BPS: BreakPointStore = AppStorageV2.connect(BreakPointStore,
    () => new BreakPointStore())!!

  constructor(BP: WidthBreakPointType<T>) {
    this.bp = BP
  }

  getValue() {
    let value: T | undefined = undefined
    if(!this.bp){
      throw new Error("bp is null")
    }else{
      switch (this.BPS.wBP) {
        case WidthBreakpoint.WIDTH_XS:
          value = this.bp?.xs ?? this.bp.default
          break
        case WidthBreakpoint.WIDTH_SM:
          value = this.bp?.sm ?? this.bp.default
          break
        case WidthBreakpoint.WIDTH_MD:
          value = this.bp?.md ?? this.bp.default
          break
        case WidthBreakpoint.WIDTH_LG:
          value = this.bp?.lg ?? this.bp.default
          break
        case WidthBreakpoint.WIDTH_XL:
          value = this.bp?.xl ?? this.bp.default
          break
      }
    }
    if(value === undefined){
      throw new Error("You need to provide a default value.")
    }
    return value
  }
}