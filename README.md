# BreakPoint

```json
{
  "name": "entry",
  "version": "1.0.0",
  "description": "Please describe the basic information.",
  "main": "",
  "author": "",
  "license": "",
  "dependencies": {
    "@shuishenhuole/bulletchat": "file:../BulletChat",
    "@shuishenhuole/breakpoint": "file:../BreakPoint"
  }
}
```

```ts
  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    hilog.info(DOMAIN, 'testTag', '%{public}s', 'Ability onWindowStageCreate');
    BreakPoint.init(windowStage)
    windowStage.loadContent('pages/Index', (err) => {
      ZRouter.animateMgr().initSharedAnim(windowStage)
      if (err.code) {
        hilog.error(DOMAIN, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err));
        return;
      }
      hilog.info(DOMAIN, 'testTag', 'Succeeded in loading the content.');
    });
  }
```