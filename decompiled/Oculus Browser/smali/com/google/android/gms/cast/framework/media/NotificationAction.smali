.class public Lcom/google/android/gms/cast/framework/media/NotificationAction;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final w:Ljava/lang/String;

.field public final x:I

.field public final y:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LOk;

    invoke-direct {v0}, LOk;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/NotificationAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationAction;->w:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/android/gms/cast/framework/media/NotificationAction;->x:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/NotificationAction;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationAction;->w:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v0, v2}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 4
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationAction;->x:I

    const/4 v1, 0x3

    .line 5
    invoke-static {p1, v1, v0}, LCp;->a(Landroid/os/Parcel;II)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationAction;->y:Ljava/lang/String;

    const/4 v1, 0x4

    .line 7
    invoke-static {p1, v1, v0, v2}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 8
    invoke-static {p1, p2}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
