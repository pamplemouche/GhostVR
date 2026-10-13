.class public abstract Lcom/oculus/security/basecomponent/OculusFbPermissionSecureService;
.super Lcom/facebook/secure/service/FbPermissionsService;
.source "OculusFbPermissionSecureService.java"


# instance fields
.field private mOculusIntentLogger:Lcom/oculus/security/basecomponent/OculusIntentLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/security/basecomponent/OculusFbPermissionSecureService;)V
    .locals 1

    .prologue
    .line 12
    invoke-static {p0}, Lcom/oculus/security/basecomponent/OculusIntentLogger;->$ul_$xXXcom_oculus_security_basecomponent_OculusIntentLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/security/basecomponent/OculusIntentLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/security/basecomponent/OculusFbPermissionSecureService;->mOculusIntentLogger:Lcom/oculus/security/basecomponent/OculusIntentLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/facebook/secure/service/FbPermissionsService;-><init>()V

    return-void
.end method
