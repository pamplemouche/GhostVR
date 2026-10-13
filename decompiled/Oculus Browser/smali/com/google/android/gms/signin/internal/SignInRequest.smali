.class public Lcom/google/android/gms/signin/internal/SignInRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final w:I

.field public final x:Lcom/google/android/gms/common/internal/ResolveAccountRequest;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LRu;

    invoke-direct {v0}, LRu;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/internal/SignInRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/common/internal/ResolveAccountRequest;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/signin/internal/SignInRequest;->w:I

    iput-object p2, p0, Lcom/google/android/gms/signin/internal/SignInRequest;->x:Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/internal/ResolveAccountRequest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/signin/internal/SignInRequest;->w:I

    iput-object p1, p0, Lcom/google/android/gms/signin/internal/SignInRequest;->x:Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/signin/internal/SignInRequest;->w:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, LCp;->a(Landroid/os/Parcel;II)V

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/signin/internal/SignInRequest;->x:Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 2
    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 3
    invoke-static {p1, v0}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
