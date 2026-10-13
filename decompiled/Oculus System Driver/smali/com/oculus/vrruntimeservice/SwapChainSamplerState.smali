.class public Lcom/oculus/vrruntimeservice/SwapChainSamplerState;
.super Ljava/lang/Object;
.source "SwapChainSamplerState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oculus/vrruntimeservice/SwapChainSamplerState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SwapChainSamplerState"


# instance fields
.field private BorderColor:[F

.field private MagFilter:I

.field private MaxAnisotropy:F

.field private MinFilter:I

.field private WrapModeS:I

.field private WrapModeT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState$1;

    invoke-direct {v0}, Lcom/oculus/vrruntimeservice/SwapChainSamplerState$1;-><init>()V

    sput-object v0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->MinFilter:I

    .line 24
    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->MagFilter:I

    .line 25
    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->WrapModeS:I

    .line 26
    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->WrapModeT:I

    const/4 v0, 0x4

    .line 27
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->BorderColor:[F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->MaxAnisotropy:F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->MinFilter:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->MagFilter:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->WrapModeS:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->WrapModeT:I

    const/4 v0, 0x4

    .line 37
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->BorderColor:[F

    .line 38
    iget-object v0, p0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->BorderColor:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->MaxAnisotropy:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 68
    iget p2, p0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->MinFilter:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget p2, p0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->MagFilter:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget p2, p0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->WrapModeS:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget p2, p0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->WrapModeT:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object p2, p0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->BorderColor:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 73
    iget p2, p0, Lcom/oculus/vrruntimeservice/SwapChainSamplerState;->MaxAnisotropy:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
