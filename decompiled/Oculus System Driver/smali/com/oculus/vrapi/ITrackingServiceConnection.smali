.class public interface abstract Lcom/oculus/vrapi/ITrackingServiceConnection;
.super Ljava/lang/Object;
.source "ITrackingServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrapi/ITrackingServiceConnection$IDisconnectCallback;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getTrackingSocketFd()I
.end method

.method public abstract onClientConnect()Z
.end method

.method public abstract onClientDisconnect()V
.end method
