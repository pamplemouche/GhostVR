.class public interface abstract Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Invites;
.super Ljava/lang/Object;
.source "SocialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Invites"
.end annotation


# virtual methods
.method public abstract getInvites()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oculus/horizon/api/common/Invite;",
            ">;"
        }
    .end annotation
.end method
