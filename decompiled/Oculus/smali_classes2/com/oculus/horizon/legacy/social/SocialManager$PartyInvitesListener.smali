.class public interface abstract Lcom/oculus/horizon/legacy/social/SocialManager$PartyInvitesListener;
.super Ljava/lang/Object;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PartyInvitesListener"
.end annotation


# virtual methods
.method public abstract onPartyInviteAccepted(Lcom/oculus/horizon/api/common/PartyInvite;)V
.end method

.method public abstract onPartyInviteRejected(Lcom/oculus/horizon/api/common/PartyInvite;)V
.end method

.method public abstract onPartyInvitesError(Lcom/oculus/http/core/base/ApiError;)V
.end method

.method public abstract setPartyInvites(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/PartyInvite;",
            ">;)V"
        }
    .end annotation
.end method
