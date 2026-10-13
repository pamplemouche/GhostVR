.class public interface abstract Lcom/oculus/horizon/livestreaming/interfaces/LivestreamingSessionCallbacks;
.super Ljava/lang/Object;
.source "LivestreamingSessionCallbacks.java"


# virtual methods
.method public abstract friendStatusUpdated(Ljava/lang/String;J)V
.end method

.method public abstract handleCallAcceptedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract handleCallCanceledNotification(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract handleCallRejectedNotification(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract handleIncomingCallNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
.end method
