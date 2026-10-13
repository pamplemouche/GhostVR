.class public interface abstract Lcom/oculus/horizon/livestreaming/PartyVideoStreamReceiver$Listener;
.super Ljava/lang/Object;
.source "PartyVideoStreamReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/livestreaming/PartyVideoStreamReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onReceiveStreamStart(JLandroid/view/Surface;II)V
.end method

.method public abstract onReceiveStreamStop(J)V
.end method
