.class public Lcom/google/android/gms/cast/framework/CastOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final A:Z

.field public final B:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

.field public final C:Z

.field public final D:D

.field public final E:Z

.field public w:Ljava/lang/String;

.field public final x:Ljava/util/List;

.field public final y:Z

.field public final z:Lcom/google/android/gms/cast/LaunchOptions;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LZk;

    invoke-direct {v0}, LZk;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/framework/CastOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ZLcom/google/android/gms/cast/LaunchOptions;ZLcom/google/android/gms/cast/framework/media/CastMediaOptions;ZDZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastOptions;->w:Ljava/lang/String;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    .line 4
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastOptions;->x:Ljava/util/List;

    if-lez p1, :cond_2

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_2
    iput-boolean p3, p0, Lcom/google/android/gms/cast/framework/CastOptions;->y:Z

    if-nez p4, :cond_3

    .line 7
    new-instance p4, Lcom/google/android/gms/cast/LaunchOptions;

    invoke-direct {p4}, Lcom/google/android/gms/cast/LaunchOptions;-><init>()V

    :cond_3
    iput-object p4, p0, Lcom/google/android/gms/cast/framework/CastOptions;->z:Lcom/google/android/gms/cast/LaunchOptions;

    .line 8
    iput-boolean p5, p0, Lcom/google/android/gms/cast/framework/CastOptions;->A:Z

    .line 9
    iput-object p6, p0, Lcom/google/android/gms/cast/framework/CastOptions;->B:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 10
    iput-boolean p7, p0, Lcom/google/android/gms/cast/framework/CastOptions;->C:Z

    .line 11
    iput-wide p8, p0, Lcom/google/android/gms/cast/framework/CastOptions;->D:D

    .line 12
    iput-boolean p10, p0, Lcom/google/android/gms/cast/framework/CastOptions;->E:Z

    return-void
.end method


# virtual methods
.method public r()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/CastOptions;->x:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastOptions;->w:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/CastOptions;->r()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    .line 5
    invoke-static {p1, v2, v1, v3}, LCp;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 6
    iget-boolean v1, p0, Lcom/google/android/gms/cast/framework/CastOptions;->y:Z

    const/4 v2, 0x4

    .line 7
    invoke-static {p1, v2, v1}, LCp;->a(Landroid/os/Parcel;IZ)V

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastOptions;->z:Lcom/google/android/gms/cast/LaunchOptions;

    const/4 v2, 0x5

    .line 9
    invoke-static {p1, v2, v1, p2, v3}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 10
    iget-boolean v1, p0, Lcom/google/android/gms/cast/framework/CastOptions;->A:Z

    const/4 v2, 0x6

    .line 11
    invoke-static {p1, v2, v1}, LCp;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 12
    invoke-static {p1, v1, v2, p2, v3}, LCp;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 13
    iget-boolean p2, p0, Lcom/google/android/gms/cast/framework/CastOptions;->C:Z

    const/16 v1, 0x8

    .line 14
    invoke-static {p1, v1, p2}, LCp;->a(Landroid/os/Parcel;IZ)V

    .line 15
    iget-wide v1, p0, Lcom/google/android/gms/cast/framework/CastOptions;->D:D

    const/16 p2, 0x9

    .line 16
    invoke-static {p1, p2, v1, v2}, LCp;->a(Landroid/os/Parcel;ID)V

    .line 17
    iget-boolean p2, p0, Lcom/google/android/gms/cast/framework/CastOptions;->E:Z

    const/16 v1, 0xa

    .line 18
    invoke-static {p1, v1, p2}, LCp;->a(Landroid/os/Parcel;IZ)V

    .line 19
    invoke-static {p1, v0}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
