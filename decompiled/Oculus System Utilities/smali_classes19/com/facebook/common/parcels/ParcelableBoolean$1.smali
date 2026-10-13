.class final Lcom/facebook/common/parcels/ParcelableBoolean$1;
.super Ljava/lang/Object;
.source "ParcelableBoolean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/parcels/ParcelableBoolean;
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
        "Lcom/facebook/common/parcels/ParcelableBoolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/common/parcels/ParcelableBoolean;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 34
    new-instance v0, Lcom/facebook/common/parcels/ParcelableBoolean;

    invoke-static {p1}, Lcom/facebook/common/parcels/ParcelUtil;->readBool(Landroid/os/Parcel;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/common/parcels/ParcelableBoolean;-><init>(Z)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/facebook/common/parcels/ParcelableBoolean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/common/parcels/ParcelableBoolean;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/common/parcels/ParcelableBoolean;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 39
    new-array v0, p1, [Lcom/facebook/common/parcels/ParcelableBoolean;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/facebook/common/parcels/ParcelableBoolean$1;->newArray(I)[Lcom/facebook/common/parcels/ParcelableBoolean;

    move-result-object v0

    return-object v0
.end method
