.class public Lmd0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LI01;


# instance fields
.field public final synthetic a:LH01;

.field public final synthetic b:Lnd0;


# direct methods
.method public constructor <init>(Lnd0;LH01;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmd0;->b:Lnd0;

    iput-object p2, p0, Lmd0;->a:LH01;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(FF)V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmd0;->g()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmd0;->g()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(II)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public d(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmd0;->g()V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public e(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmd0;->g()V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmd0;->b:Lnd0;

    .line 2
    iget-object v0, v0, Lnd0;->y:Lkd0;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lmd0;->a:LH01;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LH01;->a()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lmd0;->b:Lnd0;

    .line 5
    iget-object v1, v1, Lnd0;->y:Lkd0;

    .line 6
    invoke-virtual {v1, v0}, Lkd0;->onContentViewScrollingStateChanged(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method
