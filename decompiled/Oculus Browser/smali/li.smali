.class public Lli;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lxi;


# direct methods
.method public constructor <init>(Lxi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lli;->w:Lxi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lli;->w:Lxi;

    iget-object v2, v1, Lxi;->c:Ldh;

    if-eqz v2, :cond_d

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v5, 0x0

    if-nez v2, :cond_0

    .line 2
    iput-wide v3, v1, Lxi;->D:J

    goto/16 :goto_5

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 4
    iget-wide v8, v1, Lxi;->D:J

    cmp-long v2, v8, v3

    if-nez v2, :cond_1

    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_1
    sub-long v8, v6, v8

    .line 5
    :goto_0
    iget-object v2, v1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    .line 6
    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    .line 7
    iget-object v10, v1, Lxi;->C:Landroid/graphics/Rect;

    if-nez v10, :cond_2

    .line 8
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v1, Lxi;->C:Landroid/graphics/Rect;

    .line 9
    :cond_2
    iget-object v10, v1, Lxi;->c:Ldh;

    iget-object v10, v10, Ldh;->w:Landroid/view/View;

    iget-object v11, v1, Lxi;->C:Landroid/graphics/Rect;

    invoke-virtual {v2, v10, v11}, LQg;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 10
    invoke-virtual {v2}, LQg;->a()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_4

    .line 11
    iget v10, v1, Lxi;->j:F

    iget v12, v1, Lxi;->h:F

    add-float/2addr v10, v12

    float-to-int v10, v10

    .line 12
    iget-object v12, v1, Lxi;->C:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int v12, v10, v12

    iget-object v13, v1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    .line 13
    iget v13, v1, Lxi;->h:F

    cmpg-float v13, v13, v11

    if-gez v13, :cond_3

    if-gez v12, :cond_3

    move v13, v12

    goto :goto_1

    .line 14
    :cond_3
    iget v12, v1, Lxi;->h:F

    cmpl-float v12, v12, v11

    if-lez v12, :cond_4

    .line 15
    iget-object v12, v1, Lxi;->c:Ldh;

    iget-object v12, v12, Ldh;->w:Landroid/view/View;

    .line 16
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v10

    iget-object v10, v1, Lxi;->C:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v10

    iget-object v10, v1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    .line 17
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    iget-object v13, v1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v13

    sub-int/2addr v10, v13

    sub-int v10, v12, v10

    if-lez v10, :cond_4

    move v13, v10

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    .line 18
    :goto_1
    invoke-virtual {v2}, LQg;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19
    iget v2, v1, Lxi;->k:F

    iget v10, v1, Lxi;->i:F

    add-float/2addr v2, v10

    float-to-int v2, v2

    .line 20
    iget-object v10, v1, Lxi;->C:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int v10, v2, v10

    iget-object v12, v1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v12

    sub-int/2addr v10, v12

    .line 21
    iget v12, v1, Lxi;->i:F

    cmpg-float v12, v12, v11

    if-gez v12, :cond_5

    if-gez v10, :cond_5

    move v2, v10

    goto :goto_2

    .line 22
    :cond_5
    iget v10, v1, Lxi;->i:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6

    .line 23
    iget-object v10, v1, Lxi;->c:Ldh;

    iget-object v10, v10, Ldh;->w:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v2

    iget-object v2, v1, Lxi;->C:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v2

    iget-object v2, v1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    .line 24
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget-object v11, v1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v2, v11

    sub-int v2, v10, v2

    if-lez v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-eqz v13, :cond_7

    .line 25
    iget-object v10, v1, Lxi;->m:Lsi;

    iget-object v11, v1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v12, v1, Lxi;->c:Ldh;

    iget-object v12, v12, Ldh;->w:Landroid/view/View;

    .line 26
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    iget-object v14, v1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    .line 27
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getWidth()I

    move-wide v14, v8

    .line 28
    invoke-virtual/range {v10 .. v15}, Lsi;->a(Landroid/support/v7/widget/RecyclerView;IIJ)I

    move-result v13

    :cond_7
    move v14, v13

    if-eqz v2, :cond_8

    .line 29
    iget-object v10, v1, Lxi;->m:Lsi;

    iget-object v11, v1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v12, v1, Lxi;->c:Ldh;

    iget-object v12, v12, Ldh;->w:Landroid/view/View;

    .line 30
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    iget-object v13, v1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    .line 31
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getHeight()I

    move v13, v2

    move v2, v14

    move-wide v14, v8

    .line 32
    invoke-virtual/range {v10 .. v15}, Lsi;->a(Landroid/support/v7/widget/RecyclerView;IIJ)I

    move-result v8

    move v13, v2

    move v2, v8

    goto :goto_3

    :cond_8
    move v13, v14

    :goto_3
    if-nez v13, :cond_a

    if-eqz v2, :cond_9

    goto :goto_4

    .line 33
    :cond_9
    iput-wide v3, v1, Lxi;->D:J

    goto :goto_5

    .line 34
    :cond_a
    :goto_4
    iget-wide v8, v1, Lxi;->D:J

    cmp-long v5, v8, v3

    if-nez v5, :cond_b

    .line 35
    iput-wide v6, v1, Lxi;->D:J

    .line 36
    :cond_b
    iget-object v1, v1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v13, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    const/4 v5, 0x1

    :goto_5
    if-eqz v5, :cond_d

    .line 37
    iget-object v1, v0, Lli;->w:Lxi;

    iget-object v2, v1, Lxi;->c:Ldh;

    if-eqz v2, :cond_c

    .line 38
    invoke-virtual {v1, v2}, Lxi;->a(Ldh;)V

    .line 39
    :cond_c
    iget-object v1, v0, Lli;->w:Lxi;

    iget-object v2, v1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lxi;->s:Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 40
    iget-object v1, v0, Lli;->w:Lxi;

    iget-object v1, v1, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v0}, LA7;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_d
    return-void
.end method
