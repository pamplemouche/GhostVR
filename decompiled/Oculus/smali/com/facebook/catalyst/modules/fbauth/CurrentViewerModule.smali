.class public Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;
.super Lcom/facebook/fbreact/specs/NativeCurrentViewerSpec;
.source "CurrentViewerModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "CurrentViewer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule$OnLogoutListener;
    }
.end annotation


# instance fields
.field private final mContinueLogoutSemaphore:Ljava/util/concurrent/Semaphore;

.field private volatile mIsLoggingOut:Z

.field private final mNotifyLogoutCompleteRunnable:Ljava/lang/Runnable;

.field private final mNotifyLogoutStartRunnable:Ljava/lang/Runnable;

.field private final mOnLogoutListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule$OnLogoutListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeCurrentViewerSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 50
    iput-boolean v1, p0, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->mIsLoggingOut:Z

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->mOnLogoutListeners:Ljava/util/Collection;

    .line 54
    new-instance v0, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule$1;

    invoke-direct {v0, p0}, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule$1;-><init>(Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;)V

    iput-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->mNotifyLogoutStartRunnable:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule$2;

    invoke-direct {v0, p0}, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule$2;-><init>(Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;)V

    iput-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->mNotifyLogoutCompleteRunnable:Ljava/lang/Runnable;

    .line 75
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->mContinueLogoutSemaphore:Ljava/util/concurrent/Semaphore;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->mOnLogoutListeners:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->mContinueLogoutSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "CurrentViewer"

    return-object v0
.end method

.method protected getTypedExportedConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 161
    const-string/jumbo v0, "userFBID"

    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/catalyst/modules/fbauth/FBLoginAuthHelper;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v2, "hasUser"

    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/catalyst/modules/fbauth/FBLoginAuthHelper;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "isEmployee"

    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/catalyst/modules/fbauth/FBUserHelper;->getIsEmployee(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-object v1

    .line 162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertNotOnUiThread()V

    .line 100
    iget-boolean v0, p0, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->mIsLoggingOut:Z

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/catalyst/modules/fbauth/FBLoginAuthHelper;->getAccessToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->mIsLoggingOut:Z

    .line 113
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->mNotifyLogoutStartRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->mContinueLogoutSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/modules/common/ModuleDataCleaner;->cleanDataFromModules(Lcom/facebook/react/bridge/CatalystInstance;)V

    .line 124
    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/catalyst/modules/fbauth/FBLoginAuthHelper;->clearAuthInfo(Landroid/content/Context;)V

    .line 125
    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/catalyst/modules/fbauth/FBUserHelper;->setIsEmployee(Landroid/content/Context;Z)V

    .line 128
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->mNotifyLogoutCompleteRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted while waiting on logout listeners to be notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/modules/common/ModuleDataCleaner;->cleanDataFromModules(Lcom/facebook/react/bridge/CatalystInstance;)V

    .line 124
    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/catalyst/modules/fbauth/FBLoginAuthHelper;->clearAuthInfo(Landroid/content/Context;)V

    .line 125
    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/facebook/catalyst/modules/fbauth/FBUserHelper;->setIsEmployee(Landroid/content/Context;Z)V

    throw v0
.end method

.method public loginWithUserID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/facebook/fbreact/specs/NativeCurrentViewerSpec;->onCatalystInstanceDestroy()V

    .line 89
    iget-object v0, p0, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->mOnLogoutListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 90
    return-void
.end method

.method public setIsEmployee(Z)V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/facebook/catalyst/modules/fbauth/CurrentViewerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/catalyst/modules/fbauth/FBUserHelper;->setIsEmployee(Landroid/content/Context;Z)V

    .line 134
    return-void
.end method
