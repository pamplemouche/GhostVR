.class Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;
.super Landroid/os/Handler;
.source "FbLocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/android/FbLocalBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalBroadcastHandler"
.end annotation


# instance fields
.field public final looperId:J

.field private final mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/facebook/common/android/FbLocalBroadcastManager;


# direct methods
.method public constructor <init>(Lcom/facebook/common/android/FbLocalBroadcastManager;Landroid/os/Looper;J)V
    .locals 3
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "looperId"    # J

    .prologue
    .line 81
    iput-object p1, p0, Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;->this$0:Lcom/facebook/common/android/FbLocalBroadcastManager;

    .line 82
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 83
    iput-wide p3, p0, Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;->looperId:J

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 85
    return-void
.end method


# virtual methods
.method public decrementRefCount()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 96
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 98
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;->this$0:Lcom/facebook/common/android/FbLocalBroadcastManager;

    iget-wide v2, p0, Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;->looperId:J

    invoke-static {v0, v2, v3}, Lcom/facebook/common/android/FbLocalBroadcastManager;->access$000(Lcom/facebook/common/android/FbLocalBroadcastManager;J)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public incrementRefCount()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 102
    return-void
.end method
