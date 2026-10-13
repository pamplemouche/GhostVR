.class public Lcom/google/android/gms/cast/framework/media/MediaNotificationService;
.super Landroid/app/Service;
.source "PG"


# static fields
.field public static final L:LJs;


# instance fields
.field public A:[I

.field public B:LGk;

.field public C:J

.field public D:Let;

.field public E:Landroid/content/res/Resources;

.field public F:LHj;

.field public G:LXj;

.field public H:LYj;

.field public I:Landroid/app/Notification;

.field public J:LJj;

.field public final K:Landroid/content/BroadcastReceiver;

.field public w:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

.field public x:Landroid/content/ComponentName;

.field public y:Landroid/content/ComponentName;

.field public z:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJs;

    const-string v1, "MediaNotificationService"

    invoke-direct {v0, v1}, LJs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->L:LJs;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->z:Ljava/util/List;

    .line 3
    new-instance v0, LJk;

    invoke-direct {v0, p0}, LJk;-><init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->K:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .line 1
    const-class v0, Lfk;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->G:LXj;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->H:LYj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, v1, LYj;->b:Landroid/graphics/Bitmap;

    .line 4
    :goto_0
    new-instance v3, LG3;

    const-string v4, "cast_media_notification"

    invoke-direct {v3, p0, v4}, LG3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3, v1}, LG3;->a(Landroid/graphics/Bitmap;)LG3;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->w:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 6
    iget v1, v1, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->A:I

    .line 7
    iget-object v4, v3, LG3;->N:Landroid/app/Notification;

    iput v1, v4, Landroid/app/Notification;->icon:I

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->G:LXj;

    iget-object v1, v1, LXj;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {v3, v1}, LG3;->b(Ljava/lang/CharSequence;)LG3;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->E:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->w:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 10
    iget v4, v4, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->O:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 11
    iget-object v7, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->G:LXj;

    iget-object v7, v7, LXj;->e:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 12
    invoke-virtual {v1, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v3, v1}, LG3;->a(Ljava/lang/CharSequence;)LG3;

    const/4 v1, 0x2

    .line 14
    invoke-virtual {v3, v1, v5}, LG3;->a(IZ)V

    .line 15
    iput-boolean v8, v3, LG3;->m:Z

    .line 16
    iput v5, v3, LG3;->D:I

    .line 17
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->y:Landroid/content/ComponentName;

    if-nez v4, :cond_2

    move-object v4, v2

    goto :goto_1

    .line 18
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 19
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->y:Landroid/content/ComponentName;

    const-string v7, "targetActivity"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 20
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->y:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x8000000

    .line 21
    invoke-static {p0, v5, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_3

    .line 22
    iput-object v4, v3, LG3;->f:Landroid/app/PendingIntent;

    .line 23
    :cond_3
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->B:LGk;

    const-string v6, "Unable to call %s on %s."

    if-eqz v4, :cond_12

    .line 24
    sget-object v4, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->L:LJs;

    new-array v7, v8, [Ljava/lang/Object;

    .line 25
    iget-object v9, v4, LJs;->a:Ljava/lang/String;

    const-string v10, "mActionsProvider != null"

    invoke-virtual {v4, v10, v7}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->B:LGk;

    check-cast v4, LHk;

    .line 27
    invoke-virtual {v4}, LXr;->A()Landroid/os/Parcel;

    move-result-object v7

    const/4 v9, 0x3

    .line 28
    invoke-virtual {v4, v9, v7}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v4

    .line 29
    sget-object v7, Lcom/google/android/gms/cast/framework/media/NotificationAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 30
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 31
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->B:LGk;

    check-cast v4, LHk;

    .line 32
    invoke-virtual {v4}, LXr;->A()Landroid/os/Parcel;

    move-result-object v9

    const/4 v10, 0x4

    .line 33
    invoke-virtual {v4, v10, v9}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v4

    .line 34
    invoke-virtual {v4}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    .line 35
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_6

    .line 36
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 37
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, 0x5

    if-le v4, v10, :cond_5

    .line 38
    sget-object v4, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->L:LJs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    const-string v11, " provides more than 5 actions."

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v10, v11}, LJs;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    const/4 v4, 0x1

    goto :goto_4

    .line 39
    :cond_6
    :goto_2
    sget-object v4, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->L:LJs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    const-string v11, " doesn\'t provide any action."

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v10, v11}, LJs;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_11

    .line 40
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v9, :cond_b

    .line 41
    array-length v10, v9

    if-nez v10, :cond_7

    goto :goto_7

    .line 42
    :cond_7
    array-length v10, v9

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_a

    aget v12, v9, v11

    if-ltz v12, :cond_9

    if-lt v12, v4, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 43
    :cond_9
    :goto_6
    sget-object v4, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->L:LJs;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "provides a compact view action whose index is out of bounds."

    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v10, v8, [Ljava/lang/Object;

    .line 45
    invoke-virtual {v4, v0, v10}, LJs;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_a
    const/4 v0, 0x1

    goto :goto_9

    .line 46
    :cond_b
    :goto_7
    sget-object v4, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->L:LJs;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v10, " doesn\'t provide any actions for compact view."

    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v10, v8, [Ljava/lang/Object;

    .line 48
    invoke-virtual {v4, v0, v10}, LJs;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_c

    goto/16 :goto_d

    .line 49
    :cond_c
    invoke-virtual {v9}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 50
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/cast/framework/media/NotificationAction;

    .line 51
    iget-object v9, v7, Lcom/google/android/gms/cast/framework/media/NotificationAction;->w:Ljava/lang/String;

    .line 52
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 53
    iget-object v9, v7, Lcom/google/android/gms/cast/framework/media/NotificationAction;->w:Ljava/lang/String;

    const-string v10, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 54
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 55
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 56
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 57
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "com.google.android.gms.cast.framework.action.REWIND"

    .line 58
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 59
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_b

    :cond_d
    const/4 v9, 0x0

    goto :goto_c

    :cond_e
    :goto_b
    const/4 v9, 0x1

    :goto_c
    if-eqz v9, :cond_f

    .line 60
    iget-object v7, v7, Lcom/google/android/gms/cast/framework/media/NotificationAction;->w:Ljava/lang/String;

    .line 61
    invoke-virtual {p0, v3, v7}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->a(LG3;Ljava/lang/String;)V

    goto :goto_a

    .line 62
    :cond_f
    new-instance v9, Landroid/content/Intent;

    .line 63
    iget-object v10, v7, Lcom/google/android/gms/cast/framework/media/NotificationAction;->w:Ljava/lang/String;

    .line 64
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    iget-object v10, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->x:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 66
    invoke-static {p0, v8, v9, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 67
    new-instance v10, LD3;

    .line 68
    iget v11, v7, Lcom/google/android/gms/cast/framework/media/NotificationAction;->x:I

    .line 69
    iget-object v7, v7, Lcom/google/android/gms/cast/framework/media/NotificationAction;->y:Ljava/lang/String;

    .line 70
    invoke-direct {v10, v11, v7, v9}, LD3;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 71
    invoke-virtual {v10}, LD3;->a()LE3;

    move-result-object v7

    .line 72
    iget-object v9, v3, LG3;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 73
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action cannot be null or an empty string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_d
    return-void

    :catch_0
    move-exception v0

    .line 74
    sget-object v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->L:LJs;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "getNotificationActions"

    aput-object v3, v1, v8

    const-class v3, LGk;

    .line 75
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 76
    iget-object v3, v2, LJs;->a:Ljava/lang/String;

    invoke-virtual {v2, v6, v1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 77
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 78
    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->a(LG3;Ljava/lang/String;)V

    goto :goto_e

    .line 79
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->A:[I

    .line 80
    :cond_14
    new-instance v4, Lb5;

    invoke-direct {v4}, Lb5;-><init>()V

    .line 81
    iput-object v0, v4, Lb5;->c:[I

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->G:LXj;

    iget-object v0, v0, LXj;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 83
    iput-object v0, v4, Lb5;->d:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 84
    invoke-virtual {v3, v4}, LG3;->a(LH3;)LG3;

    .line 85
    invoke-virtual {v3}, LG3;->a()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->I:Landroid/app/Notification;

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->J:LJj;

    if-eqz v0, :cond_17

    const-string v2, "Must be called from the main thread."

    .line 87
    invoke-static {v2}, Lxp;->a(Ljava/lang/String;)V

    .line 88
    :try_start_1
    iget-object v0, v0, LJj;->b:Lhl;

    check-cast v0, Lil;

    .line 89
    invoke-virtual {v0}, LXr;->A()Landroid/os/Parcel;

    move-result-object v2

    .line 90
    invoke-virtual {v0, v1, v2}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lks;->a(Landroid/os/Parcel;)Z

    move-result v2

    .line 92
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    :catch_1
    nop

    .line 93
    sget-object v0, LJj;->i:LJs;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isApplicationVisible"

    aput-object v2, v1, v8

    const-class v2, Lhl;

    .line 94
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 95
    invoke-virtual {v0}, LJs;->a()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 96
    invoke-virtual {v0, v6, v1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_15
    const/4 v2, 0x0

    :goto_f
    if-nez v2, :cond_16

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->I:Landroid/app/Notification;

    invoke-virtual {p0, v5, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void

    .line 98
    :cond_16
    invoke-virtual {p0, v5}, Landroid/app/Service;->stopForeground(Z)V

    return-void

    .line 99
    :cond_17
    throw v2
.end method

.method public final a(LG3;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 100
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v6, 0x0

    const-string v7, "com.google.android.gms.cast.framework.action.FORWARD"

    const-string v8, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    const-string v9, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    const-string v10, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    const-string v11, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    const-string v12, "com.google.android.gms.cast.framework.action.REWIND"

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_2
    const-string v3, "com.google.android.gms.cast.framework.action.DISCONNECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_3
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_4
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_5
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_6
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const-wide/16 v13, 0x7530

    const-wide/16 v15, 0x2710

    const/high16 v5, 0x8000000

    const-string v4, "googlecast-extra_skip_step_ms"

    const/16 v17, 0x0

    packed-switch v3, :pswitch_data_0

    .line 101
    sget-object v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->L:LJs;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    goto/16 :goto_7

    .line 102
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->x:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 104
    invoke-static {v0, v6, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 105
    new-instance v3, LD3;

    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->w:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 106
    iget v5, v4, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->M:I

    .line 107
    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->E:Landroid/content/res/Resources;

    .line 108
    iget v4, v4, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->a0:I

    .line 109
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4, v2}, LD3;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 110
    invoke-virtual {v3}, LD3;->a()LE3;

    move-result-object v2

    .line 111
    iget-object v1, v1, LG3;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 112
    :pswitch_1
    iget-wide v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->C:J

    .line 113
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    iget-object v8, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->x:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 115
    invoke-virtual {v7, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 116
    invoke-static {v0, v6, v7, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 117
    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->w:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 118
    iget v6, v5, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->J:I

    .line 119
    iget v7, v5, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->X:I

    cmp-long v8, v2, v15

    if-nez v8, :cond_1

    .line 120
    iget v6, v5, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->K:I

    .line 121
    iget v7, v5, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->Y:I

    goto :goto_2

    :cond_1
    cmp-long v8, v2, v13

    if-nez v8, :cond_2

    .line 122
    iget v6, v5, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->L:I

    .line 123
    iget v7, v5, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->Z:I

    .line 124
    :cond_2
    :goto_2
    new-instance v2, LD3;

    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->E:Landroid/content/res/Resources;

    .line 125
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3, v4}, LD3;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 126
    invoke-virtual {v2}, LD3;->a()LE3;

    move-result-object v2

    .line 127
    iget-object v1, v1, LG3;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 128
    :pswitch_2
    iget-wide v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->C:J

    .line 129
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    iget-object v7, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->x:Landroid/content/ComponentName;

    invoke-virtual {v8, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 131
    invoke-virtual {v8, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 132
    invoke-static {v0, v6, v8, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 133
    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->w:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 134
    iget v6, v5, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->G:I

    .line 135
    iget v7, v5, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->U:I

    cmp-long v8, v2, v15

    if-nez v8, :cond_3

    .line 136
    iget v6, v5, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->H:I

    .line 137
    iget v7, v5, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->V:I

    goto :goto_3

    :cond_3
    cmp-long v8, v2, v13

    if-nez v8, :cond_4

    .line 138
    iget v6, v5, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->I:I

    .line 139
    iget v7, v5, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->W:I

    .line 140
    :cond_4
    :goto_3
    new-instance v2, LD3;

    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->E:Landroid/content/res/Resources;

    .line 141
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3, v4}, LD3;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 142
    invoke-virtual {v2}, LD3;->a()LE3;

    move-result-object v2

    .line 143
    iget-object v1, v1, LG3;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 144
    :pswitch_3
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->G:LXj;

    iget-boolean v2, v2, LXj;->g:Z

    if-eqz v2, :cond_5

    .line 145
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->x:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 147
    invoke-static {v0, v6, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    :cond_5
    move-object/from16 v2, v17

    .line 148
    new-instance v3, LD3;

    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->w:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 149
    iget v5, v4, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->F:I

    .line 150
    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->E:Landroid/content/res/Resources;

    .line 151
    iget v4, v4, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->T:I

    .line 152
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4, v2}, LD3;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 153
    invoke-virtual {v3}, LD3;->a()LE3;

    move-result-object v2

    .line 154
    iget-object v1, v1, LG3;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 155
    :pswitch_4
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->G:LXj;

    iget-boolean v2, v2, LXj;->f:Z

    if-eqz v2, :cond_6

    .line 156
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->x:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 158
    invoke-static {v0, v6, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    :cond_6
    move-object/from16 v2, v17

    .line 159
    new-instance v3, LD3;

    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->w:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 160
    iget v5, v4, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->E:I

    .line 161
    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->E:Landroid/content/res/Resources;

    .line 162
    iget v4, v4, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->S:I

    .line 163
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4, v2}, LD3;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 164
    invoke-virtual {v3}, LD3;->a()LE3;

    move-result-object v2

    .line 165
    iget-object v1, v1, LG3;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 166
    :pswitch_5
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->G:LXj;

    iget v3, v2, LXj;->c:I

    iget-boolean v2, v2, LXj;->b:Z

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 167
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->w:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 168
    iget v4, v3, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->B:I

    .line 169
    iget v3, v3, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->P:I

    goto :goto_4

    .line 170
    :cond_7
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->w:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 171
    iget v4, v3, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->C:I

    .line 172
    iget v3, v3, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->Q:I

    :goto_4
    if-eqz v2, :cond_8

    goto :goto_5

    .line 173
    :cond_8
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->w:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 174
    iget v4, v4, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->D:I

    :goto_5
    if-eqz v2, :cond_9

    goto :goto_6

    .line 175
    :cond_9
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->w:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 176
    iget v3, v2, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->R:I

    .line 177
    :goto_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    iget-object v5, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->x:Landroid/content/ComponentName;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 179
    invoke-static {v0, v6, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 180
    new-instance v5, LD3;

    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->E:Landroid/content/res/Resources;

    .line 181
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v4, v3, v2}, LD3;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 182
    invoke-virtual {v5}, LD3;->a()LE3;

    move-result-object v2

    .line 183
    iget-object v1, v1, LG3;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 184
    :goto_7
    iget-object v2, v1, LJs;->a:Ljava/lang/String;

    const-string v4, "Action: %s is not a pre-defined action."

    invoke-virtual {v1, v4, v3}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_6
        -0x3855de4e -> :sswitch_5
        -0x3854c70e -> :sswitch_4
        -0x27d32f79 -> :sswitch_3
        -0x76b6783 -> :sswitch_2
        0xe0a3765 -> :sswitch_1
        0x51303e64 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-static {p0}, LJj;->a(Landroid/content/Context;)LJj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->J:LJj;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "Must be called from the main thread."

    .line 2
    invoke-static {v2}, Lxp;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, LJj;->e:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 4
    throw v1

    .line 5
    :cond_0
    throw v1
.end method

.method public onDestroy()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->D:Let;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Let;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->y:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget-object v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->L:LJs;

    new-array v3, v1, [Ljava/lang/Object;

    .line 6
    iget-object v4, v2, LJs;->a:Ljava/lang/String;

    const-string v5, "Unregistering trampoline BroadcastReceiver failed"

    invoke-virtual {v2, v5, v3}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const-string v0, "notification"

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->J:LJj;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->F:LHj;

    if-eqz v0, :cond_4

    const-string v4, "Must be called from the main thread."

    .line 9
    invoke-static {v4}, Lxp;->a(Ljava/lang/String;)V

    if-nez v3, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    :try_start_1
    iget-object v0, v0, LJj;->b:Lhl;

    new-instance v4, LSk;

    invoke-direct {v4, v3}, LSk;-><init>(LHj;)V

    check-cast v0, Lil;

    .line 11
    invoke-virtual {v0}, LXr;->A()Landroid/os/Parcel;

    move-result-object v3

    .line 12
    invoke-static {v3, v4}, Lks;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 v4, 0x4

    .line 13
    invoke-virtual {v0, v4, v3}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 14
    sget-object v0, LJj;->i:LJs;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "addVisibilityChangeListener"

    aput-object v4, v3, v1

    const-class v1, Lhl;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 16
    invoke-virtual {v0}, LJs;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Unable to call %s on %s."

    .line 17
    invoke-virtual {v0, v1, v3}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v0, 0x0

    .line 18
    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION"

    .line 2
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "extra_media_info"

    .line 3
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/MediaInfo;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    iget-object v5, v3, Lcom/google/android/gms/cast/MediaInfo;->z:Lcom/google/android/gms/cast/MediaMetadata;

    if-nez v5, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v6, "extra_remote_media_client_player_state"

    .line 5
    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v7, "extra_cast_device"

    .line 6
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/cast/CastDevice;

    if-nez v7, :cond_3

    goto/16 :goto_4

    .line 7
    :cond_3
    new-instance v15, LXj;

    const/4 v8, 0x2

    if-ne v6, v8, :cond_4

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    .line 8
    :goto_0
    iget v10, v3, Lcom/google/android/gms/cast/MediaInfo;->x:I

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    .line 9
    invoke-virtual {v5, v3}, Lcom/google/android/gms/cast/MediaMetadata;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 10
    iget-object v12, v7, Lcom/google/android/gms/cast/CastDevice;->z:Ljava/lang/String;

    const-string v3, "extra_media_session_token"

    .line 11
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const-string v3, "extra_can_skip_next"

    .line 12
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    const-string v3, "extra_can_skip_prev"

    .line 13
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    move-object v8, v15

    move-object v6, v15

    move v15, v3

    invoke-direct/range {v8 .. v15}, LXj;-><init>(ZILjava/lang/String;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;ZZ)V

    const-string v3, "extra_media_notification_force_update"

    .line 14
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 15
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->G:LXj;

    if-eqz v1, :cond_5

    .line 16
    iget-boolean v3, v6, LXj;->b:Z

    iget-boolean v7, v1, LXj;->b:Z

    if-ne v3, v7, :cond_5

    iget v3, v6, LXj;->c:I

    iget v7, v1, LXj;->c:I

    if-ne v3, v7, :cond_5

    iget-object v3, v6, LXj;->d:Ljava/lang/String;

    iget-object v7, v1, LXj;->d:Ljava/lang/String;

    .line 17
    invoke-static {v3, v7}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v6, LXj;->e:Ljava/lang/String;

    iget-object v7, v1, LXj;->e:Ljava/lang/String;

    .line 18
    invoke-static {v3, v7}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, v6, LXj;->f:Z

    iget-boolean v7, v1, LXj;->f:Z

    if-ne v3, v7, :cond_5

    iget-boolean v3, v6, LXj;->g:Z

    iget-boolean v1, v1, LXj;->g:Z

    if-ne v3, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_7

    .line 19
    :cond_6
    iput-object v6, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->G:LXj;

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->a()V

    .line 21
    :cond_7
    new-instance v1, LYj;

    .line 22
    iget-object v3, v5, Lcom/google/android/gms/cast/MediaMetadata;->w:Ljava/util/List;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_9

    .line 23
    iget-object v3, v5, Lcom/google/android/gms/cast/MediaMetadata;->w:Ljava/util/List;

    .line 24
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/images/WebImage;

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    .line 25
    :goto_3
    invoke-direct {v1, v3}, LYj;-><init>(Lcom/google/android/gms/common/images/WebImage;)V

    .line 26
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->H:LYj;

    if-eqz v3, :cond_a

    .line 27
    iget-object v5, v1, LYj;->a:Landroid/net/Uri;

    iget-object v3, v3, LYj;->a:Landroid/net/Uri;

    invoke-static {v5, v3}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v4, 0x1

    :cond_a
    if-nez v4, :cond_b

    .line 28
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->D:Let;

    new-instance v4, LLk;

    invoke-direct {v4, v0, v1}, LLk;-><init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;LYj;)V

    .line 29
    iput-object v4, v3, Let;->g:Lft;

    .line 30
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->D:Let;

    iget-object v1, v1, LYj;->a:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Let;->a(Landroid/net/Uri;)Z

    :cond_b
    const/4 v4, 0x1

    :goto_4
    if-nez v4, :cond_c

    .line 31
    invoke-virtual {v0, v2}, Landroid/app/Service;->stopForeground(Z)V

    :cond_c
    return v2
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->setTheme(I)V

    return-void
.end method
