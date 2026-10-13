.class public interface abstract Lcom/oculus/os/ICompanionServer;
.super Ljava/lang/Object;
.source "ICompanionServer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/os/ICompanionServer$Stub;
    }
.end annotation


# virtual methods
.method public abstract getUserId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract performRemoteWipe(Lcom/oculus/os/IRemoteWipeCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
