.class public Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;
.super Ljava/lang/Object;
.source "DelayedBackgroundDetector.java"

# interfaces
.implements Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector$BackgroundDetectorHolder;
    }
.end annotation


# static fields
.field public static final DELAY_AFTER_PAUSE_MS:J = 0x1388L


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llibraries/marauder/analytics/utils/lifecycle/BackgroundDetectorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsActivityBackgrounded:Z

.field private mIsAppBackgrounded:Z

.field private mIsDelayedCheckQueued:Z

.field private mThreadUtil:Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;


# direct methods
.method private constructor <init>(Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;)V
    .locals 3
    .param p1, "threadUtil"    # Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->mHandler:Landroid/os/Handler;

    .line 36
    iput-boolean v2, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->mIsActivityBackgrounded:Z

    .line 37
    iput-boolean v2, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->mIsAppBackgrounded:Z

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->listeners:Ljava/util/List;

    .line 44
    iput-object p1, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->mThreadUtil:Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;

    .line 47
    invoke-static {}, Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;->getInstance()Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Llibraries/marauder/analytics/utils/lifecycle/ActivityListenerManager;->addListener(Llibraries/marauder/analytics/utils/lifecycle/ActivityListener;)V

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector$1;)V
    .locals 0
    .param p1, "x0"    # Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;
    .param p2, "x1"    # Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;-><init>(Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;)V

    return-void
.end method

.method static synthetic access$100(Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;)Z
    .locals 1
    .param p0, "x0"    # Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;

    .prologue
    .line 26
    iget-boolean v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->mIsActivityBackgrounded:Z

    return v0
.end method

.method static synthetic access$200(Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;)Z
    .locals 1
    .param p0, "x0"    # Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;

    .prologue
    .line 26
    iget-boolean v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->mIsAppBackgrounded:Z

    return v0
.end method

.method static synthetic access$202(Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->mIsAppBackgrounded:Z

    return p1
.end method

.method static synthetic access$300(Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;)V
    .locals 0
    .param p0, "x0"    # Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;

    .prologue
    .line 26
    invoke-direct {p0}, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->notifyBackgrounded()V

    return-void
.end method

.method static synthetic access$402(Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->mIsDelayedCheckQueued:Z

    return p1
.end method

.method public static getInstance()Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector$BackgroundDetectorHolder;->INSTANCE:Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;

    return-object v0
.end method

.method private notifyBackgrounded()V
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibraries/marauder/analytics/utils/lifecycle/BackgroundDetectorListener;

    .line 83
    .local v0, "listener":Llibraries/marauder/analytics/utils/lifecycle/BackgroundDetectorListener;
    invoke-interface {v0}, Llibraries/marauder/analytics/utils/lifecycle/BackgroundDetectorListener;->onAppBackgrounded()V

    goto :goto_0

    .line 85
    .end local v0    # "listener":Llibraries/marauder/analytics/utils/lifecycle/BackgroundDetectorListener;
    :cond_0
    return-void
.end method

.method private notifyForegrounded()V
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibraries/marauder/analytics/utils/lifecycle/BackgroundDetectorListener;

    .line 89
    .local v0, "listener":Llibraries/marauder/analytics/utils/lifecycle/BackgroundDetectorListener;
    invoke-interface {v0}, Llibraries/marauder/analytics/utils/lifecycle/BackgroundDetectorListener;->onAppForegrounded()V

    goto :goto_0

    .line 91
    .end local v0    # "listener":Llibraries/marauder/analytics/utils/lifecycle/BackgroundDetectorListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Llibraries/marauder/analytics/utils/lifecycle/BackgroundDetectorListener;)V
    .locals 1
    .param p1, "listener"    # Llibraries/marauder/analytics/utils/lifecycle/BackgroundDetectorListener;

    .prologue
    .line 65
    iget-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    return-void
.end method

.method public isAppBackgrounded()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->mIsAppBackgrounded:Z

    return v0
.end method

.method public onActivityCreate(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 141
    return-void
.end method

.method public onActivityDestroy(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 145
    return-void
.end method

.method public onActivityPause(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 108
    iget-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->mThreadUtil:Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;

    invoke-virtual {v0}, Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;->assertOnUiThread()V

    .line 110
    iput-boolean v1, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->mIsActivityBackgrounded:Z

    .line 113
    iget-boolean v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->mIsDelayedCheckQueued:Z

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 117
    :cond_0
    iput-boolean v1, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->mIsDelayedCheckQueued:Z

    .line 119
    iget-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->mHandler:Landroid/os/Handler;

    new-instance v1, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector$1;

    invoke-direct {v1, p0}, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector$1;-><init>(Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onActivityResume(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->mThreadUtil:Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;

    invoke-virtual {v0}, Llibraries/marauder/analytics/utils/concurrent/ThreadUtil;->assertOnUiThread()V

    .line 98
    iput-boolean v1, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->mIsActivityBackgrounded:Z

    .line 99
    iget-boolean v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->mIsAppBackgrounded:Z

    if-eqz v0, :cond_0

    .line 100
    iput-boolean v1, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->mIsAppBackgrounded:Z

    .line 101
    invoke-direct {p0}, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->notifyForegrounded()V

    .line 103
    :cond_0
    return-void
.end method

.method public removeListener(Llibraries/marauder/analytics/utils/lifecycle/BackgroundDetectorListener;)V
    .locals 1
    .param p1, "listener"    # Llibraries/marauder/analytics/utils/lifecycle/BackgroundDetectorListener;

    .prologue
    .line 76
    iget-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    return-void
.end method
