.class public Lcom/oculus/horizon/service/result/IsAppEntitledResultBuilder;
.super Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;
.source "IsAppEntitledResultBuilder.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/service/result/ResultBuilderNoBundle",
        "<",
        "Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mLibrary:Lcom/oculus/libraryapi/OVRLibrary;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mLogger:Lcom/oculus/horizon/service/ServiceLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/oculus/horizon/service/result/IsAppEntitledResultBuilder;

    sput-object v0, Lcom/oculus/horizon/service/result/IsAppEntitledResultBuilder;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/service/OVRService;)V
    .locals 1
    .param p2    # Lcom/oculus/horizon/service/OVRService;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p2}, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;-><init>(Lcom/oculus/horizon/service/OVRService;)V

    .line 26
    invoke-static {p1}, Lcom/oculus/horizon/service/ServiceLogger;->$ul_$xXXcom_oculus_horizon_service_ServiceLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service/ServiceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service/result/IsAppEntitledResultBuilder;->mLogger:Lcom/oculus/horizon/service/ServiceLogger;

    invoke-static {p1}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibrary$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service/result/IsAppEntitledResultBuilder;->mLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    .line 28
    return-void
.end method

.method private reportEntitlementCheck(Ljava/lang/String;Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;)I
    .locals 3

    .prologue
    .line 67
    sget-object v0, Lcom/oculus/horizon/service/result/IsAppEntitledResultBuilder;->TAG:Ljava/lang/Class;

    const-string v1, "reportEntitlementCheck(%s, %s)"

    invoke-virtual {p2}, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/service/result/IsAppEntitledResultBuilder;->mLogger:Lcom/oculus/horizon/service/ServiceLogger;

    invoke-virtual {p2}, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/service/ServiceLogger;->reportEntitlementCheck(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->ordinal()I

    move-result v0

    return v0
.end method


# virtual methods
.method public build(Landroid/os/Bundle;)Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;
    .locals 1

    .prologue
    .line 57
    :try_start_0
    invoke-super {p0, p1}, Lcom/oculus/horizon/service/result/ResultBuilderNoBundle;->build(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    .line 58
    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->NOT_ENTITLED:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 61
    sget-object v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->NOT_ENTITLED:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    goto :goto_0
.end method

.method public bridge synthetic build(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/service/result/IsAppEntitledResultBuilder;->build(Landroid/os/Bundle;)Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    move-result-object v0

    return-object v0
.end method

.method public getResult(Landroid/os/Bundle;Ljava/lang/String;)Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;
    .locals 4

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service/result/IsAppEntitledResultBuilder;->mService:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0}, Lcom/oculus/horizon/service/OVRService;->throwIfCallNotAllowed()V

    .line 36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/service/result/IsAppEntitledResultBuilder;->mLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    .line 38
    invoke-virtual {v0, p2}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->NOT_ENTITLED:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    .line 41
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Lcom/oculus/horizon/service/OVRService$CallerNotSignedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/oculus/horizon/service/OVRService$UserNotLoggedInException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    :goto_1
    invoke-direct {p0, p2, v0}, Lcom/oculus/horizon/service/result/IsAppEntitledResultBuilder;->reportEntitlementCheck(Ljava/lang/String;Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;)I

    .line 50
    return-object v0

    .line 38
    :cond_0
    :try_start_1
    sget-object v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->ENTITLED:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;
    :try_end_1
    .catch Lcom/oculus/horizon/service/OVRService$CallerNotSignedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/oculus/horizon/service/OVRService$UserNotLoggedInException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    sget-object v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->NOT_VR_SIGNED:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    goto :goto_1

    .line 44
    :catch_1
    move-exception v0

    .line 45
    sget-object v0, Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;->NOT_LOGGED_IN:Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    goto :goto_1
.end method

.method public bridge synthetic getResult(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/service/result/IsAppEntitledResultBuilder;->getResult(Landroid/os/Bundle;Ljava/lang/String;)Lcom/oculus/platform/aidl/RemoteConstants$EntitlementResult;

    move-result-object v0

    return-object v0
.end method
