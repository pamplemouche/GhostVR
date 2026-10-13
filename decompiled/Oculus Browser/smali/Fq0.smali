.class public LFq0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lle1;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:LEq0;

.field public s:Landroid/content/res/Resources;

.field public t:LPJ0;

.field public u:LOp0;

.field public v:Ljava/lang/String;

.field public w:Z

.field public x:F

.field public final y:F

.field public final z:F


# direct methods
.method public constructor <init>(Lle1;Landroid/content/res/Resources;LOp0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, LFq0;->v:Ljava/lang/String;

    .line 3
    iput-object p1, p0, LFq0;->a:Lle1;

    .line 4
    new-instance p1, LEq0;

    invoke-direct {p1, p0}, LEq0;-><init>(LFq0;)V

    iput-object p1, p0, LFq0;->r:LEq0;

    .line 5
    invoke-virtual {p0}, LFq0;->a()V

    .line 6
    iput-object p2, p0, LFq0;->s:Landroid/content/res/Resources;

    .line 7
    iput-object p3, p0, LFq0;->u:LOp0;

    const p1, 0x7f07018f

    .line 8
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p3, p1

    const v0, 0x7f070295

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p1

    const p1, 0x7f070294

    .line 10
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    div-float/2addr p3, p1

    iput p3, p0, LFq0;->y:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p2, p3, p1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, p3

    .line 11
    :goto_0
    iput p1, p0, LFq0;->z:F

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 2
    iget-boolean v0, p0, LFq0;->b:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0600ad

    goto :goto_0

    :cond_0
    const v0, 0x7f0600ae

    :goto_0
    const/4 v1, 0x0

    .line 3
    iget-boolean v2, p0, LFq0;->f:Z

    if-eqz v2, :cond_2

    .line 4
    iget-boolean v1, p0, LFq0;->b:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0600f4

    goto :goto_1

    :cond_1
    const v1, 0x7f0600f5

    goto :goto_1

    .line 5
    :cond_2
    iget-boolean v2, p0, LFq0;->g:Z

    if-eqz v2, :cond_4

    .line 6
    iget-boolean v1, p0, LFq0;->b:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0600f2

    goto :goto_1

    :cond_3
    const v1, 0x7f0600f3

    .line 7
    :cond_4
    :goto_1
    iget-boolean v2, p0, LFq0;->b:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, LAO0;->b(Z)I

    move-result v2

    .line 8
    iget-object v3, p0, LFq0;->a:Lle1;

    sget-object v4, LGq0;->i:Lje1;

    invoke-virtual {v3, v4, v0}, Lle1;->a(Lje1;I)V

    .line 9
    iput v2, p0, LFq0;->q:I

    if-eqz v1, :cond_5

    .line 10
    iget-object v0, p0, LFq0;->a:Lle1;

    sget-object v2, LGq0;->k:Lje1;

    invoke-virtual {v0, v2, v1}, Lle1;->a(Lje1;I)V

    .line 11
    :cond_5
    invoke-virtual {p0}, LFq0;->b()V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LFq0;->a:Lle1;

    sget-object v1, LGq0;->f:Lhe1;

    invoke-virtual {v0, v1, p1}, Lle1;->a(Lhe1;Z)V

    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, LFq0;->a:Lle1;

    sget-object v1, LGq0;->h:Lje1;

    .line 2
    iget-boolean v2, p0, LFq0;->c:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, LFq0;->t:LPJ0;

    .line 4
    invoke-interface {v2}, LPJ0;->a()Z

    move-result v2

    .line 5
    invoke-static {v2}, Lyp0;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v2, p0, LFq0;->h:Z

    if-eqz v2, :cond_2

    const v2, 0x7f130121

    goto :goto_1

    .line 7
    :cond_1
    iget v2, p0, LFq0;->n:I

    if-eqz v2, :cond_2

    .line 8
    iget v2, p0, LFq0;->p:I

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 9
    :goto_1
    invoke-virtual {v0, v1, v2}, Lle1;->a(Lje1;I)V

    .line 10
    iget-boolean v0, p0, LFq0;->c:Z

    if-nez v0, :cond_3

    iget v0, p0, LFq0;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    .line 11
    :cond_3
    iget-boolean v0, p0, LFq0;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, LFq0;->t:LPJ0;

    if-eqz v0, :cond_5

    .line 12
    invoke-interface {v0}, LPJ0;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, LFq0;->r:LEq0;

    iget-object v2, p0, LFq0;->t:LPJ0;

    .line 13
    invoke-interface {v2}, LPJ0;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4

    .line 14
    invoke-static {v2}, Lyp0;->a(Ljava/lang/String;)Z

    goto :goto_2

    :cond_4
    throw v1

    .line 15
    :cond_5
    :goto_2
    iget-object v0, p0, LFq0;->t:LPJ0;

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 16
    invoke-interface {v0}, LPJ0;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 17
    :goto_3
    iget-object v4, p0, LFq0;->r:LEq0;

    if-eqz v4, :cond_c

    .line 18
    invoke-static {v0}, Lyp0;->a(Z)Z

    .line 19
    iput-boolean v2, p0, LFq0;->i:Z

    .line 20
    iget-boolean v0, p0, LFq0;->c:Z

    if-eqz v0, :cond_8

    .line 21
    iget-boolean v0, p0, LFq0;->h:Z

    if-eqz v0, :cond_9

    .line 22
    iget-boolean v0, p0, LFq0;->d:Z

    if-eqz v0, :cond_7

    const v0, 0x7f08028f

    goto :goto_4

    :cond_7
    const v0, 0x7f080201

    .line 23
    :goto_4
    iget v1, p0, LFq0;->q:I

    move v3, v1

    goto :goto_5

    .line 24
    :cond_8
    iget v0, p0, LFq0;->n:I

    if-eqz v0, :cond_9

    .line 25
    iget v3, p0, LFq0;->o:I

    const v1, 0x7f1303d0

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_5
    const/4 v1, 0x0

    .line 26
    :goto_6
    iget-boolean v2, p0, LFq0;->f:Z

    if-eqz v2, :cond_b

    .line 27
    iget-boolean v2, p0, LFq0;->b:Z

    if-eqz v2, :cond_a

    const v2, 0x7f0600f4

    const v3, 0x7f0600f4

    goto :goto_7

    :cond_a
    const v2, 0x7f0600f5

    const v3, 0x7f0600f5

    .line 28
    :cond_b
    :goto_7
    iget-object v2, p0, LFq0;->a:Lle1;

    sget-object v4, LGq0;->b:Lje1;

    invoke-virtual {v2, v4, v0}, Lle1;->a(Lje1;I)V

    .line 29
    iget-object v0, p0, LFq0;->a:Lle1;

    sget-object v2, LGq0;->c:Lje1;

    invoke-virtual {v0, v2, v3}, Lle1;->a(Lje1;I)V

    .line 30
    iget-object v0, p0, LFq0;->a:Lle1;

    sget-object v2, LGq0;->g:Lje1;

    invoke-virtual {v0, v2, v1}, Lle1;->a(Lje1;I)V

    return-void

    .line 31
    :cond_c
    throw v1
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-boolean v0, p0, LFq0;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f13039d

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, LFq0;->g:Z

    if-eqz v0, :cond_1

    const v0, 0x7f13039e

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-boolean v2, p0, LFq0;->f:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget v2, p0, LFq0;->m:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_3

    :cond_2
    iget-boolean v2, p0, LFq0;->g:Z

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    .line 4
    iget-boolean v2, p0, LFq0;->e:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, LFq0;->c:Z

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    .line 5
    iget-object v2, p0, LFq0;->a:Lle1;

    sget-object v3, LGq0;->l:Lje1;

    invoke-virtual {v2, v3, v0}, Lle1;->a(Lje1;I)V

    .line 6
    :cond_6
    iget-object v0, p0, LFq0;->a:Lle1;

    sget-object v2, LGq0;->m:Lhe1;

    invoke-virtual {v0, v2, v1}, Lle1;->a(Lhe1;Z)V

    return-void
.end method
