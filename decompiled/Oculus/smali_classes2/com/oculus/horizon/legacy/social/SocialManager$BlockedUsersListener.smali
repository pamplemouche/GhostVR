.class public interface abstract Lcom/oculus/horizon/legacy/social/SocialManager$BlockedUsersListener;
.super Ljava/lang/Object;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BlockedUsersListener"
.end annotation


# virtual methods
.method public abstract onBlockUser(Lcom/oculus/horizon/social/api/BlockedUser;)V
.end method

.method public abstract onBlockUserError(Lcom/oculus/http/core/base/ApiError;)V
.end method

.method public abstract onBlockedUsersError(Lcom/oculus/http/core/base/ApiError;)V
.end method

.method public abstract onUnblockUser(Ljava/lang/String;)V
.end method

.method public abstract onUnblockUserError(Lcom/oculus/http/core/base/ApiError;)V
.end method

.method public abstract setBlockedUsers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/social/api/BlockedUser;",
            ">;)V"
        }
    .end annotation
.end method
