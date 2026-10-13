.class public final LVm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LFm;
.implements LGm;
.implements Lto;


# instance fields
.field public final a:Ljava/util/Queue;

.field public final b:Lwm;

.field public final c:Lpm;

.field public final d:Loo;

.field public final e:Lln;

.field public final f:Ljava/util/Set;

.field public final g:Ljava/util/Map;

.field public final h:I

.field public final i:Lco;

.field public j:Z

.field public final k:Ljava/util/List;

.field public l:Lcom/google/android/gms/common/ConnectionResult;

.field public final synthetic m:LYm;


# direct methods
.method public constructor <init>(LYm;LDm;)V
    .locals 2

    iput-object p1, p0, LVm;->m:LYm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LVm;->a:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LVm;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LVm;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LVm;->k:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, LVm;->l:Lcom/google/android/gms/common/ConnectionResult;

    .line 1
    iget-object v1, p1, LYm;->m:Landroid/os/Handler;

    .line 2
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, LDm;->a(Landroid/os/Looper;LVm;)Lwm;

    move-result-object v1

    iput-object v1, p0, LVm;->b:Lwm;

    iput-object v1, p0, LVm;->c:Lpm;

    .line 3
    iget-object v1, p2, LDm;->d:Loo;

    .line 4
    iput-object v1, p0, LVm;->d:Loo;

    new-instance v1, Lln;

    invoke-direct {v1}, Lln;-><init>()V

    iput-object v1, p0, LVm;->e:Lln;

    .line 5
    iget v1, p2, LDm;->f:I

    .line 6
    iput v1, p0, LVm;->h:I

    iget-object v1, p0, LVm;->b:Lwm;

    invoke-interface {v1}, Lwm;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v0, p1, LYm;->d:Landroid/content/Context;

    .line 8
    iget-object p1, p1, LYm;->m:Landroid/os/Handler;

    .line 9
    invoke-virtual {p2, v0, p1}, LDm;->a(Landroid/content/Context;Landroid/os/Handler;)Lco;

    move-result-object p1

    iput-object p1, p0, LVm;->i:Lco;

    return-void

    :cond_0
    iput-object v0, p0, LVm;->i:Lco;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-object v0, p0, LVm;->m:LYm;

    .line 1
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lxp;->a(Landroid/os/Handler;)V

    iget-object v0, p0, LVm;->b:Lwm;

    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, LVm;->b:Lwm;

    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, LVm;->m:LYm;

    .line 3
    iget-object v1, v0, LYm;->f:Lip;

    .line 4
    iget-object v0, v0, LYm;->d:Landroid/content/Context;

    .line 5
    iget-object v2, p0, LVm;->b:Lwm;

    invoke-virtual {v1, v0, v2}, Lip;->a(Landroid/content/Context;Lwm;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v2}, LVm;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_1
    new-instance v0, LXm;

    iget-object v2, p0, LVm;->m:LYm;

    iget-object v3, p0, LVm;->b:Lwm;

    iget-object v4, p0, LVm;->d:Loo;

    invoke-direct {v0, v2, v3, v4}, LXm;-><init>(LYm;Lwm;Loo;)V

    iget-object v2, p0, LVm;->b:Lwm;

    invoke-interface {v2}, Lwm;->requiresSignIn()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, LVm;->i:Lco;

    .line 6
    iget-object v3, v2, Lco;->f:LHu;

    if-eqz v3, :cond_2

    check-cast v3, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    :cond_2
    iget-object v3, v2, Lco;->e:LVo;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 7
    iput-object v4, v3, LVo;->h:Ljava/lang/Integer;

    .line 8
    iget-object v3, v2, Lco;->c:Lom;

    iget-object v4, v2, Lco;->a:Landroid/content/Context;

    iget-object v5, v2, Lco;->b:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, v2, Lco;->e:LVo;

    .line 9
    iget-object v7, v6, LVo;->g:LIu;

    move-object v8, v2

    move-object v9, v2

    .line 10
    invoke-virtual/range {v3 .. v9}, Lom;->a(Landroid/content/Context;Landroid/os/Looper;LVo;Ljava/lang/Object;LFm;LGm;)Lwm;

    move-result-object v3

    check-cast v3, LHu;

    iput-object v3, v2, Lco;->f:LHu;

    iput-object v0, v2, Lco;->g:Lgo;

    iget-object v3, v2, Lco;->d:Ljava/util/Set;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, v2, Lco;->f:LHu;

    check-cast v2, LQu;

    if-eqz v2, :cond_4

    .line 11
    new-instance v1, LNo;

    invoke-direct {v1, v2}, LNo;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(LKo;)V

    goto :goto_1

    :cond_4
    throw v1

    .line 12
    :cond_5
    :goto_0
    iget-object v1, v2, Lco;->b:Landroid/os/Handler;

    new-instance v3, Ldo;

    invoke-direct {v3, v2}, Ldo;-><init>(Lco;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    :cond_6
    :goto_1
    iget-object v1, p0, LVm;->b:Lwm;

    check-cast v1, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(LKo;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final a(I)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, LVm;->m:LYm;

    .line 37
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    .line 38
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, LVm;->d()V

    return-void

    :cond_0
    iget-object p1, p0, LVm;->m:LYm;

    .line 39
    iget-object p1, p1, LYm;->m:Landroid/os/Handler;

    .line 40
    new-instance v0, LSn;

    invoke-direct {v0, p0}, LSn;-><init>(LVm;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(LIn;)V
    .locals 1

    iget-object v0, p0, LVm;->m:LYm;

    .line 45
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    .line 46
    invoke-static {v0}, Lxp;->a(Landroid/os/Handler;)V

    iget-object v0, p0, LVm;->b:Lwm;

    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, LVm;->b(LIn;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LVm;->i()V

    return-void

    :cond_0
    iget-object v0, p0, LVm;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, LVm;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LVm;->l:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->r()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, LVm;->l:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, p1}, LVm;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_2
    invoke-virtual {p0}, LVm;->a()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, LVm;->m:LYm;

    .line 14
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    .line 15
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, LVm;->c()V

    return-void

    :cond_0
    iget-object p1, p0, LVm;->m:LYm;

    .line 16
    iget-object p1, p1, LYm;->m:Landroid/os/Handler;

    .line 17
    new-instance v0, LRn;

    invoke-direct {v0, p0}, LRn;-><init>(LVm;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    iget-object v0, p0, LVm;->m:LYm;

    .line 18
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    .line 19
    invoke-static {v0}, Lxp;->a(Landroid/os/Handler;)V

    iget-object v0, p0, LVm;->i:Lco;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, v0, Lco;->f:LHu;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    .line 21
    :cond_0
    invoke-virtual {p0}, LVm;->g()V

    iget-object v0, p0, LVm;->m:LYm;

    .line 22
    iget-object v0, v0, LYm;->f:Lip;

    .line 23
    iget-object v0, v0, Lip;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 24
    invoke-virtual {p0, p1}, LVm;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 25
    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->x:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 26
    sget-object p1, LYm;->o:Lcom/google/android/gms/common/api/Status;

    .line 27
    invoke-virtual {p0, p1}, LVm;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_1
    iget-object v0, p0, LVm;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, LVm;->l:Lcom/google/android/gms/common/ConnectionResult;

    return-void

    :cond_2
    invoke-virtual {p0, p1}, LVm;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    iget-object v0, p0, LVm;->m:LYm;

    iget v1, p0, LVm;->h:I

    invoke-virtual {v0, p1, v1}, LYm;->a(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 28
    iget p1, p1, Lcom/google/android/gms/common/ConnectionResult;->x:I

    const/16 v0, 0x12

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, LVm;->j:Z

    :cond_3
    iget-boolean p1, p0, LVm;->j:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, LVm;->m:LYm;

    .line 30
    iget-object p1, p1, LYm;->m:Landroid/os/Handler;

    const/16 v0, 0x9

    .line 31
    iget-object v1, p0, LVm;->d:Loo;

    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, LVm;->m:LYm;

    .line 32
    iget-wide v1, v1, LYm;->a:J

    .line 33
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_4
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x11

    iget-object v1, p0, LVm;->d:Loo;

    .line 34
    iget-object v1, v1, Loo;->c:Lym;

    .line 35
    iget-object v1, v1, Lym;->c:Ljava/lang/String;

    const/16 v2, 0x26

    .line 36
    invoke-static {v1, v2}, LZi;->a(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "API: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not available on this device."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, LVm;->a(Lcom/google/android/gms/common/api/Status;)V

    :cond_5
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;Lym;Z)V
    .locals 0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, LVm;->m:LYm;

    .line 41
    iget-object p3, p3, LYm;->m:Landroid/os/Handler;

    .line 42
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    if-ne p2, p3, :cond_0

    invoke-virtual {p0, p1}, LVm;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_0
    iget-object p2, p0, LVm;->m:LYm;

    .line 43
    iget-object p2, p2, LYm;->m:Landroid/os/Handler;

    .line 44
    new-instance p3, LTn;

    invoke-direct {p3, p0, p1}, LTn;-><init>(LVm;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, LVm;->m:LYm;

    .line 51
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    .line 52
    invoke-static {v0}, Lxp;->a(Landroid/os/Handler;)V

    iget-object v0, p0, LVm;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LIn;

    invoke-virtual {v1, p1}, LIn;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LVm;->a:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final a(Z)Z
    .locals 4

    iget-object v0, p0, LVm;->m:LYm;

    .line 47
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    .line 48
    invoke-static {v0}, Lxp;->a(Landroid/os/Handler;)V

    iget-object v0, p0, LVm;->b:Lwm;

    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, LVm;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, LVm;->e:Lln;

    .line 49
    iget-object v2, v0, Lln;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v0, v0, Lln;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p0}, LVm;->i()V

    :cond_2
    return v1

    :cond_3
    iget-object p1, p0, LVm;->b:Lwm;

    invoke-interface {p1}, Lwm;->disconnect()V

    return v3

    :cond_4
    return v1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, LVm;->b:Lwm;

    invoke-interface {v0}, Lwm;->requiresSignIn()Z

    move-result v0

    return v0
.end method

.method public final b(LIn;)Z
    .locals 14

    instance-of v0, p1, Lmo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, LVm;->c(LIn;)V

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lmo;

    .line 1
    iget-object v2, v0, Lmo;->a:Lkn;

    .line 2
    iget-object v2, v2, Lkn;->a:[Lcom/google/android/gms/common/Feature;

    if-eqz v2, :cond_a

    .line 3
    array-length v3, v2

    if-nez v3, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v3, p0, LVm;->b:Lwm;

    check-cast v3, Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 4
    iget-object v3, v3, Lcom/google/android/gms/common/internal/BaseGmsClient;->y:Lcom/google/android/gms/common/internal/ConnectionInfo;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    move-object v3, v4

    goto :goto_0

    .line 5
    :cond_2
    iget-object v3, v3, Lcom/google/android/gms/common/internal/ConnectionInfo;->x:[Lcom/google/android/gms/common/Feature;

    :goto_0
    const/4 v5, 0x0

    if-nez v3, :cond_3

    new-array v3, v5, [Lcom/google/android/gms/common/Feature;

    .line 6
    :cond_3
    new-instance v6, LJ6;

    array-length v7, v3

    invoke-direct {v6, v7}, LJ6;-><init>(I)V

    array-length v7, v3

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, v3, v8

    .line 7
    iget-object v10, v9, Lcom/google/android/gms/common/Feature;->w:Ljava/lang/String;

    .line 8
    invoke-virtual {v9}, Lcom/google/android/gms/common/Feature;->r()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v10, v9}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    array-length v3, v2

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_9

    aget-object v8, v2, v7

    .line 9
    iget-object v9, v8, Lcom/google/android/gms/common/Feature;->w:Ljava/lang/String;

    .line 10
    invoke-virtual {v6, v9}, Ld7;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 11
    iget-object v9, v8, Lcom/google/android/gms/common/Feature;->w:Ljava/lang/String;

    .line 12
    invoke-virtual {v6, v9}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8}, Lcom/google/android/gms/common/Feature;->r()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-gez v13, :cond_5

    goto :goto_3

    :cond_5
    iget-object v9, p0, LVm;->k:Ljava/util/List;

    new-instance v10, LWm;

    iget-object v11, p0, LVm;->d:Loo;

    invoke-direct {v10, v11, v8, v4}, LWm;-><init>(Loo;Lcom/google/android/gms/common/Feature;LQn;)V

    invoke-interface {v9, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 13
    :cond_6
    :goto_3
    iget-object p1, v0, Lmo;->a:Lkn;

    .line 14
    iget-boolean p1, p1, Lkn;->b:Z

    if-eqz p1, :cond_8

    .line 15
    new-instance p1, LWm;

    iget-object v0, p0, LVm;->d:Loo;

    invoke-direct {p1, v0, v8, v4}, LWm;-><init>(Loo;Lcom/google/android/gms/common/Feature;LQn;)V

    iget-object v0, p0, LVm;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0xf

    if-ltz v0, :cond_7

    iget-object p1, p0, LVm;->k:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LWm;

    iget-object v0, p0, LVm;->m:LYm;

    .line 16
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, LVm;->m:LYm;

    .line 18
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    .line 19
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, LVm;->m:LYm;

    .line 20
    iget-wide v1, v1, LYm;->a:J

    .line 21
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    :cond_7
    iget-object v0, p0, LVm;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LVm;->m:LYm;

    .line 22
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    .line 23
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, LVm;->m:LYm;

    .line 24
    iget-wide v2, v2, LYm;->a:J

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, LVm;->m:LYm;

    .line 26
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    const/16 v1, 0x10

    .line 27
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, LVm;->m:LYm;

    .line 28
    iget-wide v1, v1, LYm;->b:J

    .line 29
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, LVm;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    iget-object v0, p0, LVm;->m:LYm;

    iget v1, p0, LVm;->h:I

    invoke-virtual {v0, p1, v1}, LYm;->a(Lcom/google/android/gms/common/ConnectionResult;I)Z

    goto :goto_4

    :cond_8
    new-instance p1, LOm;

    invoke-direct {p1, v8}, LOm;-><init>(Lcom/google/android/gms/common/Feature;)V

    .line 30
    iget-object v0, v0, Lmo;->b:Lcv;

    .line 31
    iget-object v0, v0, Lcv;->a:Lsv;

    invoke-virtual {v0, p1}, Lsv;->b(Ljava/lang/Exception;)Z

    :goto_4
    return v5

    .line 32
    :cond_9
    invoke-virtual {p0, p1}, LVm;->c(LIn;)V

    return v1

    :cond_a
    :goto_5
    invoke-virtual {p0, p1}, LVm;->c(LIn;)V

    return v1
.end method

.method public final b(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    .line 33
    sget-object p1, LYm;->p:Ljava/lang/Object;

    .line 34
    monitor-enter p1

    :try_start_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 2

    invoke-virtual {p0}, LVm;->g()V

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->A:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, LVm;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {p0}, LVm;->h()V

    iget-object v0, p0, LVm;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, LVm;->e()V

    invoke-virtual {p0}, LVm;->i()V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbo;

    const/4 v0, 0x0

    throw v0
.end method

.method public final c(LIn;)V
    .locals 2

    iget-object v0, p0, LVm;->e:Lln;

    invoke-virtual {p0}, LVm;->b()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, LIn;->a(Lln;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, LIn;->a(LVm;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LVm;->a(I)V

    iget-object p1, p0, LVm;->b:Lwm;

    invoke-interface {p1}, Lwm;->disconnect()V

    return-void
.end method

.method public final c(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    iget-object v0, p0, LVm;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpo;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/common/ConnectionResult;->A:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v3}, Lwp;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, LVm;->b:Lwm;

    check-cast v2, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->e()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, p0, LVm;->d:Loo;

    invoke-virtual {v1, v3, p1, v2}, Lpo;->a(Loo;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LVm;->f:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final d()V
    .locals 4

    invoke-virtual {p0}, LVm;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LVm;->j:Z

    iget-object v1, p0, LVm;->e:Lln;

    if-eqz v1, :cond_0

    .line 1
    sget-object v2, Lio;->d:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1, v0, v2}, Lln;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 2
    iget-object v0, p0, LVm;->m:LYm;

    .line 3
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    const/16 v1, 0x9

    .line 4
    iget-object v2, p0, LVm;->d:Loo;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, LVm;->m:LYm;

    .line 5
    iget-wide v2, v2, LYm;->a:J

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, LVm;->m:LYm;

    .line 7
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    const/16 v1, 0xb

    .line 8
    iget-object v2, p0, LVm;->d:Loo;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, LVm;->m:LYm;

    .line 9
    iget-wide v2, v2, LYm;->b:J

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, LVm;->m:LYm;

    .line 11
    iget-object v0, v0, LYm;->f:Lip;

    .line 12
    iget-object v0, v0, Lip;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 13
    throw v0
.end method

.method public final e()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LVm;->a:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, LIn;

    iget-object v4, p0, LVm;->b:Lwm;

    check-cast v4, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, LVm;->b(LIn;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, LVm;->a:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 7

    iget-object v0, p0, LVm;->m:LYm;

    .line 1
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lxp;->a(Landroid/os/Handler;)V

    sget-object v0, LYm;->n:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, LVm;->a(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, LVm;->e:Lln;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    sget-object v2, LYm;->n:Lcom/google/android/gms/common/api/Status;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lln;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 4
    iget-object v0, p0, LVm;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, LVm;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ldn;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldn;

    array-length v2, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    new-instance v5, Lno;

    new-instance v6, Lcv;

    invoke-direct {v6}, Lcv;-><init>()V

    invoke-direct {v5, v4, v6}, Lno;-><init>(Ldn;Lcv;)V

    invoke-virtual {p0, v5}, LVm;->a(LIn;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, v0}, LVm;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, LVm;->b:Lwm;

    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LVm;->b:Lwm;

    new-instance v2, LUn;

    invoke-direct {v2, p0}, LUn;-><init>(LVm;)V

    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v2, LUn;->a:LVm;

    iget-object v0, v0, LVm;->m:LYm;

    .line 6
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    .line 7
    new-instance v1, LVn;

    invoke-direct {v1, v2}, LVn;-><init>(LUn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 8
    :cond_1
    throw v1

    :cond_2
    :goto_1
    return-void

    .line 9
    :cond_3
    throw v1
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, LVm;->m:LYm;

    .line 1
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lxp;->a(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, LVm;->l:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public final h()V
    .locals 3

    iget-boolean v0, p0, LVm;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LVm;->m:LYm;

    .line 1
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    const/16 v1, 0xb

    .line 2
    iget-object v2, p0, LVm;->d:Loo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, LVm;->m:LYm;

    .line 3
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    const/16 v1, 0x9

    .line 4
    iget-object v2, p0, LVm;->d:Loo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LVm;->j:Z

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, LVm;->m:LYm;

    .line 1
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, LVm;->d:Loo;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, LVm;->m:LYm;

    .line 3
    iget-object v0, v0, LYm;->m:Landroid/os/Handler;

    .line 4
    iget-object v1, p0, LVm;->d:Loo;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, LVm;->m:LYm;

    .line 5
    iget-wide v2, v2, LYm;->c:J

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
