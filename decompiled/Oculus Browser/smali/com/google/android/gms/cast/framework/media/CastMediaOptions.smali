.class public Lcom/google/android/gms/cast/framework/media/CastMediaOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final B:LJs;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final A:Z

.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final y:LEk;

.field public final z:Lcom/google/android/gms/cast/framework/media/NotificationOptions;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJs;

    const-string v1, "CastMediaOptions"

    invoke-direct {v0, v1}, LJs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->B:LJs;

    .line 2
    new-instance v0, Lpk;

    invoke-direct {v0}, Lpk;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Lcom/google/android/gms/cast/framework/media/NotificationOptions;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->w:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->x:Ljava/lang/String;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.gms.cast.framework.media.IImagePicker"

    .line 4
    invoke-interface {p3, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 5
    instance-of p2, p1, LEk;

    if-eqz p2, :cond_1

    .line 6
    check-cast p1, LEk;

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, LFk;

    invoke-direct {p1, p3}, LFk;-><init>(Landroid/os/IBinder;)V

    .line 8
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->y:LEk;

    .line 9
    iput-object p4, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->z:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 10
    iput-boolean p5, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->A:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->w:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 3
    invoke-static {p1, v3, v1, v2}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->x:Ljava/lang/String;

    .line 5
    invoke-static {p1, v1, v3, v2}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    .line 6
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->y:LEk;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 7
    :goto_0
    invoke-static {p1, v1, v3, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x5

    .line 8
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->z:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 9
    invoke-static {p1, v1, v3, p2, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x6

    .line 10
    iget-boolean v1, p0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->A:Z

    .line 11
    invoke-static {p1, p2, v1}, LCp;->a(Landroid/os/Parcel;IZ)V

    .line 12
    invoke-static {p1, v0}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
