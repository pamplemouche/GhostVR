.class public Lcom/google/android/gms/common/internal/ResolveAccountRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final w:I

.field public final x:Landroid/accounts/Account;

.field public final y:I

.field public final z:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyp;

    invoke-direct {v0}, Lyp;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->w:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->x:Landroid/accounts/Account;

    iput p3, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->y:I

    iput-object p4, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->z:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->w:I

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->x:Landroid/accounts/Account;

    iput p2, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->y:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->z:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->w:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, LCp;->a(Landroid/os/Parcel;II)V

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->x:Landroid/accounts/Account;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 2
    invoke-static {p1, v3, v1, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    .line 3
    iget v3, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->y:I

    .line 4
    invoke-static {p1, v1, v3}, LCp;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    .line 5
    iget-object v3, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->z:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 6
    invoke-static {p1, v1, v3, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 7
    invoke-static {p1, v0}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
