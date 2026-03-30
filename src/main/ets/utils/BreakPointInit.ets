import window from "@ohos.window";
import { BusinessError } from "@kit.BasicServicesKit";
import { Logger } from "./Logger";
import { AppStorageV2 } from "@kit.ArkUI";
import { BreakPointStore } from "../viewmodel/BreakPointStore";

export class BreakPoint{
  static init(windowStage:window.WindowStage){
    try {
      const win = windowStage.getMainWindowSync()
      const store = AppStorageV2.connect(BreakPointStore,()=> new BreakPointStore())!
      win.on("windowSizeChange",()=>{
        store.wBP = win.getUIContext().getWindowWidthBreakpoint()
      })
    }
    catch (e) {
      const err = e as BusinessError
      Logger.error(`err code:${err.code} err message:${err.message}`)
    }
  }
}