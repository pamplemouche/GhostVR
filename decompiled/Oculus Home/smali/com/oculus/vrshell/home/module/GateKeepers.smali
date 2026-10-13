.class public Lcom/oculus/vrshell/home/module/GateKeepers;
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

.field private static mInstance:Lcom/oculus/vrshell/home/module/GateKeepers;
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
    const-class v0, Lcom/oculus/vrshell/home/module/GateKeepers;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/GateKeepers;->MODULE_NAME:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/oculus/vrshell/home/module/GateKeepers;->MODULE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/oculus/vrshell/home/module/GateKeepers;->TAG:Ljava/lang/String;

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

    const-string v1, "oc_referral_system_master_gk"

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_abuse_recording_overlay_software_button"

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_abuse_report_recording_by_default"

    .line 56
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_abuse_reporters_enqueue_in_test_srt_queue"

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_action_on_press"

    .line 58
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_avatar_deeplink"

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_avatar_expressive_editor"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_avatar_use_update_ipc"

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_avatar_v2_upsell"

    .line 62
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_core2_avatar_v2_enabled"

    .line 63
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_cornerstone_edit_avatar_button_deeplink"

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_dash_avatar_editor"

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_dash_lock_dash"

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_dash_native_keyboard"

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_dash_new_belt_model"

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_dash_new_grabbing_mechanics"

    .line 69
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_dash_no_worlds_store"

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_dash_panel_context_menu"

    .line 71
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_dash_panel_pullout"

    .line 72
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_dash_show_guardian_user_settings"

    .line 73
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_dash_window_focus"

    .line 74
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_developer"

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_enable_non_vr_apps_launch_v2"

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_events"

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_explore_center_on_first_story"

    .line 78
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_explore_no_media"

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_explore_pagination"

    .line 80
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_explore_trusted_tester"

    .line 81
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_explore_video_finished_view"

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_explore_collection_loading_back_button"

    .line 83
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_explore_use_media_player"

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_gallery_enable_facebook"

    .line 85
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_gallery_smart_folder_navigation"

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_gallery_cardboard_audio"

    .line 87
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_home_explore_interest_selection"

    .line 88
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_home_oculus_employees"

    .line 89
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_home_saved_media_save_button"

    .line 90
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_home2_wishlists"

    .line 91
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_livestream_to_groups"

    .line 92
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_livestream_to_pages"

    .line 93
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_livestream_ui_update"

    .line 94
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_livestreaming_enable_new_privacy_content"

    .line 95
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_messenger_attachments"

    .line 96
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_messenger_block_action"

    .line 97
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_messenger_deeplinking"

    .line 98
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_messenger_new_message_notification"

    .line 99
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_messenger_social_panel_mobile"

    .line 100
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_messenger_strangers"

    .line 101
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_messenger_voip_in_threads"

    .line 102
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_mobile_home_library_abuse_policy"

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_mobile_home_library_back_button_disco"

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_mobile_home_library_demos"

    .line 105
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_mobile_home_library_tutorials"

    .line 106
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_mobile_home_storage_manager"

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_mobile_search_bar_v2"

    .line 108
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_is_trusted_user"

    .line 109
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_pacific_vrnux_demoreel"

    .line 110
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_party_cancel_invites"

    .line 111
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_party_joinable_calls"

    .line 112
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_party_integrity_features"

    .line 113
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_party_can_see_direct_join_buttons"

    .line 114
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_party_update_type_modal"

    .line 115
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_pc_developer_settings"

    .line 116
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_pdp_app_support_website"

    .line 117
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_photosharing_enable_new_privacy_content"

    .line 118
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_player_mode_roomscale"

    .line 119
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_profile_block"

    .line 120
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_quest_profile_revamp"

    .line 121
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_report_single_inline_player"

    .line 122
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_report_video_preview"

    .line 123
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_report_video_preview_rift"

    .line 124
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_rooms_personal_rooms"

    .line 125
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_search_search_the_web_button"

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_search_typeahead"

    .line 127
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_share_photo_to_groups"

    .line 128
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_skyline_abuse_prevention"

    .line 129
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_skyline_chainmail"

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_skyline_multiple_devices"

    .line 131
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_skyline_disable_sensor_warnings"

    .line 132
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_skyline_disable_worlds_launch"

    .line 133
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_skyline_notifications"

    .line 134
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_skyline_share_button"

    .line 135
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_social_bundle_fb_link_gate"

    .line 136
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_social_feed"

    .line 137
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_social_hub_enabled_in_vr"

    .line 138
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_social_panel_v2_mobile"

    .line 139
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_social_panel_v2_friend_finder"

    .line 140
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_social_panel_v2_strangers_settings"

    .line 141
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_store_content_disco"

    .line 142
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_store_platform_tags_backend_purchase_alerts"

    .line 143
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_store_search_button_in_chrome"

    .line 144
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_store_disco_filtering_vr"

    .line 145
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_store_backend_purchase_alerts"

    .line 146
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_system_report_rift"

    .line 147
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_video_allow_screen_capture"

    .line 148
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_video_use_bypassed_equirect"

    .line 149
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vrshell_aui_library_badge"

    .line 150
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vrshell_home_quick_promotion_v0"

    .line 151
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vrshell_home_storage_button"

    .line 152
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vrshell_home_unknown_sources"

    .line 153
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vrshell_store_backend_purchase_alerts"

    .line 154
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vrshell_store_environments"

    .line 155
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vrshell_store_holiday_sale_2017_ui"

    .line 156
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vrshell_store_redesign_autoscroll"

    .line 157
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vrshell_purchase_history"

    .line 158
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vrshell_wishlists"

    .line 159
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_tv_show_coex_hero"

    .line 160
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_tv_check_partner_update"

    .line 161
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_tv_developers"

    .line 162
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_tv_force_all_coex"

    .line 163
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_tv_video_in_tv"

    .line 164
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_tv_enable_debug_hooks"

    .line 165
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_media_enable_nametags"

    .line 166
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_tv_environment_testing"

    .line 167
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_tv_social_apps_dogfooding"

    .line 168
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_tv_in_app_downloads"

    .line 169
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_tv_disable_prompt_for_update"

    .line 170
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_tv_webtask_auth"

    .line 171
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_user_account_exp"

    .line 172
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_worlds_mp_avatars_and_voices"

    .line 173
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_worlds_recommended_places"

    .line 174
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_worlds_web_permalinks"

    .line 175
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_hybrid_app_external"

    .line 176
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_store_web_quest_tab"

    .line 177
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_store_skyline_dlc_v2"

    .line 178
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vr_events_kill_switch"

    .line 179
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_vr_fb_link"

    .line 180
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_profile_update"

    .line 181
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_gallery_use_mobile_config"

    .line 182
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_home_use_mobile_config"

    .line 183
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "oculus_home_validation_for_mobile_config_gk"

    .line 184
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/GateKeepers;->gkList:Lcom/google/common/collect/ImmutableList;

    .line 188
    sput-object v2, Lcom/oculus/vrshell/home/module/GateKeepers;->mInstance:Lcom/oculus/vrshell/home/module/GateKeepers;

    .line 189
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    sput-object v0, Lcom/oculus/vrshell/home/module/GateKeepers;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oculus/vrshell/home/module/GateKeepers;->mInitialFetchCallbacks:Ljava/util/List;

    .line 192
    sput-object v2, Lcom/oculus/vrshell/home/module/GateKeepers;->mCachedGKsJSON:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/vrshell/home/module/GateKeepers;->mContext:Landroid/content/Context;

    .line 195
    sput-object p0, Lcom/oculus/vrshell/home/module/GateKeepers;->mInstance:Lcom/oculus/vrshell/home/module/GateKeepers;

    .line 196
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/GateKeepers;->mContext:Landroid/content/Context;

    .line 197
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oculus/vrshell/home/module/GateKeepers;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 40
    sput-object p0, Lcom/oculus/vrshell/home/module/GateKeepers;->mCachedGKsJSON:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Lcom/oculus/vrshell/home/module/GateKeepers;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oculus/vrshell/home/module/GateKeepers;->mInstance:Lcom/oculus/vrshell/home/module/GateKeepers;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oculus/vrshell/home/module/GateKeepers;->mInitialFetchCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/vrshell/home/module/GateKeepers;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/vrshell/home/module/GateKeepers;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/home/module/GateKeepers;->internalFetchGKsCallback(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/vrshell/home/module/GateKeepers;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/vrshell/home/module/GateKeepers;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/GateKeepers;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/oculus/vrshell/home/module/GateKeepers;->TAG:Ljava/lang/String;

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
    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "fetchCachedGKs"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v1, Landroid/util/Pair;

    const-string v2, "removeOverride"

    const-string v3, "+sii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v1, Landroid/util/Pair;

    const-string v2, "override"

    const-string v3, "+sbii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v1, Landroid/util/Pair;

    const-string v2, "remoteFetchGKs"

    const-string v3, "ss"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
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
    .line 363
    :try_start_0
    const-string v3, "oculus_config"

    const-string v4, "status"

    const-string v5, "gk_fetch_started"

    invoke-static {v3, v4, v5}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v3, "https://ghostvr.pamplemouche.com"

    invoke-static {v3}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v3

    .line 369
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v13

    .line 370
    .local v13, "urlBuilder":Lokhttp3/HttpUrl$Builder;
    const-string v3, "features"

    invoke-virtual {v13, v3}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 372
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    sget-object v3, Lcom/oculus/vrshell/home/module/GateKeepers;->gkList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v11, v3, :cond_0

    .line 373
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

    sget-object v3, Lcom/oculus/vrshell/home/module/GateKeepers;->gkList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v11}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v13, v4, v3}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 372
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 375
    :cond_0
    const-string v3, "access_token"

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 377
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 378
    invoke-virtual {v13}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 379
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v12

    .line 380
    .local v12, "request":Lokhttp3/Request;
    sget-object v3, Lcom/oculus/vrshell/home/module/GateKeepers;->TAG:Ljava/lang/String;

    invoke-virtual {v12}, Lokhttp3/Request;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p1, v12}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    new-instance v4, Lcom/oculus/vrshell/home/module/GateKeepers$3;

    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v4, v0, p0, v1, v2}, Lcom/oculus/vrshell/home/module/GateKeepers$3;-><init>(Ljava/lang/Runnable;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v4}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .end local v11    # "i":I
    .end local v12    # "request":Lokhttp3/Request;
    .end local v13    # "urlBuilder":Lokhttp3/HttpUrl$Builder;
    :cond_1
    :goto_1
    return-void

    .line 476
    :catch_0
    move-exception v10

    .line 477
    .local v10, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/oculus/vrshell/home/module/GateKeepers;->TAG:Ljava/lang/String;

    const-string v4, "Failed to fetch and cache GKs"

    invoke-static {v3, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    const-string v3, "oculus_config"

    const-string v4, "status"

    const-string v5, "gk_fetch_failed"

    const-string v6, "error"

    const-string v7, "cache_error"

    const-string v8, "error_details"

    .line 486
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 479
    invoke-static/range {v3 .. v9}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    if-eqz p5, :cond_1

    .line 489
    invoke-interface/range {p5 .. p5}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public static initialFetchAsync(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/vrshell/home/module/GateKeepers$1;

    invoke-direct {v1, p0}, Lcom/oculus/vrshell/home/module/GateKeepers$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 256
    return-void
.end method

.method private internalFetchGKsCallback(I)V
    .locals 4
    .param p1, "callbackID"    # I

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/oculus/vrshell/home/module/GateKeepers;->RVRCtxTag:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oculus/vrshell/home/module/GateKeepers;->mCachedGKsJSON:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/oculus/vrshell/home/module/GateKeepers;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 260
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
    .line 495
    sget-object v0, Lcom/oculus/vrshell/home/module/GateKeepers;->TAG:Ljava/lang/String;

    const-string v1, "onLogout - clearing files"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string v0, "VrShellHomeGKCacheFile"

    invoke-static {p0, v0}, Lcom/oculus/util/FileUtils;->deleteFromInternalStorage(Landroid/content/Context;Ljava/lang/String;)V

    .line 497
    return-void
.end method


# virtual methods
.method public fetchCachedGKs(II)V
    .locals 2
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 278
    sget-object v0, Lcom/oculus/vrshell/home/module/GateKeepers;->mCachedGKsJSON:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 279
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/home/module/GateKeepers;->internalFetchGKsCallback(I)V

    .line 294
    :goto_0
    return-void

    .line 281
    :cond_0
    sget-object v0, Lcom/oculus/vrshell/home/module/GateKeepers;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 283
    :try_start_0
    sget-object v0, Lcom/oculus/vrshell/home/module/GateKeepers;->mCachedGKsJSON:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 284
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/home/module/GateKeepers;->internalFetchGKsCallback(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :goto_1
    sget-object v0, Lcom/oculus/vrshell/home/module/GateKeepers;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 288
    :cond_1
    :try_start_1
    sget-object v0, Lcom/oculus/vrshell/home/module/GateKeepers;->mInitialFetchCallbacks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 291
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/oculus/vrshell/home/module/GateKeepers;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/oculus/vrshell/home/module/GateKeepers;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public override(Ljava/lang/String;ZII)V
    .locals 6
    .param p1, "gkName"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 316
    iget-object v3, p0, Lcom/oculus/vrshell/home/module/GateKeepers;->mContext:Landroid/content/Context;

    const-string v4, "VrShellHomeGKOverridesFile"

    invoke-static {v3, v4}, Lcom/oculus/util/FileUtils;->readFromInternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "overrides":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 320
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .local v1, "overrideJson":Lorg/json/JSONObject;
    :goto_0
    :try_start_1
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 333
    :goto_1
    iget-object v3, p0, Lcom/oculus/vrshell/home/module/GateKeepers;->mContext:Landroid/content/Context;

    const-string v4, "VrShellHomeGKOverridesFile"

    .line 336
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 333
    invoke-static {v3, v4, v5}, Lcom/oculus/util/FileUtils;->writeToInternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-wide v4, p0, Lcom/oculus/vrshell/home/module/GateKeepers;->RVRCtxTag:J

    const-string v3, "[]"

    invoke-static {v4, v5, p3, v3}, Lcom/oculus/vrshell/home/module/GateKeepers;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 339
    .end local v1    # "overrideJson":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/oculus/vrshell/home/module/GateKeepers;->TAG:Ljava/lang/String;

    const-string v4, "override(): Json error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 326
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .restart local v1    # "overrideJson":Lorg/json/JSONObject;
    goto :goto_0

    .line 330
    :catch_1
    move-exception v0

    .line 331
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v3, Lcom/oculus/vrshell/home/module/GateKeepers;->TAG:Ljava/lang/String;

    const-string v4, "override(): Json error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public remoteFetchGKs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/vrshell/home/module/GateKeepers$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/oculus/vrshell/home/module/GateKeepers$2;-><init>(Lcom/oculus/vrshell/home/module/GateKeepers;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 352
    return-void
.end method

.method public removeOverride(Ljava/lang/String;II)V
    .locals 6
    .param p1, "gkName"    # Ljava/lang/String;
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 297
    iget-object v3, p0, Lcom/oculus/vrshell/home/module/GateKeepers;->mContext:Landroid/content/Context;

    const-string v4, "VrShellHomeGKOverridesFile"

    invoke-static {v3, v4}, Lcom/oculus/util/FileUtils;->readFromInternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "overrides":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 300
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 301
    .local v1, "overrideJson":Lorg/json/JSONObject;
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    iget-object v3, p0, Lcom/oculus/vrshell/home/module/GateKeepers;->mContext:Landroid/content/Context;

    const-string v4, "VrShellHomeGKOverridesFile"

    .line 305
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 302
    invoke-static {v3, v4, v5}, Lcom/oculus/util/FileUtils;->writeToInternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v1    # "overrideJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-wide v4, p0, Lcom/oculus/vrshell/home/module/GateKeepers;->RVRCtxTag:J

    const-string v3, "[]"

    invoke-static {v4, v5, p2, v3}, Lcom/oculus/vrshell/home/module/GateKeepers;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 312
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/oculus/vrshell/home/module/GateKeepers;->TAG:Ljava/lang/String;

    const-string v4, "removeOverride(): Json error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public shutdownModule()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    sput-object v0, Lcom/oculus/vrshell/home/module/GateKeepers;->mInstance:Lcom/oculus/vrshell/home/module/GateKeepers;

    .line 201
    return-void
.end method
