.class public abstract LYa;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LWa;

.field public final c:LVa;

.field public d:LUa;

.field public e:LTa;

.field public f:Z

.field public g:LZa;

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;LWa;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LVa;

    invoke-direct {v0, p0}, LVa;-><init>(LYa;)V

    iput-object v0, p0, LYa;->c:LVa;

    if-eqz p1, :cond_1

    .line 3
    iput-object p1, p0, LYa;->a:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 4
    new-instance p2, LWa;

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p2, v0}, LWa;-><init>(Landroid/content/ComponentName;)V

    iput-object p2, p0, LYa;->b:LWa;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p2, p0, LYa;->b:LWa;

    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)LXa;
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)LXa;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p0, p1}, LYa;->a(Ljava/lang/String;)LXa;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "routeGroupId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "routeId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a(LTa;)V
.end method

.method public final a(LZa;)V
    .locals 1

    .line 1
    invoke-static {}, Lrb;->e()V

    .line 2
    iget-object v0, p0, LYa;->g:LZa;

    if-eq v0, p1, :cond_0

    .line 3
    iput-object p1, p0, LYa;->g:LZa;

    .line 4
    iget-boolean p1, p0, LYa;->h:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, LYa;->h:Z

    .line 6
    iget-object v0, p0, LYa;->c:LVa;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final b(LTa;)V
    .locals 1

    .line 1
    invoke-static {}, Lrb;->e()V

    .line 2
    iget-object v0, p0, LYa;->e:LTa;

    .line 3
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, LYa;->e:LTa;

    .line 5
    iget-boolean p1, p0, LYa;->f:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, LYa;->f:Z

    .line 7
    iget-object p1, p0, LYa;->c:LVa;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
