.class public abstract LKc0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    new-instance v0, LIc0;

    invoke-direct {v0, p0}, LIc0;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object p0

    .line 4
    new-instance v1, LF20;

    invoke-direct {v1, v0, p0}, LF20;-><init>(Lorg/chromium/base/Callback;Lorg/chromium/components/signin/AccountManagerFacade;)V

    invoke-virtual {p0, v1}, Lorg/chromium/components/signin/AccountManagerFacade;->b(Lorg/chromium/base/Callback;)V

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    sget-object p0, LZ01;->a:LFW;

    new-instance v1, LhY;

    invoke-direct {v1, v0}, LhY;-><init>(LAD0;)V

    const-wide/16 v2, 0x0

    .line 7
    invoke-static {p0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 8
    throw p0
.end method
