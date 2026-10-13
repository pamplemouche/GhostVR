.class public interface abstract Lcom/oculus/horizon/legacy/social/SocialManager$UserProfileListener;
.super Ljava/lang/Object;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserProfileListener"
.end annotation


# virtual methods
.method public abstract onUserProfileRefreshError(Lcom/oculus/http/core/base/ApiError;)V
.end method

.method public abstract onUserProfileRefreshed(Lcom/oculus/horizon/api/common/user/User;)V
.end method
