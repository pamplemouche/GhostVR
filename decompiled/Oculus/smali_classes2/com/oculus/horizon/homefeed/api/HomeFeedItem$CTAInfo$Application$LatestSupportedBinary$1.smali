.class final Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary$1;
.super Ljava/lang/Object;
.source "HomeFeedItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;

    invoke-direct {v0, p1}, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;
    .locals 1

    .prologue
    .line 66
    new-array v0, p1, [Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary$1;->newArray(I)[Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;

    move-result-object v0

    return-object v0
.end method
