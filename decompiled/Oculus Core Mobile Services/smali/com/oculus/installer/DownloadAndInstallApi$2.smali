.class Lcom/oculus/installer/DownloadAndInstallApi$2;
.super Ljava/lang/Object;
.source "DownloadAndInstallApi.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/installer/DownloadAndInstallApi;->checkEntitlementPreconditions(Ljava/lang/String;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lcom/oculus/library/model/App;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/installer/DownloadAndInstallApi;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/installer/DownloadAndInstallApi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/oculus/installer/DownloadAndInstallApi$2;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    iput-object p2, p0, Lcom/oculus/installer/DownloadAndInstallApi$2;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/oculus/library/model/App;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/oculus/library/model/App;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oculus/installer/DownloadAndInstallApi$2;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    invoke-static {v0}, Lcom/oculus/installer/DownloadAndInstallApi;->access$300(Lcom/oculus/installer/DownloadAndInstallApi;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/credentials/Credentials;

    .line 106
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oculus/auth/credentials/Credentials;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    sget-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->NOT_LOGGED_IN:Lcom/oculus/appmanager/info/model/InstallerResultError;

    iget-object v1, p0, Lcom/oculus/installer/DownloadAndInstallApi$2;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/installer/DownloadAndInstallApi$2;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    .line 108
    invoke-static {v2}, Lcom/oculus/installer/DownloadAndInstallApi;->access$200(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/oculus/time/Clock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/time/Clock;->now()J

    move-result-wide v2

    .line 107
    invoke-static {v0, v1, v2, v3}, Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;->createException(Lcom/oculus/appmanager/info/model/InstallerResultError;Ljava/lang/String;J)Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;

    move-result-object v0

    throw v0

    .line 110
    :cond_1
    const/4 v0, 0x1

    sget v1, Lcom/oculus/libraryapi/OVRLibraryModule$UL_id;->$ul_$xXXcom_oculus_libraryapi_OVRLibrary$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/installer/DownloadAndInstallApi$2;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    invoke-static {v2}, Lcom/oculus/installer/DownloadAndInstallApi;->access$400(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibrary;

    iget-object v1, p0, Lcom/oculus/installer/DownloadAndInstallApi$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v7

    .line 111
    if-nez v7, :cond_2

    .line 112
    sget-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->NO_ENTITLEMENT:Lcom/oculus/appmanager/info/model/InstallerResultError;

    iget-object v1, p0, Lcom/oculus/installer/DownloadAndInstallApi$2;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/installer/DownloadAndInstallApi$2;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    .line 113
    invoke-static {v2}, Lcom/oculus/installer/DownloadAndInstallApi;->access$200(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/oculus/time/Clock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/time/Clock;->now()J

    move-result-wide v2

    .line 112
    invoke-static {v0, v1, v2, v3}, Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;->createException(Lcom/oculus/appmanager/info/model/InstallerResultError;Ljava/lang/String;J)Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;

    move-result-object v0

    throw v0

    .line 115
    :cond_2
    const/4 v0, 0x2

    sget v1, Lcom/oculus/util/device/DeviceModule$UL_id;->$ul_$xXXcom_oculus_util_device_InstallationDiskSpaceUtil$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/installer/DownloadAndInstallApi$2;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    invoke-static {v2}, Lcom/oculus/installer/DownloadAndInstallApi;->access$400(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/util/device/InstallationDiskSpaceUtil;

    iget-wide v2, v7, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    iget-wide v4, v7, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    iget-boolean v6, v7, Lcom/oculus/library/model/App;->installableOnExternalStorage:Z

    invoke-virtual/range {v1 .. v6}, Lcom/oculus/util/device/InstallationDiskSpaceUtil;->canInstallApp(JJZ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 117
    sget-object v0, Lcom/oculus/appmanager/info/model/InstallerResultError;->LOW_STORAGE:Lcom/oculus/appmanager/info/model/InstallerResultError;

    iget-object v1, v7, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/installer/DownloadAndInstallApi$2;->val$packageName:Ljava/lang/String;

    iget-object v3, v7, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/installer/DownloadAndInstallApi$2;->this$0:Lcom/oculus/installer/DownloadAndInstallApi;

    .line 122
    invoke-static {v4}, Lcom/oculus/installer/DownloadAndInstallApi;->access$200(Lcom/oculus/installer/DownloadAndInstallApi;)Lcom/oculus/time/Clock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oculus/time/Clock;->now()J

    move-result-wide v4

    .line 117
    invoke-static/range {v0 .. v5}, Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;->createException(Lcom/oculus/appmanager/info/model/InstallerResultError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;

    move-result-object v0

    throw v0

    .line 124
    :cond_3
    return-object v7
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/oculus/installer/DownloadAndInstallApi$2;->then(Lbolts/Task;)Lcom/oculus/library/model/App;

    move-result-object v0

    return-object v0
.end method
