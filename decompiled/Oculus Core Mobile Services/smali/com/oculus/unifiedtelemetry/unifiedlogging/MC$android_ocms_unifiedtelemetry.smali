.class public Lcom/oculus/unifiedtelemetry/unifiedlogging/MC$android_ocms_unifiedtelemetry;
.super Ljava/lang/Object;
.source "MC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/unifiedtelemetry/unifiedlogging/MC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "android_ocms_unifiedtelemetry"
.end annotation


# static fields
.field public static final __CONFIG__:I

.field public static final home_duplicate_logging:J

.field public static final home_rollout:J

.field public static final horizon_duplicate_logging:J

.field public static final horizon_rollout:J

.field public static final ocms_duplicate_logging:J

.field public static final ocms_rollout:J

.field public static final oculus_batterystats_bad_sleep:J

.field public static final osupdater_duplicate_logging:J

.field public static final osupdater_rollout:J

.field public static final vrshell_duplicate_logging:J

.field public static final vrshell_rollout:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    sget v0, Lcom/facebook/mobileconfig/MobileConfigConfigs;->android_ocms_unifiedtelemetry:I

    sput v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/MC$android_ocms_unifiedtelemetry;->__CONFIG__:I

    .line 23
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams2;->android_ocms_unifiedtelemetry_home_duplicate_logging:J

    sput-wide v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/MC$android_ocms_unifiedtelemetry;->home_duplicate_logging:J

    .line 28
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->android_ocms_unifiedtelemetry_home_rollout:J

    sput-wide v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/MC$android_ocms_unifiedtelemetry;->home_rollout:J

    .line 33
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->android_ocms_unifiedtelemetry_horizon_duplicate_logging:J

    sput-wide v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/MC$android_ocms_unifiedtelemetry;->horizon_duplicate_logging:J

    .line 38
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams2;->android_ocms_unifiedtelemetry_horizon_rollout:J

    sput-wide v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/MC$android_ocms_unifiedtelemetry;->horizon_rollout:J

    .line 43
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams1;->android_ocms_unifiedtelemetry_oculus_batterystats_bad_sleep:J

    sput-wide v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/MC$android_ocms_unifiedtelemetry;->oculus_batterystats_bad_sleep:J

    .line 48
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams1;->android_ocms_unifiedtelemetry_ocms_duplicate_logging:J

    sput-wide v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/MC$android_ocms_unifiedtelemetry;->ocms_duplicate_logging:J

    .line 53
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams1;->android_ocms_unifiedtelemetry_ocms_rollout:J

    sput-wide v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/MC$android_ocms_unifiedtelemetry;->ocms_rollout:J

    .line 58
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams2;->android_ocms_unifiedtelemetry_osupdater_duplicate_logging:J

    sput-wide v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/MC$android_ocms_unifiedtelemetry;->osupdater_duplicate_logging:J

    .line 63
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->android_ocms_unifiedtelemetry_osupdater_rollout:J

    sput-wide v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/MC$android_ocms_unifiedtelemetry;->osupdater_rollout:J

    .line 68
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams1;->android_ocms_unifiedtelemetry_vrshell_duplicate_logging:J

    sput-wide v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/MC$android_ocms_unifiedtelemetry;->vrshell_duplicate_logging:J

    .line 73
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams1;->android_ocms_unifiedtelemetry_vrshell_rollout:J

    sput-wide v0, Lcom/oculus/unifiedtelemetry/unifiedlogging/MC$android_ocms_unifiedtelemetry;->vrshell_rollout:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
