.class public Lcom/google/android/gms/cast/framework/media/ImageHints;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final w:I

.field public final x:I

.field public final y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LIk;

    invoke-direct {v0}, LIk;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/ImageHints;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->w:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->x:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->y:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->w:I

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    .line 4
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->x:I

    .line 5
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    .line 6
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/ImageHints;->y:I

    .line 7
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    .line 8
    invoke-static {p1, p2}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
