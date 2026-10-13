.class public Lgb0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LPw;


# instance fields
.field public a:LZa0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LZa0;

    invoke-direct {v0, p1}, LZa0;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    iput-object v0, p0, Lgb0;->a:LZa0;

    return-void
.end method


# virtual methods
.method public a(LJw;LJx;)V
    .locals 4

    .line 6
    iget-object v0, p0, Lgb0;->a:LZa0;

    if-nez v0, :cond_0

    .line 7
    sget-object p1, Lxw;->c:Lxw;

    invoke-interface {p2, p1}, LJx;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_0
    new-instance v1, Lcb0;

    invoke-direct {v1, p2}, Lcb0;-><init>(LJx;)V

    .line 9
    iget-wide v2, v0, LZa0;->a:J

    .line 10
    iget-object p2, p1, LJw;->a:Ljava/lang/String;

    .line 11
    invoke-static {v2, v3, v0, p2}, LJ/N;->MG_0AdKn(JLjava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p1, p1, LJw;->b:Ljava/util/List;

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LOw;

    .line 14
    iget v2, p2, LOw;->a:I

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 p2, 0x2

    if-eq v2, p2, :cond_1

    .line 15
    iget-wide p1, v0, LZa0;->a:J

    .line 16
    invoke-static {p1, p2, v0}, LJ/N;->Mbq0oH4Z(JLjava/lang/Object;)V

    const/4 p1, 0x0

    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 18
    :cond_1
    iget-wide v2, v0, LZa0;->a:J

    .line 19
    invoke-static {v2, v3, v0}, LJ/N;->MnIrColc(JLjava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_2
    check-cast p2, LMw;

    const/4 p1, 0x0

    .line 21
    throw p1

    .line 22
    :cond_3
    check-cast p2, LLw;

    .line 23
    iget-wide v2, v0, LZa0;->a:J

    .line 24
    iget-object p2, p2, LLw;->b:[B

    .line 25
    invoke-static {v2, v3, v0, p2}, LJ/N;->MgYNPo4p(JLjava/lang/Object;[B)V

    goto :goto_0

    .line 26
    :cond_4
    iget-wide p1, v0, LZa0;->a:J

    .line 27
    invoke-static {p1, p2, v0, v1}, LJ/N;->MZN_ZnLz(JLjava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public a(LJx;)V
    .locals 5

    .line 28
    iget-object v0, p0, Lgb0;->a:LZa0;

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v0

    invoke-interface {p1, v0}, LJx;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Ldb0;

    invoke-direct {v1, p1}, Ldb0;-><init>(LJx;)V

    new-instance v2, Leb0;

    invoke-direct {v2, p1}, Leb0;-><init>(LJx;)V

    .line 31
    iget-wide v3, v0, LZa0;->a:J

    .line 32
    invoke-static {v3, v4, v0, v1, v2}, LJ/N;->MrEnIIPF(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;LJx;)V
    .locals 6

    .line 1
    iget-object v2, p0, Lgb0;->a:LZa0;

    if-nez v2, :cond_0

    .line 2
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object p1

    invoke-interface {p2, p1}, LJx;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v4, Lab0;

    invoke-direct {v4, p2}, Lab0;-><init>(LJx;)V

    new-instance v5, Lbb0;

    invoke-direct {v5, p2}, Lbb0;-><init>(LJx;)V

    .line 4
    iget-wide v0, v2, LZa0;->a:J

    move-object v3, p1

    .line 5
    invoke-static/range {v0 .. v5}, LJ/N;->MgfVdXhE(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
