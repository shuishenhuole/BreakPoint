@ObservedV2
export class BreakPointStore{
  @Trace wBP:WidthBreakpoint = WidthBreakpoint.WIDTH_XS
  @Trace hBP:HeightBreakpoint = HeightBreakpoint.HEIGHT_SM
  constructor(wBP?:WidthBreakpoint,hBP?:HeightBreakpoint) {
    this.wBP = wBP?? WidthBreakpoint.WIDTH_XS
    this.hBP = hBP?? HeightBreakpoint.HEIGHT_SM
  }
}
