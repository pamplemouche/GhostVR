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

.field public app_viewer_id:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public category_name:Ljava/lang/String;

.field public chromecast_audio_enabled:Z

.field public comfort_rating:Ljava/lang/String;

.field public cover_landscape_image:Lcom/oculus/http/common/Image;

.field public cover_square_image:Lcom/oculus/http/common/Image;

.field public developer_filtered_livestreaming_status:Ljava/lang/String;

.field public display_long_description:Ljava/lang/String;

.field public display_name:Ljava/lang/String;

.field public grouping:Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;

.field public id:Ljava/lang/String;

.field public is_viewer_entitled:Z

.field public latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public livestreaming_audio_hooking_enabled:Z

.field public microphone_usage:Ljava/lang/String;

.field public min_recommended_version_code:I

.field public min_required_version_code:I

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

.field public small_landscape_image:Lcom/oculus/http/common/Image;

.field public thumbnail:Lcom/oculus/http/common/Image;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
