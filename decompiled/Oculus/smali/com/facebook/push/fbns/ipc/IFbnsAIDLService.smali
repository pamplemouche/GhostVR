.class public interface abstract Lcom/facebook/push/fbns/ipc/IFbnsAIDLService;
.super Ljava/lang/Object;
.source "IFbnsAIDLService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/push/fbns/ipc/IFbnsAIDLService$Stub;
    }
.end annotation


# virtual methods
.method public abstract query(Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;)Lcom/facebook/push/fbns/ipc/FbnsAIDLResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract update(Lcom/facebook/push/fbns/ipc/FbnsAIDLRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
