.class public Lcom/oculus/util/device/InstallationDiskSpaceUtil;
.super Ljava/lang/Object;
.source "InstallationDiskSpaceUtil.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation


# instance fields
.field private final mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/oculus/util/device/DeviceUtils;->$ul_$xXXcom_oculus_util_device_DeviceUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/util/device/DeviceUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/util/device/InstallationDiskSpaceUtil;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    .line 19
    return-void
.end method
