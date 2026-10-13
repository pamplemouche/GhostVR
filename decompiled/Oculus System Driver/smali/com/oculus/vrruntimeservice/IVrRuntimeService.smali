.class public interface abstract Lcom/oculus/vrruntimeservice/IVrRuntimeService;
.super Ljava/lang/Object;
.source "IVrRuntimeService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrruntimeservice/IVrRuntimeService$Stub;
    }
.end annotation


# virtual methods
.method public abstract createClient(Landroid/os/IBinder;Z)Lcom/oculus/vrruntimeservice/IRuntimeClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
