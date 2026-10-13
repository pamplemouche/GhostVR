.class public interface abstract Lcom/oculus/os/ISurfaceManagerService;
.super Ljava/lang/Object;
.source "ISurfaceManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/os/ISurfaceManagerService$Stub;
    }
.end annotation


# static fields
.field public static final FLAG_OPAQUE:I = 0x400

.field public static final INTERFACE_VERSION:I = 0x3

.field public static final PIXEL_FORMAT_BGRA_8888:I = 0x2

.field public static final PIXEL_FORMAT_RGBA_8888:I = 0x0

.field public static final PIXEL_FORMAT_RGBX_8888:I = 0x1


# virtual methods
.method public abstract create(Ljava/lang/String;IIII)Lcom/oculus/os/IClientSurface;
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
