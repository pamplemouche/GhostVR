.class final Lcom/oculus/appmanager/info/model/InstallerResult$1;
.super Ljava/lang/Object;
.source "InstallerResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/info/model/InstallerResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/oculus/appmanager/info/model/InstallerResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oculus/appmanager/info/model/InstallerResult;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/oculus/appmanager/info/model/InstallerResult;

    invoke-direct {v0, p1}, Lcom/oculus/appmanager/info/model/InstallerResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/oculus/appmanager/info/model/InstallerResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/oculus/appmanager/info/model/InstallerResult;
    .locals 1

    .prologue
    .line 58
    new-array v0, p1, [Lcom/oculus/appmanager/info/model/InstallerResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/oculus/appmanager/info/model/InstallerResult$1;->newArray(I)[Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v0

    return-object v0
.end method
