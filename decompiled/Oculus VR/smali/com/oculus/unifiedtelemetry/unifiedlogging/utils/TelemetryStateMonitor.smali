.class public Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;
.super Ljava/lang/Object;
.source "TelemetryStateMonitor.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mSettingsManager:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 3
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/oculus/util/device/DeviceUtils;->$ul_$xXXcom_oculus_util_device_DeviceUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/util/device/DeviceUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    .line 22
    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;->TAG:Ljava/lang/String;

    const-string v1, "TelemetryStateMonitor isStandAloneDevice = %b"

    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    invoke-virtual {v2}, Lcom/oculus/util/device/DeviceUtils;->isStandAloneDevice()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    invoke-virtual {v0}, Lcom/oculus/util/device/DeviceUtils;->isStandAloneDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 24
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;

    invoke-direct {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;-><init>()V

    iput-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;->mSettingsManager:Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/SettingsManager;

    .line 26
    :cond_0
    return-void
.end method
