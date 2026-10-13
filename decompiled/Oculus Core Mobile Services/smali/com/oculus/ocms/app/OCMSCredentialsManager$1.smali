.class Lcom/oculus/ocms/app/OCMSCredentialsManager$1;
.super Ljava/lang/Object;
.source "OCMSCredentialsManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/ocms/app/OCMSCredentialsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/ocms/app/OCMSCredentialsManager;


# direct methods
.method constructor <init>(Lcom/oculus/ocms/app/OCMSCredentialsManager;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oculus/ocms/app/OCMSCredentialsManager$1;->this$0:Lcom/oculus/ocms/app/OCMSCredentialsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 46
    invoke-static {p2}, Lcom/oculus/aidl/IAuthService2$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/aidl/IAuthService2;

    move-result-object v0

    .line 48
    :try_start_0
    invoke-interface {v0}, Lcom/oculus/aidl/IAuthService2;->getCredentials()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/oculus/ocms/app/OCMSCredentialsManager$1;->this$0:Lcom/oculus/ocms/app/OCMSCredentialsManager;

    invoke-static {v1, v0}, Lcom/oculus/ocms/app/OCMSCredentialsManager;->access$000(Lcom/oculus/ocms/app/OCMSCredentialsManager;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object v0, p0, Lcom/oculus/ocms/app/OCMSCredentialsManager$1;->this$0:Lcom/oculus/ocms/app/OCMSCredentialsManager;

    invoke-static {v0}, Lcom/oculus/ocms/app/OCMSCredentialsManager;->access$200(Lcom/oculus/ocms/app/OCMSCredentialsManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 55
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    :try_start_1
    invoke-static {}, Lcom/oculus/ocms/app/OCMSCredentialsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception while bound to auth service"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    iget-object v0, p0, Lcom/oculus/ocms/app/OCMSCredentialsManager$1;->this$0:Lcom/oculus/ocms/app/OCMSCredentialsManager;

    invoke-static {v0}, Lcom/oculus/ocms/app/OCMSCredentialsManager;->access$200(Lcom/oculus/ocms/app/OCMSCredentialsManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/oculus/ocms/app/OCMSCredentialsManager$1;->this$0:Lcom/oculus/ocms/app/OCMSCredentialsManager;

    invoke-static {v1}, Lcom/oculus/ocms/app/OCMSCredentialsManager;->access$200(Lcom/oculus/ocms/app/OCMSCredentialsManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
