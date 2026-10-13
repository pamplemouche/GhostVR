.class Lcom/oculus/horizon/legacy/social/SocialManager$3$1;
.super Ljava/lang/Object;
.source "SocialManager.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/SocialManager$3;->onResponse(Lcom/oculus/horizon/api/social/FriendRequestsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/oculus/horizon/api/common/user/FriendRequestsReceived$Edge;",
        "Lcom/oculus/horizon/social/model/FriendRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/legacy/social/SocialManager$3;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/SocialManager$3;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$3$1;->this$1:Lcom/oculus/horizon/legacy/social/SocialManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/oculus/horizon/api/common/user/FriendRequestsReceived$Edge;)Lcom/oculus/horizon/social/model/FriendRequest;
    .locals 3

    .prologue
    .line 493
    new-instance v0, Lcom/oculus/horizon/social/model/FriendRequest;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/user/FriendRequestsReceived$Edge;->node:Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    iget-object v2, p1, Lcom/oculus/horizon/api/common/user/FriendRequestsReceived$Edge;->via_source:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/social/model/FriendRequest;-><init>(Lcom/oculus/horizon/api/common/user/FriendRequestUser;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 490
    check-cast p1, Lcom/oculus/horizon/api/common/user/FriendRequestsReceived$Edge;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$3$1;->apply(Lcom/oculus/horizon/api/common/user/FriendRequestsReceived$Edge;)Lcom/oculus/horizon/social/model/FriendRequest;

    move-result-object v0

    return-object v0
.end method
