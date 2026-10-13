.class public interface abstract Lcom/oculus/horizon/platform/PresenceManager$Listener;
.super Ljava/lang/Object;
.source "PresenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/platform/PresenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onHeartbeat()V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract onHeartbeatFailed()V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method
