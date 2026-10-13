.class public Lcom/oculus/horizon/api/common/user/FriendRequestUser;
.super Lcom/oculus/horizon/api/common/user/BasicUser;
.source "FriendRequestUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/api/common/user/FriendRequestUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public user_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/oculus/horizon/api/common/user/FriendRequestUser$1;

    invoke-direct {v0}, Lcom/oculus/horizon/api/common/user/FriendRequestUser$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/oculus/horizon/api/common/user/BasicUser;-><init>(Landroid/os/Parcel;)V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->user_id:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 38
    instance-of v0, p1, Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    if-eqz v0, :cond_0

    .line 39
    check-cast p1, Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    iget-object v0, p1, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 43
    :goto_0
    return v0

    .line 40
    :cond_0
    instance-of v0, p1, Lcom/oculus/horizon/api/common/user/User;

    if-eqz v0, :cond_1

    .line 41
    check-cast p1, Lcom/oculus/horizon/api/common/user/User;

    iget-object v0, p1, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->user_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/api/common/user/BasicUser;->writeToParcel(Landroid/os/Parcel;I)V

    .line 33
    iget-object v0, p0, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->user_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    return-void
.end method
