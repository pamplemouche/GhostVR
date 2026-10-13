.class public Lorg/chromium/chrome/browser/init/NativeStartupBridge;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static loadFullBrowser()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, LD01;->a(I)LF01;

    move-result-object v0

    .line 2
    invoke-interface {v0}, LF01;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lgh0;

    invoke-direct {v0}, Lgh0;-><init>()V

    .line 4
    sget-object v1, LZ01;->a:LFW;

    new-instance v2, Lhh0;

    invoke-direct {v2, v0}, Lhh0;-><init>(LCg0;)V

    const-wide/16 v3, 0x0

    .line 5
    invoke-static {v1, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method
