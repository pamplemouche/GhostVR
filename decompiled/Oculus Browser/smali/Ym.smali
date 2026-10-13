.class public LYm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final n:Lcom/google/android/gms/common/api/Status;

.field public static final o:Lcom/google/android/gms/common/api/Status;

.field public static final p:Ljava/lang/Object;

.field public static q:LYm;


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public final d:Landroid/content/Context;

.field public final e:Ldm;

.field public final f:Lip;

.field public final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Ljava/util/Map;

.field public j:Lon;

.field public final k:Ljava/util/Set;

.field public final l:Ljava/util/Set;

.field public final m:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Sign-out occurred while this API call was in progress."

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, LYm;->n:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The user must be signed in to make this API call."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, LYm;->o:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LYm;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ldm;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, LYm;->a:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, LYm;->b:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, LYm;->c:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, LYm;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, LYm;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x5

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, LYm;->i:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, LYm;->j:Lon;

    new-instance v0, LL6;

    invoke-direct {v0}, LL6;-><init>()V

    iput-object v0, p0, LYm;->k:Ljava/util/Set;

    new-instance v0, LL6;

    invoke-direct {v0}, LL6;-><init>()V

    iput-object v0, p0, LYm;->l:Ljava/util/Set;

    iput-object p1, p0, LYm;->d:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, LYm;->m:Landroid/os/Handler;

    iput-object p3, p0, LYm;->e:Ldm;

    new-instance p1, Lip;

    invoke-direct {p1, p3}, Lip;-><init>(Lem;)V

    iput-object p1, p0, LYm;->f:Lip;

    iget-object p1, p0, LYm;->m:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static a()LYm;
    .locals 3

    sget-object v0, LYm;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LYm;->q:LYm;

    const-string v2, "Must guarantee manager is non-null before using getInstance"

    invoke-static {v1, v2}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LYm;->q:LYm;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a(Landroid/content/Context;)LYm;
    .locals 4

    sget-object v0, LYm;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LYm;->q:LYm;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, LYm;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1
    sget-object v3, Ldm;->d:Ldm;

    .line 2
    invoke-direct {v2, p0, v1, v3}, LYm;-><init>(Landroid/content/Context;Landroid/os/Looper;Ldm;)V

    sput-object v2, LYm;->q:LYm;

    :cond_0
    sget-object p0, LYm;->q:LYm;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(LDm;)V
    .locals 2

    .line 3
    iget-object v0, p1, LDm;->d:Loo;

    .line 4
    iget-object v1, p0, LYm;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LVm;

    if-nez v1, :cond_0

    new-instance v1, LVm;

    invoke-direct {v1, p0, p1}, LVm;-><init>(LYm;LDm;)V

    iget-object p1, p0, LYm;->i:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, LVm;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LYm;->l:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, LVm;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 5

    iget-object v0, p0, LYm;->e:Ldm;

    iget-object v1, p0, LYm;->d:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->r()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->y:Landroid/app/PendingIntent;

    goto :goto_0

    .line 7
    :cond_0
    iget v3, p1, Lcom/google/android/gms/common/ConnectionResult;->x:I

    .line 8
    invoke-virtual {v0, v1, v3, v4, v2}, Lem;->a(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    .line 9
    iget p1, p1, Lcom/google/android/gms/common/ConnectionResult;->x:I

    .line 10
    invoke-static {v1, v3, p2}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v1, p1, v2, p2}, Ldm;->a(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    const/4 v4, 0x1

    :cond_1
    return v4

    .line 11
    :cond_2
    throw v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/32 v3, 0x493e0

    const-string v5, "GoogleApiManager"

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown message id: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LWm;

    iget-object v0, p0, LYm;->i:Ljava/util/Map;

    .line 1
    iget-object v3, p1, LWm;->a:Loo;

    .line 2
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, LYm;->i:Ljava/util/Map;

    .line 3
    iget-object v3, p1, LWm;->a:Loo;

    .line 4
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVm;

    .line 5
    iget-object v3, v0, LVm;->k:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, v0, LVm;->m:LYm;

    .line 6
    iget-object v3, v3, LYm;->m:Landroid/os/Handler;

    const/16 v4, 0xf

    .line 7
    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v3, v0, LVm;->m:LYm;

    .line 8
    iget-object v3, v3, LYm;->m:Landroid/os/Handler;

    const/16 v4, 0x10

    .line 9
    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 10
    iget-object p1, p1, LWm;->b:Lcom/google/android/gms/common/Feature;

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, LVm;->a:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, v0, LVm;->a:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LIn;

    instance-of v6, v5, Lmo;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Lmo;

    .line 12
    iget-object v6, v6, Lmo;->a:Lkn;

    .line 13
    iget-object v6, v6, Lkn;->a:[Lcom/google/android/gms/common/Feature;

    if-eqz v6, :cond_0

    .line 14
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    invoke-static {v9, p1}, Lwp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, -0x1

    :goto_2
    if-ltz v8, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_0

    .line 15
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_4
    if-ge v1, v4, :cond_14

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    check-cast v5, LIn;

    iget-object v6, v0, LVm;->a:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    new-instance v6, LOm;

    invoke-direct {v6, p1}, LOm;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v5, v6}, LIn;->a(Ljava/lang/RuntimeException;)V

    goto :goto_4

    .line 16
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LWm;

    iget-object v0, p0, LYm;->i:Ljava/util/Map;

    .line 17
    iget-object v1, p1, LWm;->a:Loo;

    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, LYm;->i:Ljava/util/Map;

    .line 19
    iget-object v1, p1, LWm;->a:Loo;

    .line 20
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVm;

    .line 21
    iget-object v1, v0, LVm;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_b

    :cond_5
    iget-boolean p1, v0, LVm;->j:Z

    if-nez p1, :cond_14

    iget-object p1, v0, LVm;->b:Lwm;

    check-cast p1, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, LVm;->a()V

    goto/16 :goto_b

    :cond_6
    invoke-virtual {v0}, LVm;->e()V

    goto/16 :goto_b

    .line 22
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lpn;

    throw v6

    :pswitch_3
    iget-object v0, p0, LYm;->i:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, LYm;->i:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LVm;

    .line 23
    invoke-virtual {p1, v2}, LVm;->a(Z)Z

    goto/16 :goto_b

    .line 24
    :pswitch_4
    iget-object v0, p0, LYm;->i:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, LYm;->i:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LVm;

    .line 25
    iget-object v0, p1, LVm;->m:LYm;

    .line 26
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    .line 27
    invoke-static {v0}, Lxp;->a(Landroid/os/Handler;)V

    iget-boolean v0, p1, LVm;->j:Z

    if-eqz v0, :cond_14

    invoke-virtual {p1}, LVm;->h()V

    iget-object v0, p1, LVm;->m:LYm;

    .line 28
    iget-object v1, v0, LYm;->e:Ldm;

    .line 29
    iget-object v0, v0, LYm;->d:Landroid/content/Context;

    .line 30
    invoke-virtual {v1, v0}, Ldm;->a(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    const/16 v3, 0x8

    if-ne v0, v1, :cond_7

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_5

    :cond_7
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_5
    invoke-virtual {p1, v0}, LVm;->a(Lcom/google/android/gms/common/api/Status;)V

    iget-object p1, p1, LVm;->b:Lwm;

    invoke-interface {p1}, Lwm;->disconnect()V

    goto/16 :goto_b

    .line 31
    :pswitch_5
    iget-object p1, p0, LYm;->l:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loo;

    iget-object v1, p0, LYm;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVm;

    invoke-virtual {v0}, LVm;->f()V

    goto :goto_6

    :cond_8
    iget-object p1, p0, LYm;->l:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_b

    :pswitch_6
    iget-object v0, p0, LYm;->i:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, LYm;->i:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LVm;

    .line 32
    iget-object v0, p1, LVm;->m:LYm;

    .line 33
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    .line 34
    invoke-static {v0}, Lxp;->a(Landroid/os/Handler;)V

    iget-boolean v0, p1, LVm;->j:Z

    if-eqz v0, :cond_14

    invoke-virtual {p1}, LVm;->a()V

    goto/16 :goto_b

    .line 35
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LDm;

    invoke-virtual {p0, p1}, LYm;->a(LDm;)V

    goto/16 :goto_b

    :pswitch_8
    iget-object p1, p0, LYm;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_14

    iget-object p1, p0, LYm;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, LRm;->a(Landroid/app/Application;)V

    .line 36
    sget-object p1, LRm;->A:LRm;

    .line 37
    new-instance v0, LQn;

    invoke-direct {v0, p0}, LQn;-><init>(LYm;)V

    invoke-virtual {p1, v0}, LRm;->a(LQm;)V

    .line 38
    sget-object p1, LRm;->A:LRm;

    .line 39
    iget-object v0, p1, LRm;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget-object v1, p1, LRm;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_9

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_9

    iget-object v0, p1, LRm;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 40
    :cond_9
    iget-object p1, p1, LRm;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_14

    .line 41
    iput-wide v3, p0, LYm;->c:J

    goto/16 :goto_b

    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, LYm;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LVm;

    .line 42
    iget v4, v3, LVm;->h:I

    if-ne v4, v0, :cond_a

    goto :goto_7

    :cond_b
    move-object v3, v6

    :goto_7
    if-eqz v3, :cond_d

    .line 43
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v4, p0, LYm;->e:Ldm;

    .line 44
    iget v5, p1, Lcom/google/android/gms/common/ConnectionResult;->x:I

    if-eqz v4, :cond_c

    .line 45
    invoke-static {v5}, Lkm;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 46
    iget-object p1, p1, Lcom/google/android/gms/common/ConnectionResult;->z:Ljava/lang/String;

    const/16 v5, 0x45

    .line 47
    invoke-static {v4, v5}, LZi;->a(Ljava/lang/String;I)I

    move-result v5

    invoke-static {p1, v5}, LZi;->a(Ljava/lang/String;I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v0}, LVm;->a(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_b

    .line 48
    :cond_c
    throw v6

    :cond_d
    const/16 p1, 0x4c

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Could not find API instance "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " while trying to fail enqueued calls."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lao;

    iget-object v0, p0, LYm;->i:Ljava/util/Map;

    iget-object v1, p1, Lao;->c:LDm;

    .line 50
    iget-object v1, v1, LDm;->d:Loo;

    .line 51
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVm;

    if-nez v0, :cond_e

    iget-object v0, p1, Lao;->c:LDm;

    invoke-virtual {p0, v0}, LYm;->a(LDm;)V

    iget-object v0, p0, LYm;->i:Ljava/util/Map;

    iget-object v1, p1, Lao;->c:LDm;

    .line 52
    iget-object v1, v1, LDm;->d:Loo;

    .line 53
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVm;

    :cond_e
    invoke-virtual {v0}, LVm;->b()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, LYm;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v3, p1, Lao;->b:I

    if-eq v1, v3, :cond_f

    iget-object p1, p1, Lao;->a:LIn;

    sget-object v1, LYm;->n:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v1}, LIn;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, LVm;->f()V

    goto/16 :goto_b

    :cond_f
    iget-object p1, p1, Lao;->a:LIn;

    invoke-virtual {v0, p1}, LVm;->a(LIn;)V

    goto/16 :goto_b

    :pswitch_b
    iget-object p1, p0, LYm;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVm;

    invoke-virtual {v0}, LVm;->g()V

    invoke-virtual {v0}, LVm;->a()V

    goto :goto_8

    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lpo;

    .line 54
    iget-object v0, p1, Lpo;->a:LJ6;

    invoke-virtual {v0}, LJ6;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loo;

    iget-object v3, p0, LYm;->i:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LVm;

    if-nez v3, :cond_10

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v3, 0xd

    invoke-direct {v0, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p1, v1, v0, v6}, Lpo;->a(Loo;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 56
    :cond_10
    iget-object v4, v3, LVm;->b:Lwm;

    check-cast v4, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 57
    sget-object v4, Lcom/google/android/gms/common/ConnectionResult;->A:Lcom/google/android/gms/common/ConnectionResult;

    .line 58
    iget-object v3, v3, LVm;->b:Lwm;

    .line 59
    check-cast v3, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v4, v3}, Lpo;->a(Loo;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_9

    .line 60
    :cond_11
    iget-object v4, v3, LVm;->m:LYm;

    .line 61
    iget-object v4, v4, LYm;->m:Landroid/os/Handler;

    .line 62
    invoke-static {v4}, Lxp;->a(Landroid/os/Handler;)V

    iget-object v4, v3, LVm;->l:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v4, :cond_12

    iget-object v4, v3, LVm;->m:LYm;

    .line 63
    iget-object v4, v4, LYm;->m:Landroid/os/Handler;

    .line 64
    invoke-static {v4}, Lxp;->a(Landroid/os/Handler;)V

    iget-object v3, v3, LVm;->l:Lcom/google/android/gms/common/ConnectionResult;

    .line 65
    invoke-virtual {p1, v1, v3, v6}, Lpo;->a(Loo;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_9

    .line 66
    :cond_12
    iget-object v1, v3, LVm;->m:LYm;

    .line 67
    iget-object v1, v1, LYm;->m:Landroid/os/Handler;

    .line 68
    invoke-static {v1}, Lxp;->a(Landroid/os/Handler;)V

    iget-object v1, v3, LVm;->f:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 69
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_13

    const-wide/16 v3, 0x2710

    :cond_13
    iput-wide v3, p0, LYm;->c:J

    iget-object p1, p0, LYm;->m:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, LYm;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loo;

    iget-object v3, p0, LYm;->m:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v4, p0, LYm;->c:J

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a

    :cond_14
    :goto_b
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
