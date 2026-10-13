.class public Lcom/oculus/ocms/app/OCMSApplication;
.super Landroid/app/Application;
.source "OCMSApplication.java"

# interfaces
.implements Lcom/facebook/inject/FbInjectorProvider;


# instance fields
.field private mApplicationDelegate:Lcom/oculus/base/app/ApplicationLike;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mInjector:Lcom/facebook/inject/FbInjector;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/ocms/app/OCMSApplication;)V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/ocms/app/OCMSApplication;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/ocms/app/OCMSApplication;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/ocms/app/OCMSApplication;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/ocms/app/OCMSApplication;)V
    .locals 1

    .prologue
    .line 19
    invoke-static {p0}, Lcom/oculus/app/standalone/StandaloneApplicationLikeModule;->$ul_$xXXcom_oculus_base_app_ApplicationLike$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/base/app/ApplicationLike;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/ocms/app/OCMSApplication;->mApplicationDelegate:Lcom/oculus/base/app/ApplicationLike;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getInjector()Lcom/facebook/inject/FbInjector;
    .locals 2

    .prologue
    .line 48
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/ocms/app/OCMSApplication;->mInjector:Lcom/facebook/inject/FbInjector;

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 51
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/oculus/ocms/app/OCMSApplication;->mInjector:Lcom/facebook/inject/FbInjector;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 29
    monitor-enter p0

    .line 30
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-static {}, Lcom/facebook/common/process/ProcessName;->current()Lcom/facebook/common/process/ProcessName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/common/process/ProcessName;->getPrivateProcessName()Lcom/facebook/common/process/PrivateProcessName;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/inject/rootmodule/RootModuleProvider;->get(Lcom/facebook/common/process/PrivateProcessName;)Lcom/facebook/inject/PrivateModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-static {p0, v0}, Lcom/facebook/inject/FbInjector;->createForApp(Landroid/content/Context;Ljava/util/List;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/ocms/app/OCMSApplication;->mInjector:Lcom/facebook/inject/FbInjector;

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 34
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    .line 19
    invoke-static {p0, p0}, Lcom/oculus/ocms/app/OCMSApplication;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/ocms/app/OCMSApplication;)V

    .line 40
    iget-object v0, p0, Lcom/oculus/ocms/app/OCMSApplication;->mApplicationDelegate:Lcom/oculus/base/app/ApplicationLike;

    invoke-interface {v0, p0}, Lcom/oculus/base/app/ApplicationLike;->onCreate(Landroid/app/Application;)V

    .line 41
    return-void

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
