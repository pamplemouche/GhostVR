.class public interface abstract Lcom/oculus/horizon/legacy/social/SocialManager$GameInvitesListener;
.super Ljava/lang/Object;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GameInvitesListener"
.end annotation


# virtual methods
.method public abstract onGameInviteAccepted(Lcom/oculus/horizon/api/common/GameInvite;)V
.end method

.method public abstract onGameInviteRejected(Lcom/oculus/horizon/api/common/GameInvite;)V
.end method

.method public abstract onGameInvitesError(Lcom/oculus/http/core/base/ApiError;)V
.end method

.method public abstract setGameInvites(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/GameInvite;",
            ">;)V"
        }
    .end annotation
.end method
