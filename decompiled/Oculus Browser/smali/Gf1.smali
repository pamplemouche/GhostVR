.class public LGf1;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:LFW;

.field public d:LCW;

.field public e:I

.field public f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(LFW;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LGf1;->f:Ljava/util/HashMap;

    .line 3
    iput-object p1, p0, LGf1;->c:LFW;

    .line 4
    iput-object p2, p0, LGf1;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, LGf1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 5

    .line 11
    iget-object v0, p0, LGf1;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object v0, p0, LGf1;->f:Ljava/util/HashMap;

    .line 13
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, LGf1;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [LEf1;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LEf1;

    .line 14
    iget-object v1, p0, LGf1;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 15
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 16
    invoke-virtual {v3, v4, v4}, LEf1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_1
    new-instance v1, LAf1;

    invoke-direct {v1, v0, p1}, LAf1;-><init>([LEf1;Landroid/content/Context;)V

    .line 18
    new-instance p1, LBf1;

    invoke-direct {p1, p0}, LBf1;-><init>(LGf1;)V

    .line 19
    invoke-virtual {p0, v1, p1}, LGf1;->a(Ljava/util/concurrent/Callable;Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;LFf1;)V
    .locals 2

    .line 1
    iget-object v0, p0, LGf1;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LEf1;

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, v0, LEf1;->c:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p3, p1}, LFf1;->a(Landroid/os/IBinder;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, v0, LEf1;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance v0, LEf1;

    invoke-direct {v0, p0}, LEf1;-><init>(LGf1;)V

    .line 6
    iget-object v1, p0, LGf1;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, v0, LEf1;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance p3, Lyf1;

    invoke-direct {p3, p0, p2, p1, v0}, Lyf1;-><init>(LGf1;Ljava/lang/String;Landroid/content/Context;LEf1;)V

    .line 9
    new-instance p1, Lzf1;

    invoke-direct {p1, v0}, Lzf1;-><init>(LEf1;)V

    .line 10
    invoke-virtual {p0, p3, p1}, LGf1;->a(Ljava/util/concurrent/Callable;Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/Callable;Lorg/chromium/base/Callback;)V
    .locals 2

    .line 20
    iget v0, p0, LGf1;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LGf1;->e:I

    .line 21
    iget-object v0, p0, LGf1;->d:LCW;

    if-nez v0, :cond_0

    .line 22
    sget-object v0, LFW;->j:LFW;

    invoke-static {v0}, Lorg/chromium/base/task/PostTask;->a(LFW;)LuW;

    move-result-object v0

    iput-object v0, p0, LGf1;->d:LCW;

    .line 23
    :cond_0
    iget-object v0, p0, LGf1;->d:LCW;

    .line 24
    new-instance v1, LCf1;

    invoke-direct {v1, p0, p1, p2}, LCf1;-><init>(LGf1;Ljava/util/concurrent/Callable;Lorg/chromium/base/Callback;)V

    invoke-interface {v0, v1}, LCW;->a(Ljava/lang/Runnable;)V

    return-void
.end method
