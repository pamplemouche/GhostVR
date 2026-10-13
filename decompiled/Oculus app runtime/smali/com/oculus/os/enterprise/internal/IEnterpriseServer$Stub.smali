.class public abstract Lcom/oculus/os/enterprise/internal/IEnterpriseServer$Stub;
.super Landroid/os/Binder;
.source "IEnterpriseServer.java"

# interfaces
.implements Lcom/oculus/os/enterprise/internal/IEnterpriseServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/os/enterprise/internal/IEnterpriseServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/os/enterprise/internal/IEnterpriseServer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oculus.os.enterprise.internal.IEnterpriseServer"

.field static final TRANSACTION_getConfiguration:I = 0x1

.field static final TRANSACTION_getConfigurationWithVersion:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oculus.os.enterprise.internal.IEnterpriseServer"

    .line 16
    invoke-virtual {p0, p0, v0}, Lcom/oculus/os/enterprise/internal/IEnterpriseServer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oculus/os/enterprise/internal/IEnterpriseServer;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oculus.os.enterprise.internal.IEnterpriseServer"

    .line 27
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    instance-of v1, v0, Lcom/oculus/os/enterprise/internal/IEnterpriseServer;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/oculus/os/enterprise/internal/IEnterpriseServer;

    return-object v0

    .line 31
    :cond_1
    new-instance v0, Lcom/oculus/os/enterprise/internal/IEnterpriseServer$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oculus/os/enterprise/internal/IEnterpriseServer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "com.oculus.os.enterprise.internal.IEnterpriseServer"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 43
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 62
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 65
    sget-object p1, Lcom/oculus/os/enterprise/internal/Version;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/os/enterprise/internal/Version;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 70
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oculus/os/enterprise/internal/IEnterpriseServer$Stub;->getConfigurationWithVersion(Lcom/oculus/os/enterprise/internal/Version;)Lcom/oculus/os/enterprise/internal/Configuration;

    move-result-object p1

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 73
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {p1, p3, v2}, Lcom/oculus/os/enterprise/internal/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v2

    .line 48
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/oculus/os/enterprise/internal/IEnterpriseServer$Stub;->getConfiguration()Lcom/oculus/os/enterprise/internal/Configuration;

    move-result-object p1

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 52
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {p1, p3, v2}, Lcom/oculus/os/enterprise/internal/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 56
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v2
.end method
