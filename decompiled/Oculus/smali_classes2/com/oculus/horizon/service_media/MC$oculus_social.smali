.class public Lcom/oculus/horizon/service_media/MC$oculus_social;
.super Ljava/lang/Object;
.source "MC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service_media/MC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oculus_social"
.end annotation


# static fields
.field public static final __CONFIG__:I

.field public static final friend_online_notification_auto_dismiss_timeout_seconds:J

.field public static final friend_online_notification_high_priority:J

.field public static final is_livestreaming_package_verification_enabled:J

.field public static final is_profile_tune_in_button_enabled:J

.field public static final party_live_streaming_call_failed_status_timeout_seconds:J

.field public static final party_live_streaming_call_ringing_timeout_seconds:J

.field public static final should_launch_aui_party_invite_receive_dialog:J

.field public static final show_friend_online_notification:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    sget v0, Lcom/facebook/mobileconfig/MobileConfigConfigs;->oculus_social:I

    sput v0, Lcom/oculus/horizon/service_media/MC$oculus_social;->__CONFIG__:I

    .line 23
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->oculus_social_friend_online_notification_auto_dismiss_timeout_seconds:J

    sput-wide v0, Lcom/oculus/horizon/service_media/MC$oculus_social;->friend_online_notification_auto_dismiss_timeout_seconds:J

    .line 28
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->oculus_social_friend_online_notification_high_priority:J

    sput-wide v0, Lcom/oculus/horizon/service_media/MC$oculus_social;->friend_online_notification_high_priority:J

    .line 33
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->oculus_social_is_livestreaming_package_verification_enabled:J

    sput-wide v0, Lcom/oculus/horizon/service_media/MC$oculus_social;->is_livestreaming_package_verification_enabled:J

    .line 38
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams2;->oculus_social_is_profile_tune_in_button_enabled:J

    sput-wide v0, Lcom/oculus/horizon/service_media/MC$oculus_social;->is_profile_tune_in_button_enabled:J

    .line 43
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->oculus_social_party_live_streaming_call_failed_status_timeout_seconds:J

    sput-wide v0, Lcom/oculus/horizon/service_media/MC$oculus_social;->party_live_streaming_call_failed_status_timeout_seconds:J

    .line 48
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams2;->oculus_social_party_live_streaming_call_ringing_timeout_seconds:J

    sput-wide v0, Lcom/oculus/horizon/service_media/MC$oculus_social;->party_live_streaming_call_ringing_timeout_seconds:J

    .line 53
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->oculus_social_should_launch_aui_party_invite_receive_dialog:J

    sput-wide v0, Lcom/oculus/horizon/service_media/MC$oculus_social;->should_launch_aui_party_invite_receive_dialog:J

    .line 58
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->oculus_social_show_friend_online_notification:J

    sput-wide v0, Lcom/oculus/horizon/service_media/MC$oculus_social;->show_friend_online_notification:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
