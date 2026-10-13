.class public final Lcom/google/android/gms/internal/vision/zzt;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:F

.field public final C:Ljava/lang/String;

.field public final D:I

.field public final E:Z

.field public final F:I

.field public final G:I

.field public final w:[Lcom/google/android/gms/internal/vision/zzac;

.field public final x:Lcom/google/android/gms/internal/vision/zzn;

.field public final y:Lcom/google/android/gms/internal/vision/zzn;

.field public final z:Lcom/google/android/gms/internal/vision/zzn;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Llu;

    invoke-direct {v0}, Llu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/gms/internal/vision/zzac;Lcom/google/android/gms/internal/vision/zzn;Lcom/google/android/gms/internal/vision/zzn;Lcom/google/android/gms/internal/vision/zzn;Ljava/lang/String;FLjava/lang/String;IZII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzt;->w:[Lcom/google/android/gms/internal/vision/zzac;

    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzt;->x:Lcom/google/android/gms/internal/vision/zzn;

    iput-object p3, p0, Lcom/google/android/gms/internal/vision/zzt;->y:Lcom/google/android/gms/internal/vision/zzn;

    iput-object p4, p0, Lcom/google/android/gms/internal/vision/zzt;->z:Lcom/google/android/gms/internal/vision/zzn;

    iput-object p5, p0, Lcom/google/android/gms/internal/vision/zzt;->A:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/vision/zzt;->B:F

    iput-object p7, p0, Lcom/google/android/gms/internal/vision/zzt;->C:Ljava/lang/String;

    iput p8, p0, Lcom/google/android/gms/internal/vision/zzt;->D:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/vision/zzt;->E:Z

    iput p10, p0, Lcom/google/android/gms/internal/vision/zzt;->F:I

    iput p11, p0, Lcom/google/android/gms/internal/vision/zzt;->G:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzt;->w:[Lcom/google/android/gms/internal/vision/zzac;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzt;->x:Lcom/google/android/gms/internal/vision/zzn;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzt;->y:Lcom/google/android/gms/internal/vision/zzn;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzt;->z:Lcom/google/android/gms/internal/vision/zzn;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/vision/zzt;->A:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p1, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget p2, p0, Lcom/google/android/gms/internal/vision/zzt;->B:F

    const/4 v1, 0x7

    invoke-static {p1, v1, p2}, LCp;->a(Landroid/os/Parcel;IF)V

    iget-object p2, p0, Lcom/google/android/gms/internal/vision/zzt;->C:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {p1, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget p2, p0, Lcom/google/android/gms/internal/vision/zzt;->D:I

    const/16 v1, 0x9

    invoke-static {p1, v1, p2}, LCp;->a(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/vision/zzt;->E:Z

    const/16 v1, 0xa

    invoke-static {p1, v1, p2}, LCp;->a(Landroid/os/Parcel;IZ)V

    iget p2, p0, Lcom/google/android/gms/internal/vision/zzt;->F:I

    const/16 v1, 0xb

    invoke-static {p1, v1, p2}, LCp;->a(Landroid/os/Parcel;II)V

    iget p2, p0, Lcom/google/android/gms/internal/vision/zzt;->G:I

    const/16 v1, 0xc

    invoke-static {p1, v1, p2}, LCp;->a(Landroid/os/Parcel;II)V

    .line 1
    invoke-static {p1, v0}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
