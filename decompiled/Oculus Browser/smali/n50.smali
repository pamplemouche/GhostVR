.class public Ln50;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LI01;


# instance fields
.field public final synthetic a:Lo50;


# direct methods
.method public synthetic constructor <init>(Lo50;Lm50;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln50;->a:Lo50;

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
    iget-object p1, p0, Ln50;->a:Lo50;

    .line 2
    iget-object p1, p1, Lo50;->b:Lp50;

    .line 3
    invoke-interface {p1}, Lp50;->j()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln50;->a:Lo50;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 2
    iput-wide v1, v0, Lo50;->o:J

    .line 3
    iget-object v0, p0, Ln50;->a:Lo50;

    .line 4
    iget-object v1, v0, Lo50;->e:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 6
    iput-boolean v1, v0, Lo50;->p:Z

    return-void
.end method

.method public b(II)V
    .locals 0

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
    .locals 2

    .line 1
    iget-object p1, p0, Ln50;->a:Lo50;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iput-wide v0, p1, Lo50;->n:J

    .line 3
    iget-object p1, p0, Ln50;->a:Lo50;

    .line 4
    iget-object p1, p1, Lo50;->b:Lp50;

    .line 5
    invoke-interface {p1}, Lp50;->a()V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln50;->a:Lo50;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 2
    iput-wide v1, v0, Lo50;->n:J

    return-void
.end method

.method public e(II)V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method
