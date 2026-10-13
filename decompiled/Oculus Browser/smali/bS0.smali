.class public abstract LbS0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(IZ)V
    .locals 2

    .line 1
    invoke-static {}, LsS0;->b()LsS0;

    move-result-object v0

    .line 2
    invoke-static {p0}, LsS0;->a(I)I

    move-result p0

    const-string v1, "Android.NativeBackgroundTask.TaskStarted"

    .line 3
    invoke-virtual {v0, v1, p0}, LsS0;->a(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const-string p1, "Android.NativeBackgroundTask.TaskStarted.ReducedMode"

    .line 4
    invoke-virtual {v0, p1, p0}, LsS0;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p1, "Android.NativeBackgroundTask.TaskStarted.FullBrowser"

    .line 5
    invoke-virtual {v0, p1, p0}, LsS0;->a(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
