.class public Lcom/oculus/vrruntimeservice/SwapChainImportInfo;
.super Ljava/lang/Object;
.source "SwapChainImportInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oculus/vrruntimeservice/SwapChainImportInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SwapChainImportInfo"

.field private static final TEXTURE_SWAPCHAIN_MAX_LENGTH:I = 0x10


# instance fields
.field private AllocationSizes:[J

.field private AllocationSizesFoveation:[J

.field private FileDescriptors:[I

.field private FileDescriptorsFoveation:[I

.field private ID:I

.field private NumFds:I

.field private SurfaceTextureSurface:Landroid/view/Surface;

.field pfds:[Landroid/os/ParcelFileDescriptor;

.field pfdsfov:[Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo$1;

    invoke-direct {v0}, Lcom/oculus/vrruntimeservice/SwapChainImportInfo$1;-><init>()V

    sput-object v0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->ID:I

    const/16 v1, 0x10

    .line 36
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->FileDescriptors:[I

    .line 37
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->AllocationSizes:[J

    .line 38
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->FileDescriptorsFoveation:[I

    .line 39
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->AllocationSizesFoveation:[J

    const/4 v2, 0x0

    .line 40
    iput-object v2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->SurfaceTextureSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    .line 42
    iput v3, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->NumFds:I

    .line 43
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/ParcelFileDescriptor;

    iput-object v4, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfds:[Landroid/os/ParcelFileDescriptor;

    .line 44
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/ParcelFileDescriptor;

    iput-object v4, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfdsfov:[Landroid/os/ParcelFileDescriptor;

    :goto_0
    if-ge v3, v1, :cond_0

    .line 48
    iget-object v4, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->FileDescriptors:[I

    aput v0, v4, v3

    .line 49
    iget-object v4, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->AllocationSizes:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    .line 50
    iget-object v4, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->FileDescriptorsFoveation:[I

    aput v0, v4, v3

    .line 51
    iget-object v4, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->AllocationSizesFoveation:[J

    aput-wide v5, v4, v3

    .line 52
    iget-object v4, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfds:[Landroid/os/ParcelFileDescriptor;

    aput-object v2, v4, v3

    .line 53
    iget-object v4, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfdsfov:[Landroid/os/ParcelFileDescriptor;

    aput-object v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->ID:I

    const/16 v0, 0x10

    .line 60
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->FileDescriptors:[I

    .line 61
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->FileDescriptors:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 62
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->AllocationSizes:[J

    .line 63
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->AllocationSizes:[J

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readLongArray([J)V

    .line 64
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->FileDescriptorsFoveation:[I

    .line 65
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->FileDescriptorsFoveation:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 66
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->AllocationSizesFoveation:[J

    .line 67
    iget-object v0, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->AllocationSizesFoveation:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    .line 68
    const-class v0, Landroid/view/Surface;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    iput-object v0, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->SurfaceTextureSurface:Landroid/view/Surface;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->NumFds:I

    .line 71
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    iget v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->NumFds:I

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfds:[Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    :goto_0
    iget v2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->NumFds:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfds:[Landroid/os/ParcelFileDescriptor;

    aput-object v4, v2, v1

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfds:[Landroid/os/ParcelFileDescriptor;

    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    aput-object v4, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "SwapChainImportInfo"

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parcel exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_1
    iget-object v2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->FileDescriptors:[I

    iget-object v4, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfds:[Landroid/os/ParcelFileDescriptor;

    aget-object v4, v4, v1

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfds:[Landroid/os/ParcelFileDescriptor;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v3

    :goto_2
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_1
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    iget v2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->NumFds:I

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfdsfov:[Landroid/os/ParcelFileDescriptor;

    .line 88
    :goto_3
    iget v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->NumFds:I

    if-ge v0, v1, :cond_4

    .line 90
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfdsfov:[Landroid/os/ParcelFileDescriptor;

    aput-object v4, v1, v0

    .line 93
    :try_start_1
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->FileDescriptorsFoveation:[I

    aget v1, v1, v0

    if-ltz v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfdsfov:[Landroid/os/ParcelFileDescriptor;

    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    aput-object v2, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    const-string v2, "SwapChainImportInfo"

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parcel exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2
    :goto_4
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->FileDescriptorsFoveation:[I

    iget-object v2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfdsfov:[Landroid/os/ParcelFileDescriptor;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    const/4 v2, -0x1

    goto :goto_5

    :cond_3
    iget-object v2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfdsfov:[Landroid/os/ParcelFileDescriptor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v2

    :goto_5
    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 134
    iget p2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->ID:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object p2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->FileDescriptors:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 136
    iget-object p2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->AllocationSizes:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 137
    iget-object p2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->FileDescriptorsFoveation:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 138
    iget-object p2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->AllocationSizesFoveation:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 139
    iget-object p2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->SurfaceTextureSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 141
    iget p2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->NumFds:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    .line 142
    :goto_0
    iget v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->NumFds:I

    const/4 v2, 0x0

    if-ge p2, v1, :cond_2

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfds:[Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->FileDescriptors:[I

    aget v3, v3, p2

    if-ltz v3, :cond_0

    iget-object v2, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->FileDescriptors:[I

    aget v2, v2, p2

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    :cond_0
    aput-object v2, v1, p2

    .line 147
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfds:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, p2

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfds:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1, v0}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 150
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfds:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "SwapChainImportInfo"

    const-string v3, "Failed to write fd to parcel"

    .line 155
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 158
    :goto_2
    iget v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->NumFds:I

    if-ge p2, v1, :cond_5

    .line 162
    :try_start_1
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfdsfov:[Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->FileDescriptorsFoveation:[I

    aget v3, v3, p2

    if-ltz v3, :cond_3

    iget-object v3, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->FileDescriptorsFoveation:[I

    aget v3, v3, p2

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v2

    :goto_3
    aput-object v3, v1, p2

    .line 163
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfdsfov:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, p2

    if-eqz v1, :cond_4

    .line 165
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfdsfov:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1, v0}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 166
    iget-object v1, p0, Lcom/oculus/vrruntimeservice/SwapChainImportInfo;->pfdsfov:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    const-string v3, "SwapChainImportInfo"

    const-string v4, "Failed to write fd to parcel"

    .line 171
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
