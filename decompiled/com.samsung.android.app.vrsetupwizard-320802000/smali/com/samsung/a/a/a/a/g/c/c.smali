.class public Lcom/samsung/a/a/a/a/g/c/c;
.super Lcom/samsung/a/a/a/a/g/a;


# static fields
.field private static j:J = 0x493e0L


# instance fields
.field private g:Lcom/samsung/a/a/a/a/g/c/a;

.field private h:Z

.field private i:I

.field private k:Landroid/content/Intent;

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/a/a/a/c;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/a/a/a/a/g/a;-><init>(Landroid/content/Context;Lcom/samsung/a/a/a/c;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/a/a/a/a/g/c/c;->h:Z

    iput p2, p0, Lcom/samsung/a/a/a/a/g/c/c;->i:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/a/a/a/a/g/c/c;->k:Landroid/content/Intent;

    iput-object p2, p0, Lcom/samsung/a/a/a/a/g/c/c;->l:Landroid/content/BroadcastReceiver;

    new-instance p2, Lcom/samsung/a/a/a/a/g/c/a;

    new-instance v0, Lcom/samsung/a/a/a/a/g/c/d;

    invoke-direct {v0, p0, p1}, Lcom/samsung/a/a/a/a/g/c/d;-><init>(Lcom/samsung/a/a/a/a/g/c/c;Landroid/content/Context;)V

    invoke-direct {p2, p1, v0}, Lcom/samsung/a/a/a/a/g/c/a;-><init>(Landroid/content/Context;Lcom/samsung/a/a/a/a/a;)V

    iput-object p2, p0, Lcom/samsung/a/a/a/a/g/c/c;->g:Lcom/samsung/a/a/a/a/g/c/a;

    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/c/c;->g:Lcom/samsung/a/a/a/a/g/c/a;

    invoke-virtual {p1}, Lcom/samsung/a/a/a/a/g/c/a;->a()Z

    return-void
.end method

.method private a()V
    .locals 6

    iget v0, p0, Lcom/samsung/a/a/a/a/g/c/c;->i:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/c/c;->e:Lcom/samsung/a/a/a/a/g/d/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/g/d/a;->c()Ljava/util/Queue;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/a/a/a/a/g/c/c;->f:Lcom/samsung/a/a/a/a/d/c;

    new-instance v2, Lcom/samsung/a/a/a/a/g/c/f;

    iget-object v3, p0, Lcom/samsung/a/a/a/a/g/c/c;->g:Lcom/samsung/a/a/a/a/g/c/a;

    invoke-virtual {v3}, Lcom/samsung/a/a/a/a/g/c/a;->d()Lcom/sec/android/diagmonagent/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/a/a/a/a/g/c/c;->b:Lcom/samsung/a/a/a/c;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/a/a/a/a/g/f;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/a/a/a/a/g/c/f;-><init>(Lcom/sec/android/diagmonagent/a/a;Lcom/samsung/a/a/a/c;Lcom/samsung/a/a/a/a/g/f;)V

    invoke-interface {v1, v2}, Lcom/samsung/a/a/a/a/d/c;->a(Lcom/samsung/a/a/a/a/d/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/c/c;->k:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".SA_TIMER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/a/a/a/a/g/c/c;->k:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Lcom/samsung/a/a/a/a/g/c/g;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/a/a/a/a/g/c/c;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/c/c;->k:Landroid/content/Intent;

    sget-wide v1, Lcom/samsung/a/a/a/a/g/c/c;->j:J

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/a/a/a/a/g/c/g;->a(Landroid/content/Context;Landroid/content/Intent;J)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/a/a/a/a/g/c/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/a/a/a/a/g/c/c;->b()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/a/a/a/a/g/c/c;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/a/a/a/a/g/c/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method private b()V
    .locals 5

    new-instance v0, Lcom/samsung/a/a/a/a/j/b;

    invoke-direct {v0}, Lcom/samsung/a/a/a/a/j/b;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/samsung/a/a/a/a/g/c/c;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v2}, Lcom/samsung/a/a/a/a/b/a;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "av"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/a/a/a/a/g/c/c;->b:Lcom/samsung/a/a/a/c;

    invoke-virtual {v2}, Lcom/samsung/a/a/a/c;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uv"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/samsung/a/a/a/a/j/c;->a:Lcom/samsung/a/a/a/a/j/c;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/a/a/a/a/j/b;->a(Ljava/util/Map;Lcom/samsung/a/a/a/a/j/c;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/samsung/a/a/a/a/g/c/c;->b:Lcom/samsung/a/a/a/c;

    invoke-virtual {v3}, Lcom/samsung/a/a/a/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/a/a/a/a/g/c/c;->b:Lcom/samsung/a/a/a/c;

    invoke-virtual {v3}, Lcom/samsung/a/a/a/c;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "auid"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/a/a/a/a/g/c/c;->b:Lcom/samsung/a/a/a/c;

    invoke-virtual {v3}, Lcom/samsung/a/a/a/c;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "at"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/a/a/a/a/j/c;->a:Lcom/samsung/a/a/a/a/j/c;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/a/a/a/a/j/b;->a(Ljava/util/Map;Lcom/samsung/a/a/a/a/j/c;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/a/a/a/a/g/c/c;->g:Lcom/samsung/a/a/a/a/g/c/a;

    invoke-virtual {v2}, Lcom/samsung/a/a/a/a/g/c/a;->d()Lcom/sec/android/diagmonagent/a/a;

    move-result-object v2

    sget-object v3, Lcom/samsung/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/e/b;

    invoke-virtual {v3}, Lcom/samsung/a/a/a/a/e/b;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/a/a/a/a/g/c/c;->b:Lcom/samsung/a/a/a/c;

    invoke-virtual {v4}, Lcom/samsung/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1, v0}, Lcom/sec/android/diagmonagent/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/a/a/a/a/g/c/c;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    const/16 v0, -0x9

    iput v0, p0, Lcom/samsung/a/a/a/a/g/c/c;->i:I

    :goto_1
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/c/c;->l:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/a/a/a/a/g/c/e;

    invoke-direct {v0, p0}, Lcom/samsung/a/a/a/a/g/c/e;-><init>(Lcom/samsung/a/a/a/a/g/c/c;)V

    iput-object v0, p0, Lcom/samsung/a/a/a/a/g/c/c;->l:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/c/c;->l:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".SA_TIMER"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/a/a/a/a/g/c/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/a/a/a/a/g/c/c;->a()V

    return-void
.end method

.method static synthetic c(Lcom/samsung/a/a/a/a/g/c/c;)Lcom/samsung/a/a/a/a/g/c/a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/a/a/a/a/g/c/c;->g:Lcom/samsung/a/a/a/a/g/c/a;

    return-object p0
.end method


# virtual methods
.method public e(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/c/c;->g:Lcom/samsung/a/a/a/a/g/c/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/g/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x8

    return p1

    :cond_0
    iget v0, p0, Lcom/samsung/a/a/a/a/g/c/c;->i:I

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/a/a/a/a/g/c/c;->c(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/c/c;->g:Lcom/samsung/a/a/a/a/g/c/a;

    invoke-virtual {p1}, Lcom/samsung/a/a/a/a/g/c/a;->e()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/c/c;->g:Lcom/samsung/a/a/a/a/g/c/a;

    invoke-virtual {p1}, Lcom/samsung/a/a/a/a/g/c/a;->a()Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/c/c;->g:Lcom/samsung/a/a/a/a/g/c/a;

    invoke-virtual {p1}, Lcom/samsung/a/a/a/a/g/c/a;->d()Lcom/sec/android/diagmonagent/a/a;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/c/c;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/a/a/a/a/g/c/c;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/a/a/a/a/g/c/c;->a()V

    iget-boolean p1, p0, Lcom/samsung/a/a/a/a/g/c/c;->h:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/samsung/a/a/a/a/g/c/c;->b()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/a/a/a/a/g/c/c;->h:Z

    :cond_3
    :goto_0
    iget p1, p0, Lcom/samsung/a/a/a/a/g/c/c;->i:I

    return p1
.end method

.method public f(Ljava/util/Map;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/a/a/a/a/g/c/c;->e(Ljava/util/Map;)I

    move-result p1

    return p1
.end method
