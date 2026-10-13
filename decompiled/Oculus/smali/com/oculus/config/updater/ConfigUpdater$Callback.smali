.class public interface abstract Lcom/oculus/config/updater/ConfigUpdater$Callback;
.super Ljava/lang/Object;
.source "ConfigUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/config/updater/ConfigUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onConfigUpdateComplete()V
.end method

.method public abstract onConfigUpdateFailed(Lcom/oculus/http/core/base/ApiError;)V
.end method
