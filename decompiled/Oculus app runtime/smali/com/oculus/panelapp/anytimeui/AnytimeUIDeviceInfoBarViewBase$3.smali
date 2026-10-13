.class Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$3;
.super Ljava/lang/Object;
.source "AnytimeUIDeviceInfoBarViewBase.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->checkAndMaybeEnableLockScreenIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6

    const/4 v0, 0x0

    .line 181
    :try_start_0
    new-instance v1, Lcom/oculus/userserver/api/OculusUserManager;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;

    invoke-virtual {v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oculus/userserver/api/OculusUserManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 182
    :try_start_1
    invoke-virtual {v1}, Lcom/oculus/userserver/api/OculusUserManager;->canLockScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;

    new-instance v3, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$3$1;

    invoke-direct {v3, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$3$1;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$3;)V

    invoke-virtual {v2, v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lcom/oculus/userserver/api/OculusUserManager;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v2

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 181
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_0
    if-eqz v3, :cond_1

    .line 191
    :try_start_4
    invoke-virtual {v1}, Lcom/oculus/userserver/api/OculusUserManager;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/oculus/userserver/api/OculusUserManager;->close()V

    :goto_1
    throw v2
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v1

    .line 193
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error communicating with OculusUserManager to call canLockScreen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method
