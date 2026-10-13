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
