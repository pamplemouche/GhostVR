.class public final LJk;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)V
    .locals 0

    .line 1
    iput-object p1, p0, LJk;->a:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string v0, "targetActivity"

    .line 1
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/ComponentName;

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, LJk;->a:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->J:LJj;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const-string v3, "Must be called from the main thread."

    .line 6
    invoke-static {v3}, Lxp;->a(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7
    :try_start_0
    iget-object v1, v1, LJj;->b:Lhl;

    check-cast v1, Lil;

    .line 8
    invoke-virtual {v1}, LXr;->A()Landroid/os/Parcel;

    move-result-object v5

    const/16 v6, 0xc

    .line 9
    invoke-virtual {v1, v6, v5}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lks;->a(Landroid/os/Parcel;)Z

    move-result v5

    .line 11
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 12
    sget-object v1, LJj;->i:LJs;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "hasActivityInRecents"

    aput-object v6, v5, v4

    const-class v6, Lhl;

    .line 13
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 14
    invoke-virtual {v1}, LJs;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "Unable to call %s on %s."

    .line 15
    invoke-virtual {v1, v6, v5}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/high16 v1, 0x8000000

    if-eqz v5, :cond_1

    const/high16 p2, 0x24000000

    .line 16
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 17
    invoke-static {p1, v3, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    goto :goto_2

    .line 18
    :cond_1
    iget-object v5, p0, LJk;->a:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    .line 19
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 21
    :try_start_1
    invoke-static {v5, p2}, LB3;->a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_2

    .line 22
    invoke-virtual {v6, v7, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-static {v5, p2}, LB3;->a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 26
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/content/Intent;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/Intent;

    .line 27
    new-instance v0, Landroid/content/Intent;

    aget-object v6, p2, v4

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v6, 0x1000c000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    aput-object v0, p2, v4

    .line 28
    invoke-static {v5, v3, p2, v1, v2}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p2

    .line 29
    :goto_2
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 31
    invoke-virtual {p2, p1, v3, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    nop

    .line 32
    sget-object p1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->L:LJs;

    new-array p2, v4, [Ljava/lang/Object;

    .line 33
    invoke-virtual {p1}, LJs;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Sending PendingIntent failed"

    .line 34
    invoke-virtual {p1, v0, p2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_3
    return-void

    .line 35
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    const-string p2, "TaskStackBuilder"

    const-string v0, "Bad ComponentName while traversing activity parent metadata"

    .line 36
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 38
    :cond_5
    throw v2
.end method
