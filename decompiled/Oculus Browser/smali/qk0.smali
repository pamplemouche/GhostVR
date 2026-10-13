.class public Lqk0;
.super LH5;
.source "PG"


# instance fields
.field public final synthetic e:Lxk0;


# direct methods
.method public constructor <init>(Lxk0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqk0;->e:Lxk0;

    invoke-direct {p0}, LH5;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lqk0;->e:Lxk0;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lxk0;->b(I)V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 2
    iget-object v0, p0, Lqk0;->e:Lxk0;

    .line 3
    iget-object v0, v0, Lxk0;->g:Lok0;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lok0;->m:Lpk0;

    invoke-interface {v0, p1, p2}, Lpk0;->a(J)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lqk0;->e:Lxk0;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lxk0;->c(I)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lqk0;->e:Lxk0;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lxk0;->d(I)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lqk0;->e:Lxk0;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lxk0;->b(I)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lqk0;->e:Lxk0;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lxk0;->b(I)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lqk0;->e:Lxk0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lxk0;->b(I)V

    return-void
.end method
