.class public Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;
.super Ljava/lang/Object;
.source "HomeFeedItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LatestSupportedBinary"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary$1;

    invoke-direct {v0}, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;->id:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return-void
.end method
