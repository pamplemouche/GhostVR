.class final Lcom/oculus/http/common/Image$1;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/http/common/Image;
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
        "Lcom/oculus/http/common/Image;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oculus/http/common/Image;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/oculus/http/common/Image;

    invoke-direct {v0, p1}, Lcom/oculus/http/common/Image;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/oculus/http/common/Image$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oculus/http/common/Image;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/oculus/http/common/Image;
    .locals 1

    .prologue
    .line 54
    new-array v0, p1, [Lcom/oculus/http/common/Image;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/oculus/http/common/Image$1;->newArray(I)[Lcom/oculus/http/common/Image;

    move-result-object v0

    return-object v0
.end method
