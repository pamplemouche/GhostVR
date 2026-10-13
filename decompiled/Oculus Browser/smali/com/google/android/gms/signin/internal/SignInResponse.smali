.class public Lcom/google/android/gms/signin/internal/SignInResponse;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final w:I

.field public final x:Lcom/google/android/gms/common/ConnectionResult;

.field public final y:Lcom/google/android/gms/common/internal/ResolveAccountResponse;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LSu;

    invoke-direct {v0}, LSu;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/internal/SignInResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/signin/internal/SignInResponse;->w:I

    iput-object v0, p0, Lcom/google/android/gms/signin/internal/SignInResponse;->x:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v1, p0, Lcom/google/android/gms/signin/internal/SignInResponse;->y:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/signin/internal/SignInResponse;->w:I

    iput-object p2, p0, Lcom/google/android/gms/signin/internal/SignInResponse;->x:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p3, p0, Lcom/google/android/gms/signin/internal/SignInResponse;->y:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/signin/internal/SignInResponse;->w:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, LCp;->a(Landroid/os/Parcel;II)V

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/signin/internal/SignInResponse;->x:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 2
    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    .line 3
    iget-object v3, p0, Lcom/google/android/gms/signin/internal/SignInResponse;->y:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    .line 4
    invoke-static {p1, v1, v3, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 5
    invoke-static {p1, v0}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
