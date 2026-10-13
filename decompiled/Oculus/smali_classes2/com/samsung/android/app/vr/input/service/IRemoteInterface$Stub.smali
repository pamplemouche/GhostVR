.class public abstract Lcom/samsung/android/app/vr/input/service/IRemoteInterface$Stub;
.super Landroid/os/Binder;
.source "IRemoteInterface.java"

# interfaces
.implements Lcom/samsung/android/app/vr/input/service/IRemoteInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/vr/input/service/IRemoteInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/vr/input/service/IRemoteInterface$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsung.android.app.vr.input.service.IRemoteInterface"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/app/vr/input/service/IRemoteInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/vr/input/service/IRemoteInterface;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.samsung.android.app.vr.input.service.IRemoteInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/app/vr/input/service/IRemoteInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vr/input/service/IRemoteInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v0, "com.samsung.android.app.vr.input.service.IRemoteInterface"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.samsung.android.app.vr.input.service.IRemoteInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vr/input/service/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/vr/input/service/IServiceCallback;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vr/input/service/IRemoteInterface$Stub;->RegisterCallback(Lcom/samsung/android/app/vr/input/service/IServiceCallback;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    :sswitch_2
    const-string v0, "com.samsung.android.app.vr.input.service.IRemoteInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vr/input/service/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/vr/input/service/IServiceCallback;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vr/input/service/IRemoteInterface$Stub;->getParcelFileDescriptor(Lcom/samsung/android/app/vr/input/service/IServiceCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v0, p3, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    :sswitch_3
    const-string v0, "com.samsung.android.app.vr.input.service.IRemoteInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    if-gez v0, :cond_2

    .line 78
    const/4 v0, 0x0

    .line 83
    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/app/vr/input/service/IRemoteInterface$Stub;->queryInterface(I[B)Z

    move-result v3

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 81
    :cond_2
    new-array v0, v0, [B

    goto :goto_1

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
