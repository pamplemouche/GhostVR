.class public Lcom/oculus/userserver/api/OculusUserManager;
.super Ljava/lang/Object;
.source "OculusUserManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mConnection:Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/oculus/userserver/api/OculusUserManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/userserver/api/OculusUserManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;-><init>(Lcom/oculus/userserver/api/OculusUserManager;Lcom/oculus/userserver/api/OculusUserManager$1;)V

    iput-object v0, p0, Lcom/oculus/userserver/api/OculusUserManager;->mConnection:Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;

    .line 100
    iput-object p1, p0, Lcom/oculus/userserver/api/OculusUserManager;->mContext:Landroid/content/Context;

    .line 101
    iget-object v0, p0, Lcom/oculus/userserver/api/OculusUserManager;->mConnection:Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;

    invoke-static {v0}, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->access$600(Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;)V

    .line 102
    return-void
.end method

.method static synthetic access$100()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/oculus/userserver/api/OculusUserManager;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/userserver/api/OculusUserManager;)Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/userserver/api/OculusUserManager;->mConnection:Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/userserver/api/OculusUserManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/userserver/api/OculusUserManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/os/RemoteException;)V
    .locals 0

    .prologue
    .line 30
    invoke-static {p0}, Lcom/oculus/userserver/api/OculusUserManager;->onRemoteServiceDied(Landroid/os/RemoteException;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/oculus/userserver/api/OculusUserManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static createServiceIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 228
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oculus.userserver"

    const-string v2, "com.oculus.userserver.managerservice.OculusUserManagerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 230
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 231
    return-object v1
.end method

.method private getService()Lcom/oculus/userserver/managerservice/IOculusUserManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/userserver/api/OculusUserManager;->mConnection:Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;

    invoke-static {v0}, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->access$700(Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;)Lcom/oculus/userserver/managerservice/IOculusUserManager;

    move-result-object v0

    .line 120
    if-nez v0, :cond_0

    .line 121
    const-string v0, "Failed to connect to OUMS."

    .line 122
    sget-object v1, Lcom/oculus/userserver/api/OculusUserManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    return-object v0
.end method

.method public static isMultiUserEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 111
    sget v1, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    .line 112
    new-instance v1, Lcom/oculus/os/SettingsManager;

    invoke-direct {v1}, Lcom/oculus/os/SettingsManager;-><init>()V

    .line 113
    const-string v2, "multi_user_enabled"

    invoke-virtual {v1, v2, v0}, Lcom/oculus/os/SettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 115
    :cond_0
    return v0
.end method

.method private static onRemoteServiceDied(Landroid/os/RemoteException;)V
    .locals 2
    .param p0    # Landroid/os/RemoteException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 106
    sget-object v0, Lcom/oculus/userserver/api/OculusUserManager;->TAG:Ljava/lang/String;

    const-string v1, "Remote service died"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/oculus/userserver/api/OculusUserManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/userserver/api/OculusUserManager;->mConnection:Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 223
    sget-object v1, Lcom/oculus/userserver/api/OculusUserManager;->TAG:Ljava/lang/String;

    const-string v2, "Error unbinding from service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateUser(Lcom/oculus/userserver/api/user/SparseOculusUser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/oculus/userserver/api/OculusUserManager;->getService()Lcom/oculus/userserver/managerservice/IOculusUserManager;

    move-result-object v0

    invoke-static {p1}, Lcom/oculus/userserver/api/user/OculusUserBundler;->bundleSparseUser(Lcom/oculus/userserver/api/user/SparseOculusUser;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oculus/userserver/managerservice/IOculusUserManager;->updateUser(Landroid/os/Bundle;)V

    .line 179
    return-void
.end method
