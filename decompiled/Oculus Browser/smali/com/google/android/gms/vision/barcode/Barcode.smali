.class public Lcom/google/android/gms/vision/barcode/Barcode;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public A:[Landroid/graphics/Point;

.field public B:Lcom/google/android/gms/vision/barcode/Barcode$Email;

.field public C:Lcom/google/android/gms/vision/barcode/Barcode$Phone;

.field public D:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

.field public E:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

.field public F:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

.field public G:Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;

.field public H:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

.field public I:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

.field public J:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzv;

    invoke-direct {v0}, Lzv;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/barcode/Barcode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I[Landroid/graphics/Point;Lcom/google/android/gms/vision/barcode/Barcode$Email;Lcom/google/android/gms/vision/barcode/Barcode$Phone;Lcom/google/android/gms/vision/barcode/Barcode$Sms;Lcom/google/android/gms/vision/barcode/Barcode$WiFi;Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->w:I

    iput-object p2, p0, Lcom/google/android/gms/vision/barcode/Barcode;->x:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/vision/barcode/Barcode;->y:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/vision/barcode/Barcode;->z:I

    iput-object p5, p0, Lcom/google/android/gms/vision/barcode/Barcode;->A:[Landroid/graphics/Point;

    iput-object p6, p0, Lcom/google/android/gms/vision/barcode/Barcode;->B:Lcom/google/android/gms/vision/barcode/Barcode$Email;

    iput-object p7, p0, Lcom/google/android/gms/vision/barcode/Barcode;->C:Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    iput-object p8, p0, Lcom/google/android/gms/vision/barcode/Barcode;->D:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

    iput-object p9, p0, Lcom/google/android/gms/vision/barcode/Barcode;->E:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

    iput-object p10, p0, Lcom/google/android/gms/vision/barcode/Barcode;->F:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

    iput-object p11, p0, Lcom/google/android/gms/vision/barcode/Barcode;->G:Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;

    iput-object p12, p0, Lcom/google/android/gms/vision/barcode/Barcode;->H:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    iput-object p13, p0, Lcom/google/android/gms/vision/barcode/Barcode;->I:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    iput-object p14, p0, Lcom/google/android/gms/vision/barcode/Barcode;->J:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->w:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, LCp;->a(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->x:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, v2}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->y:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, v2}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->z:I

    const/4 v3, 0x5

    invoke-static {p1, v3, v1}, LCp;->a(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->A:[Landroid/graphics/Point;

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->B:Lcom/google/android/gms/vision/barcode/Barcode$Email;

    const/4 v3, 0x7

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->C:Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    const/16 v3, 0x8

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->D:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

    const/16 v3, 0x9

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->E:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

    const/16 v3, 0xa

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->F:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

    const/16 v3, 0xb

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->G:Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;

    const/16 v3, 0xc

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->H:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    const/16 v3, 0xd

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->I:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    const/16 v3, 0xe

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode;->J:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    const/16 v3, 0xf

    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 1
    invoke-static {p1, v0}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
