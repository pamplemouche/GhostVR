.class public interface abstract Lcom/oculus/vrdesktop/IVrDesktopService;
.super Ljava/lang/Object;
.source "IVrDesktopService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrdesktop/IVrDesktopService$Stub;
    }
.end annotation


# virtual methods
.method public abstract startActivity(Landroid/os/IBinder;Landroid/view/Surface;IIILandroid/content/Intent;)Lcom/oculus/vrdesktop/IContainer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
