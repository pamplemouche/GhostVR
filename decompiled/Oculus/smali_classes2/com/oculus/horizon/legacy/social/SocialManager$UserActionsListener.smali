.class public interface abstract Lcom/oculus/horizon/legacy/social/SocialManager$UserActionsListener;
.super Ljava/lang/Object;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserActionsListener"
.end annotation


# virtual methods
.method public abstract onFriendRequestSendError(Lcom/oculus/http/core/base/ApiError;)V
.end method

.method public abstract onFriendRequestSent(Lcom/oculus/horizon/api/common/user/User;)V
.end method

.method public abstract onFriendRequestSent(Lcom/oculus/horizon/social/api/SearchResultUser;)V
.end method
