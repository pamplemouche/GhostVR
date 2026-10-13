.class public Lcom/facebook/rti/common/concurrent/RtiThread;
.super Ljava/lang/Thread;
.source "RtiThread.java"


# instance fields
.field private final mThreadPriority:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 31
    iput p3, p0, Lcom/facebook/rti/common/concurrent/RtiThread;->mThreadPriority:I

    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/facebook/rti/common/concurrent/RtiThread;->mThreadPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 37
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 38
    return-void
.end method
