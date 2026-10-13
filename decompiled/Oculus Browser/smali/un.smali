.class public final Lun;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LLn;


# instance fields
.field public final a:LMn;

.field public final b:Ljava/util/concurrent/locks/Lock;

.field public final c:Landroid/content/Context;

.field public final d:Lem;

.field public e:Lcom/google/android/gms/common/ConnectionResult;

.field public f:I

.field public g:I

.field public h:I

.field public final i:Landroid/os/Bundle;

.field public final j:Ljava/util/Set;

.field public k:LHu;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Llp;

.field public p:Z

.field public q:Z

.field public final r:LVo;

.field public final s:Ljava/util/Map;

.field public final t:Lom;

.field public u:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(LMn;LVo;Ljava/util/Map;Lem;Lom;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lun;->g:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lun;->i:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lun;->j:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lun;->u:Ljava/util/ArrayList;

    iput-object p1, p0, Lun;->a:LMn;

    iput-object p2, p0, Lun;->r:LVo;

    iput-object p3, p0, Lun;->s:Ljava/util/Map;

    iput-object p4, p0, Lun;->d:Lem;

    iput-object p5, p0, Lun;->t:Lom;

    iput-object p6, p0, Lun;->b:Ljava/util/concurrent/locks/Lock;

    iput-object p7, p0, Lun;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(LSm;)LSm;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(I)V
    .locals 2

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lun;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lun;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lun;->i:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p0}, Lun;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lun;->e()V

    :cond_2
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    invoke-virtual {p0}, Lun;->g()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->r()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lun;->a(Z)V

    iget-object v0, p0, Lun;->a:LMn;

    invoke-virtual {v0, p1}, LMn;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lun;->a:LMn;

    iget-object v0, v0, LMn;->n:LZn;

    invoke-interface {v0, p1}, LZn;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;Lym;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lun;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lun;->b(Lcom/google/android/gms/common/ConnectionResult;Lym;Z)V

    invoke-virtual {p0}, Lun;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lun;->e()V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lun;->k:LHu;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lun;->k:LHu;

    check-cast p1, LQu;

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, LPu;

    iget-object p1, p1, LQu;->G:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast v0, LNu;

    .line 2
    invoke-virtual {v0}, LRt;->A()Landroid/os/Parcel;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x7

    invoke-virtual {v0, p1, v2}, LRt;->b(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "SignInClientImpl"

    const-string v0, "Remote service probably died when clearAccountFromSessionStore is called"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    throw v1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lun;->k:LHu;

    check-cast p1, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    iput-object v1, p0, Lun;->o:Llp;

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 6

    iget v0, p0, Lun;->h:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lun;->h:I

    const/4 v2, 0x0

    if-lez v0, :cond_0

    return v2

    :cond_0
    if-gez v0, :cond_2

    iget-object v0, p0, Lun;->a:LMn;

    iget-object v0, v0, LMn;->m:LGn;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v5, ""

    invoke-virtual {v0, v5, v1, v4, v1}, LGn;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GoogleApiClientConnecting"

    .line 6
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v4, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v3, 0x8

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 7
    :cond_1
    throw v1

    .line 8
    :cond_2
    iget-object v0, p0, Lun;->e:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lun;->a:LMn;

    iget v3, p0, Lun;->f:I

    iput v3, v1, LMn;->l:I

    :goto_0
    invoke-virtual {p0, v0}, Lun;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return v2

    :cond_3
    return v1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/ConnectionResult;Lym;Z)V
    .locals 4

    .line 1
    iget-object v0, p2, Lym;->a:Lom;

    if-eqz v0, :cond_6

    const v0, 0x7fffffff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->r()Z

    move-result p3

    if-eqz p3, :cond_0

    :goto_0
    const/4 p3, 0x1

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lun;->d:Lem;

    .line 3
    iget v3, p1, Lcom/google/android/gms/common/ConnectionResult;->x:I

    .line 4
    invoke-virtual {p3, v3}, Lem;->a(I)Landroid/content/Intent;

    move-result-object p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_4

    :cond_2
    iget-object p3, p0, Lun;->e:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p3, :cond_3

    iget p3, p0, Lun;->f:I

    if-ge v0, p3, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    iput-object p1, p0, Lun;->e:Lcom/google/android/gms/common/ConnectionResult;

    iput v0, p0, Lun;->f:I

    :cond_5
    iget-object p3, p0, Lun;->a:LMn;

    iget-object p3, p3, LMn;->g:Ljava/util/Map;

    invoke-virtual {p2}, Lym;->a()Lqm;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public final b(I)Z
    .locals 7

    iget v0, p0, Lun;->g:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lun;->a:LMn;

    iget-object v0, v0, LMn;->m:LGn;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 6
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v5, ""

    invoke-virtual {v0, v5, v2, v4, v2}, LGn;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GoogleApiClientConnecting"

    .line 7
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected callback in "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lun;->h:I

    const/16 v4, 0x21

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "mRemainingConnections="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lun;->g:I

    const-string v4, "UNKNOWN"

    const-string v5, "STEP_GETTING_REMOTE_SERVICE"

    const-string v6, "STEP_SERVICE_BINDINGS_AND_SIGN_IN"

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    move-object v0, v4

    goto :goto_0

    :cond_0
    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v0, v6

    :goto_0
    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v5

    goto :goto_1

    :cond_3
    move-object v4, v6

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x46

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GoogleApiClient connecting is in step "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " but received callback for step "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x8

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lun;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_4
    throw v2

    :cond_5
    return v1
.end method

.method public final c()V
    .locals 11

    iget-object v0, p0, Lun;->a:LMn;

    iget-object v0, v0, LMn;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lun;->m:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lun;->e:Lcom/google/android/gms/common/ConnectionResult;

    iput v0, p0, Lun;->g:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lun;->l:Z

    iput-boolean v0, p0, Lun;->n:Z

    iput-boolean v0, p0, Lun;->p:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lun;->s:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lym;

    iget-object v6, p0, Lun;->a:LMn;

    iget-object v6, v6, LMn;->f:Ljava/util/Map;

    invoke-virtual {v5}, Lym;->a()Lqm;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lwm;

    .line 1
    iget-object v7, v5, Lym;->a:Lom;

    if-eqz v7, :cond_2

    .line 2
    iget-object v7, p0, Lun;->s:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v6}, Lwm;->requiresSignIn()Z

    move-result v8

    if-eqz v8, :cond_1

    iput-boolean v2, p0, Lun;->m:Z

    if-eqz v7, :cond_0

    iget-object v8, p0, Lun;->j:Ljava/util/Set;

    invoke-virtual {v5}, Lym;->a()Lqm;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iput-boolean v0, p0, Lun;->l:Z

    :cond_1
    :goto_1
    new-instance v8, Lwn;

    invoke-direct {v8, p0, v5, v7}, Lwn;-><init>(Lun;Lym;Z)V

    invoke-virtual {v3, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_2
    throw v1

    .line 4
    :cond_3
    iget-boolean v0, p0, Lun;->m:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lun;->r:LVo;

    iget-object v2, p0, Lun;->a:LMn;

    iget-object v2, v2, LMn;->m:LGn;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5
    iput-object v2, v0, LVo;->h:Ljava/lang/Integer;

    .line 6
    new-instance v10, LDn;

    invoke-direct {v10, p0, v1}, LDn;-><init>(Lun;Lvn;)V

    iget-object v4, p0, Lun;->t:Lom;

    iget-object v5, p0, Lun;->c:Landroid/content/Context;

    iget-object v0, p0, Lun;->a:LMn;

    iget-object v0, v0, LMn;->m:LGn;

    .line 7
    iget-object v6, v0, LGn;->h:Landroid/os/Looper;

    .line 8
    iget-object v7, p0, Lun;->r:LVo;

    .line 9
    iget-object v8, v7, LVo;->g:LIu;

    move-object v9, v10

    .line 10
    invoke-virtual/range {v4 .. v10}, Lom;->a(Landroid/content/Context;Landroid/os/Looper;LVo;Ljava/lang/Object;LFm;LGm;)Lwm;

    move-result-object v0

    check-cast v0, LHu;

    iput-object v0, p0, Lun;->k:LHu;

    :cond_4
    iget-object v0, p0, Lun;->a:LMn;

    iget-object v0, v0, LMn;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lun;->h:I

    iget-object v0, p0, Lun;->u:Ljava/util/ArrayList;

    .line 11
    sget-object v1, LPn;->a:Ljava/util/concurrent/ExecutorService;

    .line 12
    new-instance v2, Lxn;

    invoke-direct {v2, p0, v3}, Lxn;-><init>(Lun;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .locals 4

    iget v0, p0, Lun;->h:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lun;->m:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lun;->n:Z

    if-eqz v0, :cond_5

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Lun;->g:I

    iget-object v1, p0, Lun;->a:LMn;

    iget-object v1, v1, LMn;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iput v1, p0, Lun;->h:I

    iget-object v1, p0, Lun;->a:LMn;

    iget-object v1, v1, LMn;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqm;

    iget-object v3, p0, Lun;->a:LMn;

    iget-object v3, v3, LMn;->g:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lun;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lun;->e()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lun;->a:LMn;

    iget-object v3, v3, LMn;->f:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwm;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lun;->u:Ljava/util/ArrayList;

    .line 1
    sget-object v2, LPn;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    new-instance v3, LAn;

    invoke-direct {v3, p0, v0}, LAn;-><init>(Lun;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public final disconnect()Z
    .locals 3

    invoke-virtual {p0}, Lun;->g()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lun;->a(Z)V

    iget-object v1, p0, Lun;->a:LMn;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LMn;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return v0
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Lun;->a:LMn;

    .line 1
    iget-object v1, v0, LMn;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, v0, LMn;->m:LGn;

    invoke-virtual {v1}, LGn;->f()Z

    new-instance v1, Lrn;

    invoke-direct {v1, v0}, Lrn;-><init>(LMn;)V

    iput-object v1, v0, LMn;->k:LLn;

    iget-object v1, v0, LMn;->k:LLn;

    invoke-interface {v1}, LLn;->c()V

    iget-object v1, v0, LMn;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, LMn;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2
    sget-object v0, LPn;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance v1, Lvn;

    invoke-direct {v1, p0}, Lvn;-><init>(Lun;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lun;->k:LHu;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lun;->p:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lun;->o:Llp;

    iget-boolean v3, p0, Lun;->q:Z

    check-cast v0, LQu;

    if-eqz v0, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, LPu;

    iget-object v0, v0, LQu;->G:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    check-cast v4, LNu;

    .line 5
    invoke-virtual {v4}, LRt;->A()Landroid/os/Parcel;

    move-result-object v5

    invoke-static {v5, v2}, LTt;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x9

    .line 7
    invoke-virtual {v4, v0, v5}, LRt;->b(ILandroid/os/Parcel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SignInClientImpl"

    const-string v2, "Remote service probably died when saveDefaultAccount is called"

    .line 8
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lun;->a(Z)V

    :cond_2
    iget-object v0, p0, Lun;->a:LMn;

    iget-object v0, v0, LMn;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqm;

    iget-object v3, p0, Lun;->a:LMn;

    iget-object v3, v3, LMn;->f:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwm;

    invoke-interface {v2}, Lwm;->disconnect()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lun;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lun;->i:Landroid/os/Bundle;

    :goto_2
    iget-object v0, p0, Lun;->a:LMn;

    iget-object v0, v0, LMn;->n:LZn;

    invoke-interface {v0, v1}, LZn;->a(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v1

    .line 10
    iget-object v0, v0, LMn;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final f()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lun;->m:Z

    iget-object v0, p0, Lun;->a:LMn;

    iget-object v0, v0, LMn;->m:LGn;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, LGn;->q:Ljava/util/Set;

    iget-object v0, p0, Lun;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqm;

    iget-object v2, p0, Lun;->a:LMn;

    iget-object v2, v2, LMn;->g:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lun;->a:LMn;

    iget-object v2, v2, LMn;->g:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 5

    iget-object v0, p0, Lun;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/util/concurrent/Future;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lun;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
