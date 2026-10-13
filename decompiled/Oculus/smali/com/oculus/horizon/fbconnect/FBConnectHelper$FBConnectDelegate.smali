.class public interface abstract Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;
.super Ljava/lang/Object;
.source "FBConnectHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/fbconnect/FBConnectHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FBConnectDelegate"
.end annotation


# virtual methods
.method public abstract onFBAccountLinkError(Lcom/oculus/http/core/base/ApiError;)V
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onFBAccountLinkSuccess()V
.end method

.method public abstract onFBAccountUnlinkError(Lcom/oculus/http/core/base/ApiError;)V
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onFBAccountUnlinkSuccess()V
.end method

.method public abstract onFBAuthCancelled()V
.end method

.method public abstract onFBAuthError(Lcom/oculus/http/core/base/ApiError;)V
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onFBAuthSuccess(Lcom/facebook/AccessToken;)V
.end method

.method public abstract onFBDataFetchComplete(Lcom/oculus/horizon/fbconnect/FacebookData;)V
    .param p1    # Lcom/oculus/horizon/fbconnect/FacebookData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onFBSyncFriendsError(Lcom/oculus/http/core/base/ApiError;)V
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onFBSyncFriendsSuccess()V
.end method

.method public abstract onFBUnsyncFriendsError(Lcom/oculus/http/core/base/ApiError;)V
    .param p1    # Lcom/oculus/http/core/base/ApiError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onFBUnsyncFriendsSuccess()V
.end method
