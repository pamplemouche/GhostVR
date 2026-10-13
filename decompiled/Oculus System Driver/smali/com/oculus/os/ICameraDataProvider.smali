.class public interface abstract Lcom/oculus/os/ICameraDataProvider;
.super Ljava/lang/Object;
.source "ICameraDataProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/os/ICameraDataProvider$Stub;
    }
.end annotation


# static fields
.field public static final CAMERA_POSITION_BOTTOM_LEFT:I = 0x3

.field public static final CAMERA_POSITION_BOTTOM_RIGHT:I = 0x4

.field public static final CAMERA_POSITION_TOP_LEFT:I = 0x1

.field public static final CAMERA_POSITION_TOP_RIGHT:I = 0x2

.field public static final CAMERA_POSITION_UNKNOWN:I = 0x0

.field public static final INTERFACE_VERSION:I = 0x3


# virtual methods
.method public abstract getAvailableCameras([Lcom/oculus/os/CameraInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCamera(I)Lcom/oculus/os/IClientCamera;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getData(I)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getServiceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startStream(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopStream(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
