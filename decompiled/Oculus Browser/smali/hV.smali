.class public abstract LhV;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, LJ/N;->MlFl3ytt(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, LgV;

    invoke-direct {v0, p0}, LgV;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->b(Ljava/lang/Runnable;)V

    return-void
.end method
