.class public Lcom/google/android/gms/vision/barcode/Barcode$WiFi;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LLv;

    invoke-direct {v0}, LLv;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->w:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->x:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->y:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->w:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->x:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->y:I

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;II)V

    .line 1
    invoke-static {p1, p2}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
