.class public abstract LDq0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LBq0; = null

.field public static b:J = 0x7fffffffffffffffL

.field public static c:Z


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-static {}, LDq0;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, LDq0;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    sput-boolean v0, LDq0;->c:Z

    .line 4
    sget-object v0, LCq0;->a:Lorg/chromium/base/Callback;

    invoke-static {p0, v0}, Lwq0;->a(Landroid/content/Context;Lorg/chromium/base/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a()Z
    .locals 6

    .line 5
    sget-object v0, LDq0;->a:LBq0;

    if-eqz v0, :cond_0

    sget-wide v1, LDq0;->b:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {v0}, LBq0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, LDq0;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
