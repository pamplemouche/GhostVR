.class public final Lcom/google/android/gms/internal/cast/zzcv;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public A:I

.field public B:Lcom/google/android/gms/cast/zzad;

.field public w:D

.field public x:Z

.field public y:I

.field public z:Lcom/google/android/gms/cast/ApplicationMetadata;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LAs;

    invoke-direct {v0}, LAs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzcv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DZILcom/google/android/gms/cast/ApplicationMetadata;ILcom/google/android/gms/cast/zzad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzcv;->w:D

    .line 3
    iput-boolean p3, p0, Lcom/google/android/gms/internal/cast/zzcv;->x:Z

    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/cast/zzcv;->y:I

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/cast/zzcv;->z:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 6
    iput p6, p0, Lcom/google/android/gms/internal/cast/zzcv;->A:I

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/cast/zzcv;->B:Lcom/google/android/gms/cast/zzad;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/cast/zzcv;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/cast/zzcv;

    .line 3
    iget-wide v3, p0, Lcom/google/android/gms/internal/cast/zzcv;->w:D

    iget-wide v5, p1, Lcom/google/android/gms/internal/cast/zzcv;->w:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->x:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/cast/zzcv;->x:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->y:I

    iget v3, p1, Lcom/google/android/gms/internal/cast/zzcv;->y:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->z:Lcom/google/android/gms/cast/ApplicationMetadata;

    iget-object v3, p1, Lcom/google/android/gms/internal/cast/zzcv;->z:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 4
    invoke-static {v1, v3}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->A:I

    iget p1, p1, Lcom/google/android/gms/internal/cast/zzcv;->A:I

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzcv;->B:Lcom/google/android/gms/cast/zzad;

    .line 5
    invoke-static {p1, p1}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->w:D

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->x:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->z:Lcom/google/android/gms/cast/ApplicationMetadata;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->A:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->B:Lcom/google/android/gms/cast/zzad;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget-wide v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->w:D

    const/4 v3, 0x2

    .line 3
    invoke-static {p1, v3, v1, v2}, LCp;->a(Landroid/os/Parcel;ID)V

    .line 4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->x:Z

    const/4 v2, 0x3

    .line 5
    invoke-static {p1, v2, v1}, LCp;->a(Landroid/os/Parcel;IZ)V

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->y:I

    const/4 v2, 0x4

    .line 7
    invoke-static {p1, v2, v1}, LCp;->a(Landroid/os/Parcel;II)V

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->z:Lcom/google/android/gms/cast/ApplicationMetadata;

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 9
    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 10
    iget v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->A:I

    const/4 v3, 0x6

    .line 11
    invoke-static {p1, v3, v1}, LCp;->a(Landroid/os/Parcel;II)V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcv;->B:Lcom/google/android/gms/cast/zzad;

    const/4 v3, 0x7

    .line 13
    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 14
    invoke-static {p1, v0}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
