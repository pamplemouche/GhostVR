.class final Lcom/oculus/horizon/social/SocialUtils$1;
.super Ljava/lang/Object;
.source "SocialUtils.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/social/SocialUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/oculus/horizon/social/model/FriendRequest;",
        "Lcom/oculus/horizon/api/common/user/BasicUser;",
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
.method public apply(Lcom/oculus/horizon/social/model/FriendRequest;)Lcom/oculus/horizon/api/common/user/BasicUser;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p1, Lcom/oculus/horizon/social/model/FriendRequest;->user:Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lcom/oculus/horizon/social/model/FriendRequest;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/social/SocialUtils$1;->apply(Lcom/oculus/horizon/social/model/FriendRequest;)Lcom/oculus/horizon/api/common/user/BasicUser;

    move-result-object v0

    return-object v0
.end method
