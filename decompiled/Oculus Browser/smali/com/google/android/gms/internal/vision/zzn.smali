.class public final Lcom/google/android/gms/internal/vision/zzn;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final A:F

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgu;

    invoke-direct {v0}, Lgu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIF)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzn;->w:I

    iput p2, p0, Lcom/google/android/gms/internal/vision/zzn;->x:I

    iput p3, p0, Lcom/google/android/gms/internal/vision/zzn;->y:I

    iput p4, p0, Lcom/google/android/gms/internal/vision/zzn;->z:I

    iput p5, p0, Lcom/google/android/gms/internal/vision/zzn;->A:F

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzn;->w:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzn;->x:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzn;->y:I

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzn;->z:I

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzn;->A:F

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;IF)V

    .line 1
    invoke-static {p1, p2}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
