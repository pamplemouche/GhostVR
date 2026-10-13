.class public Lcom/oculus/home/HomeApplication;
.super Landroid/app/Application;
.source "HomeApplication.java"

# interfaces
.implements Lcom/facebook/inject/FbInjectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/home/HomeApplication$AppModule;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDelegate:Lcom/oculus/base/app/ApplicationLike;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mInjector:Lcom/facebook/inject/FbInjector;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/home/HomeApplication;)V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/home/HomeApplication;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/home/HomeApplication;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/home/HomeApplication;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/home/HomeApplication;)V
    .locals 1

    .prologue
    .line 19
    invoke-static {p0}, Lcom/oculus/app/standalone/StandaloneApplicationLikeModule;->$ul_$xXXcom_oculus_base_app_ApplicationLike$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/base/app/ApplicationLike;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/home/HomeApplication;->mDelegate:Lcom/oculus/base/app/ApplicationLike;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/oculus/home/HomeApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/home/HomeApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private isHorizonInstalled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/home/HomeApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/oculus/common/build/BuildConstants;->PACKAGE_NAME_HORIZON:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    .line 74
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized getInjector()Lcom/facebook/inject/FbInjector;
    .locals 2

    .prologue
    .line 61
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/home/HomeApplication;->mInjector:Lcom/facebook/inject/FbInjector;

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 64
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/oculus/home/HomeApplication;->mInjector:Lcom/facebook/inject/FbInjector;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    invoke-static {p0}, Lcom/facebook/common/dextricks/DexLibLoader;->loadAll(Landroid/content/Context;)V

    .line 39
    monitor-enter p0

    .line 40
    :try_start_1
    new-instance v0, Lcom/oculus/home/HomeApplication$AppModule;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oculus/home/HomeApplication$AppModule;-><init>(Lcom/oculus/home/HomeApplication$1;)V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/inject/FbInjector;->createForApp(Landroid/content/Context;Ljava/util/List;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/home/HomeApplication;->mInjector:Lcom/facebook/inject/FbInjector;

    .line 41
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    invoke-direct {p0}, Lcom/oculus/home/HomeApplication;->isHorizonInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lcom/oculus/home/HomeApplication;->TAG:Ljava/lang/String;

    const-string v1, "Horizon is not installed, aborting application."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 54
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 41
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 19
    :cond_0
    invoke-static {p0, p0}, Lcom/oculus/home/HomeApplication;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/home/HomeApplication;)V

    .line 52
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 53
    iget-object v0, p0, Lcom/oculus/home/HomeApplication;->mDelegate:Lcom/oculus/base/app/ApplicationLike;

    invoke-interface {v0, p0}, Lcom/oculus/base/app/ApplicationLike;->onCreate(Landroid/app/Application;)V

    goto :goto_0
.end method
