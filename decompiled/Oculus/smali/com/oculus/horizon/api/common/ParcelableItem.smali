.class public Lcom/oculus/horizon/api/common/ParcelableItem;
.super Lcom/oculus/horizon/api/common/Item;
.source "ParcelableItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/api/common/ParcelableItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/oculus/horizon/api/common/ParcelableItem$1;

    invoke-direct {v0}, Lcom/oculus/horizon/api/common/ParcelableItem$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/api/common/ParcelableItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 69
    invoke-direct {p0}, Lcom/oculus/horizon/api/common/Item;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->__typename:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->id:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->display_name:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->display_long_description:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->comfort_rating:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->category:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->category_name:Ljava/lang/String;

    .line 77
    const-class v0, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->grouping:Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;

    .line 78
    const-class v0, Lcom/oculus/http/common/Image;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/http/common/Image;

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->cover_square_image:Lcom/oculus/http/common/Image;

    .line 79
    const-class v0, Lcom/oculus/http/common/Image;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/http/common/Image;

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->cover_landscape_image:Lcom/oculus/http/common/Image;

    .line 80
    const-class v0, Lcom/oculus/http/common/Image;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/http/common/Image;

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->thumbnail:Lcom/oculus/http/common/Image;

    .line 81
    const-class v0, Lcom/oculus/http/common/Image;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/http/common/Image;

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->small_landscape_image:Lcom/oculus/http/common/Image;

    .line 82
    const-class v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->quality_rating_aggregate:F

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->quality_rating_histogram_aggregate:Ljava/util/List;

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->quality_rating_histogram_aggregate:Ljava/util/List;

    const-class v3, Lcom/oculus/horizon/api/common/Item$QualityRatingHistogram;

    .line 86
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 85
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->quality_ratings_by_viewer:Ljava/util/List;

    .line 88
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->quality_ratings_by_viewer:Ljava/util/List;

    const-class v3, Lcom/oculus/horizon/api/common/Item$QualityRating;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->is_viewer_entitled:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->app_viewer_id:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->developer_filtered_livestreaming_status:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->livestreaming_audio_hooking_enabled:Z

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->chromecast_audio_enabled:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->microphone_usage:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->min_recommended_version_code:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->min_required_version_code:I

    .line 97
    return-void

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0

    :cond_1
    move v0, v2

    .line 92
    goto :goto_1

    :cond_2
    move v1, v2

    .line 93
    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;Lcom/oculus/http/common/Image;Lcom/oculus/http/common/Image;Lcom/oculus/http/common/Image;Lcom/oculus/http/common/Image;Lcom/oculus/horizon/api/common/Item$AndroidBinary;FLjava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;",
            "Lcom/oculus/http/common/Image;",
            "Lcom/oculus/http/common/Image;",
            "Lcom/oculus/http/common/Image;",
            "Lcom/oculus/http/common/Image;",
            "Lcom/oculus/horizon/api/common/Item$AndroidBinary;",
            "F",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Item$QualityRatingHistogram;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Item$QualityRating;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/oculus/horizon/api/common/Item;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->__typename:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->id:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->display_name:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->display_long_description:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->comfort_rating:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->category:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->category_name:Ljava/lang/String;

    .line 50
    iput-object p8, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->grouping:Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;

    .line 51
    iput-object p9, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->cover_square_image:Lcom/oculus/http/common/Image;

    .line 52
    iput-object p10, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->cover_landscape_image:Lcom/oculus/http/common/Image;

    .line 53
    iput-object p11, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->thumbnail:Lcom/oculus/http/common/Image;

    .line 54
    iput-object p12, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->small_landscape_image:Lcom/oculus/http/common/Image;

    .line 55
    iput-object p13, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    .line 56
    iput p14, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->quality_rating_aggregate:F

    .line 57
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->quality_rating_histogram_aggregate:Ljava/util/List;

    .line 58
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->quality_ratings_by_viewer:Ljava/util/List;

    .line 59
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->is_viewer_entitled:Z

    .line 60
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->app_viewer_id:Ljava/lang/String;

    .line 61
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->developer_filtered_livestreaming_status:Ljava/lang/String;

    .line 62
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->livestreaming_audio_hooking_enabled:Z

    .line 63
    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->chromecast_audio_enabled:Z

    .line 64
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->microphone_usage:Ljava/lang/String;

    .line 65
    move/from16 v0, p23

    iput v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->min_recommended_version_code:I

    .line 66
    move/from16 v0, p24

    iput v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->min_required_version_code:I

    .line 67
    return-void
.end method

.method public static from(Lcom/oculus/horizon/api/common/InAppItem;)Lcom/oculus/horizon/api/common/ParcelableItem;
    .locals 26

    .prologue
    .line 128
    new-instance v1, Lcom/oculus/horizon/api/common/ParcelableItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/horizon/api/common/InAppItem;->__typename:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/horizon/api/common/InAppItem;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/horizon/api/common/InAppItem;->display_name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oculus/horizon/api/common/InAppItem;->display_long_description:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oculus/horizon/api/common/InAppItem;->cover_landscape_image:Lcom/oculus/http/common/Image;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v24, -0x80000000

    const/high16 v25, -0x80000000

    invoke-direct/range {v1 .. v25}, Lcom/oculus/horizon/api/common/ParcelableItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;Lcom/oculus/http/common/Image;Lcom/oculus/http/common/Image;Lcom/oculus/http/common/Image;Lcom/oculus/http/common/Image;Lcom/oculus/horizon/api/common/Item$AndroidBinary;FLjava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;II)V

    return-object v1
.end method

.method public static from(Lcom/oculus/horizon/api/common/Item;)Lcom/oculus/horizon/api/common/ParcelableItem;
    .locals 26

    .prologue
    .line 100
    new-instance v1, Lcom/oculus/horizon/api/common/ParcelableItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->__typename:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oculus/horizon/api/common/Item;->display_long_description:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oculus/horizon/api/common/Item;->comfort_rating:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oculus/horizon/api/common/Item;->category:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oculus/horizon/api/common/Item;->category_name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oculus/horizon/api/common/Item;->grouping:Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oculus/horizon/api/common/Item;->cover_square_image:Lcom/oculus/http/common/Image;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oculus/horizon/api/common/Item;->thumbnail:Lcom/oculus/http/common/Image;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oculus/horizon/api/common/Item;->small_landscape_image:Lcom/oculus/http/common/Image;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/oculus/horizon/api/common/Item;->quality_rating_aggregate:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->quality_rating_histogram_aggregate:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->quality_ratings_by_viewer:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->app_viewer_id:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->developer_filtered_livestreaming_status:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oculus/horizon/api/common/Item;->livestreaming_audio_hooking_enabled:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oculus/horizon/api/common/Item;->chromecast_audio_enabled:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->microphone_usage:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oculus/horizon/api/common/Item;->min_recommended_version_code:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oculus/horizon/api/common/Item;->min_required_version_code:I

    move/from16 v25, v0

    invoke-direct/range {v1 .. v25}, Lcom/oculus/horizon/api/common/ParcelableItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;Lcom/oculus/http/common/Image;Lcom/oculus/http/common/Image;Lcom/oculus/http/common/Image;Lcom/oculus/http/common/Image;Lcom/oculus/horizon/api/common/Item$AndroidBinary;FLjava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;II)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->__typename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->display_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->display_long_description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->comfort_rating:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->category_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->grouping:Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->cover_square_image:Lcom/oculus/http/common/Image;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 166
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->cover_landscape_image:Lcom/oculus/http/common/Image;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 167
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->thumbnail:Lcom/oculus/http/common/Image;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 168
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->small_landscape_image:Lcom/oculus/http/common/Image;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 169
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 170
    iget v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->quality_rating_aggregate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 171
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->quality_rating_histogram_aggregate:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 172
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->quality_ratings_by_viewer:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 173
    iget-boolean v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->is_viewer_entitled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 174
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->app_viewer_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->developer_filtered_livestreaming_status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-boolean v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->livestreaming_audio_hooking_enabled:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 177
    iget-boolean v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->chromecast_audio_enabled:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 178
    iget-object v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->microphone_usage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->min_recommended_version_code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v0, p0, Lcom/oculus/horizon/api/common/ParcelableItem;->min_required_version_code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    return-void

    :cond_0
    move v0, v2

    .line 173
    goto :goto_0

    :cond_1
    move v0, v2

    .line 176
    goto :goto_1

    :cond_2
    move v1, v2

    .line 177
    goto :goto_2
.end method
