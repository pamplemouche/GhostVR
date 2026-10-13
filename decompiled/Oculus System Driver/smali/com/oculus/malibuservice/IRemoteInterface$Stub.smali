.class public abstract Lcom/oculus/malibuservice/IRemoteInterface$Stub;
.super Landroid/os/Binder;
.source "IRemoteInterface.java"

# interfaces
.implements Lcom/oculus/malibuservice/IRemoteInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/malibuservice/IRemoteInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/malibuservice/IRemoteInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oculus.malibuservice.IRemoteInterface"

.field static final TRANSACTION_RegisterCallback:I = 0x1

.field static final TRANSACTION_getParcelFileDescriptor:I = 0x2

.field static final TRANSACTION_queryInterface:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oculus.malibuservice.IRemoteInterface"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/oculus/malibuservice/IRemoteInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oculus/malibuservice/IRemoteInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oculus.malibuservice.IRemoteInterface"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/oculus/malibuservice/IRemoteInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/oculus/malibuservice/IRemoteInterface;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/oculus/malibuservice/IRemoteInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oculus/malibuservice/IRemoteInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.oculus.malibuservice.IRemoteInterface"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 73
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-gez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 82
    :cond_0
    new-array p2, p2, [B

    .line 84
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/oculus/malibuservice/IRemoteInterface$Stub;->queryInterface(I[B)Z

    move-result p1

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return v2

    .line 57
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/malibuservice/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/malibuservice/IServiceCallback;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/oculus/malibuservice/IRemoteInterface$Stub;->getParcelFileDescriptor(Lcom/oculus/malibuservice/IServiceCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-virtual {p1, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 67
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v2

    .line 48
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/malibuservice/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/malibuservice/IServiceCallback;

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/oculus/malibuservice/IRemoteInterface$Stub;->RegisterCallback(Lcom/oculus/malibuservice/IServiceCallback;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 43
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
