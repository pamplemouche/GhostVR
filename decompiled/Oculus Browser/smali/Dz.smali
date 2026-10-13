.class public LDz;
.super Lxz;
.source "PG"

# interfaces
.implements LJx;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Llw;

.field public final d:Lyz;

.field public final e:Lew;

.field public final f:Ljava/util/List;

.field public final g:Lxx;

.field public final h:Lrw;

.field public i:Z

.field public j:LVw;

.field public final synthetic k:LEz;


# direct methods
.method public synthetic constructor <init>(LEz;Ljava/lang/String;Llw;Lyz;Lew;Lxx;Lrw;Lwz;)V
    .locals 0

    .line 1
    iput-object p1, p0, LDz;->k:LEz;

    invoke-direct {p0, p1}, Lxz;-><init>(LEz;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LDz;->f:Ljava/util/List;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, LDz;->i:Z

    .line 4
    iput-object p2, p0, LDz;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, LDz;->c:Llw;

    .line 6
    iput-object p4, p0, LDz;->d:Lyz;

    .line 7
    iput-object p5, p0, LDz;->e:Lew;

    .line 8
    iput-object p6, p0, LDz;->g:Lxx;

    .line 9
    iput-object p7, p0, LDz;->h:Lrw;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lsx;

    .line 2
    iget-boolean v0, p1, Lsx;->b:Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 3
    iget-object p1, p0, LDz;->k:LEz;

    invoke-static {p1}, LEz;->a(LEz;)I

    .line 4
    iget-object p1, p0, LDz;->c:Llw;

    .line 5
    iget-object p1, p1, Llw;->b:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 6
    iget-object v3, p0, LDz;->k:LEz;

    .line 7
    iget-object v3, v3, LEz;->b:Lrz;

    .line 8
    invoke-virtual {v3, p1}, Lrz;->a(Ljava/lang/String;)Loz;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 9
    :goto_0
    iget-object v3, p0, LDz;->c:Llw;

    .line 10
    iget-object v3, v3, Llw;->a:LeJ;

    const/4 v4, 0x0

    const-string v5, "SessionManagerMutation"

    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    .line 11
    iget-object v1, v3, LeJ;->A:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string v1, "Error found with a token request %s"

    .line 12
    invoke-static {v5, v1, v0}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, LDz;->d:Lyz;

    new-instance v1, Lbx;

    const/4 v2, 0x2

    .line 14
    iget-object v3, v3, LeJ;->C:LrF;

    .line 15
    invoke-direct {v1, v2, v3}, Lbx;-><init>(ILrF;)V

    .line 16
    check-cast v0, Lfz;

    invoke-virtual {v0, p1, v1}, Lfz;->a(Loz;Lbx;)V

    goto :goto_2

    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "Unable to process PAGINATION_ERROR"

    .line 17
    invoke-static {v5, v0, p1}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "Update error, the update is being ignored"

    .line 18
    invoke-static {v5, v4, v3}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iget-object v3, p0, LDz;->d:Lyz;

    new-instance v4, Lbx;

    invoke-direct {v4, v2, v0}, Lbx;-><init>(ILrF;)V

    check-cast v3, Lfz;

    invoke-virtual {v3, p1, v4}, Lfz;->a(Loz;Lbx;)V

    .line 20
    iget-object p1, p0, LDz;->k:LEz;

    .line 21
    iget-object p1, p1, LEz;->d:LFx;

    const/16 v0, 0x19

    .line 22
    sget-object v2, Lzz;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1, v2}, LFx;->a(IILjava/lang/Runnable;)V

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {p1}, Lsx;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LVw;

    iput-object p1, p0, LDz;->j:LVw;

    .line 24
    iget-object p1, p1, LVw;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LzI;

    .line 25
    invoke-virtual {v0}, LzI;->k()LbJ;

    move-result-object v0

    invoke-virtual {v0}, LbJ;->m()LaJ;

    move-result-object v0

    sget-object v3, LaJ;->y:LaJ;

    if-ne v0, v3, :cond_4

    .line 26
    iput-boolean v2, p0, LDz;->i:Z

    .line 27
    :cond_5
    iget-object p1, p0, LDz;->c:Llw;

    if-eqz p1, :cond_6

    .line 28
    iget-boolean p1, p1, Llw;->c:Z

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    .line 29
    :cond_6
    iget-boolean p1, p0, LDz;->i:Z

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x4

    .line 30
    :goto_1
    iget-object p1, p0, LDz;->k:LEz;

    .line 31
    iget-object p1, p1, LEz;->d:LFx;

    const/4 v0, 0x5

    .line 32
    new-instance v2, LAz;

    invoke-direct {v2, p0}, LAz;-><init>(LDz;)V

    invoke-virtual {p1, v0, v1, v2}, LFx;->a(IILjava/lang/Runnable;)V

    :goto_2
    return-void
.end method
