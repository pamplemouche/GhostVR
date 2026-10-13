.class public interface abstract Lcom/samsung/android/app/vr/input/service/IRemoteInterface;
.super Ljava/lang/Object;
.source "IRemoteInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/vr/input/service/IRemoteInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract RegisterCallback(Lcom/samsung/android/app/vr/input/service/IServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getParcelFileDescriptor(Lcom/samsung/android/app/vr/input/service/IServiceCallback;)Landroid/os/ParcelFileDescriptor;
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
