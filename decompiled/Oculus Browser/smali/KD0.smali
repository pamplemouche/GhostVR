.class public abstract LKD0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/content/Context;I)V
    .locals 0

    .line 1
    new-instance p0, LGD0;

    invoke-direct {p0, p1}, LGD0;-><init>(I)V

    invoke-static {p0}, LKD0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 4

    .line 2
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LJD0;

    invoke-direct {v1, p0}, LJD0;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x0

    .line 3
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method
