.class public interface abstract Lcom/oculus/os/ICompanionService;
.super Ljava/lang/Object;
.source "ICompanionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/os/ICompanionService$Stub;
    }
.end annotation


# virtual methods
.method public abstract isNuxComplete()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isVrReady()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
