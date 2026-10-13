.class public interface abstract Lcom/oculus/vrapi/ITrackingServiceClient;
.super Ljava/lang/Object;
.source "ITrackingServiceClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrapi/ITrackingServiceClient$Stub;
    }
.end annotation


# static fields
.field public static final AUDIT_SECURE_TRACKING_MODE_FLAG:I = 0x2

.field public static final SECURE_TRACKING_MODE_FLAG:I = 0x1


# virtual methods
.method public abstract getTrackingModeFlags()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onButtonDown(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRemoteConnected(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRemoteDisconnected(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
