.class final Lcom/oculus/horizon/api/common/user/ProfilePhoto$1;
.super Ljava/lang/Object;
.source "ProfilePhoto.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/common/user/ProfilePhoto;
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
        "Lcom/oculus/horizon/api/common/user/ProfilePhoto;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oculus/horizon/api/common/user/ProfilePhoto;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oculus/horizon/api/common/user/ProfilePhoto;-><init>(Landroid/os/Parcel;Lcom/oculus/horizon/api/common/user/ProfilePhoto$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/api/common/user/ProfilePhoto$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/oculus/horizon/api/common/user/ProfilePhoto;
    .locals 1

    .prologue
    .line 55
    new-array v0, p1, [Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/api/common/user/ProfilePhoto$1;->newArray(I)[Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    move-result-object v0

    return-object v0
.end method
