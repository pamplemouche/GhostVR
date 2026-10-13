.class Lcom/facebook/systrace/TraceListenerNotifier$1;
.super Ljava/lang/Object;
.source "TraceListenerNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/systrace/TraceListenerNotifier;->asyncNotifyListenersForTraceStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/systrace/TraceListenerNotifier;

.field final synthetic val$traceFileLastModifiedTime:J


# direct methods
.method constructor <init>(Lcom/facebook/systrace/TraceListenerNotifier;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/systrace/TraceListenerNotifier;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/facebook/systrace/TraceListenerNotifier$1;->this$0:Lcom/facebook/systrace/TraceListenerNotifier;

    iput-wide p2, p0, Lcom/facebook/systrace/TraceListenerNotifier$1;->val$traceFileLastModifiedTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private waitForTraceFileToBeCleared()V
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    .line 66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 69
    :cond_0
    invoke-static {}, Lcom/facebook/systrace/TraceListenerNotifier;->access$100()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/systrace/TraceListenerNotifier$1;->val$traceFileLastModifiedTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_1
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/systrace/TraceListenerNotifier$1;->this$0:Lcom/facebook/systrace/TraceListenerNotifier;

    invoke-static {v0}, Lcom/facebook/systrace/TraceListenerNotifier;->access$000(Lcom/facebook/systrace/TraceListenerNotifier;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 59
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/systrace/TraceListenerNotifier$1;->waitForTraceFileToBeCleared()V

    .line 60
    iget-object v0, p0, Lcom/facebook/systrace/TraceListenerNotifier$1;->this$0:Lcom/facebook/systrace/TraceListenerNotifier;

    invoke-virtual {v0}, Lcom/facebook/systrace/TraceListenerNotifier;->notifyListenersForTraceStart()V

    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
