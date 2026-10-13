.class public interface abstract Lcom/oculus/horizon/legacy/social/SocialManager$FacebookFriendsPolicyListener;
.super Ljava/lang/Object;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FacebookFriendsPolicyListener"
.end annotation


# virtual methods
.method public abstract onFacebookFriendsPolicyError(Lcom/oculus/http/core/base/ApiError;)V
.end method

.method public abstract onFacebookFriendsPolicyGet(Lcom/oculus/horizon/api/fbconnect/FBFriendPolicy;)V
.end method
