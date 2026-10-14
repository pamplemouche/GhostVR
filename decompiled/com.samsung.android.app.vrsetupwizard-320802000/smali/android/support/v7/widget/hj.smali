.class Landroid/support/v7/widget/hj;
.super Landroid/support/v4/view/aa;


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v7/widget/jn;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Landroid/support/v7/widget/SeslDatePicker;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SeslDatePicker;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-direct {p0}, Landroid/support/v4/view/aa;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/hj;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslDatePicker;->getMaxMonth()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v3}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v0, v0, 0xc

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Landroid/support/v7/widget/SeslDatePicker;->l(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object v0, p0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->m(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslDatePicker;->getMaxYear()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePicker;->m(Landroid/support/v7/widget/SeslDatePicker;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePicker;->l(Landroid/support/v7/widget/SeslDatePicker;I)I

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v0}, Landroid/support/v7/widget/SeslDatePicker;->i(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public a(Landroid/view/View;I)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v15, Landroid/support/v7/widget/jn;

    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->e(Landroid/support/v7/widget/SeslDatePicker;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/support/v7/widget/jn;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "instantiateItem : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslDatePicker;->a(Landroid/support/v7/widget/SeslDatePicker;Ljava/lang/String;)V

    const/4 v13, 0x1

    invoke-virtual {v15, v13}, Landroid/support/v7/widget/jn;->setClickable(Z)V

    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v15, v2}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jp;)V

    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v15, v2}, Landroid/support/v7/widget/jn;->a(Landroid/support/v7/widget/jq;)V

    invoke-virtual {v15}, Landroid/support/v7/widget/jn;->a()V

    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslDatePicker;->getMinMonth()I

    move-result v2

    add-int/2addr v2, v1

    div-int/lit8 v3, v2, 0xc

    iget-object v4, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v4}, Landroid/support/v7/widget/SeslDatePicker;->getMinYear()I

    move-result v4

    add-int/2addr v3, v4

    rem-int/lit8 v2, v2, 0xc

    iget-object v4, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v4}, Landroid/support/v7/widget/SeslDatePicker;->m(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v4

    const/4 v12, 0x0

    if-eqz v4, :cond_0

    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2, v1}, Landroid/support/v7/widget/SeslDatePicker;->n(Landroid/support/v7/widget/SeslDatePicker;I)Landroid/support/v7/widget/hm;

    move-result-object v2

    iget v3, v2, Landroid/support/v7/widget/hm;->a:I

    iget v4, v2, Landroid/support/v7/widget/hm;->b:I

    iget-boolean v2, v2, Landroid/support/v7/widget/hm;->d:Z

    move v5, v3

    goto :goto_0

    :cond_0
    move v4, v2

    move v5, v3

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->l(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v6, -0x1

    const/4 v7, 0x5

    const/4 v8, 0x2

    if-ne v3, v5, :cond_1

    iget-object v3, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->l(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v4, :cond_1

    iget-object v3, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->l(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    iget-object v9, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v9}, Landroid/support/v7/widget/SeslDatePicker;->m(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v3, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->r(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    if-ne v3, v5, :cond_2

    iget-object v3, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->s(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v3}, Landroid/support/v7/widget/SeslDatePicker;->t(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    :cond_3
    :goto_2
    iget-object v6, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->u(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->m(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v6

    iget-object v9, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    iget-object v9, v9, Landroid/support/v7/widget/SeslDatePicker;->a:Ldalvik/system/PathClassLoader;

    invoke-virtual {v15, v6, v2, v9}, Landroid/support/v7/widget/jn;->a(ZZLdalvik/system/PathClassLoader;)V

    :cond_4
    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->o(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->o(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v9, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v9}, Landroid/support/v7/widget/SeslDatePicker;->o(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v10}, Landroid/support/v7/widget/SeslDatePicker;->p(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v11, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v11}, Landroid/support/v7/widget/SeslDatePicker;->p(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v11, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v11}, Landroid/support/v7/widget/SeslDatePicker;->p(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v11, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v11}, Landroid/support/v7/widget/SeslDatePicker;->m(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->v(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v2

    iget-object v6, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v6}, Landroid/support/v7/widget/SeslDatePicker;->w(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v6

    iget-object v7, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v7}, Landroid/support/v7/widget/SeslDatePicker;->x(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v7

    iget-object v8, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v8}, Landroid/support/v7/widget/SeslDatePicker;->y(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v8

    iget-object v9, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v9}, Landroid/support/v7/widget/SeslDatePicker;->z(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v9

    iget-object v10, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v10}, Landroid/support/v7/widget/SeslDatePicker;->A(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v10

    move v11, v2

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    goto :goto_3

    :cond_5
    move v11, v2

    move/from16 v16, v6

    move/from16 v22, v7

    move/from16 v21, v8

    move/from16 v17, v9

    move/from16 v20, v10

    :goto_3
    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual {v2}, Landroid/support/v7/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v6

    const/4 v7, 0x1

    const/16 v8, 0x1f

    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->B(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->C(Landroid/support/v7/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v10

    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->D(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v14

    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->E(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v18

    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->n(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v19

    move-object v2, v15

    move/from16 v12, v16

    const/16 v23, 0x1

    move/from16 v13, v17

    move-object/from16 v24, v15

    move/from16 v15, v20

    move/from16 v16, v21

    move/from16 v17, v22

    invoke-virtual/range {v2 .. v19}, Landroid/support/v7/widget/jn;->a(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    if-nez v1, :cond_6

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/jn;->e()V

    :cond_6
    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->i(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_7

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/jn;->f()V

    :cond_7
    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->m(Landroid/support/v7/widget/SeslDatePicker;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_8

    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    add-int/lit8 v3, v1, -0x1

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslDatePicker;->n(Landroid/support/v7/widget/SeslDatePicker;I)Landroid/support/v7/widget/hm;

    move-result-object v2

    iget-boolean v2, v2, Landroid/support/v7/widget/hm;->d:Z

    if-eqz v2, :cond_8

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/jn;->g()V

    :cond_8
    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-static {v2}, Landroid/support/v7/widget/SeslDatePicker;->i(Landroid/support/v7/widget/SeslDatePicker;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_9

    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslDatePicker;->n(Landroid/support/v7/widget/SeslDatePicker;I)Landroid/support/v7/widget/hm;

    move-result-object v2

    iget-boolean v2, v2, Landroid/support/v7/widget/hm;->d:Z

    if-eqz v2, :cond_9

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/jn;->h()V

    :cond_9
    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/jn;->d()I

    move-result v3

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslDatePicker;->o(Landroid/support/v7/widget/SeslDatePicker;I)I

    iget-object v2, v0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/jn;->c()I

    move-result v3

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslDatePicker;->p(Landroid/support/v7/widget/SeslDatePicker;I)I

    move-object/from16 v2, p1

    check-cast v2, Landroid/support/v4/view/ViewPager;

    move-object/from16 v3, v24

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    iget-object v2, v0, Landroid/support/v7/widget/hj;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v3
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    const-string v0, "startUpdate"

    invoke-static {p1, v0}, Landroid/support/v7/widget/SeslDatePicker;->a(Landroid/support/v7/widget/SeslDatePicker;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslDatePicker;->a(Landroid/support/v7/widget/SeslDatePicker;Ljava/lang/String;)V

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/v7/widget/hj;->a:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/widget/hj;->b:Landroid/support/v7/widget/SeslDatePicker;

    const-string v0, "finishUpdate"

    invoke-static {p1, v0}, Landroid/support/v7/widget/SeslDatePicker;->a(Landroid/support/v7/widget/SeslDatePicker;Ljava/lang/String;)V

    return-void
.end method
