.class public interface abstract Lcom/oculus/vrguardianservice/IVrGuardianService;
.super Ljava/lang/Object;
.source "IVrGuardianService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrguardianservice/IVrGuardianService$Stub;
    }
.end annotation


# virtual methods
.method public abstract createClient(Landroid/os/IBinder;)Lcom/oculus/vrguardianservice/IVrGuardianClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
