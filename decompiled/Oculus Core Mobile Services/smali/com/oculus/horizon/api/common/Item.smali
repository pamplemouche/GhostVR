.class public Lcom/oculus/horizon/api/common/Item;
.super Ljava/lang/Object;
.source "Item.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/common/Item$ObbBinary;,
        Lcom/oculus/horizon/api/common/Item$AndroidBinary;,
        Lcom/oculus/horizon/api/common/Item$DeveloperResponse;,
        Lcom/oculus/horizon/api/common/Item$QualityRating;,
        Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;,
        Lcom/oculus/horizon/api/common/Item$IsDemoOf;
    }
.end annotation


# instance fields
.field public app_viewer_id:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public chromecast_audio_enabled:Z

.field public comfort_rating:Ljava/lang/String;

.field public cover_landscape_image:Lcom/oculus/http/common/Image;

.field public cover_square_image:Lcom/oculus/http/common/Image;

.field public developer_filtered_livestreaming_status:Ljava/lang/String;

.field public display_name:Ljava/lang/String;

.field public grouping:Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;

.field public id:Ljava/lang/String;

.field public is_demo_of:Lcom/oculus/horizon/api/common/Item$IsDemoOf;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public livestreaming_audio_hooking_enabled:Z

.field public microphone_usage:Ljava/lang/String;

.field public min_recommended_version_code:I

.field public min_required_version_code:I

.field public platform:Ljava/lang/String;

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

.field public thumbnail:Lcom/oculus/http/common/Image;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
