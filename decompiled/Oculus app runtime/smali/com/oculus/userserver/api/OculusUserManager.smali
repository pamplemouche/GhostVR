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
.field private static final SERVICE_IMPL_CLS:Ljava/lang/String; = "com.oculus.userserver.managerservice.OculusUserManagerService"

.field private static final SERVICE_IMPL_PKG:Ljava/lang/String; = "com.oculus.userserver"

.field private static final TAG:Ljava/lang/String; = "OculusUserManager"


# instance fields
.field private final mConnection:Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

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
    iget-object p1, p0, Lcom/oculus/userserver/api/OculusUserManager;->mConnection:Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;

    invoke-static {p1}, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->access$600(Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;)V

    return-void
.end method

.method static synthetic access$100()Landroid/content/Intent;
    .locals 1

    .line 30
    invoke-static {}, Lcom/oculus/userserver/api/OculusUserManager;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/userserver/api/OculusUserManager;)Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oculus/userserver/api/OculusUserManager;->mConnection:Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/userserver/api/OculusUserManager;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oculus/userserver/api/OculusUserManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Landroid/os/RemoteException;)V
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/oculus/userserver/api/OculusUserManager;->onRemoteServiceDied(Landroid/os/RemoteException;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/oculus/userserver/api/OculusUserManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static createServiceIntent()Landroid/content/Intent;
    .locals 3

    .line 213
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oculus.userserver"

    const-string v2, "com.oculus.userserver.managerservice.OculusUserManagerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 215
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v1
.end method

.method private currentUserHasLockPattern()Z
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/oculus/userserver/api/OculusUserManager;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 154
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method private getService()Lcom/oculus/userserver/managerservice/IOculusUserManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/oculus/userserver/api/OculusUserManager;->mConnection:Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;

    invoke-static {v0}, Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;->access$700(Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;)Lcom/oculus/userserver/managerservice/IOculusUserManager;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Failed to connect to OUMS."

    .line 122
    sget-object v1, Lcom/oculus/userserver/api/OculusUserManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getUserCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Lcom/oculus/userserver/api/OculusUserManager;->getService()Lcom/oculus/userserver/managerservice/IOculusUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/userserver/managerservice/IOculusUserManager;->getUserCount()I

    move-result v0

    return v0
.end method

.method public static isMultiUserEnabled()Z
    .locals 3

    .line 111
    sget v0, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/4 v1, 0x0

    const/16 v2, 0xd

    if-lt v0, v2, :cond_0

    .line 112
    new-instance v0, Lcom/oculus/os/SettingsManager;

    invoke-direct {v0}, Lcom/oculus/os/SettingsManager;-><init>()V

    const-string v2, "multi_user_enabled"

    .line 113
    invoke-virtual {v0, v2, v1}, Lcom/oculus/os/SettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method private static onRemoteServiceDied(Landroid/os/RemoteException;)V
    .locals 2
    .param p0    # Landroid/os/RemoteException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 106
    sget-object v0, Lcom/oculus/userserver/api/OculusUserManager;->TAG:Ljava/lang/String;

    const-string v1, "Remote service died"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public canLockScreen()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Lcom/oculus/userserver/api/OculusUserManager;->currentUserHasLockPattern()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oculus/userserver/api/OculusUserManager;->getUserCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public close()V
    .locals 3

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/oculus/userserver/api/OculusUserManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/userserver/api/OculusUserManager;->mConnection:Lcom/oculus/userserver/api/OculusUserManager$BlockingServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 208
    sget-object v1, Lcom/oculus/userserver/api/OculusUserManager;->TAG:Ljava/lang/String;

    const-string v2, "Error unbinding from service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public createUserAndSwitch()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Lcom/oculus/userserver/api/OculusUserManager;->getService()Lcom/oculus/userserver/managerservice/IOculusUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/userserver/managerservice/IOculusUserManager;->createUserAndSwitch()Z

    move-result v0

    return v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oculus/userserver/api/user/OculusUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Lcom/oculus/userserver/api/OculusUserManager;->getService()Lcom/oculus/userserver/managerservice/IOculusUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/userserver/managerservice/IOculusUserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/userserver/api/user/OculusUserBundler;->unbundleUsers(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lockScreen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Lcom/oculus/userserver/api/OculusUserManager;->getService()Lcom/oculus/userserver/managerservice/IOculusUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/userserver/managerservice/IOculusUserManager;->lockScreen()V

    return-void
.end method

.method public removeUser(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lcom/oculus/userserver/api/OculusUserManager;->getService()Lcom/oculus/userserver/managerservice/IOculusUserManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oculus/userserver/managerservice/IOculusUserManager;->removeUser(I)Z

    move-result p1

    return p1
.end method

.method public updateUser(Lcom/oculus/userserver/api/user/SparseOculusUser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Lcom/oculus/userserver/api/OculusUserManager;->getService()Lcom/oculus/userserver/managerservice/IOculusUserManager;

    move-result-object v0

    invoke-static {p1}, Lcom/oculus/userserver/api/user/OculusUserBundler;->bundleSparseUser(Lcom/oculus/userserver/api/user/SparseOculusUser;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/oculus/userserver/managerservice/IOculusUserManager;->updateUser(Landroid/os/Bundle;)V

    return-void
.end method
