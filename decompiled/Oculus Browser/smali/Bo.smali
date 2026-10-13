.class public final LBo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LXu;


# instance fields
.field public final synthetic a:Lzo;


# direct methods
.method public synthetic constructor <init>(Lzo;LAo;)V
    .locals 0

    .line 1
    iput-object p1, p0, LBo;->a:Lzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbv;)V
    .locals 10

    iget-object v0, p0, LBo;->a:Lzo;

    .line 1
    iget-object v0, v0, Lzo;->f:Ljava/util/concurrent/locks/Lock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, LBo;->a:Lzo;

    .line 3
    iget-boolean v0, v0, Lzo;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 4
    :goto_0
    iget-object p1, p0, LBo;->a:Lzo;

    .line 5
    iget-object p1, p1, Lzo;->f:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lbv;->d()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, LBo;->a:Lzo;

    new-instance v0, LJ6;

    iget-object v3, p0, LBo;->a:Lzo;

    .line 7
    iget-object v3, v3, Lzo;->a:Ljava/util/Map;

    .line 8
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v3}, LJ6;-><init>(I)V

    .line 9
    iput-object v0, p1, Lzo;->o:Ljava/util/Map;

    .line 10
    iget-object p1, p0, LBo;->a:Lzo;

    .line 11
    iget-object p1, p1, Lzo;->a:Ljava/util/Map;

    .line 12
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyo;

    iget-object v3, p0, LBo;->a:Lzo;

    .line 13
    iget-object v3, v3, Lzo;->o:Ljava/util/Map;

    .line 14
    iget-object v0, v0, LDm;->d:Loo;

    .line 15
    sget-object v4, Lcom/google/android/gms/common/ConnectionResult;->A:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lbv;->a()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, LAm;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lbv;->a()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, LAm;

    iget-object v0, p0, LBo;->a:Lzo;

    .line 16
    iget-boolean v0, v0, Lzo;->l:Z

    if-eqz v0, :cond_8

    .line 17
    iget-object v0, p0, LBo;->a:Lzo;

    new-instance v3, LJ6;

    iget-object v4, p0, LBo;->a:Lzo;

    .line 18
    iget-object v4, v4, Lzo;->a:Ljava/util/Map;

    .line 19
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, LJ6;-><init>(I)V

    .line 20
    iput-object v3, v0, Lzo;->o:Ljava/util/Map;

    .line 21
    iget-object v0, p0, LBo;->a:Lzo;

    .line 22
    iget-object v0, v0, Lzo;->a:Ljava/util/Map;

    .line 23
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyo;

    .line 24
    iget-object v4, v3, LDm;->d:Loo;

    if-eqz p1, :cond_7

    .line 25
    iget-object v5, v3, LDm;->d:Loo;

    .line 26
    iget-object v6, p1, LAm;->w:LJ6;

    invoke-virtual {v6, v5}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    const-string v8, "The given API was not part of the availability request."

    invoke-static {v6, v8}, Lxp;->a(ZLjava/lang/Object;)V

    iget-object v6, p1, LAm;->w:LJ6;

    invoke-virtual {v6, v5}, Ld7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/ConnectionResult;

    .line 27
    iget-object v6, p0, LBo;->a:Lzo;

    if-eqz v6, :cond_6

    .line 28
    invoke-virtual {v5}, Lcom/google/android/gms/common/ConnectionResult;->s()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5}, Lcom/google/android/gms/common/ConnectionResult;->r()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v6, Lzo;->c:Ljava/util/Map;

    .line 29
    iget-object v9, v3, LDm;->b:Lym;

    .line 30
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 31
    iget-object v3, v3, Lyo;->i:Lwm;

    .line 32
    check-cast v3, Lcom/google/android/gms/common/internal/BaseGmsClient;

    if-eqz v3, :cond_3

    iget-object v3, v6, Lzo;->h:Lem;

    .line 33
    iget v6, v5, Lcom/google/android/gms/common/ConnectionResult;->x:I

    .line 34
    invoke-virtual {v3, v6}, Lem;->b(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    .line 35
    :cond_3
    throw v1

    :cond_4
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_5

    .line 36
    iget-object v3, p0, LBo;->a:Lzo;

    .line 37
    iget-object v3, v3, Lzo;->o:Ljava/util/Map;

    .line 38
    new-instance v5, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    goto :goto_5

    :cond_5
    iget-object v3, p0, LBo;->a:Lzo;

    .line 39
    iget-object v3, v3, Lzo;->o:Ljava/util/Map;

    .line 40
    :goto_5
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 41
    :cond_6
    throw v1

    .line 42
    :cond_7
    throw v1

    .line 43
    :cond_8
    iget-object v0, p0, LBo;->a:Lzo;

    .line 44
    iget-object p1, p1, LAm;->w:LJ6;

    .line 45
    iput-object p1, v0, Lzo;->o:Ljava/util/Map;

    .line 46
    :cond_9
    iget-object p1, p0, LBo;->a:Lzo;

    iget-object v0, p0, LBo;->a:Lzo;

    invoke-static {v0}, Lzo;->a(Lzo;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    goto :goto_6

    :cond_a
    const-string v0, "ConnectionlessGAC"

    const-string v3, "Unexpected availability exception"

    invoke-virtual {p1}, Lbv;->a()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, LBo;->a:Lzo;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 47
    iput-object v0, p1, Lzo;->o:Ljava/util/Map;

    .line 48
    iget-object p1, p0, LBo;->a:Lzo;

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v3, 0x8

    invoke-direct {v0, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 49
    :goto_6
    iput-object v0, p1, Lzo;->r:Lcom/google/android/gms/common/ConnectionResult;

    .line 50
    :cond_b
    iget-object p1, p0, LBo;->a:Lzo;

    .line 51
    iget-object p1, p1, Lzo;->p:Ljava/util/Map;

    if-eqz p1, :cond_c

    .line 52
    iget-object p1, p0, LBo;->a:Lzo;

    .line 53
    iget-object p1, p1, Lzo;->o:Ljava/util/Map;

    .line 54
    iget-object v0, p0, LBo;->a:Lzo;

    .line 55
    iget-object v0, v0, Lzo;->p:Ljava/util/Map;

    .line 56
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, LBo;->a:Lzo;

    iget-object v0, p0, LBo;->a:Lzo;

    invoke-static {v0}, Lzo;->a(Lzo;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 57
    iput-object v0, p1, Lzo;->r:Lcom/google/android/gms/common/ConnectionResult;

    .line 58
    :cond_c
    iget-object p1, p0, LBo;->a:Lzo;

    .line 59
    iget-object p1, p1, Lzo;->r:Lcom/google/android/gms/common/ConnectionResult;

    if-nez p1, :cond_e

    .line 60
    iget-object p1, p0, LBo;->a:Lzo;

    invoke-static {p1}, Lzo;->b(Lzo;)V

    iget-object p1, p0, LBo;->a:Lzo;

    .line 61
    :goto_7
    iget-object v0, p1, Lzo;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, Lzo;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSm;

    invoke-virtual {p1, v0}, Lzo;->a(LSm;)LSm;

    goto :goto_7

    :cond_d
    iget-object p1, p1, Lzo;->e:LGn;

    invoke-virtual {p1, v1}, LGn;->a(Landroid/os/Bundle;)V

    goto :goto_8

    .line 62
    :cond_e
    iget-object p1, p0, LBo;->a:Lzo;

    .line 63
    iput-boolean v2, p1, Lzo;->n:Z

    .line 64
    iget-object p1, p0, LBo;->a:Lzo;

    .line 65
    iget-object p1, p1, Lzo;->e:LGn;

    .line 66
    iget-object v0, p0, LBo;->a:Lzo;

    .line 67
    iget-object v0, v0, Lzo;->r:Lcom/google/android/gms/common/ConnectionResult;

    .line 68
    invoke-virtual {p1, v0}, LGn;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_8
    iget-object p1, p0, LBo;->a:Lzo;

    .line 69
    iget-object p1, p1, Lzo;->i:Ljava/util/concurrent/locks/Condition;

    .line 70
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, LBo;->a:Lzo;

    .line 71
    iget-object v0, v0, Lzo;->f:Ljava/util/concurrent/locks/Lock;

    .line 72
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
