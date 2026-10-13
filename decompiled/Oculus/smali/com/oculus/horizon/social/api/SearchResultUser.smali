.class public Lcom/oculus/horizon/social/api/SearchResultUser;
.super Lcom/oculus/horizon/api/common/user/BasicUser;
.source "SearchResultUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/social/api/SearchResultUser;",
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
    .line 49
    new-instance v0, Lcom/oculus/horizon/social/api/SearchResultUser$1;

    invoke-direct {v0}, Lcom/oculus/horizon/social/api/SearchResultUser$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/social/api/SearchResultUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/oculus/horizon/api/common/user/BasicUser;-><init>(Landroid/os/Parcel;)V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/social/api/SearchResultUser;->user_id:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 41
    instance-of v0, p1, Lcom/oculus/horizon/social/api/SearchResultUser;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/oculus/horizon/social/api/SearchResultUser;

    iget-object v0, p1, Lcom/oculus/horizon/social/api/SearchResultUser;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/horizon/social/api/SearchResultUser;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oculus/horizon/social/api/SearchResultUser;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/api/common/user/BasicUser;->writeToParcel(Landroid/os/Parcel;I)V

    .line 36
    iget-object v0, p0, Lcom/oculus/horizon/social/api/SearchResultUser;->user_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    return-void
.end method
