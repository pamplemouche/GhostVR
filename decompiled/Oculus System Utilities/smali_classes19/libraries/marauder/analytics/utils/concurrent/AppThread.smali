.class public Llibraries/marauder/analytics/utils/concurrent/AppThread;
.super Ljava/lang/Thread;
.source "AppThread.java"


# instance fields
.field private final mThreadPriority:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "threadPriority"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 35
    iput p3, p0, Llibraries/marauder/analytics/utils/concurrent/AppThread;->mThreadPriority:I

    .line 36
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Llibraries/marauder/analytics/utils/concurrent/AppThread;->mThreadPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 41
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 42
    return-void
.end method
