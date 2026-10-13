.class public Lcom/oculus/video/metadata/CameraMotionData;
.super Ljava/lang/Object;
.source "CameraMotionData.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/metadata/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oculus/video/metadata/CameraMotionData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final data:[F

.field private hashCode:I

.field public final timeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/oculus/video/metadata/CameraMotionData$1;

    invoke-direct {v0}, Lcom/oculus/video/metadata/CameraMotionData$1;-><init>()V

    sput-object v0, Lcom/oculus/video/metadata/CameraMotionData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J[F)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/oculus/video/metadata/CameraMotionData;->timeUs:J

    .line 23
    iput-object p3, p0, Lcom/oculus/video/metadata/CameraMotionData;->data:[F

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/video/metadata/CameraMotionData;->timeUs:J

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/video/metadata/CameraMotionData;->data:[F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    check-cast p1, Lcom/oculus/video/metadata/CameraMotionData;

    .line 51
    iget-object v0, p0, Lcom/oculus/video/metadata/CameraMotionData;->data:[F

    iget-object p1, p1, Lcom/oculus/video/metadata/CameraMotionData;->data:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 5

    .line 33
    iget v0, p0, Lcom/oculus/video/metadata/CameraMotionData;->hashCode:I

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    .line 35
    iget-wide v1, p0, Lcom/oculus/video/metadata/CameraMotionData;->timeUs:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 36
    iget-object v1, p0, Lcom/oculus/video/metadata/CameraMotionData;->data:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    iput v0, p0, Lcom/oculus/video/metadata/CameraMotionData;->hashCode:I

    .line 39
    :cond_0
    iget v0, p0, Lcom/oculus/video/metadata/CameraMotionData;->hashCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 63
    iget-object p2, p0, Lcom/oculus/video/metadata/CameraMotionData;->data:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
