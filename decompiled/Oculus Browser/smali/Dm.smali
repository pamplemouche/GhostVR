.class public abstract LDm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lym;

.field public final c:Lum;

.field public final d:Loo;

.field public final e:Landroid/os/Looper;

.field public final f:I

.field public final g:Ljn;

.field public final h:LYm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lym;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null."

    invoke-static {p3, v0}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LDm;->a:Landroid/content/Context;

    iput-object p2, p0, LDm;->b:Lym;

    const/4 p1, 0x0

    iput-object p1, p0, LDm;->c:Lum;

    iput-object p3, p0, LDm;->e:Landroid/os/Looper;

    .line 1
    new-instance p1, Loo;

    invoke-direct {p1, p2}, Loo;-><init>(Lym;)V

    .line 2
    iput-object p1, p0, LDm;->d:Loo;

    new-instance p1, LXn;

    invoke-direct {p1, p0}, LXn;-><init>(LDm;)V

    iget-object p1, p0, LDm;->a:Landroid/content/Context;

    invoke-static {p1}, LYm;->a(Landroid/content/Context;)LYm;

    move-result-object p1

    iput-object p1, p0, LDm;->h:LYm;

    .line 3
    iget-object p1, p1, LYm;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    .line 4
    iput p1, p0, LDm;->f:I

    new-instance p1, LPm;

    invoke-direct {p1}, LPm;-><init>()V

    iput-object p1, p0, LDm;->g:Ljn;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lym;Lum;LCm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p4, v0}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LDm;->a:Landroid/content/Context;

    iput-object p2, p0, LDm;->b:Lym;

    iput-object p3, p0, LDm;->c:Lum;

    iget-object p1, p4, LCm;->b:Landroid/os/Looper;

    iput-object p1, p0, LDm;->e:Landroid/os/Looper;

    .line 5
    new-instance p1, Loo;

    invoke-direct {p1, p2, p3}, Loo;-><init>(Lym;Lum;)V

    .line 6
    iput-object p1, p0, LDm;->d:Loo;

    new-instance p1, LXn;

    invoke-direct {p1, p0}, LXn;-><init>(LDm;)V

    iget-object p1, p0, LDm;->a:Landroid/content/Context;

    invoke-static {p1}, LYm;->a(Landroid/content/Context;)LYm;

    move-result-object p1

    iput-object p1, p0, LDm;->h:LYm;

    .line 7
    iget-object p1, p1, LYm;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    .line 8
    iput p1, p0, LDm;->f:I

    iget-object p1, p4, LCm;->a:Ljn;

    iput-object p1, p0, LDm;->g:Ljn;

    iget-object p1, p0, LDm;->h:LYm;

    .line 9
    iget-object p1, p1, LYm;->m:Landroid/os/Handler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public a(LSm;)LSm;
    .locals 4

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f()V

    iget-object v0, p0, LDm;->h:LYm;

    if-eqz v0, :cond_0

    .line 9
    new-instance v1, Llo;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Llo;-><init>(ILSm;)V

    iget-object v2, v0, LYm;->m:Landroid/os/Handler;

    new-instance v3, Lao;

    iget-object v0, v0, LYm;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {v3, v1, v0, p0}, Lao;-><init>(LIn;ILDm;)V

    const/4 v0, 0x4

    invoke-virtual {v2, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public a()LTo;
    .locals 3

    new-instance v0, LTo;

    invoke-direct {v0}, LTo;-><init>()V

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, LTo;->a:Landroid/accounts/Account;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 3
    iget-object v2, v0, LTo;->b:LL6;

    if-nez v2, :cond_0

    new-instance v2, LL6;

    invoke-direct {v2}, LL6;-><init>()V

    iput-object v2, v0, LTo;->b:LL6;

    :cond_0
    iget-object v2, v0, LTo;->b:LL6;

    invoke-virtual {v2, v1}, LL6;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v1, p0, LDm;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5
    iput-object v1, v0, LTo;->e:Ljava/lang/String;

    .line 6
    iget-object v1, p0, LDm;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 7
    iput-object v1, v0, LTo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Handler;)Lco;
    .locals 3

    new-instance v0, Lco;

    invoke-virtual {p0}, LDm;->a()LTo;

    move-result-object v1

    invoke-virtual {v1}, LTo;->a()LVo;

    move-result-object v1

    .line 12
    sget-object v2, Lco;->h:Lom;

    invoke-direct {v0, p1, p2, v1, v2}, Lco;-><init>(Landroid/content/Context;Landroid/os/Handler;LVo;Lom;)V

    return-object v0
.end method

.method public a(Landroid/os/Looper;LVm;)Lwm;
    .locals 8

    invoke-virtual {p0}, LDm;->a()LTo;

    move-result-object v0

    invoke-virtual {v0}, LTo;->a()LVo;

    move-result-object v4

    iget-object v0, p0, LDm;->b:Lym;

    .line 10
    iget-object v1, v0, Lym;->a:Lom;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v1, v2}, Lxp;->b(ZLjava/lang/Object;)V

    iget-object v1, v0, Lym;->a:Lom;

    .line 11
    iget-object v2, p0, LDm;->a:Landroid/content/Context;

    iget-object v5, p0, LDm;->c:Lum;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lom;->a(Landroid/content/Context;Landroid/os/Looper;LVo;Ljava/lang/Object;LFm;LGm;)Lwm;

    move-result-object p1

    return-object p1
.end method
