.class public Landroid/support/constraint/a/a/r;
.super Landroid/support/constraint/a/a/t;


# instance fields
.field a:Landroid/support/constraint/a/a/d;

.field b:F

.field c:Landroid/support/constraint/a/a/r;

.field d:F

.field e:Landroid/support/constraint/a/a/r;

.field f:F

.field g:I

.field private j:Landroid/support/constraint/a/a/r;

.field private k:F

.field private l:Landroid/support/constraint/a/a/s;

.field private m:I

.field private n:Landroid/support/constraint/a/a/s;

.field private o:I


# direct methods
.method public constructor <init>(Landroid/support/constraint/a/a/d;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/constraint/a/a/t;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/r;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/a/r;->l:Landroid/support/constraint/a/a/s;

    const/4 v1, 0x1

    iput v1, p0, Landroid/support/constraint/a/a/r;->m:I

    iput-object v0, p0, Landroid/support/constraint/a/a/r;->n:Landroid/support/constraint/a/a/s;

    iput v1, p0, Landroid/support/constraint/a/a/r;->o:I

    iput-object p1, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    return-void
.end method


# virtual methods
.method a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "DIRECT"

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "CENTER"

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "MATCH"

    return-object p1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const-string p1, "CHAIN"

    return-object p1

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    const-string p1, "BARRIER"

    return-object p1

    :cond_4
    const-string p1, "UNCONNECTED"

    return-object p1
.end method

.method public a()V
    .locals 8

    iget v0, p0, Landroid/support/constraint/a/a/r;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/a/r;->g:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/constraint/a/a/r;->l:Landroid/support/constraint/a/a/s;

    if-eqz v0, :cond_3

    iget v0, v0, Landroid/support/constraint/a/a/s;->i:I

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    iget v0, p0, Landroid/support/constraint/a/a/r;->m:I

    int-to-float v0, v0

    iget-object v2, p0, Landroid/support/constraint/a/a/r;->l:Landroid/support/constraint/a/a/s;

    iget v2, v2, Landroid/support/constraint/a/a/s;->a:F

    mul-float v0, v0, v2

    iput v0, p0, Landroid/support/constraint/a/a/r;->d:F

    :cond_3
    iget-object v0, p0, Landroid/support/constraint/a/a/r;->n:Landroid/support/constraint/a/a/s;

    if-eqz v0, :cond_5

    iget v0, v0, Landroid/support/constraint/a/a/s;->i:I

    if-eq v0, v1, :cond_4

    return-void

    :cond_4
    iget v0, p0, Landroid/support/constraint/a/a/r;->o:I

    int-to-float v0, v0

    iget-object v2, p0, Landroid/support/constraint/a/a/r;->n:Landroid/support/constraint/a/a/s;

    iget v2, v2, Landroid/support/constraint/a/a/s;->a:F

    mul-float v0, v0, v2

    iput v0, p0, Landroid/support/constraint/a/a/r;->k:F

    :cond_5
    iget v0, p0, Landroid/support/constraint/a/a/r;->g:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    if-eqz v0, :cond_6

    iget v0, v0, Landroid/support/constraint/a/a/r;->i:I

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    if-nez v0, :cond_7

    iput-object p0, p0, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    iget v0, p0, Landroid/support/constraint/a/a/r;->d:F

    goto :goto_0

    :cond_7
    iget-object v1, v0, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    iput-object v1, p0, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    iget v0, v0, Landroid/support/constraint/a/a/r;->f:F

    iget v1, p0, Landroid/support/constraint/a/a/r;->d:F

    add-float/2addr v0, v1

    :goto_0
    iput v0, p0, Landroid/support/constraint/a/a/r;->f:F

    invoke-virtual {p0}, Landroid/support/constraint/a/a/r;->f()V

    goto/16 :goto_7

    :cond_8
    iget v0, p0, Landroid/support/constraint/a/a/r;->g:I

    const/4 v2, 0x2

    const-wide/16 v3, 0x1

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    if-eqz v0, :cond_11

    iget v0, v0, Landroid/support/constraint/a/a/r;->i:I

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Landroid/support/constraint/a/a/r;->j:Landroid/support/constraint/a/a/r;

    if-eqz v0, :cond_11

    iget-object v0, v0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    if-eqz v0, :cond_11

    iget v0, v0, Landroid/support/constraint/a/a/r;->i:I

    if-ne v0, v1, :cond_11

    invoke-static {}, Landroid/support/constraint/a/e;->a()Landroid/support/constraint/a/g;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/support/constraint/a/e;->a()Landroid/support/constraint/a/g;

    move-result-object v0

    iget-wide v5, v0, Landroid/support/constraint/a/g;->w:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Landroid/support/constraint/a/g;->w:J

    :cond_9
    iget-object v0, p0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    iget-object v0, v0, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    iput-object v0, p0, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    iget-object v0, p0, Landroid/support/constraint/a/a/r;->j:Landroid/support/constraint/a/a/r;

    iget-object v2, v0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    iget-object v2, v2, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    iput-object v2, v0, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    iget-object v0, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->b:Landroid/support/constraint/a/a/h;

    sget-object v2, Landroid/support/constraint/a/a/h;->d:Landroid/support/constraint/a/a/h;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_b

    iget-object v0, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->b:Landroid/support/constraint/a/a/h;

    sget-object v2, Landroid/support/constraint/a/a/h;->e:Landroid/support/constraint/a/a/h;

    if-ne v0, v2, :cond_a

    goto :goto_1

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_1
    if-eqz v1, :cond_c

    iget-object v0, p0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    iget v0, v0, Landroid/support/constraint/a/a/r;->f:F

    iget-object v2, p0, Landroid/support/constraint/a/a/r;->j:Landroid/support/constraint/a/a/r;

    iget-object v2, v2, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    goto :goto_2

    :cond_c
    iget-object v0, p0, Landroid/support/constraint/a/a/r;->j:Landroid/support/constraint/a/a/r;

    iget-object v0, v0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    iget v0, v0, Landroid/support/constraint/a/a/r;->f:F

    iget-object v2, p0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    :goto_2
    iget v2, v2, Landroid/support/constraint/a/a/r;->f:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    iget-object v2, v2, Landroid/support/constraint/a/a/d;->b:Landroid/support/constraint/a/a/h;

    sget-object v4, Landroid/support/constraint/a/a/h;->b:Landroid/support/constraint/a/a/h;

    if-eq v2, v4, :cond_e

    iget-object v2, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    iget-object v2, v2, Landroid/support/constraint/a/a/d;->b:Landroid/support/constraint/a/a/h;

    sget-object v4, Landroid/support/constraint/a/a/h;->d:Landroid/support/constraint/a/a/h;

    if-ne v2, v4, :cond_d

    goto :goto_3

    :cond_d
    iget-object v2, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    iget-object v2, v2, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/i;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/i;->q()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    iget-object v2, v2, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/i;

    iget v2, v2, Landroid/support/constraint/a/a/i;->Q:F

    goto :goto_4

    :cond_e
    :goto_3
    iget-object v2, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    iget-object v2, v2, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/i;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/i;->o()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    iget-object v2, v2, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/i;

    iget v2, v2, Landroid/support/constraint/a/a/i;->P:F

    :goto_4
    iget-object v4, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/d;->e()I

    move-result v4

    iget-object v5, p0, Landroid/support/constraint/a/a/r;->j:Landroid/support/constraint/a/a/r;

    iget-object v5, v5, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    invoke-virtual {v5}, Landroid/support/constraint/a/a/d;->e()I

    move-result v5

    iget-object v6, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    invoke-virtual {v6}, Landroid/support/constraint/a/a/d;->g()Landroid/support/constraint/a/a/d;

    move-result-object v6

    iget-object v7, p0, Landroid/support/constraint/a/a/r;->j:Landroid/support/constraint/a/a/r;

    iget-object v7, v7, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    invoke-virtual {v7}, Landroid/support/constraint/a/a/d;->g()Landroid/support/constraint/a/a/d;

    move-result-object v7

    if-ne v6, v7, :cond_f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    goto :goto_5

    :cond_f
    move v3, v4

    :goto_5
    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v4, v5

    sub-float/2addr v0, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/support/constraint/a/a/r;->j:Landroid/support/constraint/a/a/r;

    iget-object v6, v1, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    iget v6, v6, Landroid/support/constraint/a/a/r;->f:F

    add-float/2addr v6, v4

    mul-float v4, v0, v2

    add-float/2addr v6, v4

    iput v6, v1, Landroid/support/constraint/a/a/r;->f:F

    iget-object v1, p0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    iget v1, v1, Landroid/support/constraint/a/a/r;->f:F

    sub-float/2addr v1, v3

    sub-float/2addr v5, v2

    mul-float v0, v0, v5

    sub-float/2addr v1, v0

    iput v1, p0, Landroid/support/constraint/a/a/r;->f:F

    goto :goto_6

    :cond_10
    iget-object v1, p0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    iget v1, v1, Landroid/support/constraint/a/a/r;->f:F

    add-float/2addr v1, v3

    mul-float v3, v0, v2

    add-float/2addr v1, v3

    iput v1, p0, Landroid/support/constraint/a/a/r;->f:F

    iget-object v1, p0, Landroid/support/constraint/a/a/r;->j:Landroid/support/constraint/a/a/r;

    iget-object v3, v1, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    iget v3, v3, Landroid/support/constraint/a/a/r;->f:F

    sub-float/2addr v3, v4

    sub-float/2addr v5, v2

    mul-float v0, v0, v5

    sub-float/2addr v3, v0

    iput v3, v1, Landroid/support/constraint/a/a/r;->f:F

    goto :goto_6

    :cond_11
    iget v0, p0, Landroid/support/constraint/a/a/r;->g:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    if-eqz v0, :cond_13

    iget v0, v0, Landroid/support/constraint/a/a/r;->i:I

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Landroid/support/constraint/a/a/r;->j:Landroid/support/constraint/a/a/r;

    if-eqz v0, :cond_13

    iget-object v0, v0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    if-eqz v0, :cond_13

    iget v0, v0, Landroid/support/constraint/a/a/r;->i:I

    if-ne v0, v1, :cond_13

    invoke-static {}, Landroid/support/constraint/a/e;->a()Landroid/support/constraint/a/g;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {}, Landroid/support/constraint/a/e;->a()Landroid/support/constraint/a/g;

    move-result-object v0

    iget-wide v1, v0, Landroid/support/constraint/a/g;->x:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/support/constraint/a/g;->x:J

    :cond_12
    iget-object v0, p0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    iget-object v1, v0, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    iput-object v1, p0, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    iget-object v1, p0, Landroid/support/constraint/a/a/r;->j:Landroid/support/constraint/a/a/r;

    iget-object v2, v1, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    iget-object v3, v2, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    iput-object v3, v1, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    iget v0, v0, Landroid/support/constraint/a/a/r;->f:F

    iget v3, p0, Landroid/support/constraint/a/a/r;->d:F

    add-float/2addr v0, v3

    iput v0, p0, Landroid/support/constraint/a/a/r;->f:F

    iget v0, v2, Landroid/support/constraint/a/a/r;->f:F

    iget v2, v1, Landroid/support/constraint/a/a/r;->d:F

    add-float/2addr v0, v2

    iput v0, v1, Landroid/support/constraint/a/a/r;->f:F

    :goto_6
    invoke-virtual {p0}, Landroid/support/constraint/a/a/r;->f()V

    iget-object v0, p0, Landroid/support/constraint/a/a/r;->j:Landroid/support/constraint/a/a/r;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/r;->f()V

    goto :goto_7

    :cond_13
    iget v0, p0, Landroid/support/constraint/a/a/r;->g:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    iget-object v0, v0, Landroid/support/constraint/a/a/d;->a:Landroid/support/constraint/a/a/i;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/i;->c()V

    :cond_14
    :goto_7
    return-void
.end method

.method public a(ILandroid/support/constraint/a/a/r;I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/r;->g:I

    iput-object p2, p0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    int-to-float p1, p3

    iput p1, p0, Landroid/support/constraint/a/a/r;->d:F

    iget-object p1, p0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    invoke-virtual {p1, p0}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/t;)V

    return-void
.end method

.method public a(Landroid/support/constraint/a/a/r;F)V
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/r;->i:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    if-eq v0, p1, :cond_2

    iget v0, p0, Landroid/support/constraint/a/a/r;->f:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    :cond_0
    iput-object p1, p0, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    iput p2, p0, Landroid/support/constraint/a/a/r;->f:F

    iget p1, p0, Landroid/support/constraint/a/a/r;->i:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/a/a/r;->e()V

    :cond_1
    invoke-virtual {p0}, Landroid/support/constraint/a/a/r;->f()V

    :cond_2
    return-void
.end method

.method public a(Landroid/support/constraint/a/a/r;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    int-to-float p1, p2

    iput p1, p0, Landroid/support/constraint/a/a/r;->d:F

    iget-object p1, p0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    invoke-virtual {p1, p0}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/t;)V

    return-void
.end method

.method public a(Landroid/support/constraint/a/a/r;ILandroid/support/constraint/a/a/s;)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    iget-object p1, p0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    invoke-virtual {p1, p0}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/t;)V

    iput-object p3, p0, Landroid/support/constraint/a/a/r;->l:Landroid/support/constraint/a/a/s;

    iput p2, p0, Landroid/support/constraint/a/a/r;->m:I

    iget-object p1, p0, Landroid/support/constraint/a/a/r;->l:Landroid/support/constraint/a/a/s;

    invoke-virtual {p1, p0}, Landroid/support/constraint/a/a/s;->a(Landroid/support/constraint/a/a/t;)V

    return-void
.end method

.method a(Landroid/support/constraint/a/e;)V
    .locals 4

    iget-object v0, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->b()Landroid/support/constraint/a/k;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/a/a/r;->f:F

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/k;I)V

    goto :goto_0

    :cond_0
    iget-object v1, v1, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/k;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/a/a/r;->f:F

    float-to-int v2, v2

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/k;Landroid/support/constraint/a/k;II)Landroid/support/constraint/a/b;

    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    invoke-super {p0}, Landroid/support/constraint/a/a/t;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/a/r;->c:Landroid/support/constraint/a/a/r;

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/constraint/a/a/r;->d:F

    iput-object v0, p0, Landroid/support/constraint/a/a/r;->l:Landroid/support/constraint/a/a/s;

    const/4 v2, 0x1

    iput v2, p0, Landroid/support/constraint/a/a/r;->m:I

    iput-object v0, p0, Landroid/support/constraint/a/a/r;->n:Landroid/support/constraint/a/a/s;

    iput v2, p0, Landroid/support/constraint/a/a/r;->o:I

    iput-object v0, p0, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    iput v1, p0, Landroid/support/constraint/a/a/r;->f:F

    iput v1, p0, Landroid/support/constraint/a/a/r;->b:F

    iput-object v0, p0, Landroid/support/constraint/a/a/r;->j:Landroid/support/constraint/a/a/r;

    iput v1, p0, Landroid/support/constraint/a/a/r;->k:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/r;->g:I

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/r;->g:I

    return-void
.end method

.method public b(Landroid/support/constraint/a/a/r;F)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/a/a/r;->j:Landroid/support/constraint/a/a/r;

    iput p2, p0, Landroid/support/constraint/a/a/r;->k:F

    return-void
.end method

.method public b(Landroid/support/constraint/a/a/r;ILandroid/support/constraint/a/a/s;)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/a/a/r;->j:Landroid/support/constraint/a/a/r;

    iput-object p3, p0, Landroid/support/constraint/a/a/r;->n:Landroid/support/constraint/a/a/s;

    iput p2, p0, Landroid/support/constraint/a/a/r;->o:I

    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->g()Landroid/support/constraint/a/a/d;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->g()Landroid/support/constraint/a/a/d;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x4

    iput v1, p0, Landroid/support/constraint/a/a/r;->g:I

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v2

    iput v1, v2, Landroid/support/constraint/a/a/r;->g:I

    :cond_1
    iget-object v1, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->e()I

    move-result v1

    iget-object v2, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    iget-object v2, v2, Landroid/support/constraint/a/a/d;->b:Landroid/support/constraint/a/a/h;

    sget-object v3, Landroid/support/constraint/a/a/h;->d:Landroid/support/constraint/a/a/h;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    iget-object v2, v2, Landroid/support/constraint/a/a/d;->b:Landroid/support/constraint/a/a/h;

    sget-object v3, Landroid/support/constraint/a/a/h;->e:Landroid/support/constraint/a/a/h;

    if-ne v2, v3, :cond_3

    :cond_2
    neg-int v1, v1

    :cond_3
    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->a()Landroid/support/constraint/a/a/r;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/support/constraint/a/a/r;->a(Landroid/support/constraint/a/a/r;I)V

    return-void
.end method

.method public d()F
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/r;->f:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroid/support/constraint/a/a/r;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    const-string v1, ", RESOLVED: "

    const-string v2, "["

    if-ne v0, p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/a/a/r;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]  type: "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/a/a/r;->g:I

    invoke-virtual {p0, v1}, Landroid/support/constraint/a/a/r;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/a/a/r;->e:Landroid/support/constraint/a/a/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/a/a/r;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] type: "

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/a/a/r;->a:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " UNRESOLVED} type: "

    goto :goto_0
.end method
