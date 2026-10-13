.class public Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;
.super Ljava/lang/Object;
.source "MC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/pdp/adapters/MC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oculus_store"
.end annotation


# static fields
.field public static final __CONFIG__:I

.field public static final auto_refund_policy:J

.field public static final enabled:J

.field public static final horizon_front_page_redesign_clean:J

.field public static final is_app_support_link_enabled_on_pdp:J

.field public static final is_dash_purchase_flow_enabled:J

.field public static final is_dash_search_enabled:J

.field public static final is_horizon_review_percentile_enabled:J

.field public static final is_horizon_section_buy_button_clear_enabled:J

.field public static final is_iarc_enabled:J

.field public static final is_search_typeahead_enabled:J

.field public static final is_store_nav_enabled:J

.field public static final is_worlds_store_disabled:J

.field public static final mobile_wishlists_enabled:J

.field public static final new_feed_enabled:J

.field public static final oculus_cinema_in_store:J

.field public static final oculus_store_genre_names_ranked_gk:J

.field public static final roadblock_config:J

.field public static final twilight_redeem_code:J

.field public static final twilight_remote_install_during_nux:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    sget v0, Lcom/facebook/mobileconfig/MobileConfigConfigs;->oculus_store:I

    sput v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->__CONFIG__:I

    .line 23
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->oculus_store_auto_refund_policy:J

    sput-wide v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->auto_refund_policy:J

    .line 28
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->oculus_store_enabled:J

    sput-wide v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->enabled:J

    .line 33
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->oculus_store_horizon_front_page_redesign_clean:J

    sput-wide v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->horizon_front_page_redesign_clean:J

    .line 38
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->oculus_store_is_app_support_link_enabled_on_pdp:J

    sput-wide v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->is_app_support_link_enabled_on_pdp:J

    .line 43
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams2;->oculus_store_is_dash_purchase_flow_enabled:J

    sput-wide v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->is_dash_purchase_flow_enabled:J

    .line 48
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams2;->oculus_store_is_dash_search_enabled:J

    sput-wide v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->is_dash_search_enabled:J

    .line 53
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->oculus_store_is_horizon_review_percentile_enabled:J

    sput-wide v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->is_horizon_review_percentile_enabled:J

    .line 58
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams2;->oculus_store_is_horizon_section_buy_button_clear_enabled:J

    sput-wide v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->is_horizon_section_buy_button_clear_enabled:J

    .line 63
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->oculus_store_is_iarc_enabled:J

    sput-wide v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->is_iarc_enabled:J

    .line 68
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams1;->oculus_store_is_search_typeahead_enabled:J

    sput-wide v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->is_search_typeahead_enabled:J

    .line 73
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams2;->oculus_store_is_store_nav_enabled:J

    sput-wide v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->is_store_nav_enabled:J

    .line 78
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams1;->oculus_store_is_worlds_store_disabled:J

    sput-wide v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->is_worlds_store_disabled:J

    .line 83
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams1;->oculus_store_mobile_wishlists_enabled:J

    sput-wide v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->mobile_wishlists_enabled:J

    .line 88
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams1;->oculus_store_new_feed_enabled:J

    sput-wide v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->new_feed_enabled:J

    .line 93
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams1;->oculus_store_oculus_cinema_in_store:J

    sput-wide v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->oculus_cinema_in_store:J

    .line 98
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->oculus_store_oculus_store_genre_names_ranked_gk:J

    sput-wide v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->oculus_store_genre_names_ranked_gk:J

    .line 103
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams0;->oculus_store_roadblock_config:J

    sput-wide v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->roadblock_config:J

    .line 108
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->oculus_store_twilight_redeem_code:J

    sput-wide v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->twilight_redeem_code:J

    .line 113
    sget-wide v0, Lcom/facebook/mobileconfig/MobileConfigParams3;->oculus_store_twilight_remote_install_during_nux:J

    sput-wide v0, Lcom/oculus/horizon/pdp/adapters/MC$oculus_store;->twilight_remote_install_during_nux:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
