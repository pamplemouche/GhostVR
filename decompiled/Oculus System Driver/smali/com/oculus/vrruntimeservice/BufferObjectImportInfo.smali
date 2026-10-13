.class public Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;
.super Ljava/lang/Object;
.source "BufferObjectImportInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BufferObjectImportInfo"


# instance fields
.field public AllocSize:I

.field public BufferSize:I

.field public Fd:I

.field public Id:I

.field PFd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo$1;

    invoke-direct {v0}, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo$1;-><init>()V

    sput-object v0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->Id:I

    .line 23
    iput v0, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->Fd:I

    .line 24
    iput v0, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->BufferSize:I

    .line 25
    iput v0, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->AllocSize:I

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->PFd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->Id:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->Fd:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->BufferSize:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->AllocSize:I

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->PFd:Landroid/os/ParcelFileDescriptor;

    .line 39
    :try_start_0
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->PFd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "BufferObjectImportInfo"

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parcel exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_0
    iget-object p1, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->PFd:Landroid/os/ParcelFileDescriptor;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->PFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->Fd:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 75
    iget p2, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->Id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget p2, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->Fd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget p2, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->BufferSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget p2, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->AllocSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    :try_start_0
    iget p2, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->Fd:I

    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->PFd:Landroid/os/ParcelFileDescriptor;

    .line 83
    iget-object p2, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->PFd:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 84
    iget-object p1, p0, Lcom/oculus/vrruntimeservice/BufferObjectImportInfo;->PFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "BufferObjectImportInfo"

    const-string v0, "Failed to write fd to parcel"

    .line 88
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
