.class public Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public D:Ljava/lang/String;

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LBv;

    invoke-direct {v0}, LBv;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIIZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->w:I

    iput p2, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->x:I

    iput p3, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->y:I

    iput p4, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->z:I

    iput p5, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->A:I

    iput p6, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->B:I

    iput-boolean p7, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->C:Z

    iput-object p8, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->D:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->w:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->x:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->y:I

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->z:I

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->A:I

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->B:I

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->C:Z

    const/16 v1, 0x8

    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$CalendarDateTime;->D:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-static {p1, v2, v0, v1}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 1
    invoke-static {p1, p2}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
