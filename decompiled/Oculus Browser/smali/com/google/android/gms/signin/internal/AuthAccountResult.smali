.class public Lcom/google/android/gms/signin/internal/AuthAccountResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"

# interfaces
.implements LLm;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final w:I

.field public x:I

.field public y:Landroid/content/Intent;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LJu;

    invoke-direct {v0}, LJu;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/internal/AuthAccountResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/signin/internal/AuthAccountResult;->w:I

    iput p2, p0, Lcom/google/android/gms/signin/internal/AuthAccountResult;->x:I

    iput-object p3, p0, Lcom/google/android/gms/signin/internal/AuthAccountResult;->y:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public c()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/signin/internal/AuthAccountResult;->x:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->A:Lcom/google/android/gms/common/api/Status;

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->D:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/signin/internal/AuthAccountResult;->w:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, LCp;->a(Landroid/os/Parcel;II)V

    .line 1
    iget v1, p0, Lcom/google/android/gms/signin/internal/AuthAccountResult;->x:I

    const/4 v2, 0x2

    .line 2
    invoke-static {p1, v2, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/signin/internal/AuthAccountResult;->y:Landroid/content/Intent;

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v1, v2, p2, v3}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 5
    invoke-static {p1, v0}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
