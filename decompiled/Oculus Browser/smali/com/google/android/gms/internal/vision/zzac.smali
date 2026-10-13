.class public final Lcom/google/android/gms/internal/vision/zzac;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final A:F

.field public final B:Ljava/lang/String;

.field public final C:Z

.field public final w:[Lcom/google/android/gms/internal/vision/zzx;

.field public final x:Lcom/google/android/gms/internal/vision/zzn;

.field public final y:Lcom/google/android/gms/internal/vision/zzn;

.field public final z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LWt;

    invoke-direct {v0}, LWt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzac;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/gms/internal/vision/zzx;Lcom/google/android/gms/internal/vision/zzn;Lcom/google/android/gms/internal/vision/zzn;Ljava/lang/String;FLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzac;->w:[Lcom/google/android/gms/internal/vision/zzx;

    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzac;->x:Lcom/google/android/gms/internal/vision/zzn;

    iput-object p3, p0, Lcom/google/android/gms/internal/vision/zzac;->y:Lcom/google/android/gms/internal/vision/zzn;

    iput-object p4, p0, Lcom/google/android/gms/internal/vision/zzac;->z:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/vision/zzac;->A:F

    iput-object p6, p0, Lcom/google/android/gms/internal/vision/zzac;->B:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/vision/zzac;->C:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzac;->w:[Lcom/google/android/gms/internal/vision/zzx;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzac;->x:Lcom/google/android/gms/internal/vision/zzn;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzac;->y:Lcom/google/android/gms/internal/vision/zzn;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/vision/zzac;->z:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p1, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget p2, p0, Lcom/google/android/gms/internal/vision/zzac;->A:F

    const/4 v1, 0x6

    invoke-static {p1, v1, p2}, LCp;->a(Landroid/os/Parcel;IF)V

    iget-object p2, p0, Lcom/google/android/gms/internal/vision/zzac;->B:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {p1, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/vision/zzac;->C:Z

    const/16 v1, 0x8

    invoke-static {p1, v1, p2}, LCp;->a(Landroid/os/Parcel;IZ)V

    .line 1
    invoke-static {p1, v0}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
