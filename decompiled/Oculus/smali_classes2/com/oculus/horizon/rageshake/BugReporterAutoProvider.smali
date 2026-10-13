.class public Lcom/oculus/horizon/rageshake/BugReporterAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "BugReporterAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/rageshake/BugReporter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/rageshake/BugReporter;
    .locals 11

    .prologue
    .line 19
    const-string v0, "getMethod_com.oculus.horizon.rageshake.BugReporter"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 21
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/rageshake/BugReporter;

    .line 22
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v2

    .line 23
    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_app_NotificationManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/app/NotificationManager;

    move-result-object v3

    .line 24
    invoke-static {p0}, Lcom/oculus/horizon/flytrap/FlytrapMethods;->$ul_$xXXcom_oculus_horizon_flytrap_FlytrapMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/flytrap/FlytrapMethods;

    move-result-object v4

    .line 25
    invoke-static {p0}, Lcom/oculus/horizon/rageshake/BugReporterFileUtil;->$ul_$xXXcom_oculus_horizon_rageshake_BugReporterFileUtil$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/rageshake/BugReporterFileUtil;

    move-result-object v5

    .line 26
    invoke-static {p0}, Lcom/oculus/horizon/rageshake/BugReportRequestFactory;->$ul_$xXXcom_oculus_horizon_rageshake_BugReportRequestFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/rageshake/BugReportRequestFactory;

    move-result-object v6

    .line 27
    invoke-static {p0}, Lcom/oculus/horizon/rageshake/DebugInformationUtil;->$ul_$xXXcom_oculus_horizon_rageshake_DebugInformationUtil$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/rageshake/DebugInformationUtil;

    move-result-object v7

    .line 28
    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v8

    .line 29
    invoke-static {p0}, Lcom/oculus/config/trusted_user/TrustedUserModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fis$x5Ftrusted$x5Fuser$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v9

    .line 30
    invoke-static {p0}, Lcom/oculus/config/trusted_user/TrustedUserModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Fnon$x5Femployee$x5Fbug$x5Freport$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v10

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/oculus/horizon/rageshake/BugReporter;-><init>(Lcom/facebook/inject/InjectorLike;Landroid/content/Context;Landroid/app/NotificationManager;Lcom/oculus/horizon/flytrap/FlytrapMethods;Lcom/oculus/horizon/rageshake/BugReporterFileUtil;Lcom/oculus/horizon/rageshake/BugReportRequestFactory;Lcom/oculus/horizon/rageshake/DebugInformationUtil;Lcom/oculus/horizon/profile/UserProfileHelper;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
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
    .line 16
    invoke-virtual {p0}, Lcom/oculus/horizon/rageshake/BugReporterAutoProvider;->get()Lcom/oculus/horizon/rageshake/BugReporter;

    move-result-object v0

    return-object v0
.end method
