.class public Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application;
.super Ljava/lang/Object;
.source "HomeFeedItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application;",
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

.field public latestSupportedBinary:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latest_supported_binary"
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$1;

    invoke-direct {v0}, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application;->id:Ljava/lang/String;

    .line 75
    const-class v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application;->latestSupportedBinary:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;

    .line 76
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application;->latestSupportedBinary:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application$LatestSupportedBinary;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 82
    return-void
.end method
