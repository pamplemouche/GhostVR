.class public Lcom/oculus/horizon/api/common/user/User;
.super Lcom/oculus/horizon/api/common/user/BasicUser;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/api/common/user/User;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public current_room:Lcom/oculus/horizon/api/common/user/CurrentRoom;

.field public email:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public is_pin_set:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public profile_photo:Lcom/oculus/horizon/api/common/user/ProfilePhoto;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/oculus/horizon/api/common/user/User$1;

    invoke-direct {v0}, Lcom/oculus/horizon/api/common/user/User$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/api/common/user/User;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/oculus/util/annotations/UsedByGson;
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/oculus/horizon/api/common/user/BasicUser;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/oculus/horizon/api/common/user/BasicUser;-><init>(Landroid/os/Parcel;)V

    .line 95
    const-class v0, Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    iput-object v0, p0, Lcom/oculus/horizon/api/common/user/User;->profile_photo:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/api/common/user/User;->email:Ljava/lang/String;

    .line 97
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oculus/horizon/api/common/user/User;->is_pin_set:Ljava/lang/Boolean;

    .line 98
    const-class v0, Lcom/oculus/horizon/api/common/user/CurrentRoom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/user/CurrentRoom;

    iput-object v0, p0, Lcom/oculus/horizon/api/common/user/User;->current_room:Lcom/oculus/horizon/api/common/user/CurrentRoom;

    .line 99
    const-class v0, Lcom/oculus/horizon/api/common/user/MutualFriends;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/user/MutualFriends;

    iput-object v0, p0, Lcom/oculus/horizon/api/common/user/User;->mutual_friends:Lcom/oculus/horizon/api/common/user/MutualFriends;

    .line 100
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 119
    instance-of v0, p1, Lcom/oculus/horizon/api/common/user/User;

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Lcom/oculus/horizon/api/common/user/User;

    iget-object v0, p1, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 124
    :goto_0
    return v0

    .line 121
    :cond_0
    instance-of v0, p1, Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    if-eqz v0, :cond_1

    .line 122
    check-cast p1, Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    iget-object v0, p1, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->user_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/api/common/user/BasicUser;->writeToParcel(Landroid/os/Parcel;I)V

    .line 110
    iget-object v0, p0, Lcom/oculus/horizon/api/common/user/User;->profile_photo:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/api/common/user/User;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/oculus/horizon/api/common/user/User;->is_pin_set:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/api/common/user/User;->current_room:Lcom/oculus/horizon/api/common/user/CurrentRoom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/api/common/user/User;->mutual_friends:Lcom/oculus/horizon/api/common/user/MutualFriends;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 115
    return-void
.end method
