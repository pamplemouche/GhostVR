.class public Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public A:[Lcom/google/android/gms/vision/barcode/Barcode$Email;

.field public B:[Ljava/lang/String;

.field public C:[Lcom/google/android/gms/vision/barcode/Barcode$Address;

.field public w:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LDv;

    invoke-direct {v0}, LDv;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/vision/barcode/Barcode$PersonName;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/vision/barcode/Barcode$Phone;[Lcom/google/android/gms/vision/barcode/Barcode$Email;[Ljava/lang/String;[Lcom/google/android/gms/vision/barcode/Barcode$Address;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->w:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iput-object p2, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->x:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->y:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->z:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    iput-object p5, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->A:[Lcom/google/android/gms/vision/barcode/Barcode$Email;

    iput-object p6, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->B:[Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->C:[Lcom/google/android/gms/vision/barcode/Barcode$Address;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->w:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->x:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, v2}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->y:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, v2}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->z:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->A:[Lcom/google/android/gms/vision/barcode/Barcode$Email;

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->B:[Ljava/lang/String;

    const/4 v3, 0x7

    invoke-static {p1, v3, v1, v2}, LCp;->a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->C:[Lcom/google/android/gms/vision/barcode/Barcode$Address;

    const/16 v3, 0x8

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 1
    invoke-static {p1, v0}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
