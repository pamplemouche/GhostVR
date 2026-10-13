.class public Lcom/oculus/systemutilities/module/GateKeepers;
.super Ljava/lang/Object;
.source "GateKeepers.java"


# static fields
.field private static final GK_API_PATH:Ljava/lang/String; = "features"

.field private static final GK_CACHE_FILE:Ljava/lang/String; = "VrShellHomeGKCacheFile"

.field private static final GK_EXTRA_FILE:Ljava/lang/String; = "VrShellHomeGKExtraFile"

.field private static final GK_OVERRIDES_FILE:Ljava/lang/String; = "VrShellHomeGKOverridesFile"

.field private static MODULE_NAME:Ljava/lang/String; = null

.field private static final OCULUS_GRAPHAPI_ENDPOINT:Ljava/lang/String; = "https://ghostvr.pamplemouche.com"

.field private static final TAG:Ljava/lang/String;

.field public static final gkList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mCachedGKsJSON:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final mInitialFetchCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static mInstance:Lcom/oculus/systemutilities/module/GateKeepers;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public RVRCtxTag:J

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    const-class v0, Lcom/oculus/systemutilities/module/GateKeepers;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemutilities/module/GateKeepers;->MODULE_NAME:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/oculus/systemutilities/module/GateKeepers;->MODULE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/oculus/systemutilities/module/GateKeepers;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const-string v1, "dash_events"

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "feed_content_creators"

    .line 53
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_abuse_reporters_enqueue_in_test_srt_queue"

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_action_on_press"

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_avatar_deeplink"

    .line 56
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_avatar_v2_upsell"

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_core2_avatar_v2_enabled"

    .line 58
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_cornerstone_edit_avatar_button_deeplink"

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_dash_new_belt_model"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_dash_new_grabbing_mechanics"

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_dash_no_worlds_store"

    .line 62
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_dash_panel_context_menu"

    .line 63
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_dash_window_focus"

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_developer"

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_events"

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_explore_center_on_first_story"

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_explore_no_media"

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_explore_pagination"

    .line 69
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_explore_trusted_tester"

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_explore_video_finished_view"

    .line 71
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_explore_collection_loading_back_button"

    .line 72
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_explore_use_media_player"

    .line 73
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_gallery_enable_facebook"

    .line 74
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_gallery_smart_folder_navigation"

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_gallery_cardboard_audio"

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_gallery_three_d_photo_support"

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_home_explore_interest_selection"

    .line 78
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_home_oculus_employees"

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_home_saved_media_save_button"

    .line 80
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_home2_wishlists"

    .line 81
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_is_trusted_user"

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_livestream_to_groups"

    .line 83
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_messenger_new_message_notification"

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_messenger_social_panel_mobile"

    .line 85
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_mobile_enable_guardian_settings"

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_mobile_settings_bluetooth_pairing"

    .line 87
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_mobile_settings_controller_effects"

    .line 88
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_mobile_settings_developer_guardian_toggle"

    .line 89
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_mobile_settings_device_microphone"

    .line 90
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_mobile_settings_night_shift"

    .line 91
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_mobile_settings_oculus_button_killswitch"

    .line 92
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_mobile_settings_redesign"

    .line 93
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_mobile_settings_release_process"

    .line 94
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_mobile_settings_software_update_button"

    .line 95
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_mobile_settings_storage_manager"

    .line 96
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_mobile_settings_use_test_environments"

    .line 97
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_mobile_settings_volume"

    .line 98
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_pacific_vrnux_demoreel"

    .line 99
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_pc_developer_settings"

    .line 100
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_pdp_app_support_website"

    .line 101
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_player_mode_roomscale"

    .line 102
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_rooms_personal_rooms"

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_rr"

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_search_search_the_web_button"

    .line 105
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_search_typeahead"

    .line 106
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_tv_in_app_downloads"

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_skyline_abuse_prevention"

    .line 108
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_skyline_multiple_devices"

    .line 109
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_skyline_disable_sensor_warnings"

    .line 110
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_skyline_disable_worlds_launch"

    .line 111
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_skyline_notifications"

    .line 112
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_social_panel_v2_mobile"

    .line 113
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_social_panel_v2_friend_finder"

    .line 114
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_social_panel_v2_strangers_settings"

    .line 115
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_video_allow_screen_capture"

    .line 116
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_video_use_barrel"

    .line 117
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_video_use_bypassed_equirect"

    .line 118
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vrshell_anytimeui_guardian_3dof_option"

    .line 119
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vrshell_aui_library_badge"

    .line 120
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vrshell_home_quick_promotion_v0"

    .line 121
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vrshell_home_unknown_sources"

    .line 122
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vrshell_store_environments"

    .line 123
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vrshell_store_holiday_sale_2017_ui"

    .line 124
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vrshell_store_redesign_autoscroll"

    .line 125
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vrshell_purchase_history"

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vrshell_wishlists"

    .line 127
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vr_events_kill_switch"

    .line 128
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_worlds_mp_avatars_and_voices"

    .line 129
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_gallery_use_mobile_config"

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_home_use_mobile_config"

    .line 131
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_home_validation_for_mobile_config_gk"

    .line 132
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_notifs_headset_prefs_v9"

    .line 133
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemutilities/module/GateKeepers;->gkList:Lcom/google/common/collect/ImmutableList;

    .line 137
    sput-object v2, Lcom/oculus/systemutilities/module/GateKeepers;->mInstance:Lcom/oculus/systemutilities/module/GateKeepers;

    .line 138
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    sput-object v0, Lcom/oculus/systemutilities/module/GateKeepers;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oculus/systemutilities/module/GateKeepers;->mInitialFetchCallbacks:Ljava/util/List;

    .line 141
    sput-object v2, Lcom/oculus/systemutilities/module/GateKeepers;->mCachedGKsJSON:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/systemutilities/module/GateKeepers;->mContext:Landroid/content/Context;

    .line 144
    sput-object p0, Lcom/oculus/systemutilities/module/GateKeepers;->mInstance:Lcom/oculus/systemutilities/module/GateKeepers;

    .line 145
    iput-object p1, p0, Lcom/oculus/systemutilities/module/GateKeepers;->mContext:Landroid/content/Context;

    .line 146
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oculus/systemutilities/module/GateKeepers;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 40
    sput-object p0, Lcom/oculus/systemutilities/module/GateKeepers;->mCachedGKsJSON:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Lcom/oculus/systemutilities/module/GateKeepers;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oculus/systemutilities/module/GateKeepers;->mInstance:Lcom/oculus/systemutilities/module/GateKeepers;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oculus/systemutilities/module/GateKeepers;->mInitialFetchCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/systemutilities/module/GateKeepers;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/systemutilities/module/GateKeepers;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oculus/systemutilities/module/GateKeepers;->internalFetchGKsCallback(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/systemutilities/module/GateKeepers;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/systemutilities/module/GateKeepers;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/systemutilities/module/GateKeepers;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oculus/systemutilities/module/GateKeepers;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static describe()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "fetchCachedGKs"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v1, Landroid/util/Pair;

    const-string v2, "removeOverride"

    const-string v3, "+sii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v1, Landroid/util/Pair;

    const-string v2, "override"

    const-string v3, "+sbii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v1, Landroid/util/Pair;

    const-string v2, "remoteFetchGKs"

    const-string v3, "ss"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-object v0
.end method

.method public static fetchAndCacheGKs(Landroid/content/Context;Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "onComplete"    # Ljava/lang/Runnable;
    .param p5, "onFailure"    # Ljava/lang/Runnable;

    .prologue
    .line 312
    :try_start_0
    const-string v3, "oculus_config"

    const-string v4, "status"

    const-string v5, "gk_fetch_started"

    invoke-static {v3, v4, v5}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v3, "https://ghostvr.pamplemouche.com"

    invoke-static {v3}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v3

    .line 318
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v13

    .line 319
    .local v13, "urlBuilder":Lokhttp3/HttpUrl$Builder;
    const-string v3, "features"

    invoke-virtual {v13, v3}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 321
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    sget-object v3, Lcom/oculus/systemutilities/module/GateKeepers;->gkList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v11, v3, :cond_0

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "projects["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v3, Lcom/oculus/systemutilities/module/GateKeepers;->gkList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v11}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v13, v4, v3}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 321
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 324
    :cond_0
    const-string v3, "access_token"

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 326
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 327
    invoke-virtual {v13}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 328
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v12

    .line 329
    .local v12, "request":Lokhttp3/Request;
    sget-object v3, Lcom/oculus/systemutilities/module/GateKeepers;->TAG:Ljava/lang/String;

    invoke-virtual {v12}, Lokhttp3/Request;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {p1, v12}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    new-instance v4, Lcom/oculus/systemutilities/module/GateKeepers$3;

    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v4, v0, p0, v1, v2}, Lcom/oculus/systemutilities/module/GateKeepers$3;-><init>(Ljava/lang/Runnable;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v4}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .end local v11    # "i":I
    .end local v12    # "request":Lokhttp3/Request;
    .end local v13    # "urlBuilder":Lokhttp3/HttpUrl$Builder;
    :cond_1
    :goto_1
    return-void

    .line 425
    :catch_0
    move-exception v10

    .line 426
    .local v10, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/oculus/systemutilities/module/GateKeepers;->TAG:Ljava/lang/String;

    const-string v4, "Failed to fetch and cache GKs"

    invoke-static {v3, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    const-string v3, "oculus_config"

    const-string v4, "status"

    const-string v5, "gk_fetch_failed"

    const-string v6, "error"

    const-string v7, "cache_error"

    const-string v8, "error_details"

    .line 434
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 427
    invoke-static/range {v3 .. v9}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    if-eqz p5, :cond_1

    .line 437
    invoke-interface/range {p5 .. p5}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public static initialFetchAsync(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/systemutilities/module/GateKeepers$1;

    invoke-direct {v1, p0}, Lcom/oculus/systemutilities/module/GateKeepers$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 205
    return-void
.end method

.method private internalFetchGKsCallback(I)V
    .locals 4
    .param p1, "callbackID"    # I

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/oculus/systemutilities/module/GateKeepers;->RVRCtxTag:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oculus/systemutilities/module/GateKeepers;->mCachedGKsJSON:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/oculus/systemutilities/module/GateKeepers;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 209
    return-void
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method

.method public static onLogout(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    sget-object v0, Lcom/oculus/systemutilities/module/GateKeepers;->TAG:Ljava/lang/String;

    const-string v1, "onLogout - clearing files"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v0, "VrShellHomeGKCacheFile"

    invoke-static {p0, v0}, Lcom/oculus/util/FileUtils;->deleteFromInternalStorage(Landroid/content/Context;Ljava/lang/String;)V

    .line 445
    return-void
.end method


# virtual methods
.method public fetchCachedGKs(II)V
    .locals 2
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 227
    sget-object v0, Lcom/oculus/systemutilities/module/GateKeepers;->mCachedGKsJSON:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0, p1}, Lcom/oculus/systemutilities/module/GateKeepers;->internalFetchGKsCallback(I)V

    .line 243
    :goto_0
    return-void

    .line 230
    :cond_0
    sget-object v0, Lcom/oculus/systemutilities/module/GateKeepers;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 232
    :try_start_0
    sget-object v0, Lcom/oculus/systemutilities/module/GateKeepers;->mCachedGKsJSON:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 233
    invoke-direct {p0, p1}, Lcom/oculus/systemutilities/module/GateKeepers;->internalFetchGKsCallback(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :goto_1
    sget-object v0, Lcom/oculus/systemutilities/module/GateKeepers;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 237
    :cond_1
    :try_start_1
    sget-object v0, Lcom/oculus/systemutilities/module/GateKeepers;->mInitialFetchCallbacks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 240
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/oculus/systemutilities/module/GateKeepers;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/oculus/systemutilities/module/GateKeepers;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public override(Ljava/lang/String;ZII)V
    .locals 6
    .param p1, "gkName"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 265
    iget-object v3, p0, Lcom/oculus/systemutilities/module/GateKeepers;->mContext:Landroid/content/Context;

    const-string v4, "VrShellHomeGKOverridesFile"

    invoke-static {v3, v4}, Lcom/oculus/util/FileUtils;->readFromInternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "overrides":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .local v1, "overrideJson":Lorg/json/JSONObject;
    :goto_0
    :try_start_1
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 282
    :goto_1
    iget-object v3, p0, Lcom/oculus/systemutilities/module/GateKeepers;->mContext:Landroid/content/Context;

    const-string v4, "VrShellHomeGKOverridesFile"

    .line 285
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 282
    invoke-static {v3, v4, v5}, Lcom/oculus/util/FileUtils;->writeToInternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-wide v4, p0, Lcom/oculus/systemutilities/module/GateKeepers;->RVRCtxTag:J

    const-string v3, "[]"

    invoke-static {v4, v5, p3, v3}, Lcom/oculus/systemutilities/module/GateKeepers;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 288
    .end local v1    # "overrideJson":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/oculus/systemutilities/module/GateKeepers;->TAG:Ljava/lang/String;

    const-string v4, "override(): Json error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 275
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .restart local v1    # "overrideJson":Lorg/json/JSONObject;
    goto :goto_0

    .line 279
    :catch_1
    move-exception v0

    .line 280
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v3, Lcom/oculus/systemutilities/module/GateKeepers;->TAG:Ljava/lang/String;

    const-string v4, "override(): Json error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public remoteFetchGKs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/systemutilities/module/GateKeepers$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/oculus/systemutilities/module/GateKeepers$2;-><init>(Lcom/oculus/systemutilities/module/GateKeepers;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 301
    return-void
.end method

.method public removeOverride(Ljava/lang/String;II)V
    .locals 6
    .param p1, "gkName"    # Ljava/lang/String;
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 246
    iget-object v3, p0, Lcom/oculus/systemutilities/module/GateKeepers;->mContext:Landroid/content/Context;

    const-string v4, "VrShellHomeGKOverridesFile"

    invoke-static {v3, v4}, Lcom/oculus/util/FileUtils;->readFromInternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "overrides":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 249
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, "overrideJson":Lorg/json/JSONObject;
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    iget-object v3, p0, Lcom/oculus/systemutilities/module/GateKeepers;->mContext:Landroid/content/Context;

    const-string v4, "VrShellHomeGKOverridesFile"

    .line 254
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 251
    invoke-static {v3, v4, v5}, Lcom/oculus/util/FileUtils;->writeToInternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v1    # "overrideJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-wide v4, p0, Lcom/oculus/systemutilities/module/GateKeepers;->RVRCtxTag:J

    const-string v3, "[]"

    invoke-static {v4, v5, p2, v3}, Lcom/oculus/systemutilities/module/GateKeepers;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 261
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/oculus/systemutilities/module/GateKeepers;->TAG:Ljava/lang/String;

    const-string v4, "removeOverride(): Json error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public shutdownModule()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    sput-object v0, Lcom/oculus/systemutilities/module/GateKeepers;->mInstance:Lcom/oculus/systemutilities/module/GateKeepers;

    .line 150
    return-void
.end method
