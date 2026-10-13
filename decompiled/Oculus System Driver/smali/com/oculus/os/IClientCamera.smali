.class public interface abstract Lcom/oculus/os/IClientCamera;
.super Ljava/lang/Object;
.source "IClientCamera.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/os/IClientCamera$Stub;
    }
.end annotation


# static fields
.field public static final INTERFACE_VERSION:I = 0x1


# virtual methods
.method public abstract addListener()Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getData()Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
