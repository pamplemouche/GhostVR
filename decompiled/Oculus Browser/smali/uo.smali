.class public final Luo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LYn;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LGn;

.field public final c:LMn;

.field public final d:LMn;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Set;

.field public final g:Lwm;

.field public h:Landroid/os/Bundle;

.field public i:Lcom/google/android/gms/common/ConnectionResult;

.field public j:Lcom/google/android/gms/common/ConnectionResult;

.field public k:Z

.field public final l:Ljava/util/concurrent/locks/Lock;

.field public m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;LGn;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lem;Ljava/util/Map;Ljava/util/Map;LVo;Lom;Lwm;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Luo;->f:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, v0, Luo;->i:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v1, v0, Luo;->j:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    iput-boolean v2, v0, Luo;->k:Z

    iput v2, v0, Luo;->m:I

    move-object/from16 v2, p1

    iput-object v2, v0, Luo;->a:Landroid/content/Context;

    move-object/from16 v5, p2

    iput-object v5, v0, Luo;->b:LGn;

    move-object/from16 v15, p3

    iput-object v15, v0, Luo;->l:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v3, p10

    iput-object v3, v0, Luo;->g:Lwm;

    new-instance v14, LMn;

    new-instance v13, Lwo;

    invoke-direct {v13, v0, v1}, Lwo;-><init>(Luo;Lvo;)V

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v3, v14

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v11, p14

    move-object/from16 v16, v13

    move-object/from16 v13, p12

    move-object v1, v14

    move-object/from16 v14, v16

    invoke-direct/range {v3 .. v14}, LMn;-><init>(Landroid/content/Context;LGn;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lem;Ljava/util/Map;LVo;Ljava/util/Map;Lom;Ljava/util/ArrayList;LZn;)V

    iput-object v1, v0, Luo;->c:LMn;

    new-instance v1, LMn;

    iget-object v5, v0, Luo;->b:LGn;

    new-instance v14, Lxo;

    const/4 v3, 0x0

    invoke-direct {v14, v0, v3}, Lxo;-><init>(Luo;Lvo;)V

    move-object v3, v1

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p13

    move-object/from16 v12, p9

    move-object/from16 v13, p11

    invoke-direct/range {v3 .. v14}, LMn;-><init>(Landroid/content/Context;LGn;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lem;Ljava/util/Map;LVo;Ljava/util/Map;Lom;Ljava/util/ArrayList;LZn;)V

    iput-object v1, v0, Luo;->d:LMn;

    new-instance v1, LJ6;

    invoke-direct {v1}, LJ6;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqm;

    iget-object v4, v0, Luo;->c:LMn;

    invoke-virtual {v1, v3, v4}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqm;

    iget-object v4, v0, Luo;->d:LMn;

    invoke-virtual {v1, v3, v4}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Luo;->e:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Luo;)V
    .locals 4

    .line 14
    iget-object v0, p0, Luo;->i:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Luo;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Luo;->j:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Luo;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Luo;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Luo;->j:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_8

    iget v2, p0, Luo;->m:I

    if-ne v2, v1, :cond_1

    invoke-virtual {p0}, Luo;->c()V

    goto :goto_3

    :cond_1
    invoke-virtual {p0, v0}, Luo;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p0, p0, Luo;->c:LMn;

    invoke-virtual {p0}, LMn;->disconnect()V

    goto :goto_3

    :cond_2
    :goto_0
    iget v0, p0, Luo;->m:I

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    const-string v1, "CompositeGAC"

    const-string v2, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Luo;->b:LGn;

    iget-object v1, p0, Luo;->h:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, LGn;->a(Landroid/os/Bundle;)V

    :cond_4
    invoke-virtual {p0}, Luo;->c()V

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Luo;->m:I

    goto :goto_3

    :cond_5
    iget-object v0, p0, Luo;->i:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_6

    iget-object v0, p0, Luo;->j:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Luo;->b(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Luo;->d:LMn;

    invoke-virtual {v0}, LMn;->disconnect()V

    iget-object v0, p0, Luo;->i:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Luo;->i:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_8

    iget-object v1, p0, Luo;->j:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_8

    iget-object v2, p0, Luo;->d:LMn;

    iget v2, v2, LMn;->l:I

    iget-object v3, p0, Luo;->c:LMn;

    iget v3, v3, LMn;->l:I

    if-ge v2, v3, :cond_7

    move-object v0, v1

    :cond_7
    :goto_2
    invoke-virtual {p0, v0}, Luo;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public static b(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->s()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(LSm;)LSm;
    .locals 4

    .line 1
    iget-object v0, p1, LSm;->p:Lqm;

    .line 2
    iget-object v1, p0, Luo;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v1, v2}, Lxp;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Luo;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMn;

    iget-object v1, p0, Luo;->d:LMn;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Luo;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    .line 4
    iget-object v2, p0, Luo;->g:Lwm;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v2, v1, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 6
    invoke-virtual {p1, v0}, LSm;->c(Lcom/google/android/gms/common/api/Status;)V

    return-object p1

    .line 7
    :cond_0
    iget-object p1, p0, Luo;->b:LGn;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    iget-object p1, p0, Luo;->g:Lwm;

    check-cast p1, Lcom/google/android/gms/common/internal/BaseGmsClient;

    if-eqz p1, :cond_1

    .line 8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not a sign in API"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    throw v3

    .line 9
    :cond_2
    iget-object v0, p0, Luo;->d:LMn;

    :goto_0
    invoke-virtual {v0, p1}, LMn;->a(LSm;)LSm;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, Luo;->c:LMn;

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget v0, p0, Luo;->m:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "CompositeGAC"

    const-string v1, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Luo;->b:LGn;

    invoke-virtual {v0, p1}, LGn;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_1
    invoke-virtual {p0}, Luo;->c()V

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Luo;->m:I

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "authClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Luo;->d:LMn;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3, p4}, LMn;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "anonClient"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Luo;->c:LMn;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, LMn;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Luo;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Luo;->c:LMn;

    .line 10
    iget-object v0, v0, LMn;->k:LLn;

    instance-of v0, v0, Lrn;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Luo;->d:LMn;

    .line 12
    iget-object v0, v0, LMn;->k:LLn;

    instance-of v0, v0, Lrn;

    if-nez v0, :cond_1

    .line 13
    invoke-virtual {p0}, Luo;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Luo;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iget-object v0, p0, Luo;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Luo;->l:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Luo;->m:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Luo;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, Luo;->j:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Luo;->i:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Luo;->c:LMn;

    .line 1
    iget-object v0, v0, LMn;->k:LLn;

    invoke-interface {v0}, LLn;->b()V

    .line 2
    iget-object v0, p0, Luo;->d:LMn;

    .line 3
    iget-object v0, v0, LMn;->k:LLn;

    invoke-interface {v0}, LLn;->b()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Luo;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lin;

    invoke-interface {v1}, Lin;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Luo;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Luo;->j:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Lcom/google/android/gms/common/ConnectionResult;->x:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final disconnect()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Luo;->j:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Luo;->i:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x0

    iput v0, p0, Luo;->m:I

    iget-object v0, p0, Luo;->c:LMn;

    invoke-virtual {v0}, LMn;->disconnect()V

    iget-object v0, p0, Luo;->d:LMn;

    invoke-virtual {v0}, LMn;->disconnect()V

    invoke-virtual {p0}, Luo;->c()V

    return-void
.end method
