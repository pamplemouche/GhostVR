.class final Lcom/oculus/horizon/store/StoreItemModel$1;
.super Ljava/lang/Object;
.source "StoreItemModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/store/StoreItemModel;
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
        "Lcom/oculus/horizon/store/StoreItemModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oculus/horizon/store/StoreItemModel;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/oculus/horizon/store/StoreItemModel;

    invoke-direct {v0, p1}, Lcom/oculus/horizon/store/StoreItemModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/store/StoreItemModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oculus/horizon/store/StoreItemModel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/oculus/horizon/store/StoreItemModel;
    .locals 1

    .prologue
    .line 105
    new-array v0, p1, [Lcom/oculus/horizon/store/StoreItemModel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/store/StoreItemModel$1;->newArray(I)[Lcom/oculus/horizon/store/StoreItemModel;

    move-result-object v0

    return-object v0
.end method
