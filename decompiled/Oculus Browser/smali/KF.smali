.class public LKF;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/Iterator;

.field public b:Ljava/util/Map$Entry;

.field public final c:Z

.field public final synthetic d:LLF;


# direct methods
.method public synthetic constructor <init>(LLF;ZLEF;)V
    .locals 0

    .line 1
    iput-object p1, p0, LKF;->d:LLF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p0, LKF;->d:LLF;

    iget-object p1, p1, LLF;->z:LDF;

    .line 3
    invoke-virtual {p1}, LDF;->a()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, LKF;->a:Ljava/util/Iterator;

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, LKF;->a:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, LKF;->b:Ljava/util/Map$Entry;

    .line 6
    :cond_0
    iput-boolean p2, p0, LKF;->c:Z

    return-void
.end method


# virtual methods
.method public a(ILxF;)V
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, LKF;->b:Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNF;

    .line 2
    iget v0, v0, LNF;->x:I

    if-ge v0, p1, :cond_2

    .line 3
    iget-object v0, p0, LKF;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNF;

    .line 4
    iget-boolean v1, p0, LKF;->c:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, LNF;->y:LJG;

    .line 6
    iget-object v1, v1, LJG;->w:LKG;

    .line 7
    sget-object v2, LKG;->E:LKG;

    if-ne v1, v2, :cond_0

    .line 8
    iget-boolean v1, v0, LNF;->z:Z

    if-nez v1, :cond_0

    .line 9
    iget v0, v0, LNF;->x:I

    .line 10
    iget-object v1, p0, LKF;->b:Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LhG;

    .line 12
    move-object v2, p2

    check-cast v2, LvF;

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 13
    invoke-virtual {v2, v4, v3}, LvF;->c(II)V

    const/4 v5, 0x2

    .line 14
    invoke-virtual {v2, v5, v0}, LvF;->d(II)V

    .line 15
    invoke-virtual {v2, v3, v1}, LvF;->a(ILhG;)V

    const/4 v0, 0x4

    .line 16
    invoke-virtual {v2, v4, v0}, LvF;->c(II)V

    goto :goto_1

    .line 17
    :cond_0
    iget-object v1, p0, LKF;->b:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, LDF;->a(LCF;Ljava/lang/Object;LxF;)V

    .line 18
    :goto_1
    iget-object v0, p0, LKF;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, LKF;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, LKF;->b:Ljava/util/Map$Entry;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, LKF;->b:Ljava/util/Map$Entry;

    goto :goto_0

    :cond_2
    return-void
.end method
