.class public Lcom/google/android/gms/vision/barcode/Barcode$Address;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public w:I

.field public x:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyv;

    invoke-direct {v0}, Lyv;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$Address;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$Address;->w:I

    iput-object p2, p0, Lcom/google/android/gms/vision/barcode/Barcode$Address;->x:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$Address;->w:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$Address;->x:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, LCp;->a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    .line 1
    invoke-static {p1, p2}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
