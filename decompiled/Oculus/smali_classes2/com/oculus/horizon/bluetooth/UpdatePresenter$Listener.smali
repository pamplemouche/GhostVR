.class public interface abstract Lcom/oculus/horizon/bluetooth/UpdatePresenter$Listener;
.super Ljava/lang/Object;
.source "UpdatePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/UpdatePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onUpdateComplete()Z
.end method

.method public abstract onUpdateNotAvailable()Z
.end method

.method public abstract onUpdateSkip()Z
.end method
