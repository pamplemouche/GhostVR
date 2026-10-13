.class public Lcom/google/android/gms/vision/face/internal/client/FaceParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final A:F

.field public final B:F

.field public final C:F

.field public final D:F

.field public final E:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

.field public final F:F

.field public final G:F

.field public final H:F

.field public final w:I

.field public final x:I

.field public final y:F

.field public final z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LQv;

    invoke-direct {v0}, LQv;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIFFFFFF[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;FFF)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->w:I

    iput p2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->x:I

    iput p3, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->y:F

    iput p4, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->z:F

    iput p5, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->A:F

    iput p6, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->B:F

    iput p7, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->C:F

    iput p8, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->D:F

    iput-object p9, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->E:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    iput p10, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->F:F

    iput p11, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->G:F

    iput p12, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->H:F

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->w:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, LCp;->a(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->x:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, LCp;->a(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->y:F

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, LCp;->a(Landroid/os/Parcel;IF)V

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->z:F

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, LCp;->a(Landroid/os/Parcel;IF)V

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->A:F

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, LCp;->a(Landroid/os/Parcel;IF)V

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->B:F

    const/4 v2, 0x6

    invoke-static {p1, v2, v1}, LCp;->a(Landroid/os/Parcel;IF)V

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->C:F

    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, LCp;->a(Landroid/os/Parcel;IF)V

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->D:F

    const/16 v2, 0x8

    invoke-static {p1, v2, v1}, LCp;->a(Landroid/os/Parcel;IF)V

    iget-object v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->E:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget p2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->F:F

    const/16 v1, 0xa

    invoke-static {p1, v1, p2}, LCp;->a(Landroid/os/Parcel;IF)V

    iget p2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->G:F

    const/16 v1, 0xb

    invoke-static {p1, v1, p2}, LCp;->a(Landroid/os/Parcel;IF)V

    iget p2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->H:F

    const/16 v1, 0xc

    invoke-static {p1, v1, p2}, LCp;->a(Landroid/os/Parcel;IF)V

    .line 1
    invoke-static {p1, v0}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
