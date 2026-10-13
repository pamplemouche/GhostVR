.class public Lcom/oculus/horizon/HorizonApplication;
.super Landroid/app/Application;
.source "HorizonApplication.java"

# interfaces
.implements Lcom/facebook/inject/FbInjectorProviderProvider;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDelegate:Lcom/oculus/base/app/ApplicationLike;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/oculus/horizon/HorizonApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/HorizonApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private createAppDelgateForProcess()Lcom/oculus/base/app/ApplicationLike;
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lcom/oculus/processhelper/ProcessHelper;->isInDefaultProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/oculus/horizon/app/SecondaryProcessApplicationLike;

    invoke-direct {v0}, Lcom/oculus/horizon/app/SecondaryProcessApplicationLike;-><init>()V

    .line 52
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/oculus/horizon/app/MainProcessApplicationLike;

    invoke-direct {v0}, Lcom/oculus/horizon/app/MainProcessApplicationLike;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 31
    sget-boolean v0, Lcom/oculus/common/build/BuildConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 34
    :cond_0
    return-void
.end method

.method protected declared-synchronized ensureDelegate()V
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/HorizonApplication;->mDelegate:Lcom/oculus/base/app/ApplicationLike;

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/oculus/horizon/HorizonApplication;->createAppDelgateForProcess()Lcom/oculus/base/app/ApplicationLike;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/HorizonApplication;->mDelegate:Lcom/oculus/base/app/ApplicationLike;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getDelegate()Lcom/oculus/base/app/ApplicationLike;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/oculus/horizon/HorizonApplication;->ensureDelegate()V

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/HorizonApplication;->mDelegate:Lcom/oculus/base/app/ApplicationLike;

    return-object v0
.end method

.method public getInjectorProvider()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/oculus/horizon/HorizonApplication;->getDelegate()Lcom/oculus/base/app/ApplicationLike;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 40
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    .line 42
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 43
    invoke-virtual {p0}, Lcom/oculus/horizon/HorizonApplication;->getDelegate()Lcom/oculus/base/app/ApplicationLike;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/oculus/base/app/ApplicationLike;->onCreate(Landroid/app/Application;)V

    .line 45
    sget-object v2, Lcom/oculus/horizon/HorizonApplication;->TAG:Ljava/lang/String;

    const-string v3, "onCreate() finished - elapsed [%d]"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    return-void
.end method
