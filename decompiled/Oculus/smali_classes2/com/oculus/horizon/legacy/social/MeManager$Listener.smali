.class public interface abstract Lcom/oculus/horizon/legacy/social/MeManager$Listener;
.super Ljava/lang/Object;
.source "MeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/MeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onMyUserDataRefreshError(Lcom/oculus/http/core/base/ApiError;)V
.end method

.method public abstract onMyUserDataRefreshed(Lcom/oculus/horizon/api/common/user/User;)V
    .param p1    # Lcom/oculus/horizon/api/common/user/User;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method
