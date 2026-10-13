.class public Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;
.super Ljava/lang/Object;
.source "HomeFeedItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/homefeed/api/HomeFeedItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CTAInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public application:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "application"
    .end annotation
.end field

.field public oculusDeeplink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oculus_deeplink"
    .end annotation
.end field

.field public packageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package_name"
    .end annotation
.end field

.field public shellDeeplink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shell_deeplink"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$1;

    invoke-direct {v0}, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;->oculusDeeplink:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;->packageName:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;->shellDeeplink:Ljava/lang/String;

    .line 109
    const-class v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application;

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;->application:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application;

    .line 110
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;->oculusDeeplink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;->shellDeeplink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo;->application:Lcom/oculus/horizon/homefeed/api/HomeFeedItem$CTAInfo$Application;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 136
    return-void
.end method
