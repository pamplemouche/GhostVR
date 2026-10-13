.class public Lcom/oculus/horizon/social/model/FriendRequest;
.super Ljava/lang/Object;
.source "FriendRequest.java"


# instance fields
.field public final source:Ljava/lang/String;

.field public final user:Lcom/oculus/horizon/api/common/user/FriendRequestUser;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/api/common/user/FriendRequestUser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/oculus/horizon/social/model/FriendRequest;->user:Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    .line 15
    iput-object p2, p0, Lcom/oculus/horizon/social/model/FriendRequest;->source:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 20
    instance-of v0, p1, Lcom/oculus/horizon/social/model/FriendRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/oculus/horizon/social/model/FriendRequest;

    iget-object v0, p1, Lcom/oculus/horizon/social/model/FriendRequest;->user:Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    iget-object v1, p0, Lcom/oculus/horizon/social/model/FriendRequest;->user:Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->equals(Ljava/lang/Object;)Z

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
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/social/model/FriendRequest;->user:Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->hashCode()I

    move-result v0

    return v0
.end method
