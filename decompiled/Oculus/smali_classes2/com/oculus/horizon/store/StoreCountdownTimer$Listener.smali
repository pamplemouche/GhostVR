.class public interface abstract Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;
.super Ljava/lang/Object;
.source "StoreCountdownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/store/StoreCountdownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCountdownFinish()V
.end method

.method public abstract onCountdownTick(Ljava/lang/String;)V
.end method
