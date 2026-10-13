.class public final LcD;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LdC;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/TreeMap;

.field public final c:Landroid/content/Context;

.field public final d:LbD;

.field public e:LZB;

.field public f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;LbD;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LcD;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, LcD;->b:Ljava/util/TreeMap;

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, LcD;->f:J

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    iput-object p1, p0, LcD;->c:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 6
    iput-object p2, p0, LcD;->d:LbD;

    return-void

    .line 7
    :cond_0
    throw v0

    .line 8
    :cond_1
    throw v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 14
    iget-object v0, p0, LcD;->d:LbD;

    check-cast v0, LaD;

    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method public a(ILjava/lang/Runnable;)V
    .locals 4

    .line 4
    instance-of v0, p2, LVE;

    if-eqz v0, :cond_2

    .line 5
    check-cast p2, LVE;

    .line 6
    iget-object p2, p2, LVE;->w:Ljava/lang/String;

    .line 7
    iget-object v0, p0, LcD;->d:LbD;

    check-cast v0, LaD;

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    :goto_0
    add-long/2addr v0, v2

    .line 9
    iget-object p1, p0, LcD;->b:Ljava/util/TreeMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, LcD;->b:Ljava/util/TreeMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, LcD;->c()V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 12
    throw p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported: can only schedule named runnables, not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(LfC;)V
    .locals 0

    .line 1
    check-cast p1, LsC;

    .line 2
    iget-object p1, p1, LsC;->b:LZB;

    .line 3
    invoke-static {p1}, LWE;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, LZB;

    iput-object p1, p0, LcD;->e:LZB;

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 8

    .line 1
    iget-object v0, p0, LcD;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, LWE;->b(Z)V

    .line 2
    iget-object v0, p0, LcD;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 3
    invoke-static {}, LjD;->a()Landroid/content/Intent;

    move-result-object v2

    .line 4
    iget-object v3, p0, LcD;->c:Landroid/content/Context;

    const-class v4, Lcom/google/ipc/invalidation/ticl/android2/AndroidInternalScheduler$AlarmReceiver;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5
    iget-object v3, p0, LcD;->c:Landroid/content/Context;

    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 6
    iget-object v3, p0, LcD;->c:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 7
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v1, v6, v7, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    iget-object v2, p0, LcD;->e:LZB;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v5

    check-cast v2, LgC;

    const-string v0, "Unable to schedule delayed registration: %s"

    invoke-virtual {v2, v0, v1}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, LcD;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LcD;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, LcD;->d:LbD;

    check-cast v2, LaD;

    if-eqz v2, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 3
    iget-object v0, p0, LcD;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 4
    iget-object v1, p0, LcD;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, LcD;->e:LZB;

    const-string v2, "No task registered for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v1, LgC;

    :try_start_1
    invoke-virtual {v1, v2, v3}, LgC;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 9
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_2
    iget-object v0, p0, LcD;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    invoke-virtual {p0}, LcD;->c()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 12
    iget-object v1, p0, LcD;->b:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 13
    invoke-virtual {p0}, LcD;->c()V

    :cond_4
    throw v0
.end method
