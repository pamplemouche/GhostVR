.class public Landroid/support/v7/widget/LinearLayoutManager;
.super LQg;
.source "PG"

# interfaces
.implements Lwi;


# instance fields
.field public A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field public final B:Lcg;

.field public final C:Ldg;

.field public D:I

.field public q:I

.field public r:Leg;

.field public s:Lug;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    .line 2
    invoke-direct {p0}, LQg;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->u:Z

    .line 5
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    .line 6
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->w:Z

    .line 7
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->x:Z

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->y:I

    const/high16 v0, -0x80000000

    .line 9
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->z:I

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 11
    new-instance v1, Lcg;

    invoke-direct {v1}, Lcg;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->B:Lcg;

    .line 12
    new-instance v1, Ldg;

    invoke-direct {v1}, Ldg;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->C:Ldg;

    const/4 v1, 0x2

    .line 13
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->D:I

    .line 14
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(I)V

    .line 15
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 16
    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->u:Z

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iput-boolean p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->u:Z

    .line 18
    invoke-virtual {p0}, LQg;->o()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 19
    invoke-direct {p0}, LQg;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->u:Z

    .line 22
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    .line 23
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->w:Z

    .line 24
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->x:Z

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->y:I

    const/high16 v0, -0x80000000

    .line 26
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->z:I

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 28
    new-instance v1, Lcg;

    invoke-direct {v1}, Lcg;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->B:Lcg;

    .line 29
    new-instance v1, Ldg;

    invoke-direct {v1}, Ldg;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->C:Ldg;

    const/4 v1, 0x2

    .line 30
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->D:I

    .line 31
    invoke-static {p1, p2, p3, p4}, LQg;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)LPg;

    move-result-object p1

    .line 32
    iget p2, p1, LPg;->a:I

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->i(I)V

    .line 33
    iget-boolean p2, p1, LPg;->c:Z

    .line 34
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 35
    iget-boolean p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->u:Z

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iput-boolean p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->u:Z

    .line 37
    invoke-virtual {p0}, LQg;->o()V

    .line 38
    :goto_0
    iget-boolean p1, p1, LPg;->d:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(ILXg;Lbh;)I
    .locals 2

    .line 22
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 23
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILXg;Lbh;)I

    move-result p1

    return p1
.end method

.method public final a(ILXg;Lbh;Z)I
    .locals 1

    .line 18
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v0}, Lug;->b()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    .line 19
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILXg;Lbh;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    .line 20
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {p3}, Lug;->b()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    .line 21
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {p1, p3}, Lug;->a(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(LXg;Leg;Lbh;Z)I
    .locals 7

    .line 114
    iget v0, p2, Leg;->c:I

    .line 115
    iget v1, p2, Leg;->g:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-gez v0, :cond_0

    add-int/2addr v1, v0

    .line 116
    iput v1, p2, Leg;->g:I

    .line 117
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;Leg;)V

    .line 118
    :cond_1
    iget v1, p2, Leg;->c:I

    iget v3, p2, Leg;->h:I

    add-int/2addr v1, v3

    .line 119
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->C:Ldg;

    .line 120
    :cond_2
    iget-boolean v4, p2, Leg;->l:Z

    if-nez v4, :cond_3

    if-lez v1, :cond_9

    :cond_3
    invoke-virtual {p2, p3}, Leg;->a(Lbh;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    .line 121
    iput v4, v3, Ldg;->a:I

    .line 122
    iput-boolean v4, v3, Ldg;->b:Z

    .line 123
    iput-boolean v4, v3, Ldg;->c:Z

    .line 124
    iput-boolean v4, v3, Ldg;->d:Z

    .line 125
    invoke-virtual {p0, p1, p3, p2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;Lbh;Leg;Ldg;)V

    .line 126
    iget-boolean v4, v3, Ldg;->b:Z

    if-eqz v4, :cond_4

    goto :goto_0

    .line 127
    :cond_4
    iget v4, p2, Leg;->b:I

    iget v5, v3, Ldg;->a:I

    iget v6, p2, Leg;->f:I

    mul-int v5, v5, v6

    add-int/2addr v5, v4

    iput v5, p2, Leg;->b:I

    .line 128
    iget-boolean v4, v3, Ldg;->c:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iget-object v4, v4, Leg;->k:Ljava/util/List;

    if-nez v4, :cond_5

    .line 129
    iget-boolean v4, p3, Lbh;->g:Z

    if-nez v4, :cond_6

    .line 130
    :cond_5
    iget v4, p2, Leg;->c:I

    iget v5, v3, Ldg;->a:I

    sub-int/2addr v4, v5

    iput v4, p2, Leg;->c:I

    sub-int/2addr v1, v5

    .line 131
    :cond_6
    iget v4, p2, Leg;->g:I

    if-eq v4, v2, :cond_8

    .line 132
    iget v5, v3, Ldg;->a:I

    add-int/2addr v4, v5

    iput v4, p2, Leg;->g:I

    .line 133
    iget v5, p2, Leg;->c:I

    if-gez v5, :cond_7

    add-int/2addr v4, v5

    .line 134
    iput v4, p2, Leg;->g:I

    .line 135
    :cond_7
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;Leg;)V

    :cond_8
    if-eqz p4, :cond_2

    .line 136
    iget-boolean v4, v3, Ldg;->d:Z

    if-eqz v4, :cond_2

    .line 137
    :cond_9
    :goto_0
    iget p1, p2, Leg;->c:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public a(Lbh;)I
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(Lbh;)I

    move-result p1

    return p1
.end method

.method public a(I)Landroid/view/View;
    .locals 2

    .line 13
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v1}, LQg;->b(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, LQg;->i(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 15
    invoke-virtual {p0, v1}, LQg;->b(I)Landroid/view/View;

    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, LQg;->i(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    return-object v0

    .line 17
    :cond_1
    invoke-super {p0, p1}, LQg;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(IIZZ)Landroid/view/View;
    .locals 1

    .line 199
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()V

    const/16 v0, 0x140

    if-eqz p3, :cond_0

    const/16 p3, 0x6003

    goto :goto_0

    :cond_0
    const/16 p3, 0x140

    :goto_0
    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 200
    :goto_1
    iget p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-nez p4, :cond_2

    iget-object p4, p0, LQg;->e:Lgi;

    .line 201
    invoke-virtual {p4, p1, p2, p3, v0}, Lgi;->a(IIII)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget-object p4, p0, LQg;->f:Lgi;

    .line 202
    invoke-virtual {p4, p1, p2, p3, v0}, Lgi;->a(IIII)Landroid/view/View;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public a(LXg;Lbh;III)Landroid/view/View;
    .locals 5

    .line 191
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()V

    .line 192
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {p1}, Lug;->f()I

    move-result p1

    .line 193
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {p2}, Lug;->b()I

    move-result p2

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    if-eq p3, p4, :cond_5

    .line 194
    invoke-virtual {p0, p3}, LQg;->b(I)Landroid/view/View;

    move-result-object v3

    .line 195
    invoke-virtual {p0, v3}, LQg;->i(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_4

    if-ge v4, p5, :cond_4

    .line 196
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, LRg;

    invoke-virtual {v4}, LRg;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_3

    .line 197
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v4, v3}, Lug;->d(Landroid/view/View;)I

    move-result v4

    if-ge v4, p2, :cond_3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 198
    invoke-virtual {v4, v3}, Lug;->a(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_2

    goto :goto_2

    :cond_2
    return-object v3

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    move-object v1, v3

    :cond_4
    :goto_3
    add-int/2addr p3, v0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, v2

    :goto_4
    return-object v1
.end method

.method public a(Landroid/view/View;ILXg;Lbh;)Landroid/view/View;
    .locals 3

    .line 203
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->y()V

    .line 204
    invoke-virtual {p0}, LQg;->d()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 205
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->h(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    .line 206
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()V

    .line 207
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()V

    const v1, 0x3eaaaaab

    .line 208
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v2}, Lug;->g()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    .line 209
    invoke-virtual {p0, p1, v1, v2, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLbh;)V

    .line 210
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iput p2, v1, Leg;->g:I

    .line 211
    iput-boolean v2, v1, Leg;->a:Z

    const/4 p2, 0x1

    .line 212
    invoke-virtual {p0, p3, v1, p4, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;Leg;Lbh;Z)I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 213
    iget-boolean p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    if-eqz p3, :cond_2

    .line 214
    invoke-virtual {p0}, LQg;->d()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p0, p3, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(II)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p0}, LQg;->d()I

    move-result p3

    invoke-virtual {p0, v2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(II)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    .line 216
    :cond_3
    iget-boolean p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    if-eqz p3, :cond_4

    .line 217
    invoke-virtual {p0}, LQg;->d()I

    move-result p3

    invoke-virtual {p0, v2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(II)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    .line 218
    :cond_4
    invoke-virtual {p0}, LQg;->d()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p0, p3, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(II)Landroid/view/View;

    move-result-object p3

    :goto_0
    if-ne p1, p2, :cond_5

    .line 219
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 220
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object p1

    .line 221
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p2

    if-eqz p2, :cond_7

    if-nez p3, :cond_6

    return-object v0

    :cond_6
    return-object p1

    :cond_7
    return-object p3
.end method

.method public final a(ZZ)Landroid/view/View;
    .locals 2

    .line 188
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0}, LQg;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 190
    :cond_0
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(IILbh;LOg;)V
    .locals 1

    .line 56
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 57
    :goto_0
    invoke-virtual {p0}, LQg;->d()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()V

    const/4 p2, 0x1

    if-lez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 59
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 60
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLbh;)V

    .line 61
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    invoke-virtual {p0, p3, p1, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Lbh;Leg;LOg;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final a(IIZLbh;)V
    .locals 4

    .line 25
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->x()Z

    move-result v1

    iput-boolean v1, v0, Leg;->l:Z

    .line 26
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->k(Lbh;)I

    move-result p4

    iput p4, v0, Leg;->h:I

    .line 27
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iput p1, p4, Leg;->f:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 28
    iget p1, p4, Leg;->h:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v2}, Lug;->c()I

    move-result v2

    add-int/2addr v2, p1

    iput v2, p4, Leg;->h:I

    .line 29
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object p1

    .line 30
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p4, Leg;->e:I

    .line 31
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    invoke-virtual {p0, p1}, LQg;->i(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iget v2, v1, Leg;->e:I

    add-int/2addr v0, v2

    iput v0, p4, Leg;->d:I

    .line 32
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {p4, p1}, Lug;->a(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Leg;->b:I

    .line 33
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {p4, p1}, Lug;->a(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 34
    invoke-virtual {p4}, Lug;->b()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()Landroid/view/View;

    move-result-object p1

    .line 36
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iget v2, p4, Leg;->h:I

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v3}, Lug;->f()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p4, Leg;->h:I

    .line 37
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput v0, p4, Leg;->e:I

    .line 38
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    invoke-virtual {p0, p1}, LQg;->i(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iget v2, v1, Leg;->e:I

    add-int/2addr v0, v2

    iput v0, p4, Leg;->d:I

    .line 39
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {p4, p1}, Lug;->d(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Leg;->b:I

    .line 40
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {p4, p1}, Lug;->d(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 41
    invoke-virtual {p4}, Lug;->f()I

    move-result p4

    add-int/2addr p1, p4

    .line 42
    :goto_1
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iput p2, p4, Leg;->c:I

    if-eqz p3, :cond_3

    sub-int/2addr p2, p1

    .line 43
    iput p2, p4, Leg;->c:I

    .line 44
    :cond_3
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iput p1, p2, Leg;->g:I

    return-void
.end method

.method public a(ILOg;)V
    .locals 5

    .line 48
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v3, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->y:Z

    .line 50
    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->w:I

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->y()V

    .line 52
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    .line 53
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->y:I

    if-ne v0, v1, :cond_2

    if-eqz v3, :cond_1

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    move v3, v0

    const/4 v0, 0x0

    .line 54
    :goto_2
    iget v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->D:I

    if-ge v0, v4, :cond_4

    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_4

    .line 55
    move-object v4, p2

    check-cast v4, LAf;

    invoke-virtual {v4, v3, v2}, LAf;->a(II)V

    add-int/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final a(LXg;II)V
    .locals 0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    .line 87
    invoke-virtual {p0, p3, p1}, LQg;->a(ILXg;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    .line 88
    invoke-virtual {p0, p2, p1}, LQg;->a(ILXg;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(LXg;Lbh;Lcg;I)V
    .locals 0

    return-void
.end method

.method public a(LXg;Lbh;Leg;Ldg;)V
    .locals 9

    .line 138
    invoke-virtual {p3, p1}, Leg;->a(LXg;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 139
    iput-boolean p2, p4, Ldg;->b:Z

    return-void

    .line 140
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, LRg;

    .line 141
    iget-object v0, p3, Leg;->k:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 142
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    iget v3, p3, Leg;->f:I

    if-ne v3, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ne v0, v3, :cond_2

    .line 143
    invoke-virtual {p0, p1, v1, v2}, LQg;->a(Landroid/view/View;IZ)V

    goto :goto_2

    .line 144
    :cond_2
    invoke-virtual {p0, p1, v2, v2}, LQg;->a(Landroid/view/View;IZ)V

    goto :goto_2

    .line 145
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    iget v3, p3, Leg;->f:I

    if-ne v3, v1, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-ne v0, v3, :cond_5

    .line 146
    invoke-virtual {p0, p1, v1, p2}, LQg;->a(Landroid/view/View;IZ)V

    goto :goto_2

    .line 147
    :cond_5
    invoke-virtual {p0, p1, v2, p2}, LQg;->a(Landroid/view/View;IZ)V

    .line 148
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LRg;

    .line 149
    iget-object v3, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 150
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    .line 151
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v3

    add-int/2addr v5, v2

    .line 152
    iget v2, p0, LQg;->o:I

    .line 153
    iget v3, p0, LQg;->m:I

    .line 154
    invoke-virtual {p0}, LQg;->j()I

    move-result v7

    invoke-virtual {p0}, LQg;->k()I

    move-result v8

    add-int/2addr v8, v7

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v7

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 155
    invoke-virtual {p0}, LQg;->a()Z

    move-result v7

    .line 156
    invoke-static {v2, v3, v8, v4, v7}, LQg;->a(IIIIZ)I

    move-result v2

    .line 157
    iget v3, p0, LQg;->p:I

    .line 158
    iget v4, p0, LQg;->n:I

    .line 159
    invoke-virtual {p0}, LQg;->l()I

    move-result v7

    invoke-virtual {p0}, LQg;->i()I

    move-result v8

    add-int/2addr v8, v7

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v7

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 160
    invoke-virtual {p0}, LQg;->b()Z

    move-result v7

    .line 161
    invoke-static {v3, v4, v8, v5, v7}, LQg;->a(IIIIZ)I

    move-result v3

    .line 162
    invoke-virtual {p0, p1, v2, v3, v0}, LQg;->a(Landroid/view/View;IILRg;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 164
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v0, p1}, Lug;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Ldg;->a:I

    .line 165
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-ne v0, p2, :cond_9

    .line 166
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->w()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 167
    iget v0, p0, LQg;->o:I

    .line 168
    invoke-virtual {p0}, LQg;->k()I

    move-result v2

    sub-int/2addr v0, v2

    .line 169
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v2, p1}, Lug;->c(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    goto :goto_3

    .line 170
    :cond_7
    invoke-virtual {p0}, LQg;->j()I

    move-result v2

    .line 171
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v0, p1}, Lug;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    .line 172
    :goto_3
    iget v3, p3, Leg;->f:I

    if-ne v3, v1, :cond_8

    .line 173
    iget p3, p3, Leg;->b:I

    .line 174
    iget v1, p4, Ldg;->a:I

    sub-int v1, p3, v1

    move v5, p3

    move v4, v0

    move v3, v1

    goto :goto_4

    .line 175
    :cond_8
    iget p3, p3, Leg;->b:I

    .line 176
    iget v1, p4, Ldg;->a:I

    add-int/2addr v1, p3

    move v3, p3

    move v4, v0

    move v5, v1

    goto :goto_4

    .line 177
    :cond_9
    invoke-virtual {p0}, LQg;->l()I

    move-result v0

    .line 178
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v2, p1}, Lug;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    .line 179
    iget v3, p3, Leg;->f:I

    if-ne v3, v1, :cond_a

    .line 180
    iget p3, p3, Leg;->b:I

    .line 181
    iget v1, p4, Ldg;->a:I

    sub-int v1, p3, v1

    move v4, p3

    move v3, v0

    move v5, v2

    move v2, v1

    goto :goto_4

    .line 182
    :cond_a
    iget p3, p3, Leg;->b:I

    .line 183
    iget v1, p4, Ldg;->a:I

    add-int/2addr v1, p3

    move v3, v0

    move v4, v1

    move v5, v2

    move v2, p3

    :goto_4
    move-object v0, p0

    move-object v1, p1

    .line 184
    invoke-virtual/range {v0 .. v5}, LQg;->a(Landroid/view/View;IIII)V

    .line 185
    invoke-virtual {v6}, LRg;->c()Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {v6}, LRg;->b()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 186
    :cond_b
    iput-boolean p2, p4, Ldg;->c:Z

    .line 187
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    iput-boolean p1, p4, Ldg;->d:Z

    return-void
.end method

.method public final a(LXg;Leg;)V
    .locals 5

    .line 89
    iget-boolean v0, p2, Leg;->a:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p2, Leg;->l:Z

    if-eqz v0, :cond_0

    goto/16 :goto_8

    .line 90
    :cond_0
    iget v0, p2, Leg;->f:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    .line 91
    iget p2, p2, Leg;->g:I

    .line 92
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    if-gez p2, :cond_1

    goto/16 :goto_8

    .line 93
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v3}, Lug;->a()I

    move-result v3

    sub-int/2addr v3, p2

    .line 94
    iget-boolean p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_e

    .line 95
    invoke-virtual {p0, p2}, LQg;->b(I)Landroid/view/View;

    move-result-object v2

    .line 96
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v4, v2}, Lug;->d(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 97
    invoke-virtual {v4, v2}, Lug;->f(Landroid/view/View;)I

    move-result v2

    if-ge v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 98
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;II)V

    goto/16 :goto_8

    :cond_4
    add-int/2addr v0, v2

    move p2, v0

    :goto_2
    if-ltz p2, :cond_e

    .line 99
    invoke-virtual {p0, p2}, LQg;->b(I)Landroid/view/View;

    move-result-object v1

    .line 100
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v2, v1}, Lug;->d(Landroid/view/View;)I

    move-result v2

    if-lt v2, v3, :cond_6

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 101
    invoke-virtual {v2, v1}, Lug;->f(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 102
    :cond_6
    :goto_3
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;II)V

    goto :goto_8

    .line 103
    :cond_7
    iget p2, p2, Leg;->g:I

    if-gez p2, :cond_8

    goto :goto_8

    .line 104
    :cond_8
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    .line 105
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    if-eqz v3, :cond_b

    add-int/2addr v0, v2

    move v1, v0

    :goto_4
    if-ltz v1, :cond_e

    .line 106
    invoke-virtual {p0, v1}, LQg;->b(I)Landroid/view/View;

    move-result-object v2

    .line 107
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v3, v2}, Lug;->a(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_a

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 108
    invoke-virtual {v3, v2}, Lug;->e(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 109
    :cond_a
    :goto_5
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;II)V

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_e

    .line 110
    invoke-virtual {p0, v2}, LQg;->b(I)Landroid/view/View;

    move-result-object v3

    .line 111
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v4, v3}, Lug;->a(Landroid/view/View;)I

    move-result v4

    if-gt v4, p2, :cond_d

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 112
    invoke-virtual {v4, v3}, Lug;->e(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 113
    :cond_d
    :goto_7
    invoke-virtual {p0, p1, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;II)V

    :cond_e
    :goto_8
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    .line 5
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 7
    invoke-virtual {p0}, LQg;->o()V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;LXg;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;II)V
    .locals 3

    .line 65
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez p3, :cond_0

    .line 66
    iget-object p3, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz p3, :cond_0

    const-string p4, "Cannot drop a view during a scroll or layout calculation"

    .line 67
    invoke-virtual {p3, p4}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()V

    .line 69
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->y()V

    .line 70
    invoke-virtual {p0, p1}, LQg;->i(Landroid/view/View;)I

    move-result p3

    .line 71
    invoke-virtual {p0, p2}, LQg;->i(Landroid/view/View;)I

    move-result p4

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ge p3, p4, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, -0x1

    .line 72
    :goto_0
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    if-eqz v2, :cond_3

    if-ne p3, v0, :cond_2

    .line 73
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 74
    invoke-virtual {p3}, Lug;->b()I

    move-result p3

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 75
    invoke-virtual {v0, p2}, Lug;->d(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 76
    invoke-virtual {v0, p1}, Lug;->b(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, p2

    sub-int/2addr p3, p1

    .line 77
    invoke-virtual {p0, p4, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(II)V

    goto :goto_1

    .line 78
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 79
    invoke-virtual {p1}, Lug;->b()I

    move-result p1

    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 80
    invoke-virtual {p3, p2}, Lug;->a(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    .line 81
    invoke-virtual {p0, p4, p1}, Landroid/support/v7/widget/LinearLayoutManager;->d(II)V

    goto :goto_1

    :cond_3
    if-ne p3, v1, :cond_4

    .line 82
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {p1, p2}, Lug;->d(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p4, p1}, Landroid/support/v7/widget/LinearLayoutManager;->d(II)V

    goto :goto_1

    .line 83
    :cond_4
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 84
    invoke-virtual {p3, p2}, Lug;->a(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 85
    invoke-virtual {p3, p1}, Lug;->b(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p2, p1

    .line 86
    invoke-virtual {p0, p4, p2}, Landroid/support/v7/widget/LinearLayoutManager;->d(II)V

    :goto_1
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, LQg;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->s()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public a(Lbh;Leg;LOg;)V
    .locals 1

    .line 45
    iget v0, p2, Leg;->d:I

    if-ltz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Lbh;->a()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x0

    .line 47
    iget p2, p2, Leg;->g:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    check-cast p3, LAf;

    invoke-virtual {p3, v0, p1}, LAf;->a(II)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, LQg;->b:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 10
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->w:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 11
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->w:Z

    .line 12
    invoke-virtual {p0}, LQg;->o()V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 8
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(ILXg;Lbh;)I
    .locals 1

    .line 6
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILXg;Lbh;)I

    move-result p1

    return p1
.end method

.method public final b(ILXg;Lbh;Z)I
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v0}, Lug;->f()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->c(ILXg;Lbh;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    .line 4
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {p3}, Lug;->f()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    .line 5
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Lug;->a(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lbh;)I
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Lbh;)I

    move-result p1

    return p1
.end method

.method public final b(ZZ)Landroid/view/View;
    .locals 2

    .line 9
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0}, LQg;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public c(ILXg;Lbh;)I
    .locals 5

    .line 176
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 177
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    const/4 v2, 0x1

    iput-boolean v2, v0, Leg;->a:Z

    .line 178
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()V

    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 179
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 180
    invoke-virtual {p0, v0, v3, v2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLbh;)V

    .line 181
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iget v4, v2, Leg;->g:I

    .line 182
    invoke-virtual {p0, p2, v2, p3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;Leg;Lbh;Z)I

    move-result p2

    add-int/2addr p2, v4

    if-gez p2, :cond_2

    return v1

    :cond_2
    if-le v3, p2, :cond_3

    mul-int p1, v0, p2

    .line 183
    :cond_3
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Lug;->a(I)V

    .line 184
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iput p1, p2, Leg;->j:I

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public c(Lbh;)I
    .locals 0

    .line 175
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Lbh;)I

    move-result p1

    return p1
.end method

.method public c()LRg;
    .locals 2

    .line 1
    new-instance v0, LRg;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, LRg;-><init>(II)V

    return-object v0
.end method

.method public c(II)Landroid/view/View;
    .locals 3

    .line 185
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()V

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 186
    invoke-virtual {p0, p1}, LQg;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 187
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {p0, p1}, LQg;->b(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lug;->d(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 188
    invoke-virtual {v1}, Lug;->f()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_1

    :cond_3
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    .line 189
    :goto_1
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-nez v2, :cond_4

    iget-object v2, p0, LQg;->e:Lgi;

    .line 190
    invoke-virtual {v2, p1, p2, v0, v1}, Lgi;->a(IIII)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_4
    iget-object v2, p0, LQg;->f:Lgi;

    .line 191
    invoke-virtual {v2, p1, p2, v0, v1}, Lgi;->a(IIII)Landroid/view/View;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public c(LXg;Lbh;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v4, -0x1

    if-nez v3, :cond_0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->y:I

    if-eq v3, v4, :cond_1

    .line 3
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lbh;->a()I

    move-result v3

    if-nez v3, :cond_1

    .line 4
    invoke-virtual/range {p0 .. p1}, LQg;->b(LXg;)V

    return-void

    .line 5
    :cond_1
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->w:I

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->y:I

    .line 7
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()V

    .line 8
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    const/4 v5, 0x0

    iput-boolean v5, v3, Leg;->a:Z

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->y()V

    .line 10
    invoke-virtual/range {p0 .. p0}, LQg;->e()Landroid/view/View;

    move-result-object v3

    .line 11
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->B:Lcg;

    iget-boolean v6, v6, Lcg;->e:Z

    const/high16 v7, -0x80000000

    const/4 v8, 0x1

    if-eqz v6, :cond_5

    iget v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->y:I

    if-ne v6, v4, :cond_5

    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_25

    .line 12
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v6, v3}, Lug;->d(Landroid/view/View;)I

    move-result v6

    iget-object v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 13
    invoke-virtual {v9}, Lug;->b()I

    move-result v9

    if-ge v6, v9, :cond_4

    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 14
    invoke-virtual {v6, v3}, Lug;->a(Landroid/view/View;)I

    move-result v6

    iget-object v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 15
    invoke-virtual {v9}, Lug;->f()I

    move-result v9

    if-gt v6, v9, :cond_25

    .line 16
    :cond_4
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->B:Lcg;

    invoke-virtual {v0, v3}, LQg;->i(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v6, v3, v9}, Lcg;->b(Landroid/view/View;I)V

    goto/16 :goto_12

    .line 17
    :cond_5
    :goto_0
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->B:Lcg;

    invoke-virtual {v3}, Lcg;->b()V

    .line 18
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->B:Lcg;

    iget-boolean v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    iget-boolean v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->w:Z

    xor-int/2addr v6, v9

    iput-boolean v6, v3, Lcg;->d:Z

    .line 19
    iget-boolean v6, v2, Lbh;->g:Z

    if-nez v6, :cond_15

    .line 20
    iget v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->y:I

    if-ne v6, v4, :cond_6

    goto/16 :goto_6

    :cond_6
    if-ltz v6, :cond_14

    .line 21
    invoke-virtual/range {p2 .. p2}, Lbh;->a()I

    move-result v9

    if-lt v6, v9, :cond_7

    goto/16 :goto_5

    .line 22
    :cond_7
    iget v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->y:I

    iput v6, v3, Lcg;->b:I

    .line 23
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 24
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v6, v6, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->y:Z

    iput-boolean v6, v3, Lcg;->d:Z

    if-eqz v6, :cond_8

    .line 25
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v6}, Lug;->b()I

    move-result v6

    iget-object v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->x:I

    sub-int/2addr v6, v9

    iput v6, v3, Lcg;->c:I

    goto/16 :goto_4

    .line 26
    :cond_8
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v6}, Lug;->f()I

    move-result v6

    iget-object v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v9, v9, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->x:I

    add-int/2addr v6, v9

    iput v6, v3, Lcg;->c:I

    goto/16 :goto_4

    .line 27
    :cond_9
    iget v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->z:I

    if-ne v6, v7, :cond_12

    .line 28
    iget v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->y:I

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/LinearLayoutManager;->a(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 29
    iget-object v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v9, v6}, Lug;->b(Landroid/view/View;)I

    move-result v9

    .line 30
    iget-object v10, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v10}, Lug;->g()I

    move-result v10

    if-le v9, v10, :cond_a

    .line 31
    invoke-virtual {v3}, Lcg;->a()V

    goto/16 :goto_4

    .line 32
    :cond_a
    iget-object v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v9, v6}, Lug;->d(Landroid/view/View;)I

    move-result v9

    iget-object v10, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 33
    invoke-virtual {v10}, Lug;->f()I

    move-result v10

    sub-int/2addr v9, v10

    if-gez v9, :cond_b

    .line 34
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v6}, Lug;->f()I

    move-result v6

    iput v6, v3, Lcg;->c:I

    .line 35
    iput-boolean v5, v3, Lcg;->d:Z

    goto/16 :goto_4

    .line 36
    :cond_b
    iget-object v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v9}, Lug;->b()I

    move-result v9

    iget-object v10, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 37
    invoke-virtual {v10, v6}, Lug;->a(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v9, v10

    if-gez v9, :cond_c

    .line 38
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v6}, Lug;->b()I

    move-result v6

    iput v6, v3, Lcg;->c:I

    .line 39
    iput-boolean v8, v3, Lcg;->d:Z

    goto :goto_4

    .line 40
    :cond_c
    iget-boolean v9, v3, Lcg;->d:Z

    if-eqz v9, :cond_d

    iget-object v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 41
    invoke-virtual {v9, v6}, Lug;->a(Landroid/view/View;)I

    move-result v6

    iget-object v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 42
    invoke-virtual {v9}, Lug;->h()I

    move-result v9

    add-int/2addr v9, v6

    goto :goto_1

    :cond_d
    iget-object v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 43
    invoke-virtual {v9, v6}, Lug;->d(Landroid/view/View;)I

    move-result v9

    :goto_1
    iput v9, v3, Lcg;->c:I

    goto :goto_4

    .line 44
    :cond_e
    invoke-virtual/range {p0 .. p0}, LQg;->d()I

    move-result v6

    if-lez v6, :cond_11

    .line 45
    invoke-virtual {v0, v5}, LQg;->b(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, LQg;->i(Landroid/view/View;)I

    move-result v6

    .line 46
    iget v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->y:I

    if-ge v9, v6, :cond_f

    const/4 v6, 0x1

    goto :goto_2

    :cond_f
    const/4 v6, 0x0

    :goto_2
    iget-boolean v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    if-ne v6, v9, :cond_10

    const/4 v6, 0x1

    goto :goto_3

    :cond_10
    const/4 v6, 0x0

    :goto_3
    iput-boolean v6, v3, Lcg;->d:Z

    .line 47
    :cond_11
    invoke-virtual {v3}, Lcg;->a()V

    goto :goto_4

    .line 48
    :cond_12
    iget-boolean v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    iput-boolean v6, v3, Lcg;->d:Z

    if-eqz v6, :cond_13

    .line 49
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v6}, Lug;->b()I

    move-result v6

    iget v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->z:I

    sub-int/2addr v6, v9

    iput v6, v3, Lcg;->c:I

    goto :goto_4

    .line 50
    :cond_13
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v6}, Lug;->f()I

    move-result v6

    iget v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->z:I

    add-int/2addr v6, v9

    iput v6, v3, Lcg;->c:I

    :goto_4
    const/4 v6, 0x1

    goto :goto_7

    .line 51
    :cond_14
    :goto_5
    iput v4, v0, Landroid/support/v7/widget/LinearLayoutManager;->y:I

    .line 52
    iput v7, v0, Landroid/support/v7/widget/LinearLayoutManager;->z:I

    :cond_15
    :goto_6
    const/4 v6, 0x0

    :goto_7
    if-eqz v6, :cond_16

    goto/16 :goto_11

    .line 53
    :cond_16
    invoke-virtual/range {p0 .. p0}, LQg;->d()I

    move-result v6

    if-nez v6, :cond_17

    goto/16 :goto_e

    .line 54
    :cond_17
    invoke-virtual/range {p0 .. p0}, LQg;->e()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 55
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, LRg;

    .line 56
    invoke-virtual {v9}, LRg;->c()Z

    move-result v10

    if-nez v10, :cond_18

    invoke-virtual {v9}, LRg;->a()I

    move-result v10

    if-ltz v10, :cond_18

    .line 57
    invoke-virtual {v9}, LRg;->a()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lbh;->a()I

    move-result v10

    if-ge v9, v10, :cond_18

    const/4 v9, 0x1

    goto :goto_8

    :cond_18
    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_19

    .line 58
    invoke-virtual {v0, v6}, LQg;->i(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v3, v6, v9}, Lcg;->b(Landroid/view/View;I)V

    goto/16 :goto_d

    .line 59
    :cond_19
    iget-boolean v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->t:Z

    iget-boolean v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->w:Z

    if-eq v6, v9, :cond_1a

    goto/16 :goto_e

    .line 60
    :cond_1a
    iget-boolean v6, v3, Lcg;->d:Z

    if-eqz v6, :cond_1c

    .line 61
    iget-boolean v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    if-eqz v6, :cond_1b

    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/widget/LinearLayoutManager;->d(LXg;Lbh;)Landroid/view/View;

    move-result-object v6

    goto :goto_9

    .line 62
    :cond_1b
    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/widget/LinearLayoutManager;->e(LXg;Lbh;)Landroid/view/View;

    move-result-object v6

    goto :goto_9

    .line 63
    :cond_1c
    iget-boolean v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    if-eqz v6, :cond_1d

    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/widget/LinearLayoutManager;->e(LXg;Lbh;)Landroid/view/View;

    move-result-object v6

    goto :goto_9

    .line 64
    :cond_1d
    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/widget/LinearLayoutManager;->d(LXg;Lbh;)Landroid/view/View;

    move-result-object v6

    :goto_9
    if-eqz v6, :cond_22

    .line 65
    invoke-virtual {v0, v6}, LQg;->i(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v3, v6, v9}, Lcg;->a(Landroid/view/View;I)V

    .line 66
    iget-boolean v9, v2, Lbh;->g:Z

    if-nez v9, :cond_21

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()Z

    move-result v9

    if-eqz v9, :cond_21

    .line 68
    iget-object v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 69
    invoke-virtual {v9, v6}, Lug;->d(Landroid/view/View;)I

    move-result v9

    iget-object v10, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 70
    invoke-virtual {v10}, Lug;->b()I

    move-result v10

    if-ge v9, v10, :cond_1f

    iget-object v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 71
    invoke-virtual {v9, v6}, Lug;->a(Landroid/view/View;)I

    move-result v6

    iget-object v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 72
    invoke-virtual {v9}, Lug;->f()I

    move-result v9

    if-ge v6, v9, :cond_1e

    goto :goto_a

    :cond_1e
    const/4 v6, 0x0

    goto :goto_b

    :cond_1f
    :goto_a
    const/4 v6, 0x1

    :goto_b
    if-eqz v6, :cond_21

    .line 73
    iget-boolean v6, v3, Lcg;->d:Z

    if-eqz v6, :cond_20

    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 74
    invoke-virtual {v6}, Lug;->b()I

    move-result v6

    goto :goto_c

    :cond_20
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 75
    invoke-virtual {v6}, Lug;->f()I

    move-result v6

    :goto_c
    iput v6, v3, Lcg;->c:I

    :cond_21
    :goto_d
    const/4 v6, 0x1

    goto :goto_f

    :cond_22
    :goto_e
    const/4 v6, 0x0

    :goto_f
    if-eqz v6, :cond_23

    goto :goto_11

    .line 76
    :cond_23
    invoke-virtual {v3}, Lcg;->a()V

    .line 77
    iget-boolean v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->w:Z

    if-eqz v6, :cond_24

    invoke-virtual/range {p2 .. p2}, Lbh;->a()I

    move-result v6

    add-int/2addr v6, v4

    goto :goto_10

    :cond_24
    const/4 v6, 0x0

    :goto_10
    iput v6, v3, Lcg;->b:I

    .line 78
    :goto_11
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->B:Lcg;

    iput-boolean v8, v3, Lcg;->e:Z

    .line 79
    :cond_25
    :goto_12
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->k(Lbh;)I

    move-result v3

    .line 80
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iget v6, v6, Leg;->j:I

    if-ltz v6, :cond_26

    move v6, v3

    const/4 v3, 0x0

    goto :goto_13

    :cond_26
    const/4 v6, 0x0

    .line 81
    :goto_13
    iget-object v9, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v9}, Lug;->f()I

    move-result v9

    add-int/2addr v9, v3

    .line 82
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v3}, Lug;->c()I

    move-result v3

    add-int/2addr v3, v6

    .line 83
    iget-boolean v6, v2, Lbh;->g:Z

    if-eqz v6, :cond_29

    .line 84
    iget v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->y:I

    if-eq v6, v4, :cond_29

    iget v10, v0, Landroid/support/v7/widget/LinearLayoutManager;->z:I

    if-eq v10, v7, :cond_29

    .line 85
    invoke-virtual {v0, v6}, Landroid/support/v7/widget/LinearLayoutManager;->a(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_29

    .line 86
    iget-boolean v7, v0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    if-eqz v7, :cond_27

    .line 87
    iget-object v7, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v7}, Lug;->b()I

    move-result v7

    iget-object v10, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 88
    invoke-virtual {v10, v6}, Lug;->a(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v7, v6

    .line 89
    iget v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->z:I

    goto :goto_14

    .line 90
    :cond_27
    iget-object v7, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v7, v6}, Lug;->d(Landroid/view/View;)I

    move-result v6

    iget-object v7, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 91
    invoke-virtual {v7}, Lug;->f()I

    move-result v7

    sub-int/2addr v6, v7

    .line 92
    iget v7, v0, Landroid/support/v7/widget/LinearLayoutManager;->z:I

    :goto_14
    sub-int/2addr v7, v6

    if-lez v7, :cond_28

    add-int/2addr v9, v7

    goto :goto_15

    :cond_28
    sub-int/2addr v3, v7

    .line 93
    :cond_29
    :goto_15
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->B:Lcg;

    iget-boolean v6, v6, Lcg;->d:Z

    if-eqz v6, :cond_2a

    .line 94
    iget-boolean v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    if-eqz v6, :cond_2b

    goto :goto_16

    .line 95
    :cond_2a
    iget-boolean v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    if-eqz v6, :cond_2c

    :cond_2b
    const/4 v6, -0x1

    goto :goto_17

    :cond_2c
    :goto_16
    const/4 v6, 0x1

    .line 96
    :goto_17
    iget-object v7, v0, Landroid/support/v7/widget/LinearLayoutManager;->B:Lcg;

    invoke-virtual {v0, v1, v2, v7, v6}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;Lbh;Lcg;I)V

    .line 97
    invoke-virtual/range {p0 .. p1}, LQg;->a(LXg;)V

    .line 98
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->x()Z

    move-result v7

    iput-boolean v7, v6, Leg;->l:Z

    .line 99
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    .line 100
    iget-boolean v7, v2, Lbh;->g:Z

    .line 101
    iput-boolean v7, v6, Leg;->i:Z

    .line 102
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->B:Lcg;

    iget-boolean v7, v6, Lcg;->d:Z

    if-eqz v7, :cond_2f

    .line 103
    iget v7, v6, Lcg;->b:I

    iget v6, v6, Lcg;->c:I

    invoke-virtual {v0, v7, v6}, Landroid/support/v7/widget/LinearLayoutManager;->f(II)V

    .line 104
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iput v9, v6, Leg;->h:I

    .line 105
    invoke-virtual {v0, v1, v6, v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;Leg;Lbh;Z)I

    .line 106
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iget v7, v6, Leg;->b:I

    .line 107
    iget v9, v6, Leg;->d:I

    .line 108
    iget v6, v6, Leg;->c:I

    if-lez v6, :cond_2d

    add-int/2addr v3, v6

    .line 109
    :cond_2d
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->B:Lcg;

    .line 110
    iget v10, v6, Lcg;->b:I

    iget v6, v6, Lcg;->c:I

    invoke-virtual {v0, v10, v6}, Landroid/support/v7/widget/LinearLayoutManager;->e(II)V

    .line 111
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iput v3, v6, Leg;->h:I

    .line 112
    iget v3, v6, Leg;->d:I

    iget v10, v6, Leg;->e:I

    add-int/2addr v3, v10

    iput v3, v6, Leg;->d:I

    .line 113
    invoke-virtual {v0, v1, v6, v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;Leg;Lbh;Z)I

    .line 114
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iget v6, v3, Leg;->b:I

    .line 115
    iget v3, v3, Leg;->c:I

    if-lez v3, :cond_2e

    .line 116
    invoke-virtual {v0, v9, v7}, Landroid/support/v7/widget/LinearLayoutManager;->f(II)V

    .line 117
    iget-object v7, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iput v3, v7, Leg;->h:I

    .line 118
    invoke-virtual {v0, v1, v7, v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;Leg;Lbh;Z)I

    .line 119
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iget v7, v3, Leg;->b:I

    :cond_2e
    move v9, v7

    goto :goto_18

    .line 120
    :cond_2f
    iget v7, v6, Lcg;->b:I

    iget v6, v6, Lcg;->c:I

    invoke-virtual {v0, v7, v6}, Landroid/support/v7/widget/LinearLayoutManager;->e(II)V

    .line 121
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iput v3, v6, Leg;->h:I

    .line 122
    invoke-virtual {v0, v1, v6, v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;Leg;Lbh;Z)I

    .line 123
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iget v6, v3, Leg;->b:I

    .line 124
    iget v7, v3, Leg;->d:I

    .line 125
    iget v3, v3, Leg;->c:I

    if-lez v3, :cond_30

    add-int/2addr v9, v3

    .line 126
    :cond_30
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->B:Lcg;

    .line 127
    iget v10, v3, Lcg;->b:I

    iget v3, v3, Lcg;->c:I

    invoke-virtual {v0, v10, v3}, Landroid/support/v7/widget/LinearLayoutManager;->f(II)V

    .line 128
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iput v9, v3, Leg;->h:I

    .line 129
    iget v9, v3, Leg;->d:I

    iget v10, v3, Leg;->e:I

    add-int/2addr v9, v10

    iput v9, v3, Leg;->d:I

    .line 130
    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;Leg;Lbh;Z)I

    .line 131
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iget v9, v3, Leg;->b:I

    .line 132
    iget v3, v3, Leg;->c:I

    if-lez v3, :cond_31

    .line 133
    invoke-virtual {v0, v7, v6}, Landroid/support/v7/widget/LinearLayoutManager;->e(II)V

    .line 134
    iget-object v6, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iput v3, v6, Leg;->h:I

    .line 135
    invoke-virtual {v0, v1, v6, v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;Leg;Lbh;Z)I

    .line 136
    iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iget v6, v3, Leg;->b:I

    .line 137
    :cond_31
    :goto_18
    invoke-virtual/range {p0 .. p0}, LQg;->d()I

    move-result v3

    if-lez v3, :cond_33

    .line 138
    iget-boolean v3, v0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    iget-boolean v7, v0, Landroid/support/v7/widget/LinearLayoutManager;->w:Z

    xor-int/2addr v3, v7

    if-eqz v3, :cond_32

    .line 139
    invoke-virtual {v0, v6, v1, v2, v8}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILXg;Lbh;Z)I

    move-result v3

    add-int/2addr v9, v3

    add-int/2addr v6, v3

    .line 140
    invoke-virtual {v0, v9, v1, v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILXg;Lbh;Z)I

    move-result v3

    goto :goto_19

    .line 141
    :cond_32
    invoke-virtual {v0, v9, v1, v2, v8}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILXg;Lbh;Z)I

    move-result v3

    add-int/2addr v9, v3

    add-int/2addr v6, v3

    .line 142
    invoke-virtual {v0, v6, v1, v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILXg;Lbh;Z)I

    move-result v3

    :goto_19
    add-int/2addr v9, v3

    add-int/2addr v6, v3

    .line 143
    :cond_33
    iget-boolean v3, v2, Lbh;->k:Z

    if-eqz v3, :cond_3c

    .line 144
    invoke-virtual/range {p0 .. p0}, LQg;->d()I

    move-result v3

    if-eqz v3, :cond_3c

    .line 145
    iget-boolean v3, v2, Lbh;->g:Z

    if-nez v3, :cond_3c

    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()Z

    move-result v3

    if-nez v3, :cond_34

    goto/16 :goto_1e

    .line 147
    :cond_34
    iget-object v3, v1, LXg;->d:Ljava/util/List;

    .line 148
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 149
    invoke-virtual {v0, v5}, LQg;->b(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v0, v10}, LQg;->i(Landroid/view/View;)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1a
    if-ge v11, v7, :cond_39

    .line 150
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ldh;

    .line 151
    invoke-virtual {v14}, Ldh;->i()Z

    move-result v15

    if-eqz v15, :cond_35

    goto :goto_1d

    .line 152
    :cond_35
    invoke-virtual {v14}, Ldh;->d()I

    move-result v15

    if-ge v15, v10, :cond_36

    const/4 v15, 0x1

    goto :goto_1b

    :cond_36
    const/4 v15, 0x0

    .line 153
    :goto_1b
    iget-boolean v8, v0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    if-eq v15, v8, :cond_37

    const/4 v8, -0x1

    goto :goto_1c

    :cond_37
    const/4 v8, 0x1

    :goto_1c
    if-ne v8, v4, :cond_38

    .line 154
    iget-object v8, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    iget-object v14, v14, Ldh;->w:Landroid/view/View;

    invoke-virtual {v8, v14}, Lug;->b(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v12

    move v12, v8

    goto :goto_1d

    .line 155
    :cond_38
    iget-object v8, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    iget-object v14, v14, Ldh;->w:Landroid/view/View;

    invoke-virtual {v8, v14}, Lug;->b(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v13

    move v13, v8

    :goto_1d
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    goto :goto_1a

    .line 156
    :cond_39
    iget-object v4, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iput-object v3, v4, Leg;->k:Ljava/util/List;

    const/4 v3, 0x0

    if-lez v12, :cond_3a

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()Landroid/view/View;

    move-result-object v4

    .line 158
    invoke-virtual {v0, v4}, LQg;->i(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v0, v4, v9}, Landroid/support/v7/widget/LinearLayoutManager;->f(II)V

    .line 159
    iget-object v4, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iput v12, v4, Leg;->h:I

    .line 160
    iput v5, v4, Leg;->c:I

    .line 161
    invoke-virtual {v4, v3}, Leg;->a(Landroid/view/View;)V

    .line 162
    iget-object v4, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;Leg;Lbh;Z)I

    :cond_3a
    if-lez v13, :cond_3b

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v4

    .line 164
    invoke-virtual {v0, v4}, LQg;->i(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v0, v4, v6}, Landroid/support/v7/widget/LinearLayoutManager;->e(II)V

    .line 165
    iget-object v4, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iput v13, v4, Leg;->h:I

    .line 166
    iput v5, v4, Leg;->c:I

    .line 167
    invoke-virtual {v4, v3}, Leg;->a(Landroid/view/View;)V

    .line 168
    iget-object v4, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;Leg;Lbh;Z)I

    .line 169
    :cond_3b
    iget-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iput-object v3, v1, Leg;->k:Ljava/util/List;

    .line 170
    :cond_3c
    :goto_1e
    iget-boolean v1, v2, Lbh;->g:Z

    if-nez v1, :cond_3d

    .line 171
    iget-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 172
    invoke-virtual {v1}, Lug;->g()I

    move-result v2

    iput v2, v1, Lug;->b:I

    goto :goto_1f

    .line 173
    :cond_3d
    iget-object v1, v0, Landroid/support/v7/widget/LinearLayoutManager;->B:Lcg;

    invoke-virtual {v1}, Lcg;->b()V

    .line 174
    :goto_1f
    iget-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager;->w:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager;->t:Z

    return-void
.end method

.method public d(Lbh;)I
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(Lbh;)I

    move-result p1

    return p1
.end method

.method public final d(LXg;Lbh;)Landroid/view/View;
    .locals 6

    .line 7
    invoke-virtual {p0}, LQg;->d()I

    move-result v4

    invoke-virtual {p2}, Lbh;->a()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;Lbh;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public d(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->y:I

    .line 2
    iput p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->z:I

    .line 3
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_0

    const/4 p2, -0x1

    .line 4
    iput p2, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->w:I

    .line 5
    :cond_0
    invoke-virtual {p0}, LQg;->o()V

    return-void
.end method

.method public e(Lbh;)I
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Lbh;)I

    move-result p1

    return p1
.end method

.method public final e(LXg;Lbh;)Landroid/view/View;
    .locals 7

    .line 8
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p2}, Lbh;->a()I

    move-result v6

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/widget/LinearLayoutManager;->a(LXg;Lbh;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final e(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v1}, Lug;->b()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Leg;->c:I

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Leg;->e:I

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iput p1, v0, Leg;->d:I

    .line 4
    iput v2, v0, Leg;->f:I

    .line 5
    iput p2, v0, Leg;->b:I

    const/high16 p1, -0x80000000

    .line 6
    iput p1, v0, Leg;->g:I

    return-void
.end method

.method public f(Lbh;)I
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Lbh;)I

    move-result p1

    return p1
.end method

.method public final f(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v1}, Lug;->f()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Leg;->c:I

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iput p1, v0, Leg;->d:I

    .line 3
    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, v0, Leg;->e:I

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    iput v1, p1, Leg;->f:I

    .line 5
    iput p2, p1, Leg;->b:I

    const/high16 p2, -0x80000000

    .line 6
    iput p2, p1, Leg;->g:I

    return-void
.end method

.method public g(I)V
    .locals 1

    .line 5
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->y:I

    const/high16 p1, -0x80000000

    .line 6
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->z:I

    .line 7
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 8
    iput v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->w:I

    .line 9
    :cond_0
    invoke-virtual {p0}, LQg;->o()V

    return-void
.end method

.method public g(Lbh;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->y:I

    const/high16 p1, -0x80000000

    .line 3
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->z:I

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->B:Lcg;

    invoke-virtual {p1}, Lcg;->b()V

    return-void
.end method

.method public h(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v3

    .line 7
    :cond_0
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, -0x80000000

    :goto_0
    return v1

    .line 8
    :cond_2
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v1, -0x80000000

    :goto_1
    return v1

    .line 9
    :cond_4
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    const/high16 v0, -0x80000000

    :goto_2
    return v0

    .line 10
    :cond_6
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    const/high16 v0, -0x80000000

    :goto_3
    return v0

    .line 11
    :cond_8
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-ne p1, v1, :cond_9

    return v1

    .line 12
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->w()Z

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    return v1

    .line 13
    :cond_b
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-ne p1, v1, :cond_c

    return v0

    .line 14
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->w()Z

    move-result p1

    if-eqz p1, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public final h(Lbh;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()V

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->x:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 4
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->x:Z

    xor-int/2addr v0, v2

    .line 5
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->x:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 6
    invoke-static/range {v0 .. v5}, Lih;->a(Lbh;Lug;Landroid/view/View;Landroid/view/View;LQg;Z)I

    move-result p1

    return p1
.end method

.method public final i(Lbh;)I
    .locals 7

    .line 8
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()V

    .line 10
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->x:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 11
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->x:Z

    xor-int/2addr v0, v2

    .line 12
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->x:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 13
    invoke-static/range {v0 .. v6}, Lih;->a(Lbh;Lug;Landroid/view/View;Landroid/view/View;LQg;ZZ)I

    move-result p1

    return p1
.end method

.method public i(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation:"

    invoke-static {v1, p1}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 3
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    if-nez v0, :cond_3

    .line 4
    :cond_2
    invoke-static {p0, p1}, Lug;->a(LQg;I)Lug;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 5
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->B:Lcg;

    iput-object v0, v1, Lcg;->a:Lug;

    .line 6
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    .line 7
    invoke-virtual {p0}, LQg;->o()V

    :cond_3
    return-void
.end method

.method public final j(Lbh;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()V

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->x:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 4
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->x:Z

    xor-int/2addr v0, v2

    .line 5
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->x:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 6
    invoke-static/range {v0 .. v5}, Lih;->b(Lbh;Lug;Landroid/view/View;Landroid/view/View;LQg;Z)I

    move-result p1

    return p1
.end method

.method public k(Lbh;)I
    .locals 2

    .line 1
    iget p1, p1, Lbh;->a:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {p1}, Lug;->g()I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public n()Landroid/os/Parcelable;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 4
    invoke-virtual {p0}, LQg;->d()I

    move-result v1

    if-lez v1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()V

    .line 6
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    xor-int/2addr v1, v2

    .line 7
    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->y:Z

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v1

    .line 9
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v2}, Lug;->b()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 10
    invoke-virtual {v3, v1}, Lug;->a(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->x:I

    .line 11
    invoke-virtual {p0, v1}, LQg;->i(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->w:I

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->v()Landroid/view/View;

    move-result-object v1

    .line 13
    invoke-virtual {p0, v1}, LQg;->i(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->w:I

    .line 14
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v2, v1}, Lug;->d(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 15
    invoke-virtual {v2}, Lug;->f()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->x:I

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 16
    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->w:I

    :goto_0
    return-object v0
.end method

.method public p()Z
    .locals 6

    .line 1
    iget v0, p0, LQg;->n:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    .line 2
    iget v0, p0, LQg;->m:I

    if-eq v0, v1, :cond_2

    .line 3
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, LQg;->b(I)Landroid/view/View;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 6
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v5, :cond_0

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public q()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->A:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->t:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->w:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Leg;

    invoke-direct {v0}, Leg;-><init>()V

    .line 3
    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->r:Leg;

    :cond_0
    return-void
.end method

.method public s()I
    .locals 3

    .line 1
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, LQg;->i(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public t()I
    .locals 4

    .line 1
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, LQg;->i(Landroid/view/View;)I

    move-result v2

    :goto_0
    return v2
.end method

.method public final u()Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, LQg;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final v()Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LQg;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, LQg;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public w()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LQg;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    invoke-virtual {v0}, Lug;->d()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->s:Lug;

    .line 2
    invoke-virtual {v0}, Lug;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final y()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->w()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->u:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->u:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->v:Z

    :goto_1
    return-void
.end method
