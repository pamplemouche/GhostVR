.class public Lcom/oculus/modules/ConnectivityStateModuleImpl;
.super Lcom/oculus/modules/codegen/ConnectivityStateModule;
.source "ConnectivityStateModuleImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static connectivityManager:Landroid/net/ConnectivityManager;


# instance fields
.field private connected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/oculus/modules/codegen/ConnectivityStateModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/ConnectivityStateModuleImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/oculus/modules/codegen/ConnectivityStateModule;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/modules/ConnectivityStateModuleImpl;->connected:Z

    .line 20
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/oculus/modules/ConnectivityStateModuleImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 21
    return-void
.end method

.method private emitEvent()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/oculus/modules/codegen/ConnectivityStateModule$ConnectivityUpdate;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/ConnectivityStateModule$ConnectivityUpdate;-><init>()V

    .line 52
    .local v0, "update":Lcom/oculus/modules/codegen/ConnectivityStateModule$ConnectivityUpdate;
    iget-boolean v1, p0, Lcom/oculus/modules/ConnectivityStateModuleImpl;->connected:Z

    iput-boolean v1, v0, Lcom/oculus/modules/codegen/ConnectivityStateModule$ConnectivityUpdate;->connected:Z

    .line 53
    invoke-virtual {p0, v0}, Lcom/oculus/modules/ConnectivityStateModuleImpl;->emitOnConnectivityUpdated(Lcom/oculus/modules/codegen/ConnectivityStateModule$ConnectivityUpdate;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 26
    .local v0, "filter":Landroid/content/IntentFilter;
    return-object v0
.end method

.method protected onNoStickyIntent()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oculus/modules/ConnectivityStateModuleImpl;->emitEvent()V

    .line 32
    return-void
.end method

.method protected processIntent(Landroid/content/Intent;Z)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "forceNativeUpdate"    # Z

    .prologue
    .line 36
    sget-object v2, Lcom/oculus/modules/ConnectivityStateModuleImpl;->TAG:Ljava/lang/String;

    const-string v3, "processIntent()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-boolean v1, p0, Lcom/oculus/modules/ConnectivityStateModuleImpl;->connected:Z

    .line 40
    .local v1, "previousConnected":Z
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    if-ne v2, v3, :cond_0

    .line 41
    sget-object v2, Lcom/oculus/modules/ConnectivityStateModuleImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 42
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/oculus/modules/ConnectivityStateModuleImpl;->connected:Z

    .line 45
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    if-nez p2, :cond_1

    iget-boolean v2, p0, Lcom/oculus/modules/ConnectivityStateModuleImpl;->connected:Z

    if-eq v1, v2, :cond_2

    .line 46
    :cond_1
    invoke-direct {p0}, Lcom/oculus/modules/ConnectivityStateModuleImpl;->emitEvent()V

    .line 48
    :cond_2
    return-void

    .line 42
    .restart local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method
