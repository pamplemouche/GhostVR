.class public final synthetic LvN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LBN0;


# direct methods
.method public constructor <init>(LBN0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LvN0;->a:LBN0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, LvN0;->a:LBN0;

    check-cast p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LrO0;

    .line 3
    new-instance v3, LkO0;

    invoke-virtual {v2}, LrO0;->j()LnO0;

    move-result-object v4

    .line 4
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    iget-wide v6, v4, LnO0;->A:J

    .line 6
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    iget v4, v4, LnO0;->B:I

    int-to-long v8, v4

    .line 8
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 9
    iget-object v4, v2, LrO0;->A:Ljava/lang/String;

    .line 10
    iget v2, v2, LrO0;->C:I

    invoke-static {v2}, LqO0;->a(I)LqO0;

    move-result-object v2

    if-nez v2, :cond_0

    .line 11
    sget-object v2, LqO0;->x:LqO0;

    .line 12
    :cond_0
    iget v2, v2, LqO0;->w:I

    .line 13
    invoke-direct {v3, v7, v8, v4, v2}, LkO0;-><init>(JLjava/lang/String;I)V

    .line 14
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, v0, LBN0;->b:LnU;

    invoke-virtual {p1, v1}, LnU;->a(Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 16
    throw p1
.end method
