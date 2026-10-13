.class public interface abstract Lcom/oculus/malibuservice/IRemoteInterface;
.super Ljava/lang/Object;
.source "IRemoteInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/malibuservice/IRemoteInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract RegisterCallback(Lcom/oculus/malibuservice/IServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getParcelFileDescriptor(Lcom/oculus/malibuservice/IServiceCallback;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryInterface(I[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
