.class public final LCb;
.super LXa;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field public e:I

.field public f:LBb;

.field public g:I

.field public final synthetic h:LFb;


# direct methods
.method public constructor <init>(LFb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LCb;->h:LFb;

    invoke-direct {p0}, LXa;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, LCb;->d:I

    .line 3
    iput-object p2, p0, LCb;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, LCb;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 17
    iget-object v0, p0, LCb;->h:LFb;

    .line 18
    iget-object v1, v0, LFb;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {p0}, LCb;->d()V

    .line 20
    invoke-virtual {v0}, LFb;->e()V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 21
    iget-object v0, p0, LCb;->f:LBb;

    if-eqz v0, :cond_0

    .line 22
    iget v1, p0, LCb;->g:I

    invoke-virtual {v0, v1, p1}, LBb;->a(II)V

    goto :goto_0

    .line 23
    :cond_0
    iput p1, p0, LCb;->d:I

    const/4 p1, 0x0

    .line 24
    iput p1, p0, LCb;->e:I

    :goto_0
    return-void
.end method

.method public a(LBb;)V
    .locals 9

    .line 1
    iput-object p1, p0, LCb;->f:LBb;

    .line 2
    iget-object v0, p0, LCb;->a:Ljava/lang/String;

    iget-object v1, p0, LCb;->b:Ljava/lang/String;

    .line 3
    iget v8, p1, LBb;->A:I

    add-int/lit8 v2, v8, 0x1

    iput v2, p1, LBb;->A:I

    .line 4
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v2, "routeId"

    .line 5
    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "routeGroupId"

    .line 6
    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget v4, p1, LBb;->z:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p1, LBb;->z:I

    const/4 v6, 0x0

    const/4 v3, 0x3

    move-object v2, p1

    move v5, v8

    invoke-virtual/range {v2 .. v7}, LBb;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 8
    iput v8, p0, LCb;->g:I

    .line 9
    iget-boolean v0, p0, LCb;->c:Z

    if-eqz v0, :cond_1

    .line 10
    iget v4, p1, LBb;->z:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p1, LBb;->z:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x5

    move-object v2, p1

    move v5, v8

    invoke-virtual/range {v2 .. v7}, LBb;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 11
    iget v0, p0, LCb;->d:I

    if-ltz v0, :cond_0

    .line 12
    iget v1, p0, LCb;->g:I

    invoke-virtual {p1, v1, v0}, LBb;->a(II)V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, LCb;->d:I

    .line 14
    :cond_0
    iget v0, p0, LCb;->e:I

    if-eqz v0, :cond_1

    .line 15
    iget v1, p0, LCb;->g:I

    invoke-virtual {p1, v1, v0}, LBb;->b(II)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, LCb;->e:I

    :cond_1
    return-void
.end method

.method public b()V
    .locals 7

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, LCb;->c:Z

    .line 2
    iget-object v1, p0, LCb;->f:LBb;

    if-eqz v1, :cond_0

    .line 3
    iget v4, p0, LCb;->g:I

    .line 4
    iget v3, v1, LBb;->z:I

    add-int/lit8 v0, v3, 0x1

    iput v0, v1, LBb;->z:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x5

    invoke-virtual/range {v1 .. v6}, LBb;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 7

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, LCb;->c:Z

    .line 6
    iget-object v1, p0, LCb;->f:LBb;

    if-eqz v1, :cond_1

    .line 7
    iget v4, p0, LCb;->g:I

    if-eqz v1, :cond_0

    .line 8
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "unselectReason"

    .line 9
    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    iget v3, v1, LBb;->z:I

    add-int/lit8 p1, v3, 0x1

    iput p1, v1, LBb;->z:I

    const/4 v5, 0x0

    const/4 v2, 0x6

    invoke-virtual/range {v1 .. v6}, LBb;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 11
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, LCb;->b(I)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 2
    iget-object v0, p0, LCb;->f:LBb;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, LCb;->g:I

    invoke-virtual {v0, v1, p1}, LBb;->b(II)V

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, LCb;->e:I

    add-int/2addr v0, p1

    iput v0, p0, LCb;->e:I

    :goto_0
    return-void
.end method

.method public d()V
    .locals 6

    .line 1
    iget-object v0, p0, LCb;->f:LBb;

    if-eqz v0, :cond_0

    .line 2
    iget v3, p0, LCb;->g:I

    .line 3
    iget v2, v0, LBb;->z:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, LBb;->z:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x4

    invoke-virtual/range {v0 .. v5}, LBb;->a(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LCb;->f:LBb;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, LCb;->g:I

    :cond_0
    return-void
.end method
