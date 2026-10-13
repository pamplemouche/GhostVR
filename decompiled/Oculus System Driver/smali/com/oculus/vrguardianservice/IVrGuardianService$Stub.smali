.class public abstract Lcom/oculus/vrguardianservice/IVrGuardianService$Stub;
.super Landroid/os/Binder;
.source "IVrGuardianService.java"

# interfaces
.implements Lcom/oculus/vrguardianservice/IVrGuardianService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrguardianservice/IVrGuardianService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrguardianservice/IVrGuardianService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oculus.vrguardianservice.IVrGuardianService"

.field static final TRANSACTION_createClient:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oculus.vrguardianservice.IVrGuardianService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/oculus/vrguardianservice/IVrGuardianService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oculus/vrguardianservice/IVrGuardianService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oculus.vrguardianservice.IVrGuardianService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/oculus/vrguardianservice/IVrGuardianService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/oculus/vrguardianservice/IVrGuardianService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/oculus/vrguardianservice/IVrGuardianService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oculus/vrguardianservice/IVrGuardianService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.oculus.vrguardianservice.IVrGuardianService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 43
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 48
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/oculus/vrguardianservice/IVrGuardianService$Stub;->createClient(Landroid/os/IBinder;)Lcom/oculus/vrguardianservice/IVrGuardianClient;

    move-result-object p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 53
    invoke-interface {p1}, Lcom/oculus/vrguardianservice/IVrGuardianClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1
.end method
