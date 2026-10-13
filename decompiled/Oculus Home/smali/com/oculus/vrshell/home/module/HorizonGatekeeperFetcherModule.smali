.class public Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;
.super Ljava/lang/Object;
.source "HorizonGatekeeperFetcherModule.java"


# static fields
.field public static final COLUMN:Ljava/lang/String; = "gk_enabled"

.field public static CONTENT_URI:Ljava/lang/String;

.field private static MODULE_NAME:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;->TAG:Ljava/lang/String;

    .line 28
    const-class v0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;->MODULE_NAME:Ljava/lang/String;

    .line 39
    const-string v0, "content://com.oculus.horizon.gatekeeper/fetch"

    sput-object v0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;->CONTENT_URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkGatekeeper(Ljava/lang/String;I)V
    .locals 3
    .param p1, "gkName"    # Ljava/lang/String;
    .param p2, "callbackId"    # I

    .prologue
    .line 43
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$1;-><init>(Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;Ljava/lang/String;)V

    new-instance v2, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$2;

    invoke-direct {v2, p0, p2}, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$2;-><init>(Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;I)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 90
    return-void
.end method

.method public static describe()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getLivestreamingEnabledForUser"

    const-string v3, "i"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getSystemUtilitiesEnabled"

    const-string v3, "i"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-object v0
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method public getLivestreamingEnabledForUser(I)V
    .locals 1
    .param p1, "callbackId"    # I

    .prologue
    .line 93
    const-string v0, "oculus_livestreaming"

    invoke-direct {p0, v0, p1}, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;->checkGatekeeper(Ljava/lang/String;I)V

    .line 94
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemUtilitiesEnabled(I)V
    .locals 1
    .param p1, "callbackId"    # I

    .prologue
    .line 97
    const-string v0, "oculus_vrshell_enable_system_utilities"

    invoke-direct {p0, v0, p1}, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;->checkGatekeeper(Ljava/lang/String;I)V

    .line 98
    return-void
.end method

.method public invokeCallback(ILjava/lang/String;)V
    .locals 2
    .param p1, "callbackID"    # I
    .param p2, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;->RVRCtxTag:J

    invoke-static {v0, v1, p1, p2}, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 118
    return-void
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method
