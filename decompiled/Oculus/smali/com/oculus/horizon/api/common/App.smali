.class public Lcom/oculus/horizon/api/common/App;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/api/common/App;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public display_name:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public livestreaming_status:Ljava/lang/String;

.field public platform:Ljava/lang/String;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/oculus/horizon/api/common/App$1;

    invoke-direct {v0}, Lcom/oculus/horizon/api/common/App$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/api/common/App;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/oculus/util/annotations/UsedByGson;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/App;->id:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/App;->display_name:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/App;->livestreaming_status:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/oculus/http/common/Image;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/http/common/Image;

    check-cast v0, [Lcom/oculus/http/common/Image;

    .line 33
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/App;->screenshots:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/api/common/App;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/api/common/App;->display_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/api/common/App;->livestreaming_status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/api/common/App;->screenshots:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/App;->screenshots:Ljava/util/List;

    iget-object v1, p0, Lcom/oculus/horizon/api/common/App;->screenshots:Ljava/util/List;

    .line 43
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/oculus/http/common/Image;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/http/common/Image;

    .line 44
    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 45
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/oculus/http/common/Image;

    goto :goto_0
.end method
