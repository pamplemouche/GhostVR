.class public Lcom/oculus/ocms/unifiedtelemetryservice/UnifiedTelemetryService;
.super Landroid/app/Service;
.source "UnifiedTelemetryService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mLoggingHandler:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/ocms/unifiedtelemetryservice/UnifiedTelemetryService;)V
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/ocms/unifiedtelemetryservice/UnifiedTelemetryService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/ocms/unifiedtelemetryservice/UnifiedTelemetryService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/ocms/unifiedtelemetryservice/UnifiedTelemetryService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/ocms/unifiedtelemetryservice/UnifiedTelemetryService;)V
    .locals 1

    .prologue
    .line 16
    invoke-static {p0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->$ul_$xXXcom_oculus_unifiedtelemetry_unifiedlogging_LoggingHandler$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/ocms/unifiedtelemetryservice/UnifiedTelemetryService;->mLoggingHandler:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-static {p0}, Lcom/oculus/util/device/DeviceUtils;->$ul_$xXXcom_oculus_util_device_DeviceUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/util/device/DeviceUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/ocms/unifiedtelemetryservice/UnifiedTelemetryService;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/oculus/ocms/unifiedtelemetryservice/UnifiedTelemetryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/ocms/unifiedtelemetryservice/UnifiedTelemetryService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/ocms/unifiedtelemetryservice/UnifiedTelemetryService;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    invoke-virtual {v0}, Lcom/oculus/util/device/DeviceUtils;->isStandAloneDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/ocms/unifiedtelemetryservice/UnifiedTelemetryService;->mLoggingHandler:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 16
    invoke-static {p0, p0}, Lcom/oculus/ocms/unifiedtelemetryservice/UnifiedTelemetryService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/ocms/unifiedtelemetryservice/UnifiedTelemetryService;)V

    .line 27
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/oculus/ocms/unifiedtelemetryservice/UnifiedTelemetryService;->TAG:Ljava/lang/String;

    const-string v1, "OCMS UnifiedTelemetryService onStartCommand called"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x1

    return v0
.end method
