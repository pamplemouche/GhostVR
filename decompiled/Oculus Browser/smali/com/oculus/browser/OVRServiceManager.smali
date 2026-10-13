.class public Lcom/oculus/browser/OVRServiceManager;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final RESPONSE_BUNDLE_KEY:Ljava/lang/String; = "access_token"

.field public static final SDK_MAJOR_VERSION:I = 0x1

.field public static final SDK_MINOR_VERSION:I = 0x10

.field public static final SERVICE_COMPONENT:Ljava/lang/String; = "com.oculus.horizon.service.OVRService"

.field public static final SERVICE_PACKAGE:Ljava/lang/String; = "com.oculus.horizon"

.field public static final TAG:Ljava/lang/String; = "OVRServiceManager"

.field public static mInstance:Lcom/oculus/browser/OVRServiceManager;


# instance fields
.field public mAccessToken:Ljava/lang/String;

.field public mListeners:Ljava/util/HashSet;

.field public mMessenger:Landroid/os/Messenger;

.field public mServiceConnection:Landroid/content/ServiceConnection;

.field public mServiceInterface:Lcom/oculus/aidl/OVRServiceInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/OVRServiceManager;->mListeners:Ljava/util/HashSet;

    return-void
.end method

.method public static synthetic access$000(Lcom/oculus/browser/OVRServiceManager;)Landroid/content/ServiceConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oculus/browser/OVRServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/oculus/browser/OVRServiceManager;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/OVRServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/oculus/browser/OVRServiceManager;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/OVRServiceManager;->mMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/oculus/browser/OVRServiceManager;)Lcom/oculus/aidl/OVRServiceInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oculus/browser/OVRServiceManager;->mServiceInterface:Lcom/oculus/aidl/OVRServiceInterface;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/oculus/browser/OVRServiceManager;Lcom/oculus/aidl/OVRServiceInterface;)Lcom/oculus/aidl/OVRServiceInterface;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/OVRServiceManager;->mServiceInterface:Lcom/oculus/aidl/OVRServiceInterface;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/oculus/browser/OVRServiceManager;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/OVRServiceManager;->getServiceIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oculus/browser/OVRServiceManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oculus/browser/OVRServiceManager;->mAccessToken:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/oculus/browser/OVRServiceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/OVRServiceManager;->mAccessToken:Ljava/lang/String;

    return-object p1
.end method

.method public static addListener(Lcom/oculus/browser/OVRServiceManager$Listener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/oculus/browser/OVRServiceManager;->getInstance()Lcom/oculus/browser/OVRServiceManager;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/oculus/browser/OVRServiceManager;->addListenerInternal(Lcom/oculus/browser/OVRServiceManager$Listener;)V

    return-void
.end method

.method private addListenerInternal(Lcom/oculus/browser/OVRServiceManager$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager;->mAccessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lcom/oculus/browser/OVRServiceManager$Listener;->onAccessTokenReceived(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/oculus/browser/OVRServiceManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/oculus/browser/OVRServiceManager;->mInstance:Lcom/oculus/browser/OVRServiceManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/oculus/browser/OVRServiceManager;

    invoke-direct {v0}, Lcom/oculus/browser/OVRServiceManager;-><init>()V

    sput-object v0, Lcom/oculus/browser/OVRServiceManager;->mInstance:Lcom/oculus/browser/OVRServiceManager;

    .line 3
    :cond_0
    sget-object v0, Lcom/oculus/browser/OVRServiceManager;->mInstance:Lcom/oculus/browser/OVRServiceManager;

    return-object v0
.end method

.method private getServiceIntent()Landroid/content/Intent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.horizon"

    const-string v3, "com.oculus.horizon.service.OVRService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public static removeListener(Lcom/oculus/browser/OVRServiceManager$Listener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/oculus/browser/OVRServiceManager;->getInstance()Lcom/oculus/browser/OVRServiceManager;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/oculus/browser/OVRServiceManager;->addListenerInternal(Lcom/oculus/browser/OVRServiceManager$Listener;)V

    return-void
.end method

.method private removeListenerInternal(Lcom/oculus/browser/OVRServiceManager$Listener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onRequestFailure()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/browser/OVRServiceManager$Listener;

    .line 2
    invoke-interface {v1}, Lcom/oculus/browser/OVRServiceManager$Listener;->onAccessTokenRequestFailed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTokenReceived(Ljava/lang/String;)V
    .locals 2

    const-string v0, "OVRServiceManager"

    const-string v1, "Token Received"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/browser/OVRServiceManager$Listener;

    .line 3
    invoke-interface {v1, p1}, Lcom/oculus/browser/OVRServiceManager$Listener;->onAccessTokenReceived(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requestUserCredentials(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/OVRServiceManager;->mAccessToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/oculus/browser/OVRServiceManager$1;

    invoke-direct {v0, p0, p1}, Lcom/oculus/browser/OVRServiceManager$1;-><init>(Lcom/oculus/browser/OVRServiceManager;Landroid/content/Context;)V

    sget-object p1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {v0, p1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oculus/browser/OVRServiceManager;->onTokenReceived(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
