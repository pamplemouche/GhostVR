.class final Lcom/oculus/appmanager/model/UpdateConfig$1;
.super Ljava/lang/Object;
.source "UpdateConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/model/UpdateConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oculus/appmanager/model/UpdateConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oculus/appmanager/model/UpdateConfig;
    .locals 1

    .line 141
    new-instance v0, Lcom/oculus/appmanager/model/UpdateConfig;

    invoke-direct {v0, p1}, Lcom/oculus/appmanager/model/UpdateConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lcom/oculus/appmanager/model/UpdateConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oculus/appmanager/model/UpdateConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oculus/appmanager/model/UpdateConfig;
    .locals 0

    .line 145
    new-array p1, p1, [Lcom/oculus/appmanager/model/UpdateConfig;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lcom/oculus/appmanager/model/UpdateConfig$1;->newArray(I)[Lcom/oculus/appmanager/model/UpdateConfig;

    move-result-object p1

    return-object p1
.end method
