.class public Lorg/chromium/chrome/features/dev_ui/DevUiModuleProvider;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static installModule(Lorg/chromium/chrome/features/dev_ui/DevUiInstallListener;)V
    .locals 1

    .line 1
    sget-object v0, LvR0;->a:LUT0;

    invoke-virtual {v0, p0}, LUT0;->a(LZT0;)V

    return-void
.end method

.method public static isModuleInstalled()Z
    .locals 1

    .line 1
    sget-object v0, LvR0;->a:LUT0;

    invoke-virtual {v0}, LUT0;->c()Z

    move-result v0

    return v0
.end method

.method public static loadModule()V
    .locals 1

    .line 1
    sget-object v0, LvR0;->a:LUT0;

    invoke-virtual {v0}, LUT0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LuR0;

    return-void
.end method
