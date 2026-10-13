.class public interface abstract Lcom/oculus/horizon/legacy/social/SocialManager$FriendRequestsListener;
.super Ljava/lang/Object;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FriendRequestsListener"
.end annotation


# virtual methods
.method public abstract onFriendRequestAccepted(Lcom/oculus/horizon/api/common/user/User;)V
.end method

.method public abstract onFriendRequestActionError(Lcom/oculus/http/core/base/ApiError;)V
.end method

.method public abstract onFriendRequestRejected(Lcom/oculus/horizon/api/common/user/User;)V
.end method

.method public abstract onFriendRequestsError(Lcom/oculus/http/core/base/ApiError;)V
.end method

.method public abstract setFriendRequests(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/social/model/FriendRequest;",
            ">;)V"
        }
    .end annotation
.end method
