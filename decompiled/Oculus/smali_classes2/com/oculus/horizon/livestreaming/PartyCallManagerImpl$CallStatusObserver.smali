.class public interface abstract Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$CallStatusObserver;
.super Ljava/lang/Object;
.source "PartyCallManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallStatusObserver"
.end annotation


# virtual methods
.method public abstract onCallAccepted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onCallRejected(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onStatusUpdated(Lcom/oculus/horizon/livestreaming/model/LiveStreamingSessionStatus;)V
.end method
