.class Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;
.super Ljava/lang/Object;
.source "Timing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/core/Timing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleCallbackRunnable"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field private final mFrameStartTime:J

.field final synthetic this$0:Lcom/facebook/react/modules/core/Timing;


# direct methods
.method public constructor <init>(Lcom/facebook/react/modules/core/Timing;J)V
    .locals 2

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->this$0:Lcom/facebook/react/modules/core/Timing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->mCancelled:Z

    .line 121
    iput-wide p2, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->mFrameStartTime:J

    .line 122
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->mCancelled:Z

    .line 156
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-wide v0, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->mFrameStartTime:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 131
    invoke-static {}, Lcom/facebook/react/common/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 132
    sub-long v0, v2, v0

    .line 133
    invoke-static {}, Lcom/facebook/react/common/SystemClock;->currentTimeMillis()J

    move-result-wide v2

    .line 134
    sub-long/2addr v2, v0

    .line 136
    const v4, 0x41855555

    long-to-float v0, v0

    sub-float v0, v4, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->this$0:Lcom/facebook/react/modules/core/Timing;

    invoke-static {v0}, Lcom/facebook/react/modules/core/Timing;->access$1300(Lcom/facebook/react/modules/core/Timing;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->this$0:Lcom/facebook/react/modules/core/Timing;

    invoke-static {v0}, Lcom/facebook/react/modules/core/Timing;->access$1400(Lcom/facebook/react/modules/core/Timing;)Z

    move-result v0

    .line 143
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->this$0:Lcom/facebook/react/modules/core/Timing;

    invoke-static {v0}, Lcom/facebook/react/modules/core/Timing;->access$1500(Lcom/facebook/react/modules/core/Timing;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/JSTimers;

    .line 147
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/JSTimers;

    long-to-double v2, v2

    .line 148
    invoke-interface {v0, v2, v3}, Lcom/facebook/react/modules/core/JSTimers;->callIdleCallbacks(D)V

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;->this$0:Lcom/facebook/react/modules/core/Timing;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/react/modules/core/Timing;->access$1102(Lcom/facebook/react/modules/core/Timing;Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;)Lcom/facebook/react/modules/core/Timing$IdleCallbackRunnable;

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
