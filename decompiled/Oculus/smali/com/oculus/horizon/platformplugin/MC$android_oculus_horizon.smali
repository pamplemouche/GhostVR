.class public Lcom/oculus/horizon/platformplugin/MC$android_oculus_horizon;
.super Ljava/lang/Object;
.source "MC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/platformplugin/MC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "android_oculus_horizon"
.end annotation


# static fields
.field public static final __CONFIG__:I

.field public static final is_microphone_setting_available:J

.field public static final is_sync_library_status_with_server_enabled:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    sget v0, Lcom/facebook/mobileconfig/MobileConfigConfigs;->android_oculus_horizon:I

    sput v0, Lcom/oculus/horizon/platformplugin/MC$android_oculus_horizon;->__CONFIG__:I

    .line 23
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->android_oculus_horizon_is_microphone_setting_available:J

    sput-wide v0, Lcom/oculus/horizon/platformplugin/MC$android_oculus_horizon;->is_microphone_setting_available:J

    .line 28
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams2;->android_oculus_horizon_is_sync_library_status_with_server_enabled:J

    sput-wide v0, Lcom/oculus/horizon/platformplugin/MC$android_oculus_horizon;->is_sync_library_status_with_server_enabled:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
