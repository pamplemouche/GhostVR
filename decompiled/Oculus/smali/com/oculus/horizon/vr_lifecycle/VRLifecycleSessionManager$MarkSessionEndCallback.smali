.class public interface abstract Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$MarkSessionEndCallback;
.super Ljava/lang/Object;
.source "VRLifecycleSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MarkSessionEndCallback"
.end annotation


# virtual methods
.method public abstract onError(Lcom/oculus/http/core/base/ApiError;)V
.end method

.method public abstract onNoSessionInfo()V
.end method

.method public abstract onSuccess(Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleResponse;)V
.end method

.method public abstract onTooRecent()V
.end method
