.class public abstract Lcom/oculus/vrapi/ITrackingService$Stub;
.super Landroid/os/Binder;
.source "ITrackingService.java"

# interfaces
.implements Lcom/oculus/vrapi/ITrackingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/ITrackingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrapi/ITrackingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oculus.vrapi.ITrackingService"

.field static final TRANSACTION_getSharedMemoryFileDescriptor:I = 0x1

.field static final TRANSACTION_getTrackingSocketFileDescriptor:I = 0x2

.field static final TRANSACTION_registerClient:I = 0x4

.field static final TRANSACTION_sendSignal:I = 0x3

.field static final TRANSACTION_unregisterClient:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oculus.vrapi.ITrackingService"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/oculus/vrapi/ITrackingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oculus/vrapi/ITrackingService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oculus.vrapi.ITrackingService"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    instance-of v1, v0, Lcom/oculus/vrapi/ITrackingService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/oculus/vrapi/ITrackingService;

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lcom/oculus/vrapi/ITrackingService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oculus/vrapi/ITrackingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.oculus.vrapi.ITrackingService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 98
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/vrapi/ITrackingServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/vrapi/ITrackingServiceClient;

    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/oculus/vrapi/ITrackingService$Stub;->unregisterClient(Lcom/oculus/vrapi/ITrackingServiceClient;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 89
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/vrapi/ITrackingServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/vrapi/ITrackingServiceClient;

    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/oculus/vrapi/ITrackingService$Stub;->registerClient(Lcom/oculus/vrapi/ITrackingServiceClient;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 81
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/oculus/vrapi/ITrackingService$Stub;->sendSignal(I)V

    return v2

    .line 67
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/oculus/vrapi/ITrackingService$Stub;->getTrackingSocketFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {p1, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 51
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/vrapi/ITrackingServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/vrapi/ITrackingServiceClient;

    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/oculus/vrapi/ITrackingService$Stub;->getSharedMemoryFileDescriptor(Lcom/oculus/vrapi/ITrackingServiceClient;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {p1, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v2

    .line 46
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
