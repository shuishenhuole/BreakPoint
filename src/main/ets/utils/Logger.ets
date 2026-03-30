import hilog from '@ohos.hilog'

class logger {
  private domain: number = 0x0001
  private tag: string = "shuishenhuole breakpoint"
  private readonly format: string = `%{public}s`
  debug(...args: string[]) {
    hilog.debug(this.domain, this.tag, this.format, args)
  }

  info(...args: string[]) {
    hilog.info(this.domain, this.tag, this.format, args)
  }

  warn(...args: string[]) {
    hilog.warn(this.domain, this.tag, this.format, args)
  }

  error(...args: string[]) {
    hilog.error(this.domain, this.tag, this.format, args)
  }

  fatal(...args: string[]) {
    hilog.fatal(this.domain, this.tag, this.format, args)
  }
}

export const Logger = new logger()