.class Lcom/oculus/horizon/service/OVRService$4;
.super Lcom/oculus/aidl/OVRServiceInterface$Stub;
.source "OVRService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service/OVRService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/service/OVRService;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/service/OVRService;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-direct {p0}, Lcom/oculus/aidl/OVRServiceInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public assetFileDeleteById(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 999
    const-string v0, "asset_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    const-string v0, "asset_id not supplied"

    .line 1001
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1002
    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 1040
    :goto_0
    return-object v0

    .line 1004
    :cond_0
    const-string v0, "asset_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1005
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1006
    const-string v0, "asset_id invalid"

    .line 1007
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1008
    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 1011
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0}, Lcom/oculus/horizon/service/OVRService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1012
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 1013
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1014
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 1015
    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$1000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/installer/InstallerUtil;

    move-result-object v0

    sget-object v5, Lcom/oculus/appmanager/info/model/RequestOrigin;->PLATFORM_SDK:Lcom/oculus/appmanager/info/model/RequestOrigin;

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/installer/InstallerUtil;->generateAssetFileUninstallByIdRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Landroid/content/Intent;

    move-result-object v2

    .line 1017
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$1100()Lcom/facebook/secure/context/SecureContextHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/secure/context/SecureContextHelper;->internal()Lcom/facebook/secure/context/ScopedIntentLauncher;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/facebook/secure/context/ScopedIntentLauncher;->launchService(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1018
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1019
    const-string v0, "Failed to launch InstallerService"

    .line 1020
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1021
    sget-object v1, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 1023
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1025
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oculus/util/service/ServiceFutures;->getFuture(Landroid/content/Intent;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 1026
    if-nez v0, :cond_3

    .line 1027
    const-string v0, "Unable to acquire future from asset installer service"

    .line 1028
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1029
    sget-object v1, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 1033
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oculus/util/service/ServiceFutures;->disposeFuture(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Exception thrown while waiting for InstallerService result"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1036
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public assetFileDeleteByName(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1045
    const-string v0, "asset_filename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1046
    const-string v0, "asset_filename not supplied"

    .line 1047
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1048
    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 1086
    :goto_0
    return-object v0

    .line 1050
    :cond_0
    const-string v0, "asset_filename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1051
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1052
    const-string v0, "asset_filename invalid"

    .line 1053
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1054
    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 1057
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0}, Lcom/oculus/horizon/service/OVRService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1058
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 1059
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1060
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 1061
    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$1000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/installer/InstallerUtil;

    move-result-object v0

    sget-object v5, Lcom/oculus/appmanager/info/model/RequestOrigin;->PLATFORM_SDK:Lcom/oculus/appmanager/info/model/RequestOrigin;

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/installer/InstallerUtil;->generateAssetFileUninstallByNameRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Landroid/content/Intent;

    move-result-object v2

    .line 1063
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$1100()Lcom/facebook/secure/context/SecureContextHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/secure/context/SecureContextHelper;->internal()Lcom/facebook/secure/context/ScopedIntentLauncher;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/facebook/secure/context/ScopedIntentLauncher;->launchService(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1064
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1065
    const-string v0, "Failed to launch InstallerService"

    .line 1066
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1067
    sget-object v1, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 1069
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1071
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oculus/util/service/ServiceFutures;->getFuture(Landroid/content/Intent;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 1072
    if-nez v0, :cond_3

    .line 1073
    const-string v0, "Unable to acquire future from asset installer service"

    .line 1074
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1075
    sget-object v1, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 1079
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oculus/util/service/ServiceFutures;->disposeFuture(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Exception thrown while waiting for InstallerService result"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1082
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public assetFileDownloadById(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 711
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 712
    if-eqz v0, :cond_0

    .line 757
    :goto_0
    return-object v0

    .line 716
    :cond_0
    const-string v0, "asset_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 717
    const-string v0, "asset_id not supplied"

    .line 718
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 719
    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 721
    :cond_1
    const-string v0, "asset_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 722
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 723
    const-string v0, "asset_id invalid"

    .line 724
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 725
    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 728
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0}, Lcom/oculus/horizon/service/OVRService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 729
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 730
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 732
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 733
    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$1000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/installer/InstallerUtil;

    move-result-object v0

    sget-object v5, Lcom/oculus/appmanager/info/model/RequestOrigin;->PLATFORM_SDK:Lcom/oculus/appmanager/info/model/RequestOrigin;

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/installer/InstallerUtil;->generateAssetFileDownloadByIdIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Landroid/content/Intent;

    move-result-object v2

    .line 735
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$1100()Lcom/facebook/secure/context/SecureContextHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/secure/context/SecureContextHelper;->internal()Lcom/facebook/secure/context/ScopedIntentLauncher;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/facebook/secure/context/ScopedIntentLauncher;->launchService(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    .line 736
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 737
    const-string v0, "Failed to launch InstallerService"

    .line 738
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 739
    sget-object v1, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 741
    :cond_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 743
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oculus/util/service/ServiceFutures;->getFuture(Landroid/content/Intent;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 744
    if-nez v0, :cond_4

    .line 745
    const-string v0, "Unable to acquire future from asset installer service"

    .line 746
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 747
    sget-object v1, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 751
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oculus/util/service/ServiceFutures;->disposeFuture(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 752
    :catch_0
    move-exception v0

    .line 753
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Exception thrown while waiting for InstallerService result"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 754
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public assetFileDownloadByName(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 762
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 763
    if-eqz v0, :cond_0

    .line 808
    :goto_0
    return-object v0

    .line 767
    :cond_0
    const-string v0, "asset_filename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 768
    const-string v0, "asset_filename not supplied"

    .line 769
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 770
    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 772
    :cond_1
    const-string v0, "asset_filename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 773
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 774
    const-string v0, "asset_filename invalid"

    .line 775
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 776
    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 779
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0}, Lcom/oculus/horizon/service/OVRService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 780
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 781
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 783
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 784
    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$1000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/installer/InstallerUtil;

    move-result-object v0

    sget-object v5, Lcom/oculus/appmanager/info/model/RequestOrigin;->PLATFORM_SDK:Lcom/oculus/appmanager/info/model/RequestOrigin;

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/installer/InstallerUtil;->generateAssetFileDownloadByNameIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Landroid/content/Intent;

    move-result-object v2

    .line 786
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$1100()Lcom/facebook/secure/context/SecureContextHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/secure/context/SecureContextHelper;->internal()Lcom/facebook/secure/context/ScopedIntentLauncher;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/facebook/secure/context/ScopedIntentLauncher;->launchService(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    .line 787
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 788
    const-string v0, "Failed to launch InstallerService"

    .line 789
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 790
    sget-object v1, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 792
    :cond_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 794
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oculus/util/service/ServiceFutures;->getFuture(Landroid/content/Intent;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 795
    if-nez v0, :cond_4

    .line 796
    const-string v0, "Unable to acquire future from asset installer service"

    .line 797
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 798
    sget-object v1, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 802
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oculus/util/service/ServiceFutures;->disposeFuture(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 803
    :catch_0
    move-exception v0

    .line 804
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Exception thrown while waiting for InstallerService result"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 805
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public assetFileDownloadCancelById(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 909
    const-string v0, "asset_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 910
    const-string v0, "asset_id not supplied"

    .line 911
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 912
    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 949
    :goto_0
    return-object v0

    .line 914
    :cond_0
    const-string v0, "asset_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 915
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    const-string v0, "asset_id invalid"

    .line 917
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 918
    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0}, Lcom/oculus/horizon/service/OVRService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 922
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 923
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 924
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 925
    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$1000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/installer/InstallerUtil;

    move-result-object v0

    sget-object v5, Lcom/oculus/appmanager/info/model/RequestOrigin;->PLATFORM_SDK:Lcom/oculus/appmanager/info/model/RequestOrigin;

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/installer/InstallerUtil;->generateCancelAssetInstallByIdIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Landroid/content/Intent;

    move-result-object v2

    .line 927
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$1100()Lcom/facebook/secure/context/SecureContextHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/secure/context/SecureContextHelper;->internal()Lcom/facebook/secure/context/ScopedIntentLauncher;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/facebook/secure/context/ScopedIntentLauncher;->launchService(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    .line 928
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 929
    const-string v0, "Failed to launch InstallerService"

    .line 930
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 931
    sget-object v1, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 933
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 935
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oculus/util/service/ServiceFutures;->getFuture(Landroid/content/Intent;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 936
    if-nez v0, :cond_3

    .line 937
    const-string v0, "Unable to acquire future from asset installer service"

    .line 938
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 939
    sget-object v1, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 943
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oculus/util/service/ServiceFutures;->disposeFuture(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 944
    :catch_0
    move-exception v0

    .line 945
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Exception thrown while waiting for InstallerService result"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 946
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public assetFileDownloadCancelByName(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 954
    const-string v0, "asset_filename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 955
    const-string v0, "asset_filename not supplied"

    .line 956
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 957
    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 994
    :goto_0
    return-object v0

    .line 959
    :cond_0
    const-string v0, "asset_filename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 960
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    const-string v0, "asset_filename invalid"

    .line 962
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 963
    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0}, Lcom/oculus/horizon/service/OVRService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 967
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 968
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 969
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 970
    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$1000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/installer/InstallerUtil;

    move-result-object v0

    sget-object v5, Lcom/oculus/appmanager/info/model/RequestOrigin;->PLATFORM_SDK:Lcom/oculus/appmanager/info/model/RequestOrigin;

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/installer/InstallerUtil;->generateCancelAssetInstallByNameIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Landroid/content/Intent;

    move-result-object v2

    .line 972
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$1100()Lcom/facebook/secure/context/SecureContextHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/secure/context/SecureContextHelper;->internal()Lcom/facebook/secure/context/ScopedIntentLauncher;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/facebook/secure/context/ScopedIntentLauncher;->launchService(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    .line 973
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 974
    const-string v0, "Failed to launch InstallerService"

    .line 975
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 976
    sget-object v1, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 978
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 980
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oculus/util/service/ServiceFutures;->getFuture(Landroid/content/Intent;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 981
    if-nez v0, :cond_3

    .line 982
    const-string v0, "Unable to acquire future from asset installer service"

    .line 983
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 984
    sget-object v1, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 988
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oculus/util/service/ServiceFutures;->disposeFuture(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 989
    :catch_0
    move-exception v0

    .line 990
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Exception thrown while waiting for InstallerService result"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 991
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public assetFileList()Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1091
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0}, Lcom/oculus/horizon/service/OVRService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1092
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 1093
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1094
    iget-object v4, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 1095
    invoke-static {v4}, Lcom/oculus/horizon/service/OVRService;->access$1000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/installer/InstallerUtil;

    move-result-object v4

    sget-object v5, Lcom/oculus/appmanager/info/model/RequestOrigin;->PLATFORM_SDK:Lcom/oculus/appmanager/info/model/RequestOrigin;

    invoke-virtual {v4, v0, v1, v1, v5}, Lcom/oculus/installer/InstallerUtil;->generateAssetListRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Landroid/content/Intent;

    move-result-object v1

    .line 1097
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$1100()Lcom/facebook/secure/context/SecureContextHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/secure/context/SecureContextHelper;->internal()Lcom/facebook/secure/context/ScopedIntentLauncher;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/facebook/secure/context/ScopedIntentLauncher;->launchService(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1098
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1099
    const-string v0, "Failed to launch InstallerService"

    .line 1100
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1101
    sget-object v1, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v6, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 1120
    :goto_0
    return-object v0

    .line 1103
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1105
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oculus/util/service/ServiceFutures;->getFuture(Landroid/content/Intent;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 1106
    if-nez v0, :cond_1

    .line 1107
    const-string v0, "Unable to acquire future from asset installer service"

    .line 1108
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1109
    sget-object v1, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v6, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 1113
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oculus/util/service/ServiceFutures;->disposeFuture(Landroid/content/Intent;)V

    goto :goto_0

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Exception thrown while waiting for InstallerService result"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1116
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public assetFileStatusById(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 813
    const-string v0, "asset_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    const-string v0, "asset_id not supplied"

    .line 815
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 816
    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 856
    :goto_0
    return-object v0

    .line 818
    :cond_0
    const-string v0, "asset_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 819
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 820
    const-string v0, "asset_id invalid"

    .line 821
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 822
    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0}, Lcom/oculus/horizon/service/OVRService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 826
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 827
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 829
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 830
    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$1000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/installer/InstallerUtil;

    move-result-object v0

    sget-object v5, Lcom/oculus/appmanager/info/model/RequestOrigin;->PLATFORM_SDK:Lcom/oculus/appmanager/info/model/RequestOrigin;

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/installer/InstallerUtil;->generateAssetDetailsByIdRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Landroid/content/Intent;

    move-result-object v2

    .line 832
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$1100()Lcom/facebook/secure/context/SecureContextHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/secure/context/SecureContextHelper;->internal()Lcom/facebook/secure/context/ScopedIntentLauncher;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/facebook/secure/context/ScopedIntentLauncher;->launchService(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    .line 833
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 834
    const-string v0, "Failed to launch InstallerService"

    .line 835
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 836
    sget-object v1, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 838
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 840
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oculus/util/service/ServiceFutures;->getFuture(Landroid/content/Intent;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 841
    if-nez v0, :cond_3

    .line 842
    const-string v0, "Unable to acquire future from asset installer service"

    .line 843
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 844
    sget-object v1, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 848
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oculus/util/service/ServiceFutures;->disposeFuture(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 849
    :catch_0
    move-exception v0

    .line 850
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oculus/util/service/ServiceFutures;->disposeFuture(Landroid/content/Intent;)V

    .line 851
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Exception thrown while waiting for InstallerService result"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public assetFileStatusByName(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 861
    const-string v0, "asset_filename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 862
    const-string v0, "asset_filename not supplied"

    .line 863
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 864
    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 904
    :goto_0
    return-object v0

    .line 866
    :cond_0
    const-string v0, "asset_filename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 867
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 868
    const-string v0, "asset_filename invalid"

    .line 869
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 870
    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0}, Lcom/oculus/horizon/service/OVRService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 874
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 875
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 877
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 878
    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$1000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/installer/InstallerUtil;

    move-result-object v0

    sget-object v5, Lcom/oculus/appmanager/info/model/RequestOrigin;->PLATFORM_SDK:Lcom/oculus/appmanager/info/model/RequestOrigin;

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/installer/InstallerUtil;->generateAssetDetailsByNameRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Landroid/content/Intent;

    move-result-object v2

    .line 880
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$1100()Lcom/facebook/secure/context/SecureContextHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/secure/context/SecureContextHelper;->internal()Lcom/facebook/secure/context/ScopedIntentLauncher;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/facebook/secure/context/ScopedIntentLauncher;->launchService(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    .line 881
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 882
    const-string v0, "Failed to launch InstallerService"

    .line 883
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 884
    sget-object v1, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 886
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 888
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oculus/util/service/ServiceFutures;->getFuture(Landroid/content/Intent;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 889
    if-nez v0, :cond_3

    .line 890
    const-string v0, "Unable to acquire future from asset installer service"

    .line 891
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 892
    sget-object v1, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v8, v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 896
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oculus/util/service/ServiceFutures;->disposeFuture(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$1200(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/util/service/ServiceFutures;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oculus/util/service/ServiceFutures;->disposeFuture(Landroid/content/Intent;)V

    .line 899
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Exception thrown while waiting for InstallerService result"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 900
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->STORE_INSTALLATION_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getAppScopedAccessToken(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 364
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/service/OVRModule$UL_id;->$ul_$xXXcom_oculus_horizon_service_result_AppScopedAccessTokenResultBuilderProvider$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$100(Lcom/oculus/horizon/service/OVRService;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service/result/AppScopedAccessTokenResultBuilderProvider;

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service/result/AppScopedAccessTokenResultBuilderProvider;->get(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/result/AppScopedAccessTokenResultBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/result/AppScopedAccessTokenResultBuilder;->build(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getBaseURLEndpoint(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 692
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 693
    if-eqz v0, :cond_0

    .line 700
    :goto_0
    return-object v0

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$900(Lcom/oculus/horizon/service/OVRService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 698
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 699
    const-string v2, "base_url_endpoint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public getCloudStorage2UserDirectoryPath(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1137
    const/4 v0, 0x5

    sget v1, Lcom/oculus/horizon/service/OVRModule$UL_id;->$ul_$xXXcom_oculus_horizon_service_result_GetCloudStorage2UserDirectoryPathResultBuilderProvider$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$100(Lcom/oculus/horizon/service/OVRService;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service/result/GetCloudStorage2UserDirectoryPathResultBuilderProvider;

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 1138
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service/result/GetCloudStorage2UserDirectoryPathResultBuilderProvider;->get(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/result/GetCloudStorage2UserDirectoryPathResultBuilder;

    move-result-object v0

    .line 1139
    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/result/GetCloudStorage2UserDirectoryPathResultBuilder;->build(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMapUuid(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1143
    const/4 v0, 0x6

    sget v1, Lcom/oculus/horizon/service/OVRModule$UL_id;->$ul_$xXXcom_oculus_horizon_service_result_GetCurrentMapUuidResultBuilderProvider$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$100(Lcom/oculus/horizon/service/OVRService;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service/result/GetCurrentMapUuidResultBuilderProvider;

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service/result/GetCurrentMapUuidResultBuilderProvider;->get(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/result/GetCurrentMapUuidResultBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/result/GetCurrentMapUuidResultBuilder;->build(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getEntitlementCheckBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 706
    const/4 v0, 0x1

    sget v1, Lcom/oculus/horizon/service/OVRModule$UL_id;->$ul_$xXXcom_oculus_horizon_service_result_EntitlementCheckResultBuilderProvider$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$100(Lcom/oculus/horizon/service/OVRService;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service/result/EntitlementCheckResultBuilderProvider;

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service/result/EntitlementCheckResultBuilderProvider;->get(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/result/EntitlementCheckResultBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/result/EntitlementCheckResultBuilder;->build(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getIAPCheckoutFlowIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 272
    const/16 v0, 0xa

    sget v1, Lcom/oculus/horizon/service/OVRModule$UL_id;->$ul_$xXXcom_oculus_horizon_service_result_IAPCheckoutFlowResultBuilderProvider$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$100(Lcom/oculus/horizon/service/OVRService;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service/result/IAPCheckoutFlowResultBuilderProvider;

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, v1, p1}, Lcom/oculus/horizon/service/result/IAPCheckoutFlowResultBuilderProvider;->get(Lcom/oculus/horizon/service/OVRService;Ljava/lang/String;)Lcom/oculus/horizon/service/result/IAPCheckoutFlowResultBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/oculus/horizon/service/result/IAPCheckoutFlowResultBuilder;->build(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getInstalledVRApplications(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 378
    const/4 v0, 0x4

    sget v1, Lcom/oculus/horizon/service/OVRModule$UL_id;->$ul_$xXXcom_oculus_horizon_service_result_InstalledVRApplicationsResultBuilderProvider$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$100(Lcom/oculus/horizon/service/OVRService;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service/result/InstalledVRApplicationsResultBuilderProvider;

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service/result/InstalledVRApplicationsResultBuilderProvider;->get(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/result/InstalledVRApplicationsResultBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/result/InstalledVRApplicationsResultBuilder;->build(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getInvitableUsersFlowIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 283
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Building invitable users intent"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 286
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 288
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$400(Lcom/oculus/horizon/service/OVRService;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 289
    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$400(Lcom/oculus/horizon/service/OVRService;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 290
    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$500(Lcom/oculus/horizon/service/OVRService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "uri"

    .line 292
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.oculus.vrshell"

    const-string v5, "com.oculus.vrshell.MainActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 295
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "/system_utilities/inviteFriends/"

    .line 297
    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "ovr_room_id"

    .line 299
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 301
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 302
    const/high16 v4, 0x10010000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 303
    const-string v4, "com.oculus.vrshell.home/com.oculus.vrshell.home.SystemUtilitiesService"

    .line 304
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 303
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 306
    const-string v4, "uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    :goto_0
    const-string v0, "intent_pkg"

    .line 329
    const-string v0, "intent_pkg"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$600(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/ExternalPlatformLocal;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->getAppID(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    const-string v3, "app_id"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 342
    :goto_1
    return-object v0

    .line 308
    :cond_0
    const-string v0, "intent_cmd"

    .line 309
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.oculus.systemactivities"

    const-string v5, "com.oculus.systemactivities.PlatformActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 313
    const-string v0, "intent_cmd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{ \"ovr_room_id\": \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ovr_room_id"

    .line 317
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"Command\": \"globalMenu\", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"OVRVersion\": \"\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"PlatformUIVersion\": 0 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 313
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const/high16 v0, 0x18010000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "App is not in library"

    invoke-static {v1, v3, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 336
    goto :goto_1

    .line 337
    :catch_1
    move-exception v0

    .line 338
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "Failed to get app_id"

    invoke-static {v1, v3, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 339
    goto :goto_1
.end method

.method public getLatestAvailableAppInformation(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 370
    const/4 v0, 0x3

    sget v1, Lcom/oculus/horizon/service/OVRModule$UL_id;->$ul_$xXXcom_oculus_horizon_service_result_LatestAvailableAppInformationResultBuilderProvider$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$100(Lcom/oculus/horizon/service/OVRService;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service/result/LatestAvailableAppInformationResultBuilderProvider;

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 371
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service/result/LatestAvailableAppInformationResultBuilderProvider;->get(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/result/LatestAvailableAppInformationResultBuilder;

    move-result-object v0

    .line 372
    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/result/LatestAvailableAppInformationResultBuilder;->build(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSharedMicrophoneData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 600
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 601
    if-eqz v0, :cond_0

    .line 639
    :goto_0
    return-object v0

    .line 606
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 607
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 608
    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$700(Lcom/oculus/horizon/service/OVRService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Pair;

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 614
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 615
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x1388

    add-long/2addr v6, v8

    cmp-long v1, v6, v4

    if-gez v1, :cond_2

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 617
    invoke-virtual {v0}, Lcom/oculus/horizon/service/OVRService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 619
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 620
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$700(Lcom/oculus/horizon/service/OVRService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    new-instance v3, Landroidx/core/util/Pair;

    .line 621
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 620
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    if-ne v0, v10, :cond_3

    .line 624
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, p1, v2, v1}, Lcom/oculus/horizon/service/OVRService;->access$800(Lcom/oculus/horizon/service/OVRService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v0, "Unable to get microphone data"

    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResultQuiet(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 628
    :cond_2
    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v10, :cond_3

    .line 629
    const-string v0, "Unable to get microphone data"

    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1}, Lcom/oculus/platform/util/Util;->makeErrorResultQuiet(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 633
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->connect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)V

    .line 634
    const-string v0, "microphone_uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 635
    const-string v2, "max_size"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 636
    iget-object v3, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v3}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->getSharedMicrophoneData(JI)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Failed to get shared microphone data"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 639
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getSharedMicrophoneSocketFD(Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 647
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 648
    if-eqz v1, :cond_0

    .line 668
    :goto_0
    return-object v0

    .line 653
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 654
    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v2}, Lcom/oculus/horizon/service/OVRService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 655
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.RECORD_AUDIO"

    .line 656
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 659
    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-static {v2, p1, v1, v3}, Lcom/oculus/horizon/service/OVRService;->access$800(Lcom/oculus/horizon/service/OVRService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 666
    :catch_0
    move-exception v1

    .line 667
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Failed to create shared mic connection"

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 663
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->connect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)V

    .line 664
    const-string v1, "microphone_uid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 665
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->getSharedMicrophoneSocketFD(J)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemVoipData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_0

    .line 463
    :goto_0
    return-object v0

    .line 451
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->connect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)V

    .line 453
    const-string v0, "include_pcm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 454
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 455
    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 456
    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 455
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isCallingApplicationAllowedToModifySystemVoipPassthrough(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 457
    const-string v0, "passthrough"

    invoke-static {p1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->makeSystemVoipPermissionError(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->getSystemVoipData(Z)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Failed to get SystemVoip data"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 463
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemVoipMicrophoneMuted(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 499
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 500
    if-eqz v1, :cond_0

    .line 508
    :goto_0
    return-object v0

    .line 505
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->getSystemVoipMicrophoneMutedX()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 506
    :catch_0
    move-exception v1

    .line 507
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getSystemVoipMicrophoneMuted failed"

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getSystemVoipPassthrough(Landroid/os/Bundle;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 469
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 470
    if-eqz v1, :cond_0

    .line 478
    :goto_0
    return v0

    .line 475
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->getSystemVoipPassthroughX()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 476
    :catch_0
    move-exception v1

    .line 477
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getSystemVoipPassthrough failed"

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getSystemVoipStatus(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 484
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 485
    if-eqz v1, :cond_0

    .line 493
    :goto_0
    return-object v0

    .line 490
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->getSystemVoipStatusX()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v1

    .line 492
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getSystemVoipStatus failed"

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getViewerPurchasesDurableCacheJSON(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 277
    const/16 v0, 0xb

    sget v1, Lcom/oculus/horizon/service/OVRModule$UL_id;->$ul_$xXXcom_oculus_horizon_service_result_DurableIAPResultBuilderProvider$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$100(Lcom/oculus/horizon/service/OVRService;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service/result/DurableIAPResultBuilderProvider;

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service/result/DurableIAPResultBuilderProvider;->get(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/result/DurableIAPResultBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/result/DurableIAPResultBuilder;->build(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public isAppEntitled()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 263
    const/4 v0, 0x0

    sget v1, Lcom/oculus/horizon/service/OVRModule$UL_id;->$ul_$xXXcom_oculus_horizon_service_result_IsAppEntitledResultBuilderProvider$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$100(Lcom/oculus/horizon/service/OVRService;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service/result/IsAppEntitledResultBuilderProvider;

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 264
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service/result/IsAppEntitledResultBuilderProvider;->get(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/result/IsAppEntitledResultBuilder;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 265
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service/result/IsAppEntitledResultBuilder;->build(Landroid/os/Bundle;)Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->ordinal()I

    move-result v0

    return v0
.end method

.method public languagePackGetCurrent(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1125
    const/4 v0, 0x0

    .line 1126
    return-object v0
.end method

.method public languagePackSetCurrent(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1131
    const/4 v0, 0x0

    .line 1132
    return-object v0
.end method

.method public launchOtherApp(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1206
    if-eqz v0, :cond_0

    .line 1210
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$600(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/ExternalPlatformLocal;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v1}, Lcom/oculus/horizon/service/OVRService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->launchOtherApp(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public loadPublicProfileForUser(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x0

    return-object v0
.end method

.method public logToMarauder(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1156
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, p2}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1157
    if-eqz v0, :cond_0

    .line 1180
    :goto_0
    return-object v0

    .line 1161
    :cond_0
    const-string v0, ""

    .line 1163
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/oculus/horizon/service/OVRService$AmbiguousCallingPackageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1168
    :goto_1
    const-string v2, "0"

    .line 1170
    :try_start_1
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$600(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/ExternalPlatformLocal;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->getAppID(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1175
    :goto_2
    const-string v2, "first_party_app_log"

    invoke-virtual {p2, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1176
    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$1300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/ServiceLogger;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p1}, Lcom/oculus/horizon/service/ServiceLogger;->reportPlatformSDKFirstPartyAppLogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :goto_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 1164
    :catch_0
    move-exception v1

    .line 1165
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Unable to determine package for calling identity."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1171
    :catch_1
    move-exception v1

    .line 1172
    :goto_4
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "Unable to find AppId for package (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v3, v1, v4, v5}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_2

    .line 1178
    :cond_1
    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$1300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/ServiceLogger;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p1}, Lcom/oculus/horizon/service/ServiceLogger;->reportPlatformSDKLogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1171
    :catch_2
    move-exception v1

    goto :goto_4
.end method

.method public partyChatGetVolume(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 580
    if-eqz v0, :cond_0

    .line 594
    :goto_0
    return-object v0

    .line 585
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->connect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)V

    .line 586
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 587
    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 586
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isCallingApplicationAllowedToModifySystemVoip(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    const-string v0, "getVolume"

    invoke-static {p1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->makeSystemVoipPermissionError(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->getPartyChatVolume()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Failed to stop party chat"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 594
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public partyChatSetVolume(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 557
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_0

    .line 573
    :goto_0
    return-object v0

    .line 563
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->connect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)V

    .line 564
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 565
    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 564
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isCallingApplicationAllowedToModifySystemVoip(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 566
    const-string v0, "setVolume"

    invoke-static {p1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->makeSystemVoipPermissionError(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 569
    :cond_1
    const-string v0, "volume"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 570
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->setPartyChatVolume(F)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 571
    :catch_0
    move-exception v0

    .line 572
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Failed to stop party chat"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 573
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public registerProcessToken(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1215
    const/16 v0, 0x9

    sget v1, Lcom/oculus/horizon/service/OVRModule$UL_id;->$ul_$xXXcom_oculus_horizon_service_result_RegisterProcessTokenResultBuilderProvider$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$100(Lcom/oculus/horizon/service/OVRService;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service/result/RegisterProcessTokenResultBuilderProvider;

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service/result/RegisterProcessTokenResultBuilderProvider;->get(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/result/RegisterProcessTokenResultBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/result/RegisterProcessTokenResultBuilder;->build(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public requestMap(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1151
    const/16 v0, 0x8

    sget v1, Lcom/oculus/horizon/service/OVRModule$UL_id;->$ul_$xXXcom_oculus_horizon_service_result_RequestMapResultBuilderProvider$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$100(Lcom/oculus/horizon/service/OVRService;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service/result/RequestMapResultBuilderProvider;

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service/result/RequestMapResultBuilderProvider;->get(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/result/RequestMapResultBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/result/RequestMapResultBuilder;->build(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public savePublicProfileData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method public setRichPresence(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1219
    const/16 v0, 0xc

    sget v1, Lcom/oculus/horizon/service/OVRModule$UL_id;->$ul_$xXXcom_oculus_horizon_service_result_SetRichPresenceResultBuilderProvider$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$100(Lcom/oculus/horizon/service/OVRService;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service/result/SetRichPresenceResultBuilderProvider;

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service/result/SetRichPresenceResultBuilderProvider;->get(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/result/SetRichPresenceResultBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/result/SetRichPresenceResultBuilder;->build(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setSystemVoipMicrophoneMuted(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_0

    .line 422
    :goto_0
    return-object v0

    .line 411
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->connect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)V

    .line 412
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 413
    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isCallingApplicationAllowedToModifySystemVoip(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    const-string v0, "microphone"

    invoke-static {p1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->makeSystemVoipPermissionError(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 418
    :cond_1
    const-string v0, "microphone_muted"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 419
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->setSystemVoipMicrophoneMuted(I)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Failed to set SystemVoip microphone mute"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public setSystemVoipPassthrough(Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 384
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 385
    if-eqz v1, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-object v0

    .line 389
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->connect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)V

    .line 390
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 391
    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 390
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isCallingApplicationAllowedToModifySystemVoipPassthrough(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    const-string v1, "passthrough"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 396
    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->setSystemVoipPassthrough(Z)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 397
    :catch_0
    move-exception v1

    .line 398
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Failed to set SystemVoip passthrough"

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setSystemVoipSuppressed(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_0

    .line 438
    :goto_0
    return-object v0

    .line 434
    :cond_0
    :try_start_0
    const-string v0, "suppressed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 435
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->setSystemVoipSuppressed(Z)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Failed to set SystemVoip suppressed"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public shareMap(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 1147
    const/4 v0, 0x7

    sget v1, Lcom/oculus/horizon/service/OVRModule$UL_id;->$ul_$xXXcom_oculus_horizon_service_result_ShareMapResultBuilderProvider$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$100(Lcom/oculus/horizon/service/OVRService;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service/result/ShareMapResultBuilderProvider;

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service/result/ShareMapResultBuilderProvider;->get(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/result/ShareMapResultBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/result/ShareMapResultBuilder;->build(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public sharedMicrophoneStop(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 674
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 675
    if-eqz v0, :cond_0

    .line 685
    :goto_0
    return-object v0

    .line 680
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->connect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)V

    .line 681
    const-string v0, "microphone_uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 682
    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->sharedMicrophoneStop(J)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 683
    :catch_0
    move-exception v0

    .line 684
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Failed to stop shared microphone"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 685
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public startPartyChat(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 514
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_0

    .line 530
    :goto_0
    return-object v0

    .line 520
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->connect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)V

    .line 521
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 522
    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 521
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isCallingApplicationAllowedToModifySystemVoip(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    const-string v0, "start"

    invoke-static {p1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->makeSystemVoipPermissionError(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 526
    :cond_1
    const-string v0, "party_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 527
    iget-object v2, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v2}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->startPartyChat(J)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Failed to start party chat"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 530
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public stopPartyChat(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 537
    if-eqz v0, :cond_0

    .line 551
    :goto_0
    return-object v0

    .line 542
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->connect(Lcom/oculus/horizon/platformplugin/PlatformPluginManager$Client;)V

    .line 543
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    .line 544
    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 543
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->isCallingApplicationAllowedToModifySystemVoip(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 545
    const-string v0, "start"

    invoke-static {p1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->makeSystemVoipPermissionError(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$000(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->stopPartyChat()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Failed to stop party chat"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 551
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public updatePlatformContext(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1187
    if-eqz v0, :cond_0

    .line 1200
    :goto_0
    return-object v0

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v0}, Lcom/oculus/horizon/service/OVRService;->access$300(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 1193
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$600(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/service/ExternalPlatformLocal;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/oculus/horizon/service/ExternalPlatformLocal;->getAppID(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1194
    iget-object v1, p0, Lcom/oculus/horizon/service/OVRService$4;->this$0:Lcom/oculus/horizon/service/OVRService;

    invoke-static {v1}, Lcom/oculus/horizon/service/OVRService;->access$1400(Lcom/oculus/horizon/service/OVRService;)Lcom/oculus/horizon/platform/PlatformContext;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/oculus/horizon/platform/PlatformContext;->parse(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1200
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 1195
    :catch_0
    move-exception v0

    .line 1196
    :goto_1
    invoke-static {}, Lcom/oculus/horizon/service/OVRService;->access$200()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Failed to parse input"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1197
    const/4 v0, 0x0

    goto :goto_0

    .line 1195
    :catch_1
    move-exception v0

    goto :goto_1
.end method
