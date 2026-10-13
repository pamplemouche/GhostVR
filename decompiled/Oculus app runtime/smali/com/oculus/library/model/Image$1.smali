.class final Lcom/oculus/library/model/Image$1;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/library/model/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oculus/library/model/Image;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oculus/library/model/Image;
    .locals 1

    .line 59
    new-instance v0, Lcom/oculus/library/model/Image;

    invoke-direct {v0, p1}, Lcom/oculus/library/model/Image;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/oculus/library/model/Image$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oculus/library/model/Image;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oculus/library/model/Image;
    .locals 0

    .line 64
    new-array p1, p1, [Lcom/oculus/library/model/Image;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/oculus/library/model/Image$1;->newArray(I)[Lcom/oculus/library/model/Image;

    move-result-object p1

    return-object p1
.end method
