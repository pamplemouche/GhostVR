.class public final synthetic LcZ;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field public final a:LeZ;


# direct methods
.method public constructor <init>(LeZ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LcZ;->a:LeZ;

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 7

    iget-object v0, p0, LcZ;->a:LeZ;

    .line 1
    iget-object v1, v0, LeZ;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2
    iget-boolean v1, v0, LeZ;->a:Z

    if-nez v1, :cond_0

    .line 3
    iput-boolean v2, v0, LeZ;->a:Z

    .line 4
    iget-wide v1, v0, LeZ;->b:J

    const-string v3, "UMA.Debug.EnableCrashUpload.DeferredStartUpDuration"

    invoke-static {v3, v1, v2}, LfV;->a(Ljava/lang/String;J)V

    .line 5
    iget-wide v0, v0, LeZ;->c:J

    const-string v2, "UMA.Debug.EnableCrashUpload.DeferredStartUpMaxTaskDuration"

    invoke-static {v2, v0, v1}, LfV;->a(Ljava/lang/String;J)V

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/UmaUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 8
    sget-wide v2, Lorg/chromium/chrome/browser/metrics/UmaUtils;->b:J

    sub-long/2addr v0, v2

    const-string v2, "UMA.Debug.EnableCrashUpload.DeferredStartUpCompleteTime"

    .line 9
    invoke-static {v2, v0, v1}, LfV;->a(Ljava/lang/String;J)V

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 11
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 13
    iget-wide v3, v0, LeZ;->c:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v0, LeZ;->c:J

    .line 14
    iget-wide v3, v0, LeZ;->b:J

    add-long/2addr v3, v5

    iput-wide v3, v0, LeZ;->b:J

    :goto_0
    return v2
.end method
