.class public interface abstract Lcom/oculus/horizon/legacy/social/SocialManager$FriendsListener;
.super Ljava/lang/Object;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FriendsListener"
.end annotation


# virtual methods
.method public abstract onFriendsError(Lcom/oculus/http/core/base/ApiError;)V
.end method

.method public abstract onUnfriend(Lcom/oculus/horizon/api/common/user/User;)V
.end method

.method public abstract onUnfriendError(Lcom/oculus/http/core/base/ApiError;)V
.end method

.method public abstract setFriends(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/user/User;",
            ">;)V"
        }
    .end annotation
.end method
