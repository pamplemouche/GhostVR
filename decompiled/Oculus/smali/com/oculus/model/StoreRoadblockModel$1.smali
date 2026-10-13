.class final Lcom/oculus/model/StoreRoadblockModel$1;
.super Ljava/lang/Object;
.source "StoreRoadblockModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/model/StoreRoadblockModel;
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
        "Lcom/oculus/model/StoreRoadblockModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oculus/model/StoreRoadblockModel;
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/oculus/model/StoreRoadblockModel;

    invoke-direct {v0, p1}, Lcom/oculus/model/StoreRoadblockModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/oculus/model/StoreRoadblockModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oculus/model/StoreRoadblockModel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/oculus/model/StoreRoadblockModel;
    .locals 1

    .prologue
    .line 207
    new-array v0, p1, [Lcom/oculus/model/StoreRoadblockModel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/oculus/model/StoreRoadblockModel$1;->newArray(I)[Lcom/oculus/model/StoreRoadblockModel;

    move-result-object v0

    return-object v0
.end method
