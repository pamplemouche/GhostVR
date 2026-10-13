.class public Lcom/oculus/horizon/homefeed/api/HomeFeedItem;
.super Ljava/lang/Object;
.source "HomeFeedItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Image;,
        Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;,
        Lcom/oculus/horizon/homefeed/api/HomeFeedItem$StorySource;,
        Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/homefeed/api/HomeFeedItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ctaInfo:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cta_info"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public source:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$StorySource;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field public storyPrimeviewDeepviewBadge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "story_primeview_deepview_badge"
    .end annotation
.end field

.field public targetObject:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target_object"
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public thumbnailImage:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Image;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thumbnail_image"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field public traceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trace_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 308
    new-instance v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$1;

    invoke-direct {v0}, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const-class v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->ctaInfo:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->id:Ljava/lang/String;

    .line 283
    const-class v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$StorySource;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$StorySource;

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->source:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$StorySource;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->storyPrimeviewDeepviewBadge:Ljava/lang/String;

    .line 285
    const-class v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->targetObject:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;

    .line 286
    const-class v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Image;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Image;

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->thumbnailImage:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Image;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->title:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->traceId:Ljava/lang/String;

    .line 289
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public isCompatibleWithDevice()Z
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->ctaInfo:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;

    iget-object v0, v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;->application:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application;

    iget-object v0, v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application;->latestSupportedBinary:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->ctaInfo:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 294
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->source:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$StorySource;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 296
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->storyPrimeviewDeepviewBadge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->targetObject:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Node;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 298
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->thumbnailImage:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$Image;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 299
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem;->traceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    return-void
.end method
