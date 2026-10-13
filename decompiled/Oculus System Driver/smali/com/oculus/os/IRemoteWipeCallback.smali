.class public interface abstract Lcom/oculus/os/IRemoteWipeCallback;
.super Ljava/lang/Object;
.source "IRemoteWipeCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/os/IRemoteWipeCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
