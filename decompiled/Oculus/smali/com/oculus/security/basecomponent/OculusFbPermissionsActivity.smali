.class public abstract Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;
.super Landroid/app/Activity;
.source "OculusFbPermissionsActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "EndpointWithoutSwitchOff"
    }
.end annotation


# instance fields
.field private mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mFbPermissionReporter:Lcom/facebook/secure/logger/Reporter;

.field private mIntentLogger:Lcom/oculus/security/basecomponent/OculusIntentLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;)V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;)V
    .locals 1

    .prologue
    .line 20
    invoke-static {p0}, Lcom/oculus/security/basecomponent/OculusIntentLogger;->$ul_$xXXcom_oculus_security_basecomponent_OculusIntentLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/security/basecomponent/OculusIntentLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;->mIntentLogger:Lcom/oculus/security/basecomponent/OculusIntentLogger;

    invoke-static {p0}, Lcom/oculus/errorreporting/ErrorReportingModule;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;)Lcom/oculus/errorreporting/ErrorReporter;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    return-object v0
.end method


# virtual methods
.method protected abstract doCreate(Landroid/os/Bundle;)V
.end method

.method protected abstract getFbPermission()Ljava/lang/String;
.end method

.method protected onCheckPermissions()Z
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;->getFbPermission()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;->mFbPermissionReporter:Lcom/facebook/secure/logger/Reporter;

    .line 75
    invoke-static {v1, p0, v0, v2}, Lcom/facebook/secure/trustedapp/TrustedApp;->checkCallerHasFbPermissions(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/logger/Reporter;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-static {p0, p0}, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;)V

    .line 41
    new-instance v0, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity$1;

    invoke-direct {v0, p0}, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity$1;-><init>(Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;)V

    iput-object v0, p0, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;->mFbPermissionReporter:Lcom/facebook/secure/logger/Reporter;

    .line 60
    invoke-virtual {p0}, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;->onCheckPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Component access not allowed."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;->mIntentLogger:Lcom/oculus/security/basecomponent/OculusIntentLogger;

    const-string v1, "%s/%s"

    .line 65
    invoke-virtual {p0}, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {p0}, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/oculus/security/basecomponent/OculusIntentLogger;->logIntent(Ljava/lang/String;Landroid/content/Intent;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/oculus/security/basecomponent/OculusFbPermissionsActivity;->doCreate(Landroid/os/Bundle;)V

    .line 69
    return-void
.end method
