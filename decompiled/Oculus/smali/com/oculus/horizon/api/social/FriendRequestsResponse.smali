.class public Lcom/oculus/horizon/api/social/FriendRequestsResponse;
.super Ljava/lang/Object;
.source "FriendRequestsResponse.java"

# interfaces
.implements Lcom/oculus/http/core/base/ValidatableApiResponse;


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation


# instance fields
.field public friend_requests_received_2:Lcom/oculus/horizon/api/common/user/FriendRequestsReceived;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oculus/horizon/api/social/FriendRequestsResponse;->friend_requests_received_2:Lcom/oculus/horizon/api/common/user/FriendRequestsReceived;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "FriendRequestsResponse did not have a friend_requests_received_2"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/api/social/FriendRequestsResponse;->friend_requests_received_2:Lcom/oculus/horizon/api/common/user/FriendRequestsReceived;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/FriendRequestsReceived;->edges:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "friend_requests_received_2 had null for edges"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/api/social/FriendRequestsResponse;->friend_requests_received_2:Lcom/oculus/horizon/api/common/user/FriendRequestsReceived;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/FriendRequestsReceived;->edges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/user/FriendRequestsReceived$Edge;

    .line 26
    iget-object v2, v0, Lcom/oculus/horizon/api/common/user/FriendRequestsReceived$Edge;->node:Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    if-nez v2, :cond_3

    .line 27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "friend_requests_received_2 had a null edge"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_3
    iget-object v2, v0, Lcom/oculus/horizon/api/common/user/FriendRequestsReceived$Edge;->node:Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->user_id:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Friend request for user ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/FriendRequestsReceived$Edge;->node:Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] had no user_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_4
    return-void
.end method
