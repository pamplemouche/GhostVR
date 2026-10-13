.class public Lxi;
.super LLg;
.source "PG"

# interfaces
.implements LSg;


# instance fields
.field public A:Lti;

.field public final B:LTg;

.field public C:Landroid/graphics/Rect;

.field public D:J

.field public final a:Ljava/util/List;

.field public final b:[F

.field public c:Ldh;

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public m:Lsi;

.field public n:I

.field public o:I

.field public p:Ljava/util/List;

.field public q:I

.field public r:Landroid/support/v7/widget/RecyclerView;

.field public final s:Ljava/lang/Runnable;

.field public t:Landroid/view/VelocityTracker;

.field public u:Ljava/util/List;

.field public v:Ljava/util/List;

.field public w:LEg;

.field public x:Landroid/view/View;

.field public y:I

.field public z:Lm7;


# direct methods
.method public constructor <init>(Lsi;)V
    .locals 3

    .line 1
    invoke-direct {p0}, LLg;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxi;->a:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Lxi;->b:[F

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lxi;->c:Ldh;

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lxi;->l:I

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lxi;->n:I

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lxi;->p:Ljava/util/List;

    .line 8
    new-instance v2, Lli;

    invoke-direct {v2, p0}, Lli;-><init>(Lxi;)V

    iput-object v2, p0, Lxi;->s:Ljava/lang/Runnable;

    .line 9
    iput-object v0, p0, Lxi;->w:LEg;

    .line 10
    iput-object v0, p0, Lxi;->x:Landroid/view/View;

    .line 11
    iput v1, p0, Lxi;->y:I

    .line 12
    new-instance v0, Lmi;

    invoke-direct {v0, p0}, Lmi;-><init>(Lxi;)V

    iput-object v0, p0, Lxi;->B:LTg;

    .line 13
    iput-object p1, p0, Lxi;->m:Lsi;

    return-void
.end method

.method public static a(Landroid/view/View;FFFF)Z
    .locals 1

    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_0

    cmpl-float p1, p2, p4

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p4, p0

    cmpg-float p0, p2, p4

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a(Ldh;I)I
    .locals 8

    and-int/lit8 p1, p2, 0xc

    if-eqz p1, :cond_6

    .line 212
    iget p1, p0, Lxi;->h:F

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/16 v2, 0x8

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 213
    :goto_0
    iget-object v3, p0, Lxi;->t:Landroid/view/VelocityTracker;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget v5, p0, Lxi;->l:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_4

    const/16 v5, 0x3e8

    .line 214
    iget-object v6, p0, Lxi;->m:Lsi;

    iget v7, p0, Lxi;->g:F

    if-eqz v6, :cond_3

    invoke-virtual {v3, v5, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 215
    iget-object v3, p0, Lxi;->t:Landroid/view/VelocityTracker;

    iget v5, p0, Lxi;->l:I

    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    .line 216
    iget-object v5, p0, Lxi;->t:Landroid/view/VelocityTracker;

    iget v6, p0, Lxi;->l:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    const/16 v1, 0x8

    .line 217
    :cond_1
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    and-int v2, v1, p2

    if-eqz v2, :cond_4

    if-ne p1, v1, :cond_4

    .line 218
    iget-object v2, p0, Lxi;->m:Lsi;

    iget v3, p0, Lxi;->f:F

    if-eqz v2, :cond_2

    cmpl-float v2, v0, v3

    if-ltz v2, :cond_4

    .line 219
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    return v1

    .line 220
    :cond_2
    throw v4

    .line 221
    :cond_3
    throw v4

    .line 222
    :cond_4
    iget-object v0, p0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lxi;->m:Lsi;

    if-eqz v1, :cond_5

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    and-int/2addr p2, p1

    if-eqz p2, :cond_6

    .line 223
    iget p2, p0, Lxi;->h:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_6

    return p1

    .line 224
    :cond_5
    throw v4

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 7

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 188
    iget-object v1, p0, Lxi;->c:Ldh;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, v1, Ldh;->w:Landroid/view/View;

    .line 190
    iget v2, p0, Lxi;->j:F

    iget v3, p0, Lxi;->h:F

    add-float/2addr v2, v3

    iget v3, p0, Lxi;->k:F

    iget v4, p0, Lxi;->i:F

    add-float/2addr v3, v4

    invoke-static {v1, v0, p1, v2, v3}, Lxi;->a(Landroid/view/View;FFFF)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 191
    :cond_0
    iget-object v1, p0, Lxi;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 192
    iget-object v2, p0, Lxi;->p:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvi;

    .line 193
    iget-object v3, v2, Lvi;->A:Ldh;

    iget-object v3, v3, Ldh;->w:Landroid/view/View;

    .line 194
    iget v4, v2, Lvi;->E:F

    iget v2, v2, Lvi;->F:F

    invoke-static {v3, v0, p1, v4, v2}, Lxi;->a(Landroid/view/View;FFFF)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 195
    :cond_2
    iget-object v1, p0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    .line 196
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v2}, LWe;->a()I

    move-result v2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    .line 197
    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView;->A:LWe;

    invoke-virtual {v3, v2}, LWe;->b(I)Landroid/view/View;

    move-result-object v3

    .line 198
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v4

    .line 199
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .line 200
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v4

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_3

    .line 201
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v4

    cmpg-float v4, v0, v6

    if-gtz v4, :cond_3

    .line 202
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v5

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_3

    .line 203
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v5

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public a(ILandroid/view/MotionEvent;I)V
    .locals 8

    .line 159
    iget-object v0, p0, Lxi;->c:Ldh;

    if-nez v0, :cond_e

    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    iget p1, p0, Lxi;->n:I

    if-eq p1, v0, :cond_e

    iget-object p1, p0, Lxi;->m:Lsi;

    .line 160
    invoke-virtual {p1}, Lsi;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 161
    :cond_0
    iget-object p1, p0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    .line 162
    iget v1, p1, Landroid/support/v7/widget/RecyclerView;->m0:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return-void

    .line 163
    :cond_1
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    .line 164
    iget v1, p0, Lxi;->l:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 166
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v5, p0, Lxi;->d:F

    sub-float/2addr v3, v5

    .line 167
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v5, p0, Lxi;->e:F

    sub-float/2addr v1, v5

    .line 168
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 169
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 170
    iget v5, p0, Lxi;->q:I

    int-to-float v5, v5

    cmpg-float v6, v3, v5

    if-gez v6, :cond_3

    cmpg-float v5, v1, v5

    if-gez v5, :cond_3

    goto :goto_0

    :cond_3
    cmpl-float v5, v3, v1

    if-lez v5, :cond_4

    .line 171
    invoke-virtual {p1}, LQg;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    .line 172
    invoke-virtual {p1}, LQg;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 173
    :cond_5
    invoke-virtual {p0, p2}, Lxi;->a(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_0

    .line 174
    :cond_6
    iget-object v1, p0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Ldh;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_7

    return-void

    .line 175
    :cond_7
    iget-object p1, p0, Lxi;->m:Lsi;

    iget-object v1, p0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v1, v4}, Lsi;->b(Landroid/support/v7/widget/RecyclerView;Ldh;)I

    move-result p1

    const v1, 0xff00

    and-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_8

    return-void

    .line 176
    :cond_8
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 177
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p3

    .line 178
    iget v3, p0, Lxi;->d:F

    sub-float/2addr v1, v3

    .line 179
    iget v3, p0, Lxi;->e:F

    sub-float/2addr p3, v3

    .line 180
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 181
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 182
    iget v6, p0, Lxi;->q:I

    int-to-float v7, v6

    cmpg-float v7, v3, v7

    if-gez v7, :cond_9

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_9

    return-void

    :cond_9
    const/4 v6, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_b

    cmpg-float p3, v1, v6

    if-gez p3, :cond_a

    and-int/lit8 p3, p1, 0x4

    if-nez p3, :cond_a

    return-void

    :cond_a
    cmpl-float p3, v1, v6

    if-lez p3, :cond_d

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_d

    return-void

    :cond_b
    cmpg-float v1, p3, v6

    if-gez v1, :cond_c

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_c

    return-void

    :cond_c
    cmpl-float p3, p3, v6

    if-lez p3, :cond_d

    and-int/2addr p1, v0

    if-nez p1, :cond_d

    return-void

    .line 183
    :cond_d
    iput v6, p0, Lxi;->i:F

    iput v6, p0, Lxi;->h:F

    const/4 p1, 0x0

    .line 184
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lxi;->l:I

    .line 185
    invoke-virtual {p0, v4, v2}, Lxi;->c(Ldh;I)V

    :cond_e
    :goto_1
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Lbh;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    const/4 v1, -0x1

    .line 47
    iput v1, v0, Lxi;->y:I

    .line 48
    iget-object v1, v0, Lxi;->c:Ldh;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, v0, Lxi;->b:[F

    invoke-virtual {v0, v1}, Lxi;->a([F)V

    .line 50
    iget-object v1, v0, Lxi;->b:[F

    aget v2, v1, v2

    const/4 v3, 0x1

    .line 51
    aget v1, v1, v3

    move v11, v1

    move v10, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 52
    :goto_0
    iget-object v12, v0, Lxi;->m:Lsi;

    iget-object v13, v0, Lxi;->c:Ldh;

    iget-object v14, v0, Lxi;->p:Ljava/util/List;

    iget v15, v0, Lxi;->n:I

    if-eqz v12, :cond_5

    .line 53
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v8

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_3

    .line 54
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvi;

    .line 55
    iget v2, v1, Lvi;->w:F

    iget v3, v1, Lvi;->y:F

    cmpl-float v4, v2, v3

    if-nez v4, :cond_1

    .line 56
    iget-object v2, v1, Lvi;->A:Ldh;

    iget-object v2, v2, Ldh;->w:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iput v2, v1, Lvi;->E:F

    goto :goto_2

    .line 57
    :cond_1
    iget v4, v1, Lvi;->I:F

    invoke-static {v3, v2, v4, v2}, LZi;->a(FFFF)F

    move-result v2

    iput v2, v1, Lvi;->E:F

    .line 58
    :goto_2
    iget v2, v1, Lvi;->x:F

    iget v3, v1, Lvi;->z:F

    cmpl-float v4, v2, v3

    if-nez v4, :cond_2

    .line 59
    iget-object v2, v1, Lvi;->A:Ldh;

    iget-object v2, v2, Ldh;->w:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iput v2, v1, Lvi;->F:F

    goto :goto_3

    .line 60
    :cond_2
    iget v4, v1, Lvi;->I:F

    invoke-static {v3, v2, v4, v2}, LZi;->a(FFFF)F

    move-result v2

    iput v2, v1, Lvi;->F:F

    .line 61
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 62
    iget-object v4, v1, Lvi;->A:Ldh;

    iget v5, v1, Lvi;->E:F

    iget v3, v1, Lvi;->F:F

    iget v2, v1, Lvi;->B:I

    const/16 v16, 0x0

    move-object v1, v12

    move/from16 v17, v2

    move-object/from16 v2, p1

    move/from16 v18, v3

    move-object/from16 v3, p2

    move/from16 v19, v6

    move/from16 v6, v18

    move/from16 v18, v7

    move/from16 v7, v17

    move/from16 v17, v8

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lsi;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Ldh;FFIZ)V

    move/from16 v1, v19

    .line 63
    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v7, v18, 0x1

    move/from16 v8, v17

    goto :goto_1

    :cond_3
    if-eqz v13, :cond_4

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v14

    const/4 v8, 0x1

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v13

    move v5, v10

    move v6, v11

    move v7, v15

    .line 65
    invoke-virtual/range {v1 .. v8}, Lsi;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Ldh;FFIZ)V

    .line 66
    invoke-virtual {v9, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x0

    .line 67
    throw v1
.end method

.method public a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lbh;)V
    .locals 0

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    .line 3
    iget-object v0, p0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_6

    .line 4
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->b(LLg;)V

    .line 5
    iget-object v0, p0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lxi;->B:LTg;

    .line 6
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->M:LTg;

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 8
    iput-object v3, v0, Landroid/support/v7/widget/RecyclerView;->M:LTg;

    .line 9
    :cond_1
    iget-object v0, p0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    .line 10
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b0:Ljava/util/List;

    if-nez v0, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12
    :goto_0
    iget-object v0, p0, Lxi;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_1
    const/4 v2, 0x0

    if-ltz v0, :cond_3

    .line 13
    iget-object v4, p0, Lxi;->p:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvi;

    .line 14
    iget-object v4, p0, Lxi;->m:Lsi;

    iget-object v5, p0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lvi;->A:Ldh;

    invoke-virtual {v4, v5, v2}, Lsi;->a(Landroid/support/v7/widget/RecyclerView;Ldh;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 15
    :cond_3
    iget-object v0, p0, Lxi;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    iput-object v3, p0, Lxi;->x:Landroid/view/View;

    .line 17
    iput v1, p0, Lxi;->y:I

    .line 18
    iget-object v0, p0, Lxi;->t:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 20
    iput-object v3, p0, Lxi;->t:Landroid/view/VelocityTracker;

    .line 21
    :cond_4
    iget-object v0, p0, Lxi;->A:Lti;

    if-eqz v0, :cond_5

    .line 22
    iput-boolean v2, v0, Lti;->w:Z

    .line 23
    iput-object v3, p0, Lxi;->A:Lti;

    .line 24
    :cond_5
    iget-object v0, p0, Lxi;->z:Lm7;

    if-eqz v0, :cond_6

    .line 25
    iput-object v3, p0, Lxi;->z:Lm7;

    .line 26
    :cond_6
    iput-object p1, p0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_8

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070166

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lxi;->f:F

    const v0, 0x7f070165

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lxi;->g:F

    .line 30
    iget-object p1, p0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lxi;->q:I

    .line 32
    iget-object p1, p0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->a(LLg;)V

    .line 33
    iget-object p1, p0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lxi;->B:LTg;

    .line 34
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->L:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object p1, p0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    .line 36
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->b0:Ljava/util/List;

    if-nez v0, :cond_7

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Landroid/support/v7/widget/RecyclerView;->b0:Ljava/util/List;

    .line 38
    :cond_7
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->b0:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance p1, Lti;

    invoke-direct {p1, p0}, Lti;-><init>(Lxi;)V

    iput-object p1, p0, Lxi;->A:Lti;

    .line 40
    new-instance p1, Lm7;

    iget-object v0, p0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lxi;->A:Lti;

    invoke-direct {p1, v0, v1}, Lm7;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lxi;->z:Lm7;

    :cond_8
    return-void
.end method

.method public a(Landroid/view/MotionEvent;II)V
    .locals 1

    .line 204
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 205
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 206
    iget p3, p0, Lxi;->d:F

    sub-float/2addr v0, p3

    iput v0, p0, Lxi;->h:F

    .line 207
    iget p3, p0, Lxi;->e:F

    sub-float/2addr p1, p3

    iput p1, p0, Lxi;->i:F

    and-int/lit8 p1, p2, 0x4

    const/4 p3, 0x0

    if-nez p1, :cond_0

    .line 208
    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lxi;->h:F

    :cond_0
    and-int/lit8 p1, p2, 0x8

    if-nez p1, :cond_1

    .line 209
    iget p1, p0, Lxi;->h:F

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lxi;->h:F

    :cond_1
    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_2

    .line 210
    iget p1, p0, Lxi;->i:F

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lxi;->i:F

    :cond_2
    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_3

    .line 211
    iget p1, p0, Lxi;->i:F

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lxi;->i:F

    :cond_3
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lxi;->x:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 226
    iput-object p1, p0, Lxi;->x:Landroid/view/View;

    .line 227
    iget-object v0, p0, Lxi;->w:LEg;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(LEg;)V

    :cond_0
    return-void
.end method

.method public a(Ldh;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 68
    iget-object v2, v0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 69
    :cond_0
    iget v2, v0, Lxi;->n:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    return-void

    .line 70
    :cond_1
    iget-object v2, v0, Lxi;->m:Lsi;

    if-eqz v2, :cond_1a

    const/high16 v2, 0x3f000000    # 0.5f

    .line 71
    iget v5, v0, Lxi;->j:F

    iget v6, v0, Lxi;->h:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 72
    iget v6, v0, Lxi;->k:F

    iget v7, v0, Lxi;->i:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 73
    iget-object v7, v1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v2

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    iget-object v7, v1, Ldh;->w:Landroid/view/View;

    .line 74
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v1, Ldh;->w:Landroid/view/View;

    .line 75
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v2

    cmpg-float v2, v7, v8

    if-gez v2, :cond_2

    return-void

    .line 76
    :cond_2
    iget-object v2, v0, Lxi;->u:Ljava/util/List;

    if-nez v2, :cond_3

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lxi;->u:Ljava/util/List;

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lxi;->v:Ljava/util/List;

    goto :goto_0

    .line 79
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 80
    iget-object v2, v0, Lxi;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 81
    :goto_0
    iget-object v2, v0, Lxi;->m:Lsi;

    if-eqz v2, :cond_19

    .line 82
    iget v2, v0, Lxi;->j:F

    iget v7, v0, Lxi;->h:F

    add-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v7, 0x0

    sub-int/2addr v2, v7

    .line 83
    iget v8, v0, Lxi;->k:F

    iget v9, v0, Lxi;->i:F

    add-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int/2addr v8, v7

    .line 84
    iget-object v9, v1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v2

    add-int/2addr v9, v7

    .line 85
    iget-object v10, v1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v8

    add-int/2addr v10, v7

    add-int v11, v2, v9

    .line 86
    div-int/2addr v11, v3

    add-int v12, v8, v10

    .line 87
    div-int/2addr v12, v3

    .line 88
    iget-object v13, v0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    .line 89
    iget-object v13, v13, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    .line 90
    invoke-virtual {v13}, LQg;->d()I

    move-result v14

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_9

    .line 91
    invoke-virtual {v13, v15}, LQg;->b(I)Landroid/view/View;

    move-result-object v7

    .line 92
    iget-object v4, v1, Ldh;->w:Landroid/view/View;

    if-ne v7, v4, :cond_4

    goto/16 :goto_3

    .line 93
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v4

    if-lt v4, v8, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    if-gt v4, v10, :cond_7

    .line 94
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v4

    if-lt v4, v2, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v4

    if-le v4, v9, :cond_5

    goto :goto_3

    .line 95
    :cond_5
    iget-object v4, v0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v7}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Ldh;

    move-result-object v4

    .line 96
    iget-object v3, v0, Lxi;->m:Lsi;

    move/from16 v17, v2

    iget-object v2, v0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    move/from16 v18, v8

    iget-object v8, v0, Lxi;->c:Ldh;

    invoke-virtual {v3, v2, v8, v4}, Lsi;->a(Landroid/support/v7/widget/RecyclerView;Ldh;Ldh;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 97
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v2, 0x2

    div-int/2addr v3, v2

    sub-int v3, v11, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 98
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, v8

    div-int/2addr v7, v2

    sub-int v7, v12, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    mul-int v3, v3, v3

    mul-int v7, v7, v7

    add-int/2addr v7, v3

    .line 99
    iget-object v3, v0, Lxi;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_6

    move/from16 v19, v3

    .line 100
    iget-object v3, v0, Lxi;->v:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v7, v3, :cond_6

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v19

    goto :goto_2

    .line 101
    :cond_6
    iget-object v3, v0, Lxi;->u:Ljava/util/List;

    invoke-interface {v3, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 102
    iget-object v3, v0, Lxi;->v:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_7
    :goto_3
    move/from16 v17, v2

    move/from16 v18, v8

    :cond_8
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v17

    move/from16 v8, v18

    const/4 v3, 0x2

    const/4 v7, 0x0

    goto/16 :goto_1

    .line 103
    :cond_9
    iget-object v2, v0, Lxi;->u:Ljava/util/List;

    .line 104
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a

    return-void

    .line 105
    :cond_a
    iget-object v3, v0, Lxi;->m:Lsi;

    if-eqz v3, :cond_18

    .line 106
    iget-object v3, v1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v5

    .line 107
    iget-object v4, v1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v6

    .line 108
    iget-object v7, v1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v7, v5, v7

    .line 109
    iget-object v8, v1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v8, v6, v8

    .line 110
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    :goto_5
    if-ge v10, v9, :cond_10

    .line 111
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ldh;

    if-lez v7, :cond_b

    .line 112
    iget-object v14, v13, Ldh;->w:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v14

    sub-int/2addr v14, v3

    if-gez v14, :cond_b

    .line 113
    iget-object v15, v13, Ldh;->w:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    move-object/from16 v16, v2

    iget-object v2, v1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v15, v2, :cond_c

    .line 114
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v12, :cond_c

    move-object v11, v13

    goto :goto_6

    :cond_b
    move-object/from16 v16, v2

    :cond_c
    move v2, v12

    :goto_6
    if-gez v7, :cond_d

    .line 115
    iget-object v12, v13, Ldh;->w:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int/2addr v12, v5

    if-lez v12, :cond_d

    .line 116
    iget-object v14, v13, Ldh;->w:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v14

    iget-object v15, v1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v15

    if-ge v14, v15, :cond_d

    .line 117
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v12, v2, :cond_d

    move v2, v12

    move-object v11, v13

    :cond_d
    if-gez v8, :cond_e

    .line 118
    iget-object v12, v13, Ldh;->w:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int/2addr v12, v6

    if-lez v12, :cond_e

    .line 119
    iget-object v14, v13, Ldh;->w:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    iget-object v15, v1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    if-ge v14, v15, :cond_e

    .line 120
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v12, v2, :cond_e

    move v2, v12

    move-object v11, v13

    :cond_e
    if-lez v8, :cond_f

    .line 121
    iget-object v12, v13, Ldh;->w:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    sub-int/2addr v12, v4

    if-gez v12, :cond_f

    .line 122
    iget-object v14, v13, Ldh;->w:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    iget-object v15, v1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v15

    if-le v14, v15, :cond_f

    .line 123
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v12, v2, :cond_f

    move-object v11, v13

    goto :goto_7

    :cond_f
    move v12, v2

    :goto_7
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v16

    goto/16 :goto_5

    :cond_10
    if-nez v11, :cond_11

    .line 124
    iget-object v1, v0, Lxi;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 125
    iget-object v1, v0, Lxi;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void

    .line 126
    :cond_11
    invoke-virtual {v11}, Ldh;->c()I

    move-result v2

    .line 127
    invoke-virtual/range {p1 .. p1}, Ldh;->c()I

    .line 128
    iget-object v3, v0, Lxi;->m:Lsi;

    iget-object v4, v0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4, v1, v11}, Lsi;->b(Landroid/support/v7/widget/RecyclerView;Ldh;Ldh;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 129
    iget-object v3, v0, Lxi;->m:Lsi;

    iget-object v4, v0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_16

    .line 130
    iget-object v3, v4, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    .line 131
    instance-of v7, v3, Lwi;

    if-eqz v7, :cond_12

    .line 132
    check-cast v3, Lwi;

    iget-object v1, v1, Ldh;->w:Landroid/view/View;

    iget-object v2, v11, Ldh;->w:Landroid/view/View;

    invoke-interface {v3, v1, v2, v5, v6}, Lwi;->a(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_8

    .line 133
    :cond_12
    invoke-virtual {v3}, LQg;->a()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 134
    iget-object v1, v11, Ldh;->w:Landroid/view/View;

    invoke-virtual {v3, v1}, LQg;->d(Landroid/view/View;)I

    move-result v1

    .line 135
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    if-gt v1, v5, :cond_13

    .line 136
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->c(I)V

    .line 137
    :cond_13
    iget-object v1, v11, Ldh;->w:Landroid/view/View;

    invoke-virtual {v3, v1}, LQg;->g(Landroid/view/View;)I

    move-result v1

    .line 138
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-lt v1, v5, :cond_14

    .line 139
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->c(I)V

    .line 140
    :cond_14
    invoke-virtual {v3}, LQg;->b()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 141
    iget-object v1, v11, Ldh;->w:Landroid/view/View;

    invoke-virtual {v3, v1}, LQg;->h(Landroid/view/View;)I

    move-result v1

    .line 142
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    if-gt v1, v5, :cond_15

    .line 143
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->c(I)V

    .line 144
    :cond_15
    iget-object v1, v11, Ldh;->w:Landroid/view/View;

    invoke-virtual {v3, v1}, LQg;->c(Landroid/view/View;)I

    move-result v1

    .line 145
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    if-lt v1, v3, :cond_17

    .line 146
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->c(I)V

    goto :goto_8

    :cond_16
    const/4 v1, 0x0

    .line 147
    throw v1

    :cond_17
    :goto_8
    return-void

    :cond_18
    const/4 v1, 0x0

    .line 148
    throw v1

    :cond_19
    const/4 v1, 0x0

    .line 149
    throw v1

    :cond_1a
    const/4 v1, 0x0

    .line 150
    throw v1
.end method

.method public a(Ldh;Z)V
    .locals 3

    .line 151
    iget-object v0, p0, Lxi;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 152
    iget-object v1, p0, Lxi;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvi;

    .line 153
    iget-object v2, v1, Lvi;->A:Ldh;

    if-ne v2, p1, :cond_1

    .line 154
    iget-boolean p1, v1, Lvi;->G:Z

    or-int/2addr p1, p2

    iput-boolean p1, v1, Lvi;->G:Z

    .line 155
    iget-boolean p1, v1, Lvi;->H:Z

    if-nez p1, :cond_0

    .line 156
    iget-object p1, v1, Lvi;->C:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 157
    :cond_0
    iget-object p1, p0, Lxi;->p:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a([F)V
    .locals 3

    .line 41
    iget v0, p0, Lxi;->o:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 42
    iget v0, p0, Lxi;->j:F

    iget v2, p0, Lxi;->h:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lxi;->c:Ldh;

    iget-object v2, v2, Ldh;->w:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lxi;->c:Ldh;

    iget-object v0, v0, Ldh;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v1

    .line 44
    :goto_0
    iget v0, p0, Lxi;->o:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 45
    iget v0, p0, Lxi;->k:F

    iget v2, p0, Lxi;->i:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lxi;->c:Ldh;

    iget-object v2, v2, Ldh;->w:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_1

    .line 46
    :cond_1
    iget-object v0, p0, Lxi;->c:Ldh;

    iget-object v0, v0, Ldh;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    aput v0, p1, v1

    :goto_1
    return-void
.end method

.method public final b(Ldh;I)I
    .locals 8

    and-int/lit8 p1, p2, 0x3

    if-eqz p1, :cond_6

    .line 21
    iget p1, p0, Lxi;->i:F

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 22
    :goto_0
    iget-object v3, p0, Lxi;->t:Landroid/view/VelocityTracker;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget v5, p0, Lxi;->l:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_4

    const/16 v5, 0x3e8

    .line 23
    iget-object v6, p0, Lxi;->m:Lsi;

    iget v7, p0, Lxi;->g:F

    if-eqz v6, :cond_3

    invoke-virtual {v3, v5, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 24
    iget-object v3, p0, Lxi;->t:Landroid/view/VelocityTracker;

    iget v5, p0, Lxi;->l:I

    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    .line 25
    iget-object v5, p0, Lxi;->t:Landroid/view/VelocityTracker;

    iget v6, p0, Lxi;->l:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    cmpl-float v0, v5, v0

    if-lez v0, :cond_1

    const/4 v1, 0x2

    .line 26
    :cond_1
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    and-int v2, v1, p2

    if-eqz v2, :cond_4

    if-ne v1, p1, :cond_4

    .line 27
    iget-object v2, p0, Lxi;->m:Lsi;

    iget v5, p0, Lxi;->f:F

    if-eqz v2, :cond_2

    cmpl-float v2, v0, v5

    if-ltz v2, :cond_4

    .line 28
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    return v1

    .line 29
    :cond_2
    throw v4

    .line 30
    :cond_3
    throw v4

    .line 31
    :cond_4
    iget-object v0, p0, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lxi;->m:Lsi;

    if-eqz v1, :cond_5

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    and-int/2addr p2, p1

    if-eqz p2, :cond_6

    .line 32
    iget p2, p0, Lxi;->i:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_6

    return p1

    .line 33
    :cond_5
    throw v4

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Lbh;)V
    .locals 9

    .line 1
    iget-object p3, p0, Lxi;->c:Ldh;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p0, Lxi;->b:[F

    invoke-virtual {p0, p3}, Lxi;->a([F)V

    .line 3
    iget-object p3, p0, Lxi;->b:[F

    aget v2, p3, v0

    .line 4
    aget p3, p3, v1

    .line 5
    :cond_0
    iget-object p3, p0, Lxi;->m:Lsi;

    iget-object v2, p0, Lxi;->c:Ldh;

    iget-object v3, p0, Lxi;->p:Ljava/util/List;

    if-eqz p3, :cond_7

    .line 6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p3, :cond_1

    .line 7
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvi;

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 9
    iget-object v7, v5, Lvi;->A:Ldh;

    iget v8, v5, Lvi;->E:F

    iget v8, v5, Lvi;->F:F

    iget v5, v5, Lvi;->B:I

    .line 10
    sget-object v5, Lzi;->a:Lyi;

    iget-object v5, v7, Ldh;->w:Landroid/view/View;

    .line 11
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 13
    sget-object v5, Lzi;->a:Lyi;

    iget-object v2, v2, Ldh;->w:Landroid/view/View;

    .line 14
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    sub-int/2addr p3, v1

    :goto_1
    if-ltz p3, :cond_5

    .line 15
    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvi;

    .line 16
    iget-boolean v2, p1, Lvi;->H:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Lvi;->D:Z

    if-nez v2, :cond_3

    .line 17
    invoke-interface {v3, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 18
    :cond_3
    iget-boolean p1, p1, Lvi;->H:Z

    if-nez p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {p2}, Landroid/view/ViewGroup;->invalidate()V

    :cond_6
    return-void

    :cond_7
    const/4 p1, 0x0

    .line 20
    throw p1
.end method

.method public c(Ldh;I)V
    .locals 21

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    .line 1
    iget-object v0, v11, Lxi;->c:Ldh;

    if-ne v12, v0, :cond_0

    iget v0, v11, Lxi;->n:I

    if-ne v13, v0, :cond_0

    return-void

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    iput-wide v0, v11, Lxi;->D:J

    .line 3
    iget v4, v11, Lxi;->n:I

    const/4 v14, 0x1

    .line 4
    invoke-virtual {v11, v12, v14}, Lxi;->a(Ldh;Z)V

    .line 5
    iput v13, v11, Lxi;->n:I

    const/4 v15, 0x2

    if-ne v13, v15, :cond_2

    if-eqz v12, :cond_1

    .line 6
    iget-object v0, v12, Ldh;->w:Landroid/view/View;

    iput-object v0, v11, Lxi;->x:Landroid/view/View;

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must pass a ViewHolder when dragging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    mul-int/lit8 v0, v13, 0x8

    const/16 v10, 0x8

    add-int/2addr v0, v10

    shl-int v0, v14, v0

    add-int/lit8 v16, v0, -0x1

    .line 8
    iget-object v9, v11, Lxi;->c:Ldh;

    const/4 v8, 0x0

    if-eqz v9, :cond_16

    .line 9
    iget-object v0, v9, Ldh;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v0, :cond_15

    if-ne v4, v15, :cond_3

    const/4 v6, 0x0

    goto/16 :goto_3

    .line 10
    :cond_3
    iget v0, v11, Lxi;->n:I

    if-ne v0, v15, :cond_4

    goto/16 :goto_1

    .line 11
    :cond_4
    iget-object v0, v11, Lxi;->m:Lsi;

    iget-object v1, v11, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, v9}, Lsi;->c(Landroid/support/v7/widget/RecyclerView;Ldh;)I

    move-result v0

    .line 12
    iget-object v1, v11, Lxi;->m:Lsi;

    iget-object v2, v11, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    .line 13
    invoke-static {v2}, LA7;->i(Landroid/view/View;)I

    move-result v2

    .line 14
    invoke-virtual {v1, v0, v2}, Lsi;->a(II)I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/2addr v1, v10

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    and-int/2addr v0, v2

    shr-int/2addr v0, v10

    .line 15
    iget v2, v11, Lxi;->h:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v11, Lxi;->i:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 16
    invoke-virtual {v11, v9, v1}, Lxi;->a(Ldh;I)I

    move-result v2

    if-lez v2, :cond_6

    and-int/2addr v0, v2

    if-nez v0, :cond_8

    .line 17
    iget-object v0, v11, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 19
    invoke-static {v2, v0}, Lsi;->b(II)I

    move-result v0

    goto :goto_2

    .line 20
    :cond_6
    invoke-virtual {v11, v9, v1}, Lxi;->b(Ldh;I)I

    move-result v0

    if-lez v0, :cond_b

    goto :goto_2

    .line 21
    :cond_7
    invoke-virtual {v11, v9, v1}, Lxi;->b(Ldh;I)I

    move-result v2

    if-lez v2, :cond_9

    :cond_8
    move v0, v2

    goto :goto_2

    .line 22
    :cond_9
    invoke-virtual {v11, v9, v1}, Lxi;->a(Ldh;I)I

    move-result v1

    if-lez v1, :cond_b

    and-int/2addr v0, v1

    if-nez v0, :cond_a

    .line 23
    iget-object v0, v11, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 25
    invoke-static {v1, v0}, Lsi;->b(II)I

    move-result v0

    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_2

    :cond_b
    :goto_1
    const/4 v0, 0x0

    :goto_2
    move v6, v0

    .line 26
    :goto_3
    iget-object v0, v11, Lxi;->t:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 27
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 28
    iput-object v7, v11, Lxi;->t:Landroid/view/VelocityTracker;

    :cond_c
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq v6, v14, :cond_e

    if-eq v6, v15, :cond_e

    if-eq v6, v0, :cond_d

    if-eq v6, v10, :cond_d

    const/16 v2, 0x10

    if-eq v6, v2, :cond_d

    const/16 v2, 0x20

    if-eq v6, v2, :cond_d

    const/4 v2, 0x0

    goto :goto_4

    .line 29
    :cond_d
    iget v2, v11, Lxi;->h:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iget-object v3, v11, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    :goto_4
    move/from16 v17, v2

    const/16 v18, 0x0

    goto :goto_5

    .line 30
    :cond_e
    iget v2, v11, Lxi;->i:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iget-object v3, v11, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    move/from16 v18, v2

    const/16 v17, 0x0

    :goto_5
    if-ne v4, v15, :cond_f

    const/16 v5, 0x8

    goto :goto_6

    :cond_f
    if-lez v6, :cond_10

    const/4 v5, 0x2

    goto :goto_6

    :cond_10
    const/4 v5, 0x4

    .line 31
    :goto_6
    iget-object v0, v11, Lxi;->b:[F

    invoke-virtual {v11, v0}, Lxi;->a([F)V

    .line 32
    iget-object v0, v11, Lxi;->b:[F

    aget v19, v0, v8

    .line 33
    aget v20, v0, v14

    .line 34
    new-instance v3, Lni;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v14, v3

    move v3, v5

    move v15, v5

    move/from16 v5, v19

    move/from16 v19, v6

    move/from16 v6, v20

    move-object v13, v7

    move/from16 v7, v17

    const/4 v13, 0x0

    move/from16 v8, v18

    move-object/from16 v18, v9

    move/from16 v9, v19

    const/16 v13, 0x8

    move-object/from16 v10, v18

    invoke-direct/range {v0 .. v10}, Lni;-><init>(Lxi;Ldh;IIFFFFILdh;)V

    .line 35
    iget-object v0, v11, Lxi;->m:Lsi;

    iget-object v1, v11, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_14

    .line 36
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView;->l0:LJg;

    if-nez v0, :cond_12

    if-ne v15, v13, :cond_11

    const-wide/16 v0, 0xc8

    goto :goto_7

    :cond_11
    const-wide/16 v0, 0xfa

    goto :goto_7

    :cond_12
    if-ne v15, v13, :cond_13

    .line 37
    iget-wide v0, v0, LJg;->e:J

    goto :goto_7

    .line 38
    :cond_13
    iget-wide v0, v0, LJg;->d:J

    .line 39
    :goto_7
    iget-object v2, v14, Lvi;->C:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 40
    iget-object v0, v11, Lxi;->p:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, v14, Lvi;->A:Ldh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldh;->a(Z)V

    .line 42
    iget-object v0, v14, Lvi;->C:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    const/4 v8, 0x1

    goto :goto_8

    :cond_14
    const/4 v0, 0x0

    .line 43
    throw v0

    :cond_15
    move-object v0, v7

    move-object v1, v9

    const/16 v13, 0x8

    .line 44
    iget-object v2, v1, Ldh;->w:Landroid/view/View;

    invoke-virtual {v11, v2}, Lxi;->a(Landroid/view/View;)V

    .line 45
    iget-object v2, v11, Lxi;->m:Lsi;

    iget-object v3, v11, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3, v1}, Lsi;->a(Landroid/support/v7/widget/RecyclerView;Ldh;)V

    const/4 v8, 0x0

    .line 46
    :goto_8
    iput-object v0, v11, Lxi;->c:Ldh;

    goto :goto_9

    :cond_16
    const/16 v13, 0x8

    const/4 v8, 0x0

    :goto_9
    if-eqz v12, :cond_17

    .line 47
    iget-object v0, v11, Lxi;->m:Lsi;

    iget-object v1, v11, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    .line 48
    invoke-virtual {v0, v1, v12}, Lsi;->b(Landroid/support/v7/widget/RecyclerView;Ldh;)I

    move-result v0

    and-int v0, v0, v16

    iget v1, v11, Lxi;->n:I

    mul-int/lit8 v1, v1, 0x8

    shr-int/2addr v0, v1

    iput v0, v11, Lxi;->o:I

    .line 49
    iget-object v0, v12, Ldh;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, v11, Lxi;->j:F

    .line 50
    iget-object v0, v12, Ldh;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, v11, Lxi;->k:F

    .line 51
    iput-object v12, v11, Lxi;->c:Ldh;

    move/from16 v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 52
    iget-object v0, v12, Ldh;->w:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_a

    :cond_17
    const/4 v1, 0x0

    .line 53
    :goto_a
    iget-object v0, v11, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 54
    iget-object v2, v11, Lxi;->c:Ldh;

    if-eqz v2, :cond_18

    const/4 v1, 0x1

    :cond_18
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_19
    if-nez v8, :cond_1a

    .line 55
    iget-object v0, v11, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    .line 56
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->I:LQg;

    const/4 v1, 0x1

    .line 57
    iput-boolean v1, v0, LQg;->g:Z

    .line 58
    :cond_1a
    iget-object v0, v11, Lxi;->m:Lsi;

    iget-object v1, v11, Lxi;->c:Ldh;

    iget v2, v11, Lxi;->n:I

    invoke-virtual {v0, v1, v2}, Lsi;->a(Ldh;I)V

    .line 59
    iget-object v0, v11, Lxi;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
