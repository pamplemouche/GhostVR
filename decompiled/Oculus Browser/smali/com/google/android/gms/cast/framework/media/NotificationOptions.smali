.class public Lcom/google/android/gms/cast/framework/media/NotificationOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final c0:Ljava/util/List;

.field public static final d0:[I


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:I

.field public final J:I

.field public final K:I

.field public final L:I

.field public final M:I

.field public final N:I

.field public final O:I

.field public final P:I

.field public final Q:I

.field public final R:I

.field public final S:I

.field public final T:I

.field public final U:I

.field public final V:I

.field public final W:I

.field public final X:I

.field public final Y:I

.field public final Z:I

.field public final a0:I

.field public final b0:LGk;

.field public final w:Ljava/util/List;

.field public final x:[I

.field public final y:J

.field public final z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    const-string v1, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->c0:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->d0:[I

    .line 4
    new-instance v0, LPk;

    invoke-direct {v0}, LPk;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;[IJLjava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIILandroid/os/IBinder;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p33

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->w:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    iput-object v4, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->w:Ljava/util/List;

    :goto_0
    if-eqz v2, :cond_1

    .line 4
    array-length v1, v2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->x:[I

    goto :goto_1

    .line 5
    :cond_1
    iput-object v4, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->x:[I

    :goto_1
    move-wide v1, p3

    .line 6
    iput-wide v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->y:J

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->z:Ljava/lang/String;

    move v1, p6

    .line 8
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->A:I

    move v1, p7

    .line 9
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->B:I

    move v1, p8

    .line 10
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->C:I

    move v1, p9

    .line 11
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->D:I

    move/from16 v1, p10

    .line 12
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->E:I

    move/from16 v1, p11

    .line 13
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->F:I

    move/from16 v1, p12

    .line 14
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->G:I

    move/from16 v1, p13

    .line 15
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->H:I

    move/from16 v1, p14

    .line 16
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->I:I

    move/from16 v1, p15

    .line 17
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->J:I

    move/from16 v1, p16

    .line 18
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->K:I

    move/from16 v1, p17

    .line 19
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->L:I

    move/from16 v1, p18

    .line 20
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->M:I

    move/from16 v1, p19

    .line 21
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->N:I

    move/from16 v1, p20

    .line 22
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->O:I

    move/from16 v1, p21

    .line 23
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->P:I

    move/from16 v1, p22

    .line 24
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->Q:I

    move/from16 v1, p23

    .line 25
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->R:I

    move/from16 v1, p24

    .line 26
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->S:I

    move/from16 v1, p25

    .line 27
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->T:I

    move/from16 v1, p26

    .line 28
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->U:I

    move/from16 v1, p27

    .line 29
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->V:I

    move/from16 v1, p28

    .line 30
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->W:I

    move/from16 v1, p29

    .line 31
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->X:I

    move/from16 v1, p30

    .line 32
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->Y:I

    move/from16 v1, p31

    .line 33
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->Z:I

    move/from16 v1, p32

    .line 34
    iput v1, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->a0:I

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "com.google.android.gms.cast.framework.media.INotificationActionsProvider"

    .line 35
    invoke-interface {v3, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 36
    instance-of v2, v1, LGk;

    if-eqz v2, :cond_3

    .line 37
    move-object v4, v1

    check-cast v4, LGk;

    goto :goto_2

    .line 38
    :cond_3
    new-instance v4, LHk;

    invoke-direct {v4, v3}, LHk;-><init>(Landroid/os/IBinder;)V

    .line 39
    :goto_2
    iput-object v4, v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->b0:LGk;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-static {p1}, LCp;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->w:Ljava/util/List;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v0, v2}, LCp;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->x:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 5
    invoke-static {p1, v1}, LCp;->a(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-static {p1, v1}, LCp;->b(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v0, 0x4

    .line 6
    iget-wide v3, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->y:J

    .line 7
    invoke-static {p1, v0, v3, v4}, LCp;->a(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x5

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->z:Ljava/lang/String;

    .line 9
    invoke-static {p1, v0, v1, v2}, LCp;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    .line 10
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->A:I

    .line 11
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/4 v0, 0x7

    .line 12
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->B:I

    .line 13
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x8

    .line 14
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->C:I

    .line 15
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x9

    .line 16
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->D:I

    .line 17
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0xa

    .line 18
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->E:I

    .line 19
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0xb

    .line 20
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->F:I

    .line 21
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0xc

    .line 22
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->G:I

    .line 23
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0xd

    .line 24
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->H:I

    .line 25
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0xe

    .line 26
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->I:I

    .line 27
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0xf

    .line 28
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->J:I

    .line 29
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x10

    .line 30
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->K:I

    .line 31
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x11

    .line 32
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->L:I

    .line 33
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x12

    .line 34
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->M:I

    .line 35
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x13

    .line 36
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->N:I

    .line 37
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x14

    .line 38
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->O:I

    .line 39
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x15

    .line 40
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->P:I

    .line 41
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x16

    .line 42
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->Q:I

    .line 43
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x17

    .line 44
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->R:I

    .line 45
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x18

    .line 46
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->S:I

    .line 47
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x19

    .line 48
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->T:I

    .line 49
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x1a

    .line 50
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->U:I

    .line 51
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x1b

    .line 52
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->V:I

    .line 53
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x1c

    .line 54
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->W:I

    .line 55
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x1d

    .line 56
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->X:I

    .line 57
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x1e

    .line 58
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->Y:I

    .line 59
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x1f

    .line 60
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->Z:I

    .line 61
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x20

    .line 62
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->a0:I

    .line 63
    invoke-static {p1, v0, v1}, LCp;->a(Landroid/os/Parcel;II)V

    const/16 v0, 0x21

    .line 64
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->b0:LGk;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 65
    :goto_1
    invoke-static {p1, v0, v1, v2}, LCp;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 66
    invoke-static {p1, p2}, LCp;->b(Landroid/os/Parcel;I)V

    return-void
.end method
