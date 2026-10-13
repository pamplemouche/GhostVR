.class public Lcom/oculus/autoupdates/MC$oculus_library;
.super Ljava/lang/Object;
.source "MC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/autoupdates/MC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oculus_library"
.end annotation


# static fields
.field public static final __CONFIG__:I

.field public static final auto_update_max_retries:J

.field public static final disable_consistency_checker:J

.field public static final disable_download_queue_standalone:J

.field public static final disable_ocms_deployment:J

.field public static final is_trusted_user:J

.field public static final ocms_deployment:J

.field public static final patch_updates_enabled:J

.field public static final queue_uninstall_requests_enabled:J

.field public static final store_app_esig_enabled:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    sget v0, Lcom/facebook/mobileconfig/MobileConfigConfigs;->oculus_library:I

    sput v0, Lcom/oculus/autoupdates/MC$oculus_library;->__CONFIG__:I

    .line 23
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->oculus_library_disable_consistency_checker:J

    sput-wide v0, Lcom/oculus/autoupdates/MC$oculus_library;->disable_consistency_checker:J

    .line 28
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->oculus_library_disable_download_queue_standalone:J

    sput-wide v0, Lcom/oculus/autoupdates/MC$oculus_library;->disable_download_queue_standalone:J

    .line 33
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->oculus_library_disable_ocms_deployment:J

    sput-wide v0, Lcom/oculus/autoupdates/MC$oculus_library;->disable_ocms_deployment:J

    .line 38
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams2;->oculus_library_is_trusted_user:J

    sput-wide v0, Lcom/oculus/autoupdates/MC$oculus_library;->is_trusted_user:J

    .line 43
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->oculus_library_ocms_deployment:J

    sput-wide v0, Lcom/oculus/autoupdates/MC$oculus_library;->ocms_deployment:J

    .line 48
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams1;->oculus_library_patch_updates_enabled:J

    sput-wide v0, Lcom/oculus/autoupdates/MC$oculus_library;->patch_updates_enabled:J

    .line 53
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->oculus_library_store_app_esig_enabled:J

    sput-wide v0, Lcom/oculus/autoupdates/MC$oculus_library;->store_app_esig_enabled:J

    .line 58
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->oculus_library_queue_uninstall_requests_enabled:J

    sput-wide v0, Lcom/oculus/autoupdates/MC$oculus_library;->queue_uninstall_requests_enabled:J

    .line 63
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams1;->oculus_library_auto_update_max_retries:J

    sput-wide v0, Lcom/oculus/autoupdates/MC$oculus_library;->auto_update_max_retries:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
