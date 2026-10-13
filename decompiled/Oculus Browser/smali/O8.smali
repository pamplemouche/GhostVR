.class public LO8;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LK8;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, LP8;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, LO8;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, LK8;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 4
    invoke-static {p1, p2}, LP8;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, LK8;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LO8;->a:LK8;

    .line 5
    iput p2, p0, LO8;->b:I

    return-void
.end method


# virtual methods
.method public a(I)LO8;
    .locals 2

    .line 1
    iget-object v0, p0, LO8;->a:LK8;

    iget-object v1, v0, LK8;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, LK8;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)LO8;
    .locals 2

    .line 2
    iget-object v0, p0, LO8;->a:LK8;

    iget-object v1, v0, LK8;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, LK8;->k:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, LO8;->a:LK8;

    iput-object p2, p1, LK8;->l:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Landroid/view/View;)LO8;
    .locals 1

    .line 8
    iget-object v0, p0, LO8;->a:LK8;

    iput-object p1, v0, LK8;->u:Landroid/view/View;

    const/4 p1, 0x0

    .line 9
    iput p1, v0, LK8;->t:I

    .line 10
    iput-boolean p1, v0, LK8;->v:Z

    return-object p0
.end method

.method public a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)LO8;
    .locals 1

    .line 6
    iget-object v0, p0, LO8;->a:LK8;

    iput-object p1, v0, LK8;->r:Landroid/widget/ListAdapter;

    .line 7
    iput-object p2, v0, LK8;->s:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)LO8;
    .locals 1

    .line 4
    iget-object v0, p0, LO8;->a:LK8;

    iput-object p1, v0, LK8;->k:Ljava/lang/CharSequence;

    .line 5
    iput-object p2, v0, LK8;->l:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a()LP8;
    .locals 15

    .line 11
    new-instance v0, LP8;

    iget-object v1, p0, LO8;->a:LK8;

    iget-object v1, v1, LK8;->a:Landroid/content/Context;

    iget v2, p0, LO8;->b:I

    invoke-direct {v0, v1, v2}, LP8;-><init>(Landroid/content/Context;I)V

    .line 12
    iget-object v1, p0, LO8;->a:LK8;

    iget-object v10, v0, LP8;->y:LN8;

    .line 13
    iget-object v2, v1, LK8;->g:Landroid/view/View;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v2, :cond_0

    .line 14
    iput-object v2, v10, LN8;->G:Landroid/view/View;

    goto :goto_0

    .line 15
    :cond_0
    iget-object v2, v1, LK8;->f:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 16
    iput-object v2, v10, LN8;->e:Ljava/lang/CharSequence;

    .line 17
    iget-object v3, v10, LN8;->E:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 18
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_1
    iget-object v2, v1, LK8;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 20
    iput-object v2, v10, LN8;->C:Landroid/graphics/drawable/Drawable;

    .line 21
    iput v12, v10, LN8;->B:I

    .line 22
    iget-object v3, v10, LN8;->D:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 23
    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    iget-object v3, v10, LN8;->D:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    :cond_2
    iget v2, v1, LK8;->c:I

    if-eqz v2, :cond_3

    .line 26
    invoke-virtual {v10, v2}, LN8;->a(I)V

    .line 27
    :cond_3
    iget v2, v1, LK8;->e:I

    if-eqz v2, :cond_5

    if-eqz v10, :cond_4

    .line 28
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 29
    iget-object v4, v10, LN8;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 30
    iget v2, v3, Landroid/util/TypedValue;->resourceId:I

    .line 31
    invoke-virtual {v10, v2}, LN8;->a(I)V

    goto :goto_0

    .line 32
    :cond_4
    throw v11

    .line 33
    :cond_5
    :goto_0
    iget-object v2, v1, LK8;->h:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    .line 34
    iput-object v2, v10, LN8;->f:Ljava/lang/CharSequence;

    .line 35
    iget-object v3, v10, LN8;->F:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 36
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_6
    iget-object v4, v1, LK8;->i:Ljava/lang/CharSequence;

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, -0x1

    .line 38
    iget-object v5, v1, LK8;->j:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    invoke-virtual/range {v2 .. v7}, LN8;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 39
    :goto_1
    iget-object v4, v1, LK8;->k:Ljava/lang/CharSequence;

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, -0x2

    .line 40
    iget-object v5, v1, LK8;->l:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    invoke-virtual/range {v2 .. v7}, LN8;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 41
    :goto_2
    iget-object v2, v1, LK8;->q:[Ljava/lang/CharSequence;

    if-nez v2, :cond_9

    iget-object v2, v1, LK8;->r:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_11

    .line 42
    :cond_9
    iget-object v2, v1, LK8;->b:Landroid/view/LayoutInflater;

    iget v3, v10, LN8;->L:I

    .line 43
    invoke-virtual {v2, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/AlertController$RecycleListView;

    .line 44
    iget-boolean v3, v1, LK8;->x:Z

    if-eqz v3, :cond_a

    .line 45
    new-instance v14, LH8;

    iget-object v5, v1, LK8;->a:Landroid/content/Context;

    iget v6, v10, LN8;->M:I

    const v7, 0x1020014

    iget-object v8, v1, LK8;->q:[Ljava/lang/CharSequence;

    move-object v3, v14

    move-object v4, v1

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, LH8;-><init>(LK8;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/support/v7/app/AlertController$RecycleListView;)V

    goto :goto_4

    .line 46
    :cond_a
    iget-boolean v3, v1, LK8;->y:Z

    if-eqz v3, :cond_b

    .line 47
    iget v3, v10, LN8;->N:I

    goto :goto_3

    .line 48
    :cond_b
    iget v3, v10, LN8;->O:I

    .line 49
    :goto_3
    iget-object v14, v1, LK8;->r:Landroid/widget/ListAdapter;

    if-eqz v14, :cond_c

    goto :goto_4

    .line 50
    :cond_c
    new-instance v14, LM8;

    iget-object v4, v1, LK8;->a:Landroid/content/Context;

    const v5, 0x1020014

    iget-object v6, v1, LK8;->q:[Ljava/lang/CharSequence;

    invoke-direct {v14, v4, v3, v5, v6}, LM8;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 51
    :goto_4
    iput-object v14, v10, LN8;->H:Landroid/widget/ListAdapter;

    .line 52
    iget v3, v1, LK8;->z:I

    iput v3, v10, LN8;->I:I

    .line 53
    iget-object v3, v1, LK8;->s:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_d

    .line 54
    new-instance v3, LI8;

    invoke-direct {v3, v1, v10}, LI8;-><init>(LK8;LN8;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_5

    .line 55
    :cond_d
    iget-object v3, v1, LK8;->A:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v3, :cond_e

    .line 56
    new-instance v3, LJ8;

    invoke-direct {v3, v1, v2, v10}, LJ8;-><init>(LK8;Landroid/support/v7/app/AlertController$RecycleListView;LN8;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    :cond_e
    :goto_5
    iget-boolean v3, v1, LK8;->y:Z

    if-eqz v3, :cond_f

    .line 58
    invoke-virtual {v2, v13}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_6

    .line 59
    :cond_f
    iget-boolean v3, v1, LK8;->x:Z

    if-eqz v3, :cond_10

    const/4 v3, 0x2

    .line 60
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 61
    :cond_10
    :goto_6
    iput-object v2, v10, LN8;->g:Landroid/widget/ListView;

    .line 62
    :cond_11
    iget-object v2, v1, LK8;->u:Landroid/view/View;

    if-eqz v2, :cond_13

    .line 63
    iget-boolean v1, v1, LK8;->v:Z

    if-eqz v1, :cond_12

    .line 64
    iput-object v2, v10, LN8;->h:Landroid/view/View;

    .line 65
    iput v12, v10, LN8;->i:I

    .line 66
    iput-boolean v13, v10, LN8;->n:Z

    .line 67
    iput v12, v10, LN8;->j:I

    .line 68
    iput v12, v10, LN8;->k:I

    .line 69
    iput v12, v10, LN8;->l:I

    .line 70
    iput v12, v10, LN8;->m:I

    goto :goto_7

    .line 71
    :cond_12
    iput-object v2, v10, LN8;->h:Landroid/view/View;

    .line 72
    iput v12, v10, LN8;->i:I

    .line 73
    iput-boolean v12, v10, LN8;->n:Z

    goto :goto_7

    .line 74
    :cond_13
    iget v1, v1, LK8;->t:I

    if-eqz v1, :cond_14

    .line 75
    iput-object v11, v10, LN8;->h:Landroid/view/View;

    .line 76
    iput v1, v10, LN8;->i:I

    .line 77
    iput-boolean v12, v10, LN8;->n:Z

    .line 78
    :cond_14
    :goto_7
    iget-object v1, p0, LO8;->a:LK8;

    iget-boolean v1, v1, LK8;->m:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 79
    iget-object v1, p0, LO8;->a:LK8;

    iget-boolean v1, v1, LK8;->m:Z

    if-eqz v1, :cond_15

    .line 80
    invoke-virtual {v0, v13}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 81
    :cond_15
    iget-object v1, p0, LO8;->a:LK8;

    iget-object v1, v1, LK8;->n:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 82
    iget-object v1, p0, LO8;->a:LK8;

    iget-object v1, v1, LK8;->o:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    iget-object v1, p0, LO8;->a:LK8;

    iget-object v1, v1, LK8;->p:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_16

    .line 84
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_16
    return-object v0
.end method

.method public b(I)LO8;
    .locals 2

    .line 1
    iget-object v0, p0, LO8;->a:LK8;

    iget-object v1, v0, LK8;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, LK8;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)LO8;
    .locals 2

    .line 2
    iget-object v0, p0, LO8;->a:LK8;

    iget-object v1, v0, LK8;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, LK8;->i:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, LO8;->a:LK8;

    iput-object p2, p1, LK8;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)LO8;
    .locals 1

    .line 4
    iget-object v0, p0, LO8;->a:LK8;

    iput-object p1, v0, LK8;->i:Ljava/lang/CharSequence;

    .line 5
    iput-object p2, v0, LK8;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b()LP8;
    .locals 1

    .line 6
    invoke-virtual {p0}, LO8;->a()LP8;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method
