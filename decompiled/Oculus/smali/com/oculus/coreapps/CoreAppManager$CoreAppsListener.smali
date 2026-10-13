.class public interface abstract Lcom/oculus/coreapps/CoreAppManager$CoreAppsListener;
.super Ljava/lang/Object;
.source "CoreAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/coreapps/CoreAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CoreAppsListener"
.end annotation


# virtual methods
.method public abstract onAppProgress(Lcom/oculus/coreapps/CoreApp;)V
.end method

.method public abstract onCompletedInstalls([Lcom/oculus/coreapps/CoreApp;)V
.end method

.method public abstract onFetchError(Lcom/oculus/http/core/base/ApiError;)V
.end method
