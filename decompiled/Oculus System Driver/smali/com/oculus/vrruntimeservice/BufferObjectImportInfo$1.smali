.class final Lcom/oculus/vrruntimeservice/BufferObjectImportInfo$1;
.super Ljava/lang/Object;
.source "BufferObjectImportInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;
    .locals 1

    .line 56
    new-instance v0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;

    invoke-direct {v0, p1}, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;
    .locals 0

    .line 62
    new-array p1, p1, [Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo$1;->newArray(I)[Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;

    move-result-object p1

    return-object p1
.end method
