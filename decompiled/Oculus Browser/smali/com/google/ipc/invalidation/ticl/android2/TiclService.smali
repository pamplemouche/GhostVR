.class public Lcom/google/ipc/invalidation/ticl/android2/TiclService;
.super Landroid/app/IntentService;
.source "PG"


# instance fields
.field public w:LlD;

.field public final x:LTB;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "TiclService"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, LUB;

    invoke-direct {v0}, LUB;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->x:LTB;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/IntentService;->setIntentRedelivery(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 49
    iget-object v0, v0, LsC;->b:LZB;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 50
    check-cast v0, LgC;

    const-string v3, "Handle implicit scheduler event"

    invoke-virtual {v0, v3, v2}, LgC;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    invoke-static {p0, v0}, LpD;->a(Landroid/content/Context;LfC;)LeD;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 53
    iget-object v0, v0, LsC;->b:LZB;

    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    check-cast v0, LgC;

    const-string v2, "Dropping implicit scheduling event; Ticl state does not exist"

    invoke-virtual {v0, v2, v1}, LgC;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 56
    iget-object v1, v1, LsC;->a:LdC;

    .line 57
    check-cast v1, LcD;

    .line 58
    invoke-virtual {v1}, LcD;->d()V

    .line 59
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 60
    iget-object v1, v1, LsC;->b:LZB;

    .line 61
    invoke-static {p0, v1, v0}, LpD;->a(Landroid/content/Context;LZB;LeD;)V

    return-void
.end method

.method public final a([B)V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1
    :try_start_0
    invoke-static/range {p1 .. p1}, LGD;->a([B)LGD;

    move-result-object v0
    :try_end_0
    .catch LYE; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v5, v1, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 3
    iget-object v5, v5, LsC;->b:LZB;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v4

    .line 4
    check-cast v5, LgC;

    const-string v7, "Handle client downcall: %s"

    invoke-virtual {v5, v7, v6}, LgC;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v5, v1, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    invoke-static {v1, v5}, LpD;->a(Landroid/content/Context;LfC;)LeD;

    move-result-object v5

    if-nez v5, :cond_0

    .line 6
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 7
    new-instance v15, LLD;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "Client does not exist on downcall"

    invoke-direct {v15, v7, v9, v8}, LLD;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 8
    sget-object v9, LjD;->a:LDE;

    .line 9
    new-instance v16, LRD;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, v16

    invoke-direct/range {v7 .. v15}, LRD;-><init>(Ljava/lang/Long;LDE;LND;LMD;LPD;LOD;LQD;LLD;)V

    .line 10
    invoke-virtual/range {v16 .. v16}, LRD;->e()[B

    move-result-object v7

    const-string v8, "ipcinv-upcall"

    .line 11
    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 12
    invoke-static {v1, v6}, LdD;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    if-nez v5, :cond_1

    .line 13
    iget-object v2, v1, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 14
    iget-object v2, v2, LsC;->b:LZB;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    .line 15
    check-cast v2, LgC;

    const-string v0, "Dropping client downcall since no Ticl: %s"

    invoke-virtual {v2, v0, v3}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 16
    :cond_1
    iget-object v6, v0, LGD;->h:LCD;

    if-eqz v6, :cond_2

    .line 17
    iget-object v2, v6, LCD;->c:LPE;

    .line 18
    iget-object v2, v2, LPE;->w:[B

    .line 19
    new-instance v3, LjC;

    invoke-direct {v3, v2}, LjC;-><init>([B)V

    .line 20
    invoke-virtual {v5, v3}, LEC;->a(LjC;)V

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {v0}, LGD;->d()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 22
    invoke-virtual {v5}, LEC;->b()V

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {v0}, LGD;->e()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 24
    iget-object v2, v5, LEC;->y:LZB;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v4

    check-cast v2, LgC;

    const-string v4, "Ticl being stopped: %s"

    invoke-virtual {v2, v4, v3}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v2, v5, LEC;->G:LPC;

    invoke-virtual {v2}, LPC;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 26
    iget-object v2, v5, LEC;->G:LPC;

    invoke-virtual {v2}, LPC;->d()V

    goto :goto_0

    .line 27
    :cond_4
    iget-object v4, v0, LGD;->i:LDD;

    if-eqz v4, :cond_8

    .line 28
    iget-object v6, v4, LDD;->c:Ljava/util/List;

    .line 29
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 30
    iget-object v6, v4, LDD;->c:Ljava/util/List;

    .line 31
    invoke-static {v6}, LGC;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    .line 32
    invoke-virtual {v5, v6, v3}, LEC;->a(Ljava/util/Collection;I)V

    .line 33
    :cond_5
    iget-object v3, v4, LDD;->d:Ljava/util/List;

    .line 34
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 35
    iget-object v3, v4, LDD;->d:Ljava/util/List;

    .line 36
    invoke-static {v3}, LGC;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    .line 37
    invoke-virtual {v5, v3, v2}, LEC;->a(Ljava/util/Collection;I)V

    .line 38
    :cond_6
    :goto_0
    invoke-virtual {v0}, LGD;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "android_ticl_service_state.bin"

    .line 39
    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1

    .line 40
    :cond_7
    iget-object v0, v1, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 41
    iget-object v0, v0, LsC;->b:LZB;

    .line 42
    invoke-static {v1, v0, v5}, LpD;->a(Landroid/content/Context;LZB;LeD;)V

    :goto_1
    return-void

    .line 43
    :cond_8
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid downcall passed validation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 44
    iget-object v0, v1, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 45
    iget-object v0, v0, LsC;->b:LZB;

    new-array v2, v2, [Ljava/lang/Object;

    .line 46
    invoke-static/range {p1 .. p1}, LPE;->b([B)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 47
    check-cast v0, LgC;

    const-string v3, "Failed parsing ClientDowncall from %s: %s"

    invoke-virtual {v0, v3, v2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b([B)V
    .locals 27

    move-object/from16 v8, p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    :try_start_0
    invoke-static/range {p1 .. p1}, LKD;->a([B)LKD;

    move-result-object v3
    :try_end_0
    .catch LYE; {:try_start_0 .. :try_end_0} :catch_7

    .line 2
    iget-object v4, v8, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 3
    iget-object v4, v4, LsC;->b:LZB;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v3, v5, v1

    .line 4
    check-cast v4, LgC;

    const-string v6, "Handle internal downcall: %s"

    invoke-virtual {v4, v6, v5}, LgC;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v4, v3, LKD;->e:LJD;

    const-string v5, "Not on internal thread"

    const/4 v6, 0x0

    if-eqz v4, :cond_3f

    .line 6
    iget-object v4, v8, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    invoke-static {v8, v4}, LpD;->a(Landroid/content/Context;LfC;)LeD;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 7
    :goto_0
    iget-object v3, v3, LKD;->e:LJD;

    .line 8
    iget-object v3, v3, LJD;->c:LPE;

    .line 9
    iget-object v3, v3, LPE;->w:[B

    .line 10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    if-eqz v7, :cond_3b

    .line 11
    iget-object v7, v8, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    invoke-virtual {v7}, LlD;->a()LaC;

    move-result-object v7

    check-cast v7, LuC;

    .line 12
    iget-object v7, v7, LuC;->a:LEC;

    .line 13
    iget-object v9, v7, LEC;->x:LdC;

    invoke-interface {v9}, LdC;->b()Z

    move-result v9

    invoke-static {v9, v5}, LWE;->a(ZLjava/lang/Object;)V

    .line 14
    iget-object v9, v7, LEC;->H:LWC;

    sget-object v10, LUC;->E:LUC;

    .line 15
    iget-object v9, v9, LWC;->b:Ljava/util/Map;

    invoke-static {v9, v10}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 16
    iget-object v9, v7, LEC;->E:LLC;

    .line 17
    iget-object v10, v9, LLC;->c:LdC;

    invoke-interface {v10}, LdC;->b()Z

    move-result v10

    invoke-static {v10, v5}, LWE;->a(ZLjava/lang/Object;)V

    const/4 v10, 0x3

    .line 18
    :try_start_1
    invoke-static {v3}, LAE;->a([B)LAE;

    move-result-object v3
    :try_end_1
    .catch LYE; {:try_start_1 .. :try_end_1} :catch_0

    .line 19
    iget-object v11, v3, LAE;->d:LzE;

    .line 20
    iget-object v11, v11, LzE;->d:LpE;

    .line 21
    iget-object v11, v11, LpE;->c:LDE;

    .line 22
    iget v11, v11, LDE;->c:I

    if-eq v11, v10, :cond_1

    .line 23
    iget-object v11, v9, LLC;->j:LWC;

    sget-object v12, LRC;->C:LRC;

    .line 24
    iget-object v11, v11, LWC;->e:Ljava/util/Map;

    invoke-static {v11, v12}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 25
    iget-object v9, v9, LLC;->b:LZB;

    new-array v11, v2, [Ljava/lang/Object;

    aput-object v3, v11, v1

    check-cast v9, LgC;

    const-string v3, "Dropping message with incompatible version: %s"

    invoke-virtual {v9, v3, v11}, LgC;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v3}, LAE;->c()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 27
    iget-object v3, v3, LAE;->i:LfE;

    .line 28
    iget-object v11, v9, LLC;->j:LWC;

    sget-object v12, LUC;->C:LUC;

    .line 29
    iget-object v11, v11, LWC;->b:Ljava/util/Map;

    invoke-static {v11, v12}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v3}, LfE;->c()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 31
    iget-object v11, v9, LLC;->c:LdC;

    .line 32
    invoke-interface {v11}, LdC;->a()J

    move-result-wide v11

    .line 33
    iget-wide v13, v3, LfE;->d:J

    add-long/2addr v11, v13

    .line 34
    iput-wide v11, v9, LLC;->i:J

    goto :goto_1

    .line 35
    :cond_2
    iget-wide v11, v9, LLC;->h:J

    .line 36
    iget-object v13, v3, LAE;->d:LzE;

    .line 37
    iget-wide v13, v13, LzE;->g:J

    .line 38
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v9, LLC;->h:J

    .line 39
    new-instance v9, LIC;

    invoke-direct {v9, v3}, LIC;-><init>(LAE;)V

    move-object v3, v9

    goto :goto_2

    .line 40
    :catch_0
    iget-object v11, v9, LLC;->j:LWC;

    sget-object v12, LRC;->x:LRC;

    .line 41
    iget-object v11, v11, LWC;->e:Ljava/util/Map;

    invoke-static {v11, v12}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 42
    iget-object v9, v9, LLC;->b:LZB;

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v3}, LPE;->b([B)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v11, v1

    check-cast v9, LgC;

    const-string v3, "Incoming message is invalid: %s"

    invoke-virtual {v9, v3, v11}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    move-object v3, v6

    :goto_2
    if-nez v3, :cond_4

    goto/16 :goto_9

    .line 43
    :cond_4
    iget-object v9, v7, LEC;->J:LPE;

    if-eqz v9, :cond_5

    .line 44
    iget-object v11, v3, LIC;->a:LKC;

    iget-object v11, v11, LKC;->a:LPE;

    invoke-static {v9, v11}, LcF;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 45
    iget-object v9, v7, LEC;->y:LZB;

    new-array v11, v0, [Ljava/lang/Object;

    iget-object v12, v3, LIC;->a:LKC;

    iget-object v12, v12, LKC;->a:LPE;

    aput-object v12, v11, v1

    iget-object v12, v7, LEC;->J:LPE;

    aput-object v12, v11, v2

    check-cast v9, LgC;

    const-string v12, "Incoming message has bad token: server = %s, client = %s"

    invoke-virtual {v9, v12, v11}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v9, v7, LEC;->H:LWC;

    sget-object v11, LRC;->F:LRC;

    .line 47
    iget-object v9, v9, LWC;->e:Ljava/util/Map;

    invoke-static {v9, v11}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    goto :goto_3

    .line 48
    :cond_5
    iget-object v11, v7, LEC;->K:LPE;

    if-eqz v11, :cond_8

    .line 49
    iget-object v9, v3, LIC;->a:LKC;

    iget-object v9, v9, LKC;->a:LPE;

    invoke-static {v11, v9}, LcF;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 50
    iget-object v9, v7, LEC;->H:LWC;

    sget-object v11, LRC;->E:LRC;

    .line 51
    iget-object v9, v9, LWC;->e:Ljava/util/Map;

    invoke-static {v9, v11}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 52
    iget-object v9, v7, LEC;->y:LZB;

    new-array v11, v0, [Ljava/lang/Object;

    iget-object v12, v7, LEC;->K:LPE;

    aput-object v12, v11, v1

    iget-object v12, v3, LIC;->a:LKC;

    iget-object v12, v12, LKC;->a:LPE;

    aput-object v12, v11, v2

    check-cast v9, LgC;

    const-string v12, "Rejecting server message with mismatched nonce: Client = %s, Server = %s"

    invoke-virtual {v9, v12, v11}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 53
    :cond_6
    iget-object v9, v7, LEC;->y:LZB;

    new-array v11, v2, [Ljava/lang/Object;

    iget-object v12, v7, LEC;->K:LPE;

    aput-object v12, v11, v1

    check-cast v9, LgC;

    const-string v12, "Accepting server message with matching nonce: %s"

    invoke-virtual {v9, v12, v11}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    const/4 v9, 0x1

    goto :goto_4

    .line 54
    :cond_8
    iget-object v12, v7, LEC;->y:LZB;

    new-array v13, v0, [Ljava/lang/Object;

    aput-object v9, v13, v1

    aput-object v11, v13, v2

    check-cast v12, LgC;

    const-string v9, "Neither token nor nonce was set in validateToken: %s, %s"

    invoke-virtual {v12, v9, v13}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    const/4 v9, 0x0

    :goto_4
    if-nez v9, :cond_9

    goto/16 :goto_9

    .line 55
    :cond_9
    iget-object v9, v3, LIC;->b:LCE;

    if-eqz v9, :cond_f

    .line 56
    iget-object v9, v7, LEC;->H:LWC;

    sget-object v11, LUC;->A:LUC;

    .line 57
    iget-object v9, v9, LWC;->b:Ljava/util/Map;

    invoke-static {v9, v11}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 58
    iget-object v9, v3, LIC;->a:LKC;

    iget-object v9, v9, LKC;->a:LPE;

    .line 59
    iget-object v11, v3, LIC;->b:LCE;

    invoke-virtual {v11}, LCE;->c()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 60
    iget-object v11, v3, LIC;->b:LCE;

    .line 61
    iget-object v11, v11, LCE;->d:LPE;

    goto :goto_5

    :cond_a
    move-object v11, v6

    .line 62
    :goto_5
    iget-object v12, v7, LEC;->x:LdC;

    invoke-interface {v12}, LdC;->b()Z

    move-result v12

    invoke-static {v12, v5}, LWE;->a(ZLjava/lang/Object;)V

    if-eqz v11, :cond_e

    .line 63
    iget-object v12, v7, LEC;->K:LPE;

    invoke-static {v9, v12}, LcF;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 64
    iget-object v13, v7, LEC;->J:LPE;

    invoke-static {v9, v13}, LcF;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v12, :cond_c

    if-eqz v9, :cond_b

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v9, 0x1

    :goto_7
    if-nez v9, :cond_d

    .line 65
    iget-object v9, v7, LEC;->y:LZB;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v11, v10, v1

    iget-object v11, v7, LEC;->K:LPE;

    aput-object v11, v10, v2

    iget-object v11, v7, LEC;->J:LPE;

    aput-object v11, v10, v0

    check-cast v9, LgC;

    const-string v11, "Ignoring new token; %s does not match nonce = %s or existing token = %s"

    invoke-virtual {v9, v11, v10}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 66
    :cond_d
    iget-object v9, v7, LEC;->y:LZB;

    new-array v10, v0, [Ljava/lang/Object;

    aput-object v11, v10, v1

    iget-object v12, v7, LEC;->J:LPE;

    aput-object v12, v10, v2

    check-cast v9, LgC;

    const-string v12, "New token being assigned at client: %s, Old = %s"

    invoke-virtual {v9, v12, v10}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v9, v7, LEC;->S:LyC;

    const-string v10, "Heartbeat-after-new-token"

    .line 68
    invoke-virtual {v9, v1, v10}, LNC;->a(ZLjava/lang/String;)V

    .line 69
    invoke-virtual {v7, v6}, LEC;->b(LPE;)V

    .line 70
    invoke-virtual {v7, v11}, LEC;->a(LPE;)V

    .line 71
    iget-object v9, v7, LEC;->R:LBC;

    const-string v10, "Write-after-new-token"

    .line 72
    invoke-virtual {v9, v1, v10}, LNC;->a(ZLjava/lang/String;)V

    goto :goto_8

    .line 73
    :cond_e
    iget-object v9, v7, LEC;->y:LZB;

    new-array v10, v2, [Ljava/lang/Object;

    iget-object v11, v7, LEC;->J:LPE;

    aput-object v11, v10, v1

    check-cast v9, LgC;

    const-string v11, "Destroying existing token: %s"

    invoke-virtual {v9, v11, v10}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v9, "Destroy"

    .line 74
    invoke-virtual {v7, v9}, LEC;->a(Ljava/lang/String;)V

    .line 75
    :cond_f
    :goto_8
    iget-object v9, v7, LEC;->J:LPE;

    if-nez v9, :cond_10

    :goto_9
    move-object/from16 v17, v4

    goto/16 :goto_29

    .line 76
    :cond_10
    iget-object v9, v3, LIC;->a:LKC;

    .line 77
    iget-object v10, v7, LEC;->x:LdC;

    invoke-interface {v10}, LdC;->b()Z

    move-result v10

    invoke-static {v10, v5}, LWE;->a(ZLjava/lang/Object;)V

    .line 78
    iget-object v10, v7, LEC;->K:LPE;

    if-nez v10, :cond_3a

    .line 79
    iget-object v10, v9, LKC;->b:LwE;

    if-eqz v10, :cond_16

    .line 80
    iput-boolean v2, v7, LEC;->L:Z

    .line 81
    iget-object v11, v7, LEC;->D:LOC;

    .line 82
    iput-object v10, v11, LOC;->c:LwE;

    .line 83
    invoke-virtual {v11}, LOC;->b()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 84
    new-instance v10, Ljava/util/HashSet;

    iget-object v12, v11, LOC;->d:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 85
    iget-object v12, v11, LOC;->d:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LmE;

    .line 87
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v2, :cond_11

    const/4 v13, 0x1

    goto :goto_b

    :cond_11
    const/4 v13, 0x0

    :goto_b
    if-eqz v13, :cond_12

    const/4 v13, 0x1

    goto :goto_c

    :cond_12
    const/4 v13, 0x2

    .line 88
    :goto_c
    invoke-static {v14, v13}, LsE;->a(LmE;I)LsE;

    move-result-object v13

    .line 89
    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 90
    :cond_13
    iget-object v11, v11, LOC;->d:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    goto :goto_d

    .line 91
    :cond_14
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v10

    .line 92
    :goto_d
    iget-object v11, v7, LEC;->y:LZB;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v9, v9, LKC;->b:LwE;

    aput-object v9, v0, v1

    .line 93
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v2

    .line 94
    check-cast v11, LgC;

    const-string v9, "Received new server registration summary (%s); will make %s upcalls"

    invoke-virtual {v11, v9, v0}, LgC;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LsE;

    .line 96
    iget-object v10, v9, LsE;->c:LmE;

    .line 97
    invoke-static {v10}, LGC;->a(LmE;)LnC;

    move-result-object v10

    .line 98
    iget v9, v9, LsE;->d:I

    if-ne v9, v2, :cond_15

    .line 99
    sget-object v9, LXB;->w:LXB;

    goto :goto_f

    .line 100
    :cond_15
    sget-object v9, LXB;->x:LXB;

    .line 101
    :goto_f
    iget-object v11, v7, LEC;->A:LYB;

    check-cast v11, LdD;

    invoke-virtual {v11, v7, v10, v9}, LdD;->a(LWB;LnC;LXB;)V

    goto :goto_e

    .line 102
    :cond_16
    iget-object v0, v3, LIC;->c:LkE;

    const-string v2, "ipcinv-upcall"

    if-eqz v0, :cond_22

    .line 103
    iget-object v0, v7, LEC;->H:LWC;

    sget-object v9, LUC;->x:LUC;

    .line 104
    iget-object v0, v0, LWC;->b:Ljava/util/Map;

    invoke-static {v0, v9}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 105
    iget-object v0, v3, LIC;->c:LkE;

    .line 106
    iget-object v0, v0, LkE;->c:Ljava/util/List;

    .line 107
    iget-object v9, v7, LEC;->x:LdC;

    invoke-interface {v9}, LdC;->b()Z

    move-result v9

    invoke-static {v9, v5}, LWE;->a(ZLjava/lang/Object;)V

    .line 108
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LlE;

    .line 109
    new-instance v10, LUD;

    invoke-direct {v10, v9}, LUD;-><init>(LlE;)V

    .line 110
    invoke-virtual {v10}, LUD;->c()[B

    move-result-object v10

    .line 111
    new-instance v14, LjC;

    invoke-direct {v14, v10}, LjC;-><init>([B)V

    .line 112
    iget-object v10, v7, LEC;->V:LrC;

    if-eqz v10, :cond_21

    .line 113
    iget-boolean v11, v9, LlE;->e:Z

    if-eqz v11, :cond_18

    .line 114
    iget-object v11, v9, LlE;->d:LmE;

    .line 115
    iget-object v10, v10, LrC;->a:Ljava/util/Map;

    .line 116
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 117
    check-cast v10, Ljava/lang/Long;

    if-eqz v10, :cond_17

    .line 118
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_11

    :cond_17
    const-wide/16 v10, -0x1

    .line 119
    :goto_11
    iget-wide v12, v9, LlE;->f:J

    cmp-long v16, v10, v12

    if-ltz v16, :cond_18

    const/4 v10, 0x1

    goto :goto_12

    :cond_18
    const/4 v10, 0x0

    :goto_12
    if-eqz v10, :cond_19

    .line 120
    iget-object v6, v7, LEC;->y:LZB;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v9, v10, v1

    check-cast v6, LgC;

    const-string v1, "Stale invalidation {0}, not delivering"

    invoke-virtual {v6, v1, v10}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v7, v14}, LEC;->a(LjC;)V

    .line 122
    iget-object v1, v7, LEC;->H:LWC;

    sget-object v6, LUC;->D:LUC;

    .line 123
    iget-object v1, v1, LWC;->b:Ljava/util/Map;

    invoke-static {v1, v6}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    goto :goto_13

    .line 124
    :cond_19
    iget-object v10, v9, LlE;->d:LmE;

    .line 125
    sget-object v11, LZD;->d:LmE;

    invoke-virtual {v11, v10}, LmE;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 126
    iget-object v9, v7, LEC;->y:LZB;

    new-array v1, v1, [Ljava/lang/Object;

    check-cast v9, LgC;

    const-string v10, "Issuing invalidate all"

    invoke-virtual {v9, v10, v1}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v1, v7, LEC;->A:LYB;

    check-cast v1, LdD;

    if-eqz v1, :cond_1a

    .line 128
    :try_start_2
    iget-object v9, v14, LjC;->a:[B

    .line 129
    invoke-static {v9}, LUD;->a([B)LUD;

    move-result-object v9

    .line 130
    iget-object v10, v1, LdD;->a:Landroid/content/Context;

    .line 131
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 132
    new-instance v12, LPE;

    .line 133
    invoke-virtual {v9}, LUD;->c()[B

    move-result-object v9

    invoke-direct {v12, v9}, LPE;-><init>([B)V

    .line 134
    new-instance v9, LMD;

    invoke-direct {v9, v12, v6, v6, v15}, LMD;-><init>(LPE;LlE;LmE;Ljava/lang/Boolean;)V

    .line 135
    sget-object v6, LjD;->a:LDE;

    invoke-static {v6, v9}, LRD;->a(LDE;LMD;)LRD;

    move-result-object v6

    .line 136
    invoke-virtual {v6}, LRD;->e()[B

    move-result-object v6

    .line 137
    invoke-virtual {v11, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 138
    invoke-static {v10, v11}, LdD;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_2
    .catch LYE; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_13

    :catch_1
    const-string v6, "invalidateAll"

    .line 139
    invoke-virtual {v1, v6, v14}, LdD;->a(Ljava/lang/String;LjC;)V

    :goto_13
    move-object/from16 p1, v0

    move-object/from16 v17, v4

    move-object/from16 v18, v15

    goto/16 :goto_15

    .line 140
    :cond_1a
    throw v6

    .line 141
    :cond_1b
    iget-object v10, v9, LlE;->d:LmE;

    .line 142
    invoke-static {v10}, LGC;->a(LmE;)LnC;

    move-result-object v17

    .line 143
    iget-wide v10, v9, LlE;->f:J

    .line 144
    invoke-virtual {v9}, LlE;->d()Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 145
    iget-object v12, v9, LlE;->g:LPE;

    .line 146
    iget-object v12, v12, LPE;->w:[B

    move-object/from16 v20, v12

    goto :goto_14

    :cond_1c
    move-object/from16 v20, v6

    .line 147
    :goto_14
    iget-boolean v12, v9, LlE;->h:Z

    .line 148
    new-instance v13, LmC;

    move-object/from16 v16, v13

    move-wide/from16 v18, v10

    move/from16 v21, v12

    invoke-direct/range {v16 .. v21}, LmC;-><init>(LnC;J[BZ)V

    .line 149
    iget-boolean v10, v9, LlE;->h:Z

    .line 150
    iget-object v11, v7, LEC;->y:LZB;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 p1, v0

    .line 151
    iget-boolean v0, v9, LlE;->e:Z

    .line 152
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v12, v1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v12, v1

    const/4 v0, 0x2

    aput-object v13, v12, v0

    .line 153
    check-cast v11, LgC;

    const-string v0, "Issuing invalidate (known-version = %s, is-trickle-restart = %s): %s"

    invoke-virtual {v11, v0, v12}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-boolean v0, v9, LlE;->e:Z

    if-eqz v0, :cond_1f

    if-eqz v10, :cond_1d

    .line 155
    iget-object v0, v7, LEC;->B:LbE;

    .line 156
    iget-boolean v0, v0, LbE;->p:Z

    if-eqz v0, :cond_1f

    .line 157
    :cond_1d
    iget-object v0, v7, LEC;->A:LYB;

    check-cast v0, LdD;

    if-eqz v0, :cond_1e

    .line 158
    :try_start_3
    iget-object v1, v14, LjC;->a:[B

    .line 159
    invoke-static {v1}, LUD;->a([B)LUD;

    move-result-object v1

    .line 160
    iget-object v6, v0, LdD;->a:Landroid/content/Context;

    .line 161
    iget-object v9, v13, LmC;->a:LnC;

    .line 162
    invoke-static {v9}, LGC;->a(LnC;)LmE;

    move-result-object v10

    .line 163
    iget-wide v11, v13, LmC;->b:J

    .line 164
    iget-boolean v9, v13, LmC;->d:Z

    .line 165
    iget-object v13, v13, LmC;->c:[B

    .line 166
    invoke-static {v13}, LPE;->a([B)LPE;

    move-result-object v13

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 167
    new-instance v9, LlE;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12
    :try_end_3
    .catch LYE; {:try_start_3 .. :try_end_3} :catch_2

    move-object v11, v9

    move-object v9, v11

    move-object/from16 v17, v4

    move-object v4, v11

    move-object v11, v15

    move-object/from16 v18, v15

    move-object v15, v14

    move-object/from16 v14, v16

    :try_start_4
    invoke-direct/range {v9 .. v14}, LlE;-><init>(LmE;Ljava/lang/Boolean;Ljava/lang/Long;LPE;Ljava/lang/Boolean;)V

    .line 168
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 169
    new-instance v10, LPE;

    .line 170
    invoke-virtual {v1}, LUD;->c()[B

    move-result-object v1

    invoke-direct {v10, v1}, LPE;-><init>([B)V

    .line 171
    new-instance v1, LMD;

    const/4 v11, 0x0

    invoke-direct {v1, v10, v4, v11, v11}, LMD;-><init>(LPE;LlE;LmE;Ljava/lang/Boolean;)V

    .line 172
    sget-object v4, LjD;->a:LDE;

    invoke-static {v4, v1}, LRD;->a(LDE;LMD;)LRD;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, LRD;->e()[B

    move-result-object v1

    .line 174
    invoke-virtual {v9, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 175
    invoke-static {v6, v9}, LdD;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_4
    .catch LYE; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_15

    :catch_2
    move-object/from16 v17, v4

    move-object/from16 v18, v15

    move-object v15, v14

    :catch_3
    const-string v1, "invalidate"

    .line 176
    invoke-virtual {v0, v1, v15}, LdD;->a(Ljava/lang/String;LjC;)V

    goto :goto_15

    .line 177
    :cond_1e
    throw v6

    :cond_1f
    move-object/from16 v17, v4

    move-object/from16 v18, v15

    move-object v15, v14

    .line 178
    iget-object v0, v7, LEC;->A:LYB;

    .line 179
    iget-object v1, v13, LmC;->a:LnC;

    .line 180
    check-cast v0, LdD;

    if-eqz v0, :cond_20

    .line 181
    :try_start_5
    iget-object v4, v15, LjC;->a:[B

    .line 182
    invoke-static {v4}, LUD;->a([B)LUD;

    move-result-object v4

    .line 183
    iget-object v6, v0, LdD;->a:Landroid/content/Context;

    .line 184
    invoke-static {v1}, LGC;->a(LnC;)LmE;

    move-result-object v1

    .line 185
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 186
    new-instance v10, LPE;

    .line 187
    invoke-virtual {v4}, LUD;->c()[B

    move-result-object v4

    invoke-direct {v10, v4}, LPE;-><init>([B)V

    .line 188
    new-instance v4, LMD;

    const/4 v11, 0x0

    invoke-direct {v4, v10, v11, v1, v11}, LMD;-><init>(LPE;LlE;LmE;Ljava/lang/Boolean;)V

    .line 189
    sget-object v1, LjD;->a:LDE;

    invoke-static {v1, v4}, LRD;->a(LDE;LMD;)LRD;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, LRD;->e()[B

    move-result-object v1

    .line 191
    invoke-virtual {v9, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 192
    invoke-static {v6, v9}, LdD;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_5
    .catch LYE; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_15

    :catch_4
    const-string v1, "invalidateUnknownVersion"

    .line 193
    invoke-virtual {v0, v1, v15}, LdD;->a(Ljava/lang/String;LjC;)V

    :goto_15
    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    move-object/from16 v4, v17

    move-object/from16 v15, v18

    goto/16 :goto_10

    :cond_20
    const/4 v0, 0x0

    .line 194
    throw v0

    .line 195
    :cond_21
    throw v6

    :cond_22
    move-object/from16 v17, v4

    .line 196
    iget-object v0, v3, LIC;->d:LuE;

    if-eqz v0, :cond_30

    .line 197
    iget-object v0, v7, LEC;->H:LWC;

    sget-object v1, LUC;->y:LUC;

    .line 198
    iget-object v0, v0, LWC;->b:Ljava/util/Map;

    invoke-static {v0, v1}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 199
    iget-object v0, v3, LIC;->d:LuE;

    .line 200
    iget-object v0, v0, LuE;->c:Ljava/util/List;

    .line 201
    iget-object v1, v7, LEC;->x:LdC;

    invoke-interface {v1}, LdC;->b()Z

    move-result v1

    invoke-static {v1, v5}, LWE;->a(ZLjava/lang/Object;)V

    .line 202
    iget-object v1, v7, LEC;->D:LOC;

    if-eqz v1, :cond_2f

    .line 203
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_28

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LtE;

    .line 205
    iget-object v10, v9, LtE;->c:LsE;

    .line 206
    iget-object v10, v10, LsE;->c:LmE;

    .line 207
    iget-object v11, v1, LOC;->d:Ljava/util/Map;

    .line 208
    invoke-interface {v11, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v11, v9, LtE;->d:LBE;

    .line 210
    iget v11, v11, LBE;->d:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_23

    const/4 v11, 0x1

    goto :goto_17

    :cond_23
    const/4 v11, 0x0

    :goto_17
    if-eqz v11, :cond_27

    .line 211
    iget-object v11, v1, LOC;->a:LtC;

    check-cast v11, LQC;

    if-eqz v11, :cond_26

    .line 212
    iget-object v12, v11, LQC;->w:Ljava/util/SortedMap;

    .line 213
    iget v13, v10, LmE;->c:I

    .line 214
    iget-object v14, v10, LmE;->d:LPE;

    .line 215
    iget-object v14, v14, LPE;->w:[B

    .line 216
    iget-object v11, v11, LQC;->x:LTB;

    .line 217
    invoke-static {v13, v14, v11}, LVB;->a(I[BLTB;)LPE;

    move-result-object v11

    invoke-interface {v12, v11}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    .line 218
    iget-object v9, v9, LtE;->c:LsE;

    .line 219
    iget v9, v9, LsE;->d:I

    const/4 v12, 0x1

    if-ne v9, v12, :cond_24

    const/4 v9, 0x1

    goto :goto_18

    :cond_24
    const/4 v9, 0x0

    :goto_18
    xor-int v12, v9, v11

    if-eqz v12, :cond_25

    .line 220
    iget-object v12, v1, LOC;->a:LtC;

    check-cast v12, LQC;

    invoke-virtual {v12, v10}, LQC;->a(Ljava/lang/Object;)Z

    .line 221
    iget-object v12, v1, LOC;->b:LWC;

    sget-object v13, LRC;->D:LRC;

    .line 222
    iget-object v12, v12, LWC;->e:Ljava/util/Map;

    invoke-static {v12, v13}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 223
    iget-object v12, v1, LOC;->e:LZB;

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    .line 224
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v13, v11

    const/4 v9, 0x2

    aput-object v10, v13, v9

    .line 225
    check-cast v12, LgC;

    const-string v9, "Ticl discrepancy detected: registered = %s, requested = %s. Removing %s from requested"

    invoke-virtual {v12, v9, v13}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    :cond_25
    const/4 v9, 0x1

    goto :goto_1a

    :cond_26
    const/4 v0, 0x0

    .line 226
    throw v0

    .line 227
    :cond_27
    iget-object v9, v1, LOC;->a:LtC;

    check-cast v9, LQC;

    invoke-virtual {v9, v10}, LQC;->a(Ljava/lang/Object;)Z

    .line 228
    iget-object v9, v1, LOC;->e:LZB;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    check-cast v9, LgC;

    const-string v10, "Removing %s from committed"

    invoke-virtual {v9, v10, v11}, LgC;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_19
    const/4 v9, 0x0

    .line 229
    :goto_1a
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_28
    const/4 v1, 0x3

    .line 230
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ne v6, v9, :cond_29

    const/4 v6, 0x1

    goto :goto_1b

    :cond_29
    const/4 v6, 0x0

    :goto_1b
    const-string v9, "Not all registration statuses were processed"

    invoke-static {v6, v9}, LWE;->a(ZLjava/lang/Object;)V

    const/4 v6, 0x0

    .line 231
    :goto_1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_31

    .line 232
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LtE;

    .line 233
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 234
    iget-object v11, v7, LEC;->y:LZB;

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    check-cast v11, LgC;

    const-string v14, "Process reg status: %s"

    invoke-virtual {v11, v14, v13}, LgC;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    iget-object v11, v9, LtE;->c:LsE;

    .line 236
    iget-object v11, v11, LsE;->c:LmE;

    .line 237
    invoke-static {v11}, LGC;->a(LmE;)LnC;

    move-result-object v11

    if-eqz v10, :cond_2b

    .line 238
    iget-object v9, v9, LtE;->c:LsE;

    .line 239
    iget v9, v9, LsE;->d:I

    if-ne v9, v12, :cond_2a

    .line 240
    sget-object v9, LXB;->w:LXB;

    goto :goto_1d

    .line 241
    :cond_2a
    sget-object v9, LXB;->x:LXB;

    .line 242
    :goto_1d
    iget-object v10, v7, LEC;->A:LYB;

    check-cast v10, LdD;

    invoke-virtual {v10, v7, v11, v9}, LdD;->a(LWB;LnC;LXB;)V

    goto :goto_21

    .line 243
    :cond_2b
    iget-object v10, v9, LtE;->d:LBE;

    .line 244
    iget v10, v10, LBE;->d:I

    if-ne v10, v12, :cond_2c

    const/4 v10, 0x1

    goto :goto_1e

    :cond_2c
    const/4 v10, 0x0

    :goto_1e
    if-eqz v10, :cond_2d

    const-string v10, "Registration discrepancy detected"

    goto :goto_1f

    .line 245
    :cond_2d
    iget-object v10, v9, LtE;->d:LBE;

    .line 246
    iget-object v10, v10, LBE;->e:Ljava/lang/String;

    .line 247
    :goto_1f
    iget-object v9, v9, LtE;->d:LBE;

    .line 248
    iget v9, v9, LBE;->d:I

    if-ne v9, v1, :cond_2e

    const/4 v9, 0x1

    goto :goto_20

    :cond_2e
    const/4 v9, 0x0

    .line 249
    :goto_20
    iget-object v12, v7, LEC;->A:LYB;

    xor-int/lit8 v9, v9, 0x1

    check-cast v12, LdD;

    invoke-virtual {v12, v7, v11, v9, v10}, LdD;->a(LWB;LnC;ZLjava/lang/String;)V

    :goto_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_2f
    const/4 v0, 0x0

    .line 250
    throw v0

    :cond_30
    const/4 v1, 0x3

    .line 251
    :cond_31
    iget-object v0, v3, LIC;->e:LyE;

    if-eqz v0, :cond_32

    .line 252
    iget-object v0, v7, LEC;->H:LWC;

    sget-object v4, LUC;->z:LUC;

    .line 253
    iget-object v0, v0, LWC;->b:Ljava/util/Map;

    invoke-static {v0, v4}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 254
    iget-object v0, v7, LEC;->x:LdC;

    invoke-interface {v0}, LdC;->b()Z

    move-result v0

    invoke-static {v0, v5}, LWE;->a(ZLjava/lang/Object;)V

    .line 255
    iget-object v0, v7, LEC;->D:LOC;

    sget-object v4, LPE;->y:LPE;

    .line 256
    iget-object v4, v4, LPE;->w:[B

    .line 257
    iget-object v0, v0, LOC;->a:LtC;

    check-cast v0, LQC;

    .line 258
    iget-object v0, v0, LQC;->w:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 259
    new-instance v4, LvE;

    invoke-direct {v4, v0}, LvE;-><init>(Ljava/util/Collection;)V

    .line 260
    iget-object v0, v7, LEC;->E:LLC;

    iget-object v6, v7, LEC;->T:LxC;

    .line 261
    iget-object v9, v0, LLC;->c:LdC;

    invoke-interface {v9}, LdC;->b()Z

    move-result v9

    invoke-static {v9, v5}, LWE;->a(ZLjava/lang/Object;)V

    .line 262
    iget-object v9, v0, LLC;->f:LHC;

    .line 263
    iget-object v9, v9, LHC;->e:Ljava/util/Set;

    invoke-interface {v9, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, v0, LLC;->b:LZB;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    check-cast v0, LgC;

    const-string v4, "Adding subtree: %s"

    invoke-virtual {v0, v4, v9}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Send-reg-sync"

    .line 265
    invoke-virtual {v6, v10, v0}, LNC;->a(ZLjava/lang/String;)V

    .line 266
    :cond_32
    iget-object v0, v3, LIC;->f:LiE;

    if-eqz v0, :cond_36

    .line 267
    iget-object v0, v7, LEC;->H:LWC;

    sget-object v4, LUC;->w:LUC;

    .line 268
    iget-object v0, v0, LWC;->b:Ljava/util/Map;

    invoke-static {v0, v4}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 269
    iget-object v0, v3, LIC;->f:LiE;

    .line 270
    iget-object v0, v0, LiE;->c:Ljava/util/List;

    .line 271
    iget-object v4, v7, LEC;->x:LdC;

    invoke-interface {v4}, LdC;->b()Z

    move-result v4

    invoke-static {v4, v5}, LWE;->a(ZLjava/lang/Object;)V

    .line 272
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :cond_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_34

    const/4 v4, 0x1

    goto :goto_22

    :cond_34
    const/4 v4, 0x0

    :goto_22
    if-eqz v4, :cond_33

    goto :goto_23

    :cond_35
    const/4 v6, 0x1

    .line 273
    :goto_23
    iget-object v0, v7, LEC;->D:LOC;

    .line 274
    invoke-virtual {v0}, LOC;->b()Z

    move-result v0

    xor-int/2addr v0, v6

    .line 275
    invoke-virtual {v7, v4, v0}, LEC;->a(ZZ)V

    .line 276
    :cond_36
    iget-object v0, v3, LIC;->g:LgE;

    if-eqz v0, :cond_3d

    .line 277
    iget-object v0, v7, LEC;->H:LWC;

    sget-object v4, LUC;->B:LUC;

    .line 278
    iget-object v0, v0, LWC;->b:Ljava/util/Map;

    invoke-static {v0, v4}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 279
    iget-object v0, v3, LIC;->a:LKC;

    iget-object v3, v3, LIC;->g:LgE;

    .line 280
    iget v4, v3, LgE;->c:I

    .line 281
    iget-object v3, v3, LgE;->d:Ljava/lang/String;

    .line 282
    iget-object v6, v7, LEC;->x:LdC;

    invoke-interface {v6}, LdC;->b()Z

    move-result v6

    invoke-static {v6, v5}, LWE;->a(ZLjava/lang/Object;)V

    .line 283
    iget-object v5, v7, LEC;->y:LZB;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v1, v6

    const/4 v0, 0x2

    aput-object v3, v1, v0

    check-cast v5, LgC;

    const-string v0, "Received error message: %s, %s, %s"

    invoke-virtual {v5, v0, v1}, LgC;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v4, v6, :cond_37

    const/4 v0, -0x1

    goto :goto_24

    :cond_37
    const/4 v0, 0x1

    .line 284
    :goto_24
    iget-object v1, v7, LEC;->A:LYB;

    check-cast v1, LdD;

    .line 285
    iget-object v1, v1, LdD;->a:Landroid/content/Context;

    .line 286
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 287
    new-instance v6, LLD;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v6, v0, v3, v9}, LLD;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 288
    sget-object v20, LjD;->a:LDE;

    .line 289
    new-instance v0, LRD;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v0

    move-object/from16 v26, v6

    invoke-direct/range {v18 .. v26}, LRD;-><init>(Ljava/lang/Long;LDE;LND;LMD;LPD;LOD;LQD;LLD;)V

    .line 290
    invoke-virtual {v0}, LRD;->e()[B

    move-result-object v0

    .line 291
    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 292
    invoke-static {v1, v5}, LdD;->a(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x1

    if-eq v4, v0, :cond_38

    goto/16 :goto_29

    .line 293
    :cond_38
    iget-object v0, v7, LEC;->D:LOC;

    .line 294
    iget-object v1, v0, LOC;->a:LtC;

    check-cast v1, LQC;

    .line 295
    iget-object v1, v1, LQC;->w:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    .line 296
    iget-object v2, v0, LOC;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v2, v1

    .line 297
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 298
    iget-object v2, v0, LOC;->a:LtC;

    check-cast v2, LQC;

    if-eqz v2, :cond_39

    .line 299
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, LQC;->w:Ljava/util/SortedMap;

    invoke-interface {v5}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 300
    iget-object v5, v2, LQC;->w:Ljava/util/SortedMap;

    invoke-interface {v5}, Ljava/util/SortedMap;->clear()V

    .line 301
    invoke-virtual {v2}, LQC;->a()V

    .line 302
    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 303
    iget-object v2, v0, LOC;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 304
    iget-object v0, v0, LOC;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 305
    iget-object v0, v7, LEC;->y:LZB;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    check-cast v0, LgC;

    const-string v4, "Issuing failure for %s objects"

    invoke-virtual {v0, v4, v2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LmE;

    .line 307
    iget-object v2, v7, LEC;->A:LYB;

    .line 308
    invoke-static {v1}, LGC;->a(LmE;)LnC;

    move-result-object v1

    const-string v4, "Auth error: "

    invoke-static {v4, v3}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 309
    check-cast v2, LdD;

    const/4 v5, 0x0

    invoke-virtual {v2, v7, v1, v5, v4}, LdD;->a(LWB;LnC;ZLjava/lang/String;)V

    goto :goto_25

    :cond_39
    const/4 v0, 0x0

    .line 310
    throw v0

    .line 311
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot process server header with non-null nonce (have "

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, LEC;->K:LPE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    move-object/from16 v17, v4

    .line 312
    new-instance v0, LhD;

    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, LhD;-><init>(Landroid/content/Context;)V

    .line 313
    iget-object v0, v0, LhD;->a:LgD;

    .line 314
    iget-object v0, v0, LgD;->c:Ljava/lang/String;

    if-eqz v0, :cond_3c

    .line 315
    :try_start_6
    invoke-static {v3}, LAE;->a([B)LAE;

    move-result-object v1

    .line 316
    iget-object v2, v1, LAE;->f:LkE;

    if-eqz v2, :cond_3c

    .line 317
    iget-object v1, v1, LAE;->f:LkE;

    .line 318
    invoke-static {v1}, LjD;->a(LkE;)Landroid/content/Intent;

    move-result-object v1

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    invoke-virtual {v8, v1}, Landroid/app/IntentService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_6
    .catch LYE; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_28

    :catch_5
    move-exception v0

    goto :goto_26

    :catch_6
    move-exception v0

    goto :goto_27

    .line 321
    :goto_26
    iget-object v1, v8, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 322
    iget-object v1, v1, LsC;->b:LZB;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 323
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 324
    check-cast v1, LgC;

    const-string v0, "Unable to send background invalidation intent: %s"

    invoke-virtual {v1, v0, v2}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_28

    .line 325
    :goto_27
    iget-object v1, v8, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 326
    iget-object v1, v1, LsC;->b:LZB;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 327
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    check-cast v1, LgC;

    const-string v0, "Failed to parse message: %s"

    invoke-virtual {v1, v0, v2}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3c
    :goto_28
    const/4 v0, 0x0

    .line 328
    iget-object v1, v8, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 329
    iget-object v1, v1, LsC;->b:LZB;

    new-array v0, v0, [Ljava/lang/Object;

    .line 330
    check-cast v1, LgC;

    const-string v2, "Message for unstarted Ticl; rewrite state"

    invoke-virtual {v1, v2, v0}, LgC;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    iget-object v0, v8, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 332
    iget-object v0, v0, LsC;->d:LeC;

    .line 333
    new-instance v1, LoD;

    invoke-direct {v1, v8}, LoD;-><init>(Lcom/google/ipc/invalidation/ticl/android2/TiclService;)V

    check-cast v0, LfD;

    const-string v2, "ClientToken"

    invoke-virtual {v0, v2, v1}, LfD;->a(Ljava/lang/String;LlC;)V

    :cond_3d
    :goto_29
    if-eqz v17, :cond_3e

    .line 334
    iget-object v0, v8, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 335
    iget-object v0, v0, LsC;->b:LZB;

    move-object/from16 v1, v17

    .line 336
    invoke-static {v8, v0, v1}, LpD;->a(Landroid/content/Context;LZB;LeD;)V

    :cond_3e
    return-void

    .line 337
    :cond_3f
    iget-object v0, v3, LKD;->f:LID;

    if-eqz v0, :cond_45

    .line 338
    iget-object v0, v8, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    invoke-static {v8, v0}, LpD;->a(Landroid/content/Context;LfC;)LeD;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 339
    iget-object v1, v8, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    invoke-virtual {v1}, LlD;->a()LaC;

    move-result-object v1

    .line 340
    iget-object v2, v3, LKD;->f:LID;

    .line 341
    iget-boolean v2, v2, LID;->c:Z

    .line 342
    check-cast v1, LuC;

    .line 343
    iget-object v1, v1, LuC;->a:LEC;

    .line 344
    iget-object v3, v1, LEC;->x:LdC;

    invoke-interface {v3}, LdC;->b()Z

    move-result v3

    invoke-static {v3, v5}, LWE;->a(ZLjava/lang/Object;)V

    .line 345
    iget-boolean v3, v1, LEC;->M:Z

    .line 346
    iput-boolean v2, v1, LEC;->M:Z

    if-eqz v2, :cond_43

    if-nez v3, :cond_43

    .line 347
    iget-object v2, v1, LEC;->x:LdC;

    invoke-interface {v2}, LdC;->a()J

    move-result-wide v2

    iget-wide v4, v1, LEC;->O:J

    iget-object v6, v1, LEC;->B:LbE;

    .line 348
    iget v6, v6, LbE;->o:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v6, v2, v4

    if-lez v6, :cond_43

    .line 349
    iget-object v2, v1, LEC;->y:LZB;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, LEC;->x:LdC;

    .line 350
    invoke-interface {v5}, LdC;->a()J

    move-result-wide v5

    iget-wide v9, v1, LEC;->O:J

    sub-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 351
    check-cast v2, LgC;

    if-eqz v2, :cond_42

    .line 352
    sget-object v5, LgC;->c:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_41

    .line 353
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 354
    invoke-virtual {v2}, LgC;->c()Ljava/lang/String;

    move-result-object v5

    .line 355
    invoke-virtual {v2, v5, v3}, LgC;->a(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_40

    const-string v6, "Sending heartbeat after reconnection, previous send was %s ms ago"

    .line 356
    invoke-virtual {v2, v6, v4}, LgC;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v5, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_40
    iget-object v2, v1, LEC;->D:LOC;

    invoke-virtual {v2}, LOC;->b()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, LEC;->a(ZZ)V

    goto :goto_2a

    .line 358
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    const/4 v0, 0x0

    .line 359
    throw v0

    .line 360
    :cond_43
    :goto_2a
    iget-object v1, v8, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 361
    iget-object v1, v1, LsC;->b:LZB;

    .line 362
    invoke-static {v8, v1, v0}, LpD;->a(Landroid/content/Context;LZB;LeD;)V

    :cond_44
    return-void

    .line 363
    :cond_45
    iget-boolean v0, v3, LKD;->g:Z

    if-eqz v0, :cond_47

    .line 364
    iget-object v0, v8, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    invoke-static {v8, v0}, LpD;->a(Landroid/content/Context;LfC;)LeD;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 365
    iget-object v1, v8, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    invoke-virtual {v1}, LlD;->a()LaC;

    move-result-object v1

    check-cast v1, LuC;

    .line 366
    iget-object v2, v1, LuC;->a:LEC;

    .line 367
    iget-object v2, v2, LEC;->x:LdC;

    .line 368
    invoke-interface {v2}, LdC;->b()Z

    move-result v2

    invoke-static {v2, v5}, LWE;->a(ZLjava/lang/Object;)V

    .line 369
    iget-object v1, v1, LuC;->a:LEC;

    const/4 v2, 0x0

    .line 370
    invoke-virtual {v1, v2, v2}, LEC;->a(ZZ)V

    .line 371
    iget-object v1, v8, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 372
    iget-object v1, v1, LsC;->b:LZB;

    .line 373
    invoke-static {v8, v1, v0}, LpD;->a(Landroid/content/Context;LZB;LeD;)V

    :cond_46
    return-void

    .line 374
    :cond_47
    iget-object v0, v3, LKD;->h:LHD;

    if-eqz v0, :cond_49

    .line 375
    invoke-static/range {p0 .. p0}, LpD;->a(Landroid/content/Context;)V

    .line 376
    iget-object v1, v8, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 377
    iget-object v1, v1, LsC;->b:LZB;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 378
    check-cast v1, LgC;

    const-string v3, "Create client: creating"

    invoke-virtual {v1, v3, v2}, LgC;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    iget-object v9, v8, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 380
    iget v5, v0, LHD;->c:I

    .line 381
    iget-object v1, v0, LHD;->d:LPE;

    .line 382
    iget-object v6, v1, LPE;->w:[B

    .line 383
    iget-object v7, v0, LHD;->e:LbE;

    .line 384
    iget-boolean v0, v0, LHD;->f:Z

    const-string v1, "android_ticl_service_state.bin"

    .line 385
    invoke-virtual {v8, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Ticl already exists"

    .line 386
    invoke-static {v1, v2}, LWE;->a(ZLjava/lang/Object;)V

    .line 387
    new-instance v10, LeD;

    sget-object v4, LpD;->a:Ljava/util/Random;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v9

    invoke-direct/range {v1 .. v7}, LeD;-><init>(Landroid/content/Context;LfC;Ljava/util/Random;I[BLbE;)V

    if-nez v0, :cond_48

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v9, v10, v0}, LpD;->a(LfC;LeD;Ljava/util/List;)V

    .line 389
    invoke-virtual {v10}, LEC;->b()V

    .line 390
    :cond_48
    iget-object v0, v9, LsC;->b:LZB;

    .line 391
    invoke-static {v8, v0, v10}, LpD;->a(Landroid/content/Context;LZB;LeD;)V

    return-void

    .line 392
    :cond_49
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid internal downcall passed validation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 393
    iget-object v0, v8, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 394
    iget-object v0, v0, LsC;->b:LZB;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 395
    invoke-static/range {p1 .. p1}, LPE;->b([B)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 396
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 397
    check-cast v0, LgC;

    const-string v1, "Failed parsing InternalDowncall from %s: %s"

    invoke-virtual {v0, v1, v2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final c([B)V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, LyD;->a([B)LyD;

    move-result-object p1
    :try_end_0
    .catch LYE; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 3
    iget-object v3, v3, LsC;->b:LZB;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 4
    check-cast v3, LgC;

    const-string v5, "Handle scheduler event: %s"

    invoke-virtual {v3, v5, v4}, LgC;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v3, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    invoke-static {p0, v3}, LpD;->a(Landroid/content/Context;LfC;)LeD;

    move-result-object v3

    if-nez v3, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 7
    iget-object v0, v0, LsC;->b:LZB;

    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    iget-object p1, p1, LyD;->d:Ljava/lang/String;

    aput-object p1, v1, v2

    .line 9
    check-cast v0, LgC;

    const-string p1, "Dropping event %s; Ticl state does not exist"

    invoke-virtual {v0, p1, v1}, LgC;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_0
    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 11
    iget-object v4, v4, LsC;->a:LdC;

    .line 12
    check-cast v4, LcD;

    .line 13
    iget-object v5, v4, LcD;->a:Ljava/util/Map;

    .line 14
    iget-object v6, p1, LyD;->d:Ljava/lang/String;

    .line 15
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 16
    check-cast v5, Ljava/lang/Runnable;

    if-eqz v5, :cond_2

    .line 17
    iget-wide v6, v4, LcD;->f:J

    .line 18
    iget-wide v8, p1, LyD;->e:J

    cmp-long v10, v6, v8

    if-eqz v10, :cond_1

    .line 19
    iget-object v4, v4, LcD;->e:LZB;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v2

    aput-object p1, v0, v1

    check-cast v4, LgC;

    const-string p1, "Ignoring event with wrong ticl id (not %s): %s"

    invoke-virtual {v4, p1, v0}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 21
    invoke-virtual {v4}, LcD;->d()V

    .line 22
    :goto_0
    iget-object p1, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 23
    iget-object p1, p1, LsC;->b:LZB;

    .line 24
    invoke-static {p0, p1, v3}, LpD;->a(Landroid/content/Context;LZB;LeD;)V

    return-void

    .line 25
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No task registered for "

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26
    iget-object p1, p1, LyD;->d:Ljava/lang/String;

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v3

    .line 28
    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 29
    iget-object v4, v4, LsC;->b:LZB;

    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    invoke-static {p1}, LPE;->b([B)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 31
    check-cast v4, LgC;

    const-string p1, "Failed parsing SchedulerEvent from %s: %s"

    invoke-virtual {v4, p1, v0}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/IntentService;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/IntentService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/IntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/IntentService;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 10

    const-string v0, "ipcinv-scheduler"

    const-string v1, "ipcinv-internal-downcall"

    const-string v2, "Resources stopped"

    const-string v3, "ipcinv-downcall"

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v4, LaD;

    invoke-direct {v4}, LaD;-><init>()V

    .line 2
    new-instance v5, LlD;

    const/4 v6, 0x0

    const-string v7, "TiclService"

    invoke-direct {v5, p0, v4, v7, v6}, LlD;-><init>(Landroid/content/Context;LbD;Ljava/lang/String;LkD;)V

    .line 3
    iput-object v5, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 4
    iget-object v4, v5, LsC;->e:LPC;

    invoke-virtual {v4}, LPC;->c()V

    .line 5
    iget-object v4, v5, LsC;->b:LZB;

    const/4 v5, 0x0

    new-array v7, v5, [Ljava/lang/Object;

    check-cast v4, LgC;

    const-string v8, "Resources started"

    invoke-virtual {v4, v8, v7}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v4, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 7
    iget-object v4, v4, LsC;->b:LZB;

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object p1, v8, v5

    .line 8
    check-cast v4, LgC;

    const-string v9, "onHandleIntent(%s)"

    invoke-virtual {v4, v9, v8}, LgC;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a([B)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->b([B)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->c([B)V

    goto :goto_0

    :cond_3
    const-string v0, "ipcinv-implicit-scheduler"

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->a()V

    goto :goto_0

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 18
    iget-object v0, v0, LsC;->b:LZB;

    const-string v1, "Received Intent without any recognized extras: %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    check-cast v0, LgC;

    :try_start_1
    invoke-virtual {v0, v1, v3}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 21
    iget-object v0, p1, LsC;->e:LPC;

    invoke-virtual {v0}, LPC;->d()V

    .line 22
    iget-object p1, p1, LsC;->b:LZB;

    new-array v0, v5, [Ljava/lang/Object;

    check-cast p1, LgC;

    invoke-virtual {p1, v2, v0}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iput-object v6, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    return-void

    :catchall_0
    move-exception p1

    .line 24
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    .line 25
    iget-object v1, v0, LsC;->e:LPC;

    invoke-virtual {v1}, LPC;->d()V

    .line 26
    iget-object v0, v0, LsC;->b:LZB;

    new-array v1, v5, [Ljava/lang/Object;

    check-cast v0, LgC;

    invoke-virtual {v0, v2, v1}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iput-object v6, p0, Lcom/google/ipc/invalidation/ticl/android2/TiclService;->w:LlD;

    throw p1
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/IntentService;->setTheme(I)V

    return-void
.end method
