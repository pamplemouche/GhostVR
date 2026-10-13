.class public Lcom/oculus/horizon/api/common/Item;
.super Ljava/lang/Object;
.source "Item.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/common/Item$StoreWideOffer;,
        Lcom/oculus/horizon/api/common/Item$Developer;,
        Lcom/oculus/horizon/api/common/Item$Organization;,
        Lcom/oculus/horizon/api/common/Item$Descriptor;,
        Lcom/oculus/horizon/api/common/Item$AgeRating;,
        Lcom/oculus/horizon/api/common/Item$ChangeLog;,
        Lcom/oculus/horizon/api/common/Item$ChangeLogs;,
        Lcom/oculus/horizon/api/common/Item$AgeRatingImage;,
        Lcom/oculus/horizon/api/common/Item$IARCRating;,
        Lcom/oculus/horizon/api/common/Item$IARCCert;,
        Lcom/oculus/horizon/api/common/Item$BuyBoxSection;,
        Lcom/oculus/horizon/api/common/Item$ObbBinary;,
        Lcom/oculus/horizon/api/common/Item$AndroidBinary;,
        Lcom/oculus/horizon/api/common/Item$DeveloperResponse;,
        Lcom/oculus/horizon/api/common/Item$QualityRating;,
        Lcom/oculus/horizon/api/common/Item$QualityRatings;,
        Lcom/oculus/horizon/api/common/Item$QualityRatingHistogram;,
        Lcom/oculus/horizon/api/common/Item$Language;,
        Lcom/oculus/horizon/api/common/Item$AppStoreOffer;,
        Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;,
        Lcom/oculus/horizon/api/common/Item$Metadata;,
        Lcom/oculus/horizon/api/common/Item$BundleItems;,
        Lcom/oculus/horizon/api/common/Item$IsDemoOf;,
        Lcom/oculus/horizon/api/common/Item$CinemaVideo;
    }
.end annotation


# instance fields
.field public __typename:Ljava/lang/String;

.field public age_rating:Lcom/oculus/horizon/api/common/Item$AgeRating;

.field public app_viewer_id:Ljava/lang/String;

.field public banner_target:Lcom/oculus/horizon/api/common/BannerTarget;

.field public bundle_items:Lcom/oculus/horizon/api/common/Item$BundleItems;

.field public category:Ljava/lang/String;

.field public category_name:Ljava/lang/String;

.field public chromecast_audio_enabled:Z

.field public cinema_video:Lcom/oculus/horizon/api/common/Item$CinemaVideo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public comfort_rating:Ljava/lang/String;

.field public comfort_rating_name:Ljava/lang/String;

.field public cover_landscape_image:Lcom/oculus/http/common/Image;

.field public cover_square_image:Lcom/oculus/http/common/Image;

.field public current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

.field public developer_filtered_livestreaming_status:Ljava/lang/String;

.field public developer_name:Ljava/lang/String;

.field public developer_privacy_policy_url:Ljava/lang/String;

.field public developer_terms_of_service_url:Ljava/lang/String;

.field public display_long_description:Ljava/lang/String;

.field public display_name:Ljava/lang/String;

.field public display_short_description:Ljava/lang/String;

.field public entitlement:Lcom/oculus/horizon/api/common/Entitlement;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public extra_buy_box_section:Lcom/oculus/horizon/api/common/Item$BuyBoxSection;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public genre_names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public grouping:Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;

.field public iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

.field public id:Ljava/lang/String;

.field public internet_connection:Ljava/lang/String;

.field public internet_connection_name:Ljava/lang/String;

.field public is_demo_of:Lcom/oculus/horizon/api/common/Item$IsDemoOf;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public is_viewer_entitled:Z

.field public latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public livestreaming_audio_hooking_enabled:Z

.field public metadata_for_user:Lcom/oculus/horizon/api/common/Item$Metadata;

.field public microphone_usage:Ljava/lang/String;

.field public min_recommended_version_code:I

.field public min_required_version_code:I

.field public organization:Lcom/oculus/horizon/api/common/Item$Organization;

.field public parent_application:Lcom/oculus/horizon/api/common/Item;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public platform:Ljava/lang/String;

.field public publisher_name:Ljava/lang/String;

.field public purchasable_items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Item;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public quality_rating_aggregate:F

.field public quality_rating_histogram_aggregate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Item$QualityRatingHistogram;",
            ">;"
        }
    .end annotation
.end field

.field public quality_ratings_by_viewer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Item$QualityRating;",
            ">;"
        }
    .end annotation
.end field

.field public release_date:I

.field public screenshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/http/common/Image;",
            ">;"
        }
    .end annotation
.end field

.field public share_capabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public small_landscape_image:Lcom/oculus/http/common/Image;

.field public store_wide_offers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Item$StoreWideOffer;",
            ">;"
        }
    .end annotation
.end field

.field public style_theme:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public supported_binaries:Lcom/oculus/horizon/api/common/Item$ChangeLogs;

.field public supported_in_app_languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Item$Language;",
            ">;"
        }
    .end annotation
.end field

.field public supported_input_devices_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field public supported_player_modes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public term_in_sec:I

.field public thumbnail:Lcom/oculus/http/common/Image;

.field public user_interaction_mode_names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public user_reviews2:Lcom/oculus/horizon/api/common/Item$QualityRatings;

.field public video_trailer:Lcom/oculus/horizon/api/common/Video;

.field public website_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinaryVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 858
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->version:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBinaryVersionCode()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 863
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget v0, v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->version_code:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntitlementHash()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 703
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->entitlement:Lcom/oculus/horizon/api/common/Entitlement;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->entitlement:Lcom/oculus/horizon/api/common/Entitlement;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Entitlement;->signed_token:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExternalSignaturesAsJson()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/oculus/horizon/api/common/Item;->isAppSupportedOnCurrentDevice()Z

    move-result v0

    const-string v1, "Item %s:%s is not supported on this device."

    iget-object v2, p0, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    .line 659
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 664
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->external_signatures:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->external_signatures:Ljava/util/List;

    .line 665
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    :cond_0
    const/4 v0, 0x0

    .line 675
    :goto_0
    return-object v0

    .line 670
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 671
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->external_signatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 672
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 675
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemForUniversalSearch()Lcom/oculus/horizon/api/common/Item;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 736
    iget-object v2, p0, Lcom/oculus/horizon/api/common/Item;->__typename:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 746
    :goto_1
    return-object p0

    .line 736
    :pswitch_0
    const-string v3, "CinemaVideo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 738
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->purchasable_items:Ljava/util/List;

    .line 739
    invoke-static {v0}, Lcom/oculus/util/collection/CollectionUtil;->isNotNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->purchasable_items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item;

    .line 741
    :goto_2
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oculus/horizon/api/common/Item;->metadata_for_user:Lcom/oculus/horizon/api/common/Item$Metadata;

    if-eqz v1, :cond_1

    .line 742
    iget-object v1, p0, Lcom/oculus/horizon/api/common/Item;->metadata_for_user:Lcom/oculus/horizon/api/common/Item$Metadata;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$Metadata;->poster_image:Lcom/oculus/http/common/Image;

    iput-object v1, v0, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    :cond_1
    move-object p0, v0

    .line 744
    goto :goto_1

    .line 739
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 736
    nop

    :pswitch_data_0
    .packed-switch 0xbb307ea
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getLastUsed()J
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->entitlement:Lcom/oculus/horizon/api/common/Entitlement;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->entitlement:Lcom/oculus/horizon/api/common/Entitlement;

    iget-wide v0, v0, Lcom/oculus/horizon/api/common/Entitlement;->last_used:J

    goto :goto_0
.end method

.method public getLatestAPKUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 826
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->uri:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLatestApkAndObbSize()J
    .locals 4

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/oculus/horizon/api/common/Item;->getLatestApkSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/oculus/horizon/api/common/Item;->getLatestOBBSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getLatestApkSize()J
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    if-nez v0, :cond_0

    .line 844
    const-wide/16 v0, 0x0

    .line 846
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget-wide v0, v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->size:J

    goto :goto_0
.end method

.method public getLatestOBBSize()J
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->obb_binary:Lcom/oculus/horizon/api/common/Item$ObbBinary;

    if-nez v0, :cond_1

    .line 851
    :cond_0
    const-wide/16 v0, 0x0

    .line 853
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->obb_binary:Lcom/oculus/horizon/api/common/Item$ObbBinary;

    iget-wide v0, v0, Lcom/oculus/horizon/api/common/Item$ObbBinary;->size:J

    goto :goto_0
.end method

.method public getLatestOBBUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 830
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->obb_binary:Lcom/oculus/horizon/api/common/Item$ObbBinary;

    if-nez v0, :cond_1

    .line 831
    :cond_0
    const/4 v0, 0x0

    .line 833
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->obb_binary:Lcom/oculus/horizon/api/common/Item$ObbBinary;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$ObbBinary;->uri:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOtherInAppItem()Lcom/oculus/horizon/api/common/Item;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 757
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->cinema_video:Lcom/oculus/horizon/api/common/Item$CinemaVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->cinema_video:Lcom/oculus/horizon/api/common/Item$CinemaVideo;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$CinemaVideo;->purchasable_items:Ljava/util/List;

    .line 758
    invoke-static {v0}, Lcom/oculus/util/collection/CollectionUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->cinema_video:Lcom/oculus/horizon/api/common/Item$CinemaVideo;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$CinemaVideo;->purchasable_items:Ljava/util/List;

    .line 759
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    :cond_0
    move-object v1, v2

    .line 772
    :cond_1
    :goto_0
    return-object v1

    .line 762
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->cinema_video:Lcom/oculus/horizon/api/common/Item$CinemaVideo;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$CinemaVideo;->purchasable_items:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item;

    .line 763
    iget-object v1, p0, Lcom/oculus/horizon/api/common/Item;->cinema_video:Lcom/oculus/horizon/api/common/Item$CinemaVideo;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$CinemaVideo;->purchasable_items:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/api/common/Item;

    .line 764
    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    move-object v1, v2

    .line 765
    goto :goto_0

    .line 767
    :cond_4
    iget-object v3, v0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 769
    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v0

    .line 770
    goto :goto_0

    :cond_5
    move-object v1, v2

    .line 772
    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/oculus/horizon/api/common/Item;->isAppSupportedOnCurrentDevice()Z

    move-result v0

    const-string v1, "Item %s:%sis not supported on this device."

    iget-object v2, p0, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    .line 650
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 655
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 874
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->permissions:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getSquareImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->cover_square_image:Lcom/oculus/http/common/Image;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    iget-object v0, v0, Lcom/oculus/http/common/Image;->uri:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->cover_square_image:Lcom/oculus/http/common/Image;

    iget-object v0, v0, Lcom/oculus/http/common/Image;->uri:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTargetAndroidSDKVersion()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 868
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget v0, v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->target_android_sdk_version:I

    .line 869
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserReviews()Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/api/common/Item$QualityRating;",
            ">;"
        }
    .end annotation

    .prologue
    .line 808
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->user_reviews2:Lcom/oculus/horizon/api/common/Item$QualityRatings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->user_reviews2:Lcom/oculus/horizon/api/common/Item$QualityRatings;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$QualityRatings;->nodes:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->user_reviews2:Lcom/oculus/horizon/api/common/Item$QualityRatings;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$QualityRatings;->nodes:Ljava/util/List;

    .line 810
    iget-object v1, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    if-eqz v1, :cond_0

    .line 811
    iget-object v1, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->user_quality_rating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    .line 812
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oculus/horizon/api/common/Item$QualityRating;->hasText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 813
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 818
    :goto_0
    return-object v0

    .line 816
    :cond_0
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 818
    :cond_1
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public isAppSupportedOnCurrentDevice()Z
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->package_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidAppBundle()Z
    .locals 2

    .prologue
    .line 720
    const-string v0, "AppItemBundle"

    iget-object v1, p0, Lcom/oculus/horizon/api/common/Item;->__typename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isValidApplication()Z
    .locals 2

    .prologue
    .line 698
    const-string v0, "Application"

    iget-object v1, p0, Lcom/oculus/horizon/api/common/Item;->__typename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oculus/horizon/api/common/Item;->isAppSupportedOnCurrentDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidBanner()Z
    .locals 2

    .prologue
    .line 716
    const-string v0, "AppStoreBanner"

    iget-object v1, p0, Lcom/oculus/horizon/api/common/Item;->__typename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isValidBasedOnType()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 679
    iget-object v2, p0, Lcom/oculus/horizon/api/common/Item;->__typename:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 693
    :goto_1
    return v0

    .line 679
    :sswitch_0
    const-string v3, "Application"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string v3, "AppStoreBanner"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "AppItemBundle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "IAPItem"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "InAppRentalItem"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "CinemaVideo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    .line 681
    :pswitch_0
    invoke-virtual {p0}, Lcom/oculus/horizon/api/common/Item;->isValidApplication()Z

    move-result v0

    goto :goto_1

    .line 683
    :pswitch_1
    invoke-virtual {p0}, Lcom/oculus/horizon/api/common/Item;->isValidBanner()Z

    move-result v0

    goto :goto_1

    .line 685
    :pswitch_2
    invoke-virtual {p0}, Lcom/oculus/horizon/api/common/Item;->isValidAppBundle()Z

    move-result v0

    goto :goto_1

    .line 687
    :pswitch_3
    invoke-virtual {p0}, Lcom/oculus/horizon/api/common/Item;->isValidInAppItem()Z

    move-result v0

    goto :goto_1

    .line 689
    :pswitch_4
    invoke-virtual {p0}, Lcom/oculus/horizon/api/common/Item;->isValidInAppRentalItem()Z

    move-result v0

    goto :goto_1

    .line 691
    :pswitch_5
    invoke-virtual {p0}, Lcom/oculus/horizon/api/common/Item;->isValidCinemaVideo()Z

    move-result v0

    goto :goto_1

    .line 679
    nop

    :sswitch_data_0
    .sparse-switch
        -0x76e3d295 -> :sswitch_3
        -0x3ff252d0 -> :sswitch_0
        -0x3ce1c5ed -> :sswitch_4
        -0x1ddf31aa -> :sswitch_2
        -0x17457d54 -> :sswitch_1
        0xbb307ea -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isValidCinemaVideo()Z
    .locals 2

    .prologue
    .line 732
    const-string v0, "CinemaVideo"

    iget-object v1, p0, Lcom/oculus/horizon/api/common/Item;->__typename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isValidInAppItem()Z
    .locals 2

    .prologue
    .line 724
    const-string v0, "IAPItem"

    iget-object v1, p0, Lcom/oculus/horizon/api/common/Item;->__typename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isValidInAppRentalItem()Z
    .locals 2

    .prologue
    .line 728
    const-string v0, "InAppRentalItem"

    iget-object v1, p0, Lcom/oculus/horizon/api/common/Item;->__typename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isValidUnknownType()Z
    .locals 2

    .prologue
    .line 781
    const-string v0, "Application"

    iget-object v1, p0, Lcom/oculus/horizon/api/common/Item;->__typename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AppStoreBanner"

    iget-object v1, p0, Lcom/oculus/horizon/api/common/Item;->__typename:Ljava/lang/String;

    .line 782
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AppItemBundle"

    iget-object v1, p0, Lcom/oculus/horizon/api/common/Item;->__typename:Ljava/lang/String;

    .line 783
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IAPItem"

    iget-object v1, p0, Lcom/oculus/horizon/api/common/Item;->__typename:Ljava/lang/String;

    .line 784
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "InAppRentalItem"

    iget-object v1, p0, Lcom/oculus/horizon/api/common/Item;->__typename:Ljava/lang/String;

    .line 785
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->__typename:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public latestBinaryUseExternalStorage()Z
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget-boolean v0, v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->can_use_external_storage:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
