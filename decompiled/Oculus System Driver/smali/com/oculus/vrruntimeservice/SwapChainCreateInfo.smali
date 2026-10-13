.class public Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;
.super Ljava/lang/Object;
.source "SwapChainCreateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SwapChainCreateInfo"


# instance fields
.field private ArraySize:I

.field private CreateFlags:J

.field private Format:J

.field private Height:I

.field private Length:I

.field private Levels:I

.field private Type:I

.field private UsageFlags:J

.field private Width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo$1;

    invoke-direct {v0}, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo$1;-><init>()V

    sput-object v0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->Type:I

    const-wide/16 v1, 0x0

    .line 27
    iput-wide v1, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->Format:J

    .line 28
    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->Width:I

    .line 29
    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->Height:I

    .line 30
    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->Length:I

    .line 31
    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->ArraySize:I

    .line 32
    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->Levels:I

    .line 33
    iput-wide v1, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->CreateFlags:J

    .line 34
    iput-wide v1, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->UsageFlags:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->Type:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->Format:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->Width:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->Height:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->Length:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->ArraySize:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->Levels:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->CreateFlags:J

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->UsageFlags:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 76
    iget p2, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->Type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-wide v0, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->Format:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget p2, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->Width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget p2, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->Height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget p2, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->Length:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget p2, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->ArraySize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget p2, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->Levels:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-wide v0, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->CreateFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    iget-wide v0, p0, Lcom/oculus/vrruntimeservice/SwapChainCreateInfo;->UsageFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
