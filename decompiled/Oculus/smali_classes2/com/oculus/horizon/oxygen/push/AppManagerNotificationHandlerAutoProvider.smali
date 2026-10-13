.class public Lcom/oculus/horizon/oxygen/push/AppManagerNotificationHandlerAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "AppManagerNotificationHandlerAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/oxygen/push/AppManagerNotificationHandler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/oxygen/push/AppManagerNotificationHandler;
    .locals 5

    .prologue
    .line 17
    const-string v0, "getMethod_com.oculus.horizon.oxygen.push.AppManagerNotificationHandler"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 19
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/oxygen/push/AppManagerNotificationHandler;

    .line 20
    invoke-static {p0}, Lcom/oculus/errorreporting/ErrorReportingModule;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v1

    .line 21
    invoke-static {p0}, Lcom/oculus/horizon/oxygen/push/OxygenPushModule;->$ul_$xXXcom_facebook_oxygen_preloads_sdk_firstparty_settings_FirstPartyMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartyMethods;

    move-result-object v2

    .line 22
    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v3

    .line 23
    invoke-static {p0}, Lcom/facebook/oxygen/sdk/status/PreloadSdkStatusModule;->$ul_$xXXcom_facebook_oxygen_sdk_status_PreloadSdkStatus$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/oxygen/push/AppManagerNotificationHandler;-><init>(Lcom/oculus/errorreporting/ErrorReporter;Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartyMethods;Lcom/oculus/horizon/logging/OculusLogger;Lcom/facebook/oxygen/sdk/status/PreloadSdkStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/oculus/horizon/oxygen/push/AppManagerNotificationHandlerAutoProvider;->get()Lcom/oculus/horizon/oxygen/push/AppManagerNotificationHandler;

    move-result-object v0

    return-object v0
.end method
