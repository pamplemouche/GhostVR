.class final Lcom/oculus/appmanager/info/model/UninstallResult$1;
.super Ljava/lang/Object;
.source "UninstallResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/info/model/UninstallResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oculus/appmanager/info/model/UninstallResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oculus/appmanager/info/model/UninstallResult;
    .locals 1

    .line 52
    new-instance v0, Lcom/oculus/appmanager/info/model/UninstallResult;

    invoke-direct {v0, p1}, Lcom/oculus/appmanager/info/model/UninstallResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/oculus/appmanager/info/model/UninstallResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oculus/appmanager/info/model/UninstallResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oculus/appmanager/info/model/UninstallResult;
    .locals 0

    .line 57
    new-array p1, p1, [Lcom/oculus/appmanager/info/model/UninstallResult;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/oculus/appmanager/info/model/UninstallResult$1;->newArray(I)[Lcom/oculus/appmanager/info/model/UninstallResult;

    move-result-object p1

    return-object p1
.end method
