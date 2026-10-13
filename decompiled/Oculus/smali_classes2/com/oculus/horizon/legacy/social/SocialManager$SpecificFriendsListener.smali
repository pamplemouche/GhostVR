.class public interface abstract Lcom/oculus/horizon/legacy/social/SocialManager$SpecificFriendsListener;
.super Ljava/lang/Object;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SpecificFriendsListener"
.end annotation


# virtual methods
.method public abstract onUserAddedToIncludedUsersList(Lcom/oculus/horizon/api/common/user/User;)V
.end method

.method public abstract onUserRemovedFromIncludedUsersList(Lcom/oculus/horizon/api/common/user/User;)V
.end method
