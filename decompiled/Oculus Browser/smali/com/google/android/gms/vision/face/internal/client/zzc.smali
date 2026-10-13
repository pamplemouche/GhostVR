.class public final Lcom/google/android/gms/vision/face/internal/client/zzc;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public A:Z

.field public B:F

.field public w:I

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LRv;

    invoke-direct {v0}, LRv;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/face/internal/client/zzc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIZZF)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/face/internal/client/zzc;->w:I

    iput p2, p0, Lcom/google/android/gms/vision/face/internal/client/zzc;->x:I

    iput p3, p0, Lcom/google/android/gms/vision/face/internal/client/zzc;->y:I

    iput-boolean p4, p0, Lcom/google/android/gms/vision/face/internal/client/zzc;->z:Z

    iput-boolean p5, p0, Lcom/google/android/gms/vision/face/internal/client/zzc;->A:Z

    iput p6, p0, Lcom/google/android/gms/vision/face/internal/client/zzc;->B:F

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzc;->w:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzc;->x:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzc;->y:I

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzc;->z:Z

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzc;->A:Z

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;IZ)V

    iget v0, p0, Lcom/google/android/gms/vision/face/internal/client/zzc;->B:F

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;IF)V

    .line 1
    invoke-static {p1, p2}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
