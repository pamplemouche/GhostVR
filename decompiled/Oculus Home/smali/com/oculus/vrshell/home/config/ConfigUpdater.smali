.class public Lcom/oculus/vrshell/home/config/ConfigUpdater;
.super Ljava/lang/Object;
.source "ConfigUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;,
        Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/oculus/vrshell/home/config/ConfigUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/config/ConfigUpdater;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/oculus/vrshell/home/config/ConfigUpdater;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createGKsFetch(Landroid/content/Context;)Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 282
    new-instance v0, Lcom/oculus/vrshell/home/config/ConfigUpdater$4;

    const-string v1, "fetch_gks"

    invoke-direct {v0, p0, v1, p1}, Lcom/oculus/vrshell/home/config/ConfigUpdater$4;-><init>(Lcom/oculus/vrshell/home/config/ConfigUpdater;Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method private createQEsFetch(Landroid/content/Context;)Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    new-instance v0, Lcom/oculus/vrshell/home/config/ConfigUpdater$5;

    const-string v1, "fetch_qes"

    invoke-direct {v0, p0, v1, p1}, Lcom/oculus/vrshell/home/config/ConfigUpdater$5;-><init>(Lcom/oculus/vrshell/home/config/ConfigUpdater;Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method private createQPsFetch(Landroid/content/Context;)Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    new-instance v0, Lcom/oculus/vrshell/home/config/ConfigUpdater$6;

    const-string v1, "fetch_qp"

    invoke-direct {v0, p0, v1, p1}, Lcom/oculus/vrshell/home/config/ConfigUpdater$6;-><init>(Lcom/oculus/vrshell/home/config/ConfigUpdater;Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method private getConfigContext(Landroid/content/Context;)Lbolts/Task;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Lcom/oculus/vrshell/home/config/ConfigUpdater$3;

    invoke-direct {v0, p0, p1}, Lcom/oculus/vrshell/home/config/ConfigUpdater$3;-><init>(Lcom/oculus/vrshell/home/config/ConfigUpdater;Landroid/content/Context;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearAsync(Landroid/content/Context;)Lbolts/Task;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    sget-object v0, Lcom/oculus/vrshell/home/config/ConfigUpdater;->TAG:Ljava/lang/String;

    const-string v1, "clearAsync(): Starting"

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/oculus/vrshell/home/config/ConfigUpdater$1;

    invoke-direct {v0, p0, p1}, Lcom/oculus/vrshell/home/config/ConfigUpdater$1;-><init>(Lcom/oculus/vrshell/home/config/ConfigUpdater;Landroid/content/Context;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public fetchAsync(Landroid/content/Context;)Lbolts/Task;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    sget-object v0, Lcom/oculus/vrshell/home/config/ConfigUpdater;->TAG:Ljava/lang/String;

    const-string v1, "fetchAsync(): Starting"

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "oculus_config"

    const-string v1, "status"

    const-string v2, "config_update_started"

    invoke-static {v0, v1, v2}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "connectivity"

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 136
    .local v10, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    .line 137
    .local v13, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    const-string v0, "oculus_config"

    const-string v1, "status"

    const-string v2, "config_update_no_internet"

    const-string v3, "error"

    const-string v4, "no_internet"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "Not connected to internet"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 149
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/home/config/ConfigUpdater;->getConfigContext(Landroid/content/Context;)Lbolts/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 162
    .local v7, "configContextTask":Lbolts/Task;, "Lbolts/Task<Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v9, "configTasks":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v12, "fetchTasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/home/config/ConfigUpdater;->createGKsFetch(Landroid/content/Context;)Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/home/config/ConfigUpdater;->createQEsFetch(Landroid/content/Context;)Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/home/config/ConfigUpdater;->createQPsFetch(Landroid/content/Context;)Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;

    .line 170
    .local v8, "configTask":Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;
    invoke-virtual {v7, v8}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    .line 171
    invoke-virtual {v8}, Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;->getTask()Lbolts/Task;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    .end local v7    # "configContextTask":Lbolts/Task;, "Lbolts/Task<Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;>;"
    .end local v8    # "configTask":Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;
    .end local v9    # "configTasks":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;>;"
    .end local v12    # "fetchTasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    :catch_0
    move-exception v11

    .line 151
    .local v11, "e":Ljava/lang/Exception;
    const-string v0, "oculus_config"

    const-string v1, "status"

    const-string v2, "config_update_context_failed"

    const-string v3, "error"

    const-string v4, "exception"

    const-string v5, "error_details"

    .line 158
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 151
    invoke-static/range {v0 .. v6}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Getter for Config Context failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 174
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v7    # "configContextTask":Lbolts/Task;, "Lbolts/Task<Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigContext;>;"
    .restart local v9    # "configTasks":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/vrshell/home/config/ConfigUpdater$ConfigTask;>;"
    .restart local v12    # "fetchTasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    :cond_2
    invoke-static {v12}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/oculus/vrshell/home/config/ConfigUpdater$2;

    invoke-direct {v1, p0}, Lcom/oculus/vrshell/home/config/ConfigUpdater$2;-><init>(Lcom/oculus/vrshell/home/config/ConfigUpdater;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method protected final native nativeInitializeOVRPlatform(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
.end method
