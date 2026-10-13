.class public Lcom/oculus/modules/QuickExperimentsModuleImpl;
.super Lcom/oculus/modules/codegen/QuickExperimentsModule;
.source "QuickExperimentsModuleImpl.java"


# static fields
.field private static final FB_GRAPHAPI_ENDPOINT:Ljava/lang/String; = "https://graph.facebook.com"

.field private static final HORIZON_FB_APP_TOKEN:Ljava/lang/String; = "1437758943160428|3d88b3e2a4e039224c5377a3fcd71d38"

.field private static final QE_API_PATH:Ljava/lang/String; = "sessionless_test_experiment_members"

.field private static final QE_CACHE_FILE:Ljava/lang/String; = "VrShellHomeQECacheFile"

.field private static final QE_OVERRIDES_FILE:Ljava/lang/String; = "VrShellHomeQEOverridesFile"

.field private static final QE_TIMESTAMP_FILE:Ljava/lang/String; = "VrShellHomeQETimeStampFile"

.field private static final TAG:Ljava/lang/String;

.field private static volatile mCachedQEs:Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final mInitialFetchCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static mInstance:Lcom/oculus/modules/QuickExperimentsModuleImpl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final qeList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    const-class v0, Lcom/oculus/modules/QuickExperimentsModuleImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const-string v1, "sessionless__oculus_add_payment_method_in_vr"

    .line 56
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_app_install_toast_universe"

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_cache_cinema_category_universe"

    .line 58
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_cinema_menu_universe"

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_explore_autoplay_universe"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_explore_inline_deep_view"

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_explore_popular_right_now_universe"

    .line 62
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_explore_prime_cta_universe"

    .line 63
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_explore_prime_cta"

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_explore_prime_metadata_universe"

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_explore_preference_customization"

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_explore_recents_universe"

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_explore_rotating_screenshots"

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_explore_show_inline_event_app_download"

    .line 69
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_explore_story_tag_ui_universe"

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_explore_topic_following_universe"

    .line 71
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_1"

    .line 72
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_2"

    .line 73
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_3"

    .line 74
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_4"

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_5"

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_6"

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_7"

    .line 78
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_8"

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_9"

    .line 80
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_10"

    .line 81
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_11"

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_12"

    .line 83
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_13"

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_14"

    .line 85
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_15"

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_16"

    .line 87
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_17"

    .line 88
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_18"

    .line 89
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_19"

    .line 90
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_journey_universe_20"

    .line 91
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_home_badge_color_universe"

    .line 92
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_home_customize_viewtypes_universe"

    .line 93
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_home_exit_resume_notification_universe"

    .line 94
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_home_marketing_unit_special_effects"

    .line 95
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_home_no_internet_indicator_universe"

    .line 96
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_home_percent_positive_ratings_universe"

    .line 97
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_home_redesign_nav_bar_universe"

    .line 98
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_home_saved_universe"

    .line 99
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_home_search_scrolling_universe"

    .line 100
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_home_search_typeahead_v1"

    .line 101
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_home_video_chaining"

    .line 102
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_horizon_party_live_streaming_universe"

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_library_small_cards_universe"

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_mobile_environments"

    .line 105
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_mobile_explore_prefetching"

    .line 106
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_mobile_home_disco_search_bar_universe"

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_mobile_home_search_prompt_universe"

    .line 108
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_mobile_library_badge_updates_category_universe"

    .line 109
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_mobile_search_exact_match_universe"

    .line 110
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_profile_block_experiment"

    .line 111
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_profile_report_experiment"

    .line 112
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_quest_fbconnect_tip_experiment"

    .line 113
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_report_video_preview_experiment"

    .line 114
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_search_home_suggested_keywords_universe"

    .line 115
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_search_home_web_search_universe"

    .line 116
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_search_in_explore"

    .line 117
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_show_wishlist_modal_after_abandon_purchase_universe"

    .line 118
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_store_filtering_universe"

    .line 119
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_store_pdp_universe"

    .line 120
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_video_video_chaining_universe"

    .line 121
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_vrshell_aui_library_badge_universe"

    .line 122
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_vrshell_qetest_universe"

    .line 123
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_vrshell_store_collections_personalization_universe"

    .line 124
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_vrshell_store_collections_universe"

    .line 125
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_vrshell_store_dev_updates_universe"

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_vrshell_store_developer_apps_universe"

    .line 127
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_vrshell_store_purchase_flow_universe"

    .line 128
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_vrshell_store_redesign_layout_universe"

    .line 129
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_vrshell_store_redesign_row_scroll_universe"

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_vrshell_store_redesign_tiles_universe"

    .line 131
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_vrshell_store_search_universe"

    .line 132
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "sessionless__oculus_end_of_feed_jump_to_store"

    .line 133
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->qeList:Lcom/google/common/collect/ImmutableList;

    .line 137
    sput-object v2, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mInstance:Lcom/oculus/modules/QuickExperimentsModuleImpl;

    .line 138
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    sput-object v0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mInitialFetchCallbacks:Ljava/util/List;

    .line 142
    sput-object v2, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mCachedQEs:Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/oculus/modules/codegen/QuickExperimentsModule;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mContext:Landroid/content/Context;

    .line 145
    sput-object p0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mInstance:Lcom/oculus/modules/QuickExperimentsModuleImpl;

    .line 146
    iput-object p1, p0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mContext:Landroid/content/Context;

    .line 147
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$200()Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mCachedQEs:Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;)Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;
    .locals 0
    .param p0, "x0"    # Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;

    .prologue
    .line 42
    sput-object p0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mCachedQEs:Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;

    return-object p0
.end method

.method static synthetic access$300()Lcom/oculus/modules/QuickExperimentsModuleImpl;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mInstance:Lcom/oculus/modules/QuickExperimentsModuleImpl;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mInitialFetchCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/modules/QuickExperimentsModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/modules/QuickExperimentsModuleImpl;
    .param p1, "x1"    # Lcom/oculus/modules/codegen/Resolver;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->internalFetchQEsCallback(Lcom/oculus/modules/codegen/Resolver;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/modules/QuickExperimentsModuleImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/modules/QuickExperimentsModuleImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static fetchAndCacheQEs(Landroid/content/Context;Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "onComplete"    # Ljava/lang/Runnable;
    .param p4, "onFailure"    # Ljava/lang/Runnable;

    .prologue
    .line 323
    :try_start_0
    const-string v3, "oculus_config"

    const-string v4, "status"

    const-string v5, "qe_fetch_started"

    invoke-static {v3, v4, v5}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v3, "https://graph.facebook.com"

    invoke-static {v3}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v14

    .line 330
    .local v14, "urlBuilder":Lokhttp3/HttpUrl$Builder;
    const-string v3, "sessionless_test_experiment_members"

    invoke-virtual {v14, v3}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 331
    const-string v3, "access_token"

    const-string v4, "1437758943160428|3d88b3e2a4e039224c5377a3fcd71d38"

    invoke-virtual {v14, v3, v4}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 332
    const-string v3, "member"

    move-object/from16 v0, p2

    invoke-virtual {v14, v3, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 333
    const-string v12, "testexpt:qe:"

    .line 334
    .local v12, "qePrefix":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    sget-object v3, Lcom/oculus/modules/QuickExperimentsModuleImpl;->qeList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v11, v3, :cond_0

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "quick_experiment_ids["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "testexpt:qe:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v3, Lcom/oculus/modules/QuickExperimentsModuleImpl;->qeList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v11}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v4, v3}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 334
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 337
    :cond_0
    const/4 v11, 0x0

    :goto_1
    sget-object v3, Lcom/oculus/modules/QuickExperimentsModuleImpl;->qeList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v11, v3, :cond_1

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "quick_experiment_hashes["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v14, v3, v4}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 337
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 341
    :cond_1
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v14}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v13

    .line 342
    .local v13, "request":Lokhttp3/Request;
    sget-object v3, Lcom/oculus/modules/QuickExperimentsModuleImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v13}, Lokhttp3/Request;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    new-instance v4, Lcom/oculus/modules/QuickExperimentsModuleImpl$3;

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, p0, v2}, Lcom/oculus/modules/QuickExperimentsModuleImpl$3;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 346
    invoke-interface {v3, v4}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .end local v11    # "i":I
    .end local v12    # "qePrefix":Ljava/lang/String;
    .end local v13    # "request":Lokhttp3/Request;
    .end local v14    # "urlBuilder":Lokhttp3/HttpUrl$Builder;
    :cond_2
    :goto_2
    return-void

    .line 439
    :catch_0
    move-exception v10

    .line 440
    .local v10, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/oculus/modules/QuickExperimentsModuleImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to fetch and cache QEs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v3, "oculus_config"

    const-string v4, "status"

    const-string v5, "qe_fetch_failed"

    const-string v6, "error"

    const-string v7, "cache_error"

    const-string v8, "error_details"

    .line 449
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 442
    invoke-static/range {v3 .. v9}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    if-eqz p4, :cond_2

    .line 452
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method public static initialFetchAsync(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/QuickExperimentsModuleImpl$1;

    invoke-direct {v1, p0}, Lcom/oculus/modules/QuickExperimentsModuleImpl$1;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {v0, v1}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 234
    return-void
.end method

.method private internalFetchQEsCallback(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;>;"
    sget-object v0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mCachedQEs:Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;

    invoke-interface {p1, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 238
    return-void
.end method

.method public static onLogout(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 458
    sget-object v0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "onLogout - clearing files"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v0, "VrShellHomeQECacheFile"

    invoke-static {p0, v0}, Lcom/oculus/util/FileUtils;->deleteFromInternalStorage(Landroid/content/Context;Ljava/lang/String;)V

    .line 460
    const-string v0, "VrShellHomeQETimeStampFile"

    invoke-static {p0, v0}, Lcom/oculus/util/FileUtils;->deleteFromInternalStorage(Landroid/content/Context;Ljava/lang/String;)V

    .line 461
    return-void
.end method


# virtual methods
.method protected getCachedQEsImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;>;"
    sget-object v0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mCachedQEs:Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;

    if-eqz v0, :cond_0

    .line 243
    invoke-direct {p0, p1}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->internalFetchQEsCallback(Lcom/oculus/modules/codegen/Resolver;)V

    .line 258
    :goto_0
    return-void

    .line 245
    :cond_0
    sget-object v0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 247
    :try_start_0
    sget-object v0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mCachedQEs:Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;

    if-eqz v0, :cond_1

    .line 248
    invoke-direct {p0, p1}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->internalFetchQEsCallback(Lcom/oculus/modules/codegen/Resolver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :goto_1
    sget-object v0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 252
    :cond_1
    :try_start_1
    sget-object v0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mInitialFetchCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 255
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mInitialFetchLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected overrideImpl(Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 6
    .param p1, "universeName"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mContext:Landroid/content/Context;

    const-string v4, "VrShellHomeQEOverridesFile"

    invoke-static {v3, v4}, Lcom/oculus/util/FileUtils;->readFromInternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "overrides":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 283
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .local v1, "overrideJson":Lorg/json/JSONObject;
    :goto_0
    :try_start_1
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 296
    :goto_1
    iget-object v3, p0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mContext:Landroid/content/Context;

    const-string v4, "VrShellHomeQEOverridesFile"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oculus/util/FileUtils;->writeToInternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/4 v3, 0x0

    invoke-interface {p3, v3}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 298
    .end local v1    # "overrideJson":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/oculus/modules/QuickExperimentsModuleImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "override(): Json error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 289
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .restart local v1    # "overrideJson":Lorg/json/JSONObject;
    goto :goto_0

    .line 293
    :catch_1
    move-exception v0

    .line 294
    .restart local v0    # "e":Lorg/json/JSONException;
    sget-object v3, Lcom/oculus/modules/QuickExperimentsModuleImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "override(): Json error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected remoteFetchQEsImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/QuickExperimentsModuleImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/oculus/modules/QuickExperimentsModuleImpl$2;-><init>(Lcom/oculus/modules/QuickExperimentsModuleImpl;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, v1}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 314
    return-void
.end method

.method protected removeOverrideImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 6
    .param p1, "universeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mContext:Landroid/content/Context;

    const-string v4, "VrShellHomeQEOverridesFile"

    invoke-static {v3, v4}, Lcom/oculus/util/FileUtils;->readFromInternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "overrides":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 266
    .local v1, "overrideJson":Lorg/json/JSONObject;
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 267
    iget-object v3, p0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mContext:Landroid/content/Context;

    const-string v4, "VrShellHomeQEOverridesFile"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oculus/util/FileUtils;->writeToInternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v1    # "overrideJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 273
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/oculus/modules/QuickExperimentsModuleImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeOverride(): Json error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public shutdownModule()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/oculus/modules/QuickExperimentsModuleImpl;->mInstance:Lcom/oculus/modules/QuickExperimentsModuleImpl;

    .line 152
    return-void
.end method
