.class public Lcom/oculus/appmanager/installer/service/MC$qe_oculus_horizon_download_control;
.super Ljava/lang/Object;
.source "MC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/installer/service/MC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "qe_oculus_horizon_download_control"
.end annotation


# static fields
.field public static final __CONFIG__:I

.field public static final app_install_version_code_artificial_limit:J

.field public static final consistency_deleting_state_timeout_mins:J

.field public static final consistency_downloaded_state_timeout_mins:J

.field public static final consistency_installing_state_timeout_mins:J

.field public static final consistency_queued_download_state_timeout_mins:J

.field public static final consistency_verified_state_timeout_mins:J

.field public static final consistency_verifying_state_timeout_mins:J

.field public static final enable_download_queue_gear:J

.field public static final enable_download_queue_go:J

.field public static final is_consistency_checker_enabled:J

.field public static final is_install_version_code_check_enabled:J

.field public static final max_concurrent_request:J

.field public static final whitelisted_app_install_version_code_artificial_limit:J

.field public static final whitelisted_package_list_for_version_code_check:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    sget v0, Lcom/facebook/mobileconfig/MobileConfigConfigs;->qe_oculus_horizon_download_control:I

    sput v0, Lcom/oculus/appmanager/installer/service/MC$qe_oculus_horizon_download_control;->__CONFIG__:I

    .line 74
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->qe_oculus_horizon_download_control_app_install_version_code_artificial_limit:J

    sput-wide v0, Lcom/oculus/appmanager/installer/service/MC$qe_oculus_horizon_download_control;->app_install_version_code_artificial_limit:J

    .line 79
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams1;->qe_oculus_horizon_download_control_consistency_deleting_state_timeout_mins:J

    sput-wide v0, Lcom/oculus/appmanager/installer/service/MC$qe_oculus_horizon_download_control;->consistency_deleting_state_timeout_mins:J

    .line 84
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->qe_oculus_horizon_download_control_consistency_downloaded_state_timeout_mins:J

    sput-wide v0, Lcom/oculus/appmanager/installer/service/MC$qe_oculus_horizon_download_control;->consistency_downloaded_state_timeout_mins:J

    .line 89
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->qe_oculus_horizon_download_control_consistency_installing_state_timeout_mins:J

    sput-wide v0, Lcom/oculus/appmanager/installer/service/MC$qe_oculus_horizon_download_control;->consistency_installing_state_timeout_mins:J

    .line 94
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams1;->qe_oculus_horizon_download_control_consistency_queued_download_state_timeout_mins:J

    sput-wide v0, Lcom/oculus/appmanager/installer/service/MC$qe_oculus_horizon_download_control;->consistency_queued_download_state_timeout_mins:J

    .line 99
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->qe_oculus_horizon_download_control_consistency_verified_state_timeout_mins:J

    sput-wide v0, Lcom/oculus/appmanager/installer/service/MC$qe_oculus_horizon_download_control;->consistency_verified_state_timeout_mins:J

    .line 104
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->qe_oculus_horizon_download_control_consistency_verifying_state_timeout_mins:J

    sput-wide v0, Lcom/oculus/appmanager/installer/service/MC$qe_oculus_horizon_download_control;->consistency_verifying_state_timeout_mins:J

    .line 109
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams2;->qe_oculus_horizon_download_control_enable_download_queue_gear:J

    sput-wide v0, Lcom/oculus/appmanager/installer/service/MC$qe_oculus_horizon_download_control;->enable_download_queue_gear:J

    .line 114
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->qe_oculus_horizon_download_control_enable_download_queue_go:J

    sput-wide v0, Lcom/oculus/appmanager/installer/service/MC$qe_oculus_horizon_download_control;->enable_download_queue_go:J

    .line 119
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->qe_oculus_horizon_download_control_is_consistency_checker_enabled:J

    sput-wide v0, Lcom/oculus/appmanager/installer/service/MC$qe_oculus_horizon_download_control;->is_consistency_checker_enabled:J

    .line 124
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams2;->qe_oculus_horizon_download_control_is_install_version_code_check_enabled:J

    sput-wide v0, Lcom/oculus/appmanager/installer/service/MC$qe_oculus_horizon_download_control;->is_install_version_code_check_enabled:J

    .line 129
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->qe_oculus_horizon_download_control_max_concurrent_request:J

    sput-wide v0, Lcom/oculus/appmanager/installer/service/MC$qe_oculus_horizon_download_control;->max_concurrent_request:J

    .line 134
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->qe_oculus_horizon_download_control_whitelisted_app_install_version_code_artificial_limit:J

    sput-wide v0, Lcom/oculus/appmanager/installer/service/MC$qe_oculus_horizon_download_control;->whitelisted_app_install_version_code_artificial_limit:J

    .line 139
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->qe_oculus_horizon_download_control_whitelisted_package_list_for_version_code_check:J

    sput-wide v0, Lcom/oculus/appmanager/installer/service/MC$qe_oculus_horizon_download_control;->whitelisted_package_list_for_version_code_check:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
