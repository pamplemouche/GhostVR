.class public Lcom/oculus/horizon/app/MainProcessApplicationLike;
.super Ljava/lang/Object;
.source "MainProcessApplicationLike.java"

# interfaces
.implements Lcom/facebook/inject/FbInjectorProvider;
.implements Lcom/oculus/base/app/ApplicationLike;


# instance fields
.field private mAppInitLock:Lcom/oculus/common/init/AppInitLock;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mApplication:Landroid/app/Application;

.field private mApplicationForegroundTracker:Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mApplicationLike:Lcom/oculus/base/app/ApplicationLike;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mHorizonForegroundListener:Lcom/oculus/horizon/logging/HorizonForegroundListener;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mInjector:Lcom/facebook/inject/FbInjector;

.field private mSessionManager:Lcom/oculus/logging/analytics2/SessionManagerImpl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/app/MainProcessApplicationLike;)V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/app/MainProcessApplicationLike;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/app/MainProcessApplicationLike;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/app/MainProcessApplicationLike;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/app/MainProcessApplicationLike;)V
    .locals 1

    .prologue
    .line 23
    invoke-static {p0}, Lcom/oculus/app/gearvr/GearVRApplicationLikeModule;->$ul_$xXXcom_oculus_base_app_ApplicationLike$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/base/app/ApplicationLike;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mApplicationLike:Lcom/oculus/base/app/ApplicationLike;

    invoke-static {p0}, Lcom/oculus/common/init/AppInitModule;->$ul_$xXXcom_oculus_common_init_AppInitLock$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/common/init/AppInitLock;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mAppInitLock:Lcom/oculus/common/init/AppInitLock;

    invoke-static {p0}, Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;->$ul_$xXXcom_oculus_horizon_foreground_ApplicationForegroundTracker$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mApplicationForegroundTracker:Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;

    invoke-static {p0}, Lcom/oculus/horizon/logging/HorizonForegroundListener;->$ul_$xXXcom_oculus_horizon_logging_HorizonForegroundListener$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/HorizonForegroundListener;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mHorizonForegroundListener:Lcom/oculus/horizon/logging/HorizonForegroundListener;

    invoke-static {p0}, Lcom/oculus/logging/analytics2/SessionManagerImpl;->$ul_$xXXcom_oculus_logging_analytics2_SessionManagerImpl$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/logging/analytics2/SessionManagerImpl;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mSessionManager:Lcom/oculus/logging/analytics2/SessionManagerImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setupForegroundTracking()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mApplicationForegroundTracker:Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;

    iget-object v1, p0, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mHorizonForegroundListener:Lcom/oculus/horizon/logging/HorizonForegroundListener;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;->addListener(Lcom/oculus/horizon/foreground/ApplicationForegroundListener;)V

    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mApplicationForegroundTracker:Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;

    iget-object v1, p0, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mSessionManager:Lcom/oculus/logging/analytics2/SessionManagerImpl;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;->addListener(Lcom/oculus/horizon/foreground/ApplicationForegroundListener;)V

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mApplicationForegroundTracker:Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 86
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getInjector()Lcom/facebook/inject/FbInjector;
    .locals 2

    .prologue
    .line 73
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mInjector:Lcom/facebook/inject/FbInjector;

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 76
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mInjector:Lcom/facebook/inject/FbInjector;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mApplication:Landroid/app/Application;

    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mApplication:Landroid/app/Application;

    .line 52
    invoke-static {}, Lcom/facebook/common/process/ProcessName;->current()Lcom/facebook/common/process/ProcessName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/common/process/ProcessName;->getPrivateProcessName()Lcom/facebook/common/process/PrivateProcessName;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/inject/rootmodule/RootModuleProvider;->get(Lcom/facebook/common/process/PrivateProcessName;)Lcom/facebook/inject/PrivateModule;

    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lcom/facebook/inject/FbInjector;->createForApp(Landroid/content/Context;Ljava/util/List;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mInjector:Lcom/facebook/inject/FbInjector;

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {p0}, Lcom/oculus/horizon/app/MainProcessApplicationLike;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/app/MainProcessApplicationLike;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/app/MainProcessApplicationLike;)V

    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mApplicationLike:Lcom/oculus/base/app/ApplicationLike;

    iget-object v1, p0, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mApplication:Landroid/app/Application;

    invoke-interface {v0, v1}, Lcom/oculus/base/app/ApplicationLike;->onCreate(Landroid/app/Application;)V

    .line 63
    invoke-direct {p0}, Lcom/oculus/horizon/app/MainProcessApplicationLike;->setupForegroundTracking()V

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/app/MainProcessApplicationLike;->mAppInitLock:Lcom/oculus/common/init/AppInitLock;

    invoke-virtual {v0}, Lcom/oculus/common/init/AppInitLock;->notifyAppInitializationComplete()V

    .line 66
    return-void

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
