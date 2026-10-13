.class public LuS;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LjS;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/AlarmManager;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:LkS;

.field public j:LkS;

.field public final k:Landroid/os/Handler;

.field public final l:Ljava/util/Queue;

.field public final m:LHS;

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final o:Ljava/lang/Runnable;

.field public final p:LlS;

.field public final q:LnS;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LnS;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LpS;

    invoke-direct {v0, p0}, LpS;-><init>(LuS;)V

    iput-object v0, p0, LuS;->k:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, LuS;->l:Ljava/util/Queue;

    .line 4
    new-instance v0, LFS;

    .line 5
    sget-object v1, LCS;->c:Ljava/util/concurrent/Executor;

    .line 6
    invoke-direct {v0, v1}, LFS;-><init>(Ljava/util/concurrent/Executor;)V

    .line 7
    new-instance v1, LHS;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, LHS;-><init>(LFS;LES;)V

    .line 8
    iput-object v1, p0, LuS;->m:LHS;

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LuS;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LuS;->a:Landroid/content/Context;

    const-string v1, "alarm"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, LuS;->b:Landroid/app/AlarmManager;

    .line 12
    iput-object p2, p0, LuS;->c:Ljava/lang/String;

    .line 13
    iput-object p4, p0, LuS;->e:Ljava/lang/String;

    .line 14
    iput-object p3, p0, LuS;->d:Ljava/lang/String;

    .line 15
    iput-object p5, p0, LuS;->f:Ljava/lang/String;

    .line 16
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p3, "0"

    if-eqz p2, :cond_0

    move-object p7, p3

    .line 17
    :cond_0
    iput-object p7, p0, LuS;->g:Ljava/lang/String;

    .line 18
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, p8

    .line 19
    :goto_0
    iput-object p3, p0, LuS;->h:Ljava/lang/String;

    .line 20
    new-instance p2, LqS;

    invoke-direct {p2, p0, v2}, LqS;-><init>(LuS;LpS;)V

    iput-object p2, p0, LuS;->o:Ljava/lang/Runnable;

    .line 21
    new-instance p2, LlS;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, LlS;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, LuS;->p:LlS;

    .line 22
    iput-object p6, p0, LuS;->q:LnS;

    .line 23
    sget-object p1, LSS;->a:LTS;

    .line 24
    iget-object p2, p1, LTS;->b:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 25
    iget-object p1, p1, LTS;->b:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_2
    iget-object p1, p0, LuS;->i:LkS;

    if-eqz p1, :cond_3

    .line 27
    invoke-virtual {p0}, LuS;->a()V

    :cond_3
    const-string p1, "DefaultAnalyticsLogger"

    const-string p2, "Starting new session"

    .line 28
    invoke-static {p1, p2}, LgS;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance p1, LkS;

    invoke-direct {p1}, LkS;-><init>()V

    .line 30
    iget-object p2, p0, LuS;->d:Ljava/lang/String;

    .line 31
    iput-object p2, p1, LkS;->d:Ljava/lang/String;

    .line 32
    iget-object p2, p0, LuS;->e:Ljava/lang/String;

    .line 33
    iput-object p2, p1, LkS;->e:Ljava/lang/String;

    .line 34
    iget-object p2, p0, LuS;->h:Ljava/lang/String;

    .line 35
    iput-object p2, p1, LkS;->g:Ljava/lang/String;

    .line 36
    iget-object p2, p0, LuS;->g:Ljava/lang/String;

    .line 37
    iput-object p2, p1, LkS;->h:Ljava/lang/String;

    .line 38
    iget-object p2, p0, LuS;->f:Ljava/lang/String;

    .line 39
    iput-object p2, p1, LkS;->f:Ljava/lang/String;

    .line 40
    iget-object p2, p0, LuS;->c:Ljava/lang/String;

    .line 41
    iput-object p2, p1, LkS;->c:Ljava/lang/String;

    .line 42
    iput-object p1, p0, LuS;->i:LkS;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "DefaultAnalyticsLogger"

    .line 1
    iget-object v1, p0, LuS;->i:LkS;

    .line 2
    iget-object v1, v1, LkS;->j:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "Storing batch %s"

    .line 4
    iget-object v2, p0, LuS;->i:LkS;

    invoke-static {v0, v1, v2}, LgS;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, LuS;->p:LlS;

    iget-object v2, p0, LuS;->i:LkS;

    invoke-virtual {v1, v2}, LlS;->a(LkS;)Ljava/io/File;

    .line 6
    iget-object v1, p0, LuS;->i:LkS;

    .line 7
    iget-object v2, v1, LkS;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 8
    iget v2, v1, LkS;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, LkS;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to store batch"

    .line 9
    invoke-static {v0, v2, v1}, LgS;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    .line 16
    iget-object v0, p0, LuS;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, LuS;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    iget-object p1, p0, LuS;->m:LHS;

    iget-object v0, p0, LuS;->o:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, LHS;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 5

    if-nez p1, :cond_0

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x6ddd00

    add-long/2addr v0, v2

    .line 11
    iget-object p1, p0, LuS;->b:Landroid/app/AlarmManager;

    .line 12
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, LuS;->a:Landroid/content/Context;

    const-class v4, LmS;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    iget-object v3, p0, LuS;->a:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x2

    .line 14
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 15
    const-class p1, LuS;

    const-string v0, "scheduleUploadAlarm()"

    invoke-static {p1, v0}, LgS;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
