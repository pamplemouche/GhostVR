.class public Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public w:D

.field public x:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LGv;

    invoke-direct {v0}, LGv;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->w:D

    iput-wide p3, p0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->x:D

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-wide v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->w:D

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, LCp;->a(Landroid/os/Parcel;ID)V

    iget-wide v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->x:D

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, LCp;->a(Landroid/os/Parcel;ID)V

    .line 1
    invoke-static {p1, p2}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
