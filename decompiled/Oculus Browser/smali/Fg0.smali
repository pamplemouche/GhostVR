.class public LFg0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/util/LinkedList;

.field public volatile b:Z

.field public final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LFg0;->a:Ljava/util/LinkedList;

    .line 3
    new-instance v0, LDg0;

    invoke-direct {v0, p0}, LDg0;-><init>(LFg0;)V

    iput-object v0, p0, LFg0;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(LFW;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, LFg0;->b:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LFg0;->a:Ljava/util/LinkedList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must not call add() after start()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)V
    .locals 3

    .line 4
    iget-boolean v0, p0, LFg0;->b:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, LFg0;->b:Z

    .line 6
    iget-object v0, p0, LFg0;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, LFg0;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, LFW;

    new-instance v0, LEg0;

    invoke-direct {v0, p0}, LEg0;-><init>(LFg0;)V

    invoke-static {p1, v0}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, LFg0;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, LFW;

    iget-object v0, p0, LFg0;->c:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    .line 9
    invoke-static {p1, v0, v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    :goto_0
    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call start() several times"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
