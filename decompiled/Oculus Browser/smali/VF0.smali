.class public LVF0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/util/Deque;

.field public b:Ljava/util/Deque;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LVF0;->a:Ljava/util/Deque;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LVF0;->b:Ljava/util/Deque;

    return-void
.end method

.method public static a(Ljava/util/Deque;LXF0;)Z
    .locals 3

    .line 10
    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LUF0;

    .line 13
    iget-object v2, v1, LUF0;->a:LXF0;

    if-eq v2, p1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 15
    iget-object v0, v1, LUF0;->e:Ljava/lang/Object;

    .line 16
    invoke-interface {p1, v0}, LXF0;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public a()LUF0;
    .locals 1

    .line 8
    iget-object v0, p0, LVF0;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUF0;

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, LVF0;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUF0;

    :cond_0
    return-object v0
.end method

.method public final a(Z)LUF0;
    .locals 2

    .line 1
    iget-object v0, p0, LVF0;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUF0;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LVF0;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LUF0;

    :cond_0
    if-eqz v0, :cond_2

    .line 3
    iget-object v1, v0, LUF0;->a:LXF0;

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, v0, LUF0;->e:Ljava/lang/Object;

    .line 5
    invoke-interface {v1, p1}, LXF0;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, v0, LUF0;->e:Ljava/lang/Object;

    .line 7
    invoke-interface {v1, p1}, LXF0;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, LVF0;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LVF0;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
