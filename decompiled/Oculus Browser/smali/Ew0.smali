.class public LEw0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:LCQ0;

.field public final c:Landroid/view/View;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/view/View;

.field public final f:Landroid/view/View;

.field public final synthetic g:LFw0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LIw0;

    return-void
.end method

.method public constructor <init>(LFw0;Landroid/support/v7/widget/GridLayout;IILCQ0;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    .line 1
    iput-object v5, v0, LEw0;->g:LFw0;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    .line 2
    iget-object v7, v4, LCQ0;->D:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 3
    iget-boolean v8, v4, LCQ0;->y:Z

    if-eqz v8, :cond_1

    if-eqz p6, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v4, :cond_2

    .line 4
    iget-boolean v9, v4, LCQ0;->F:Z

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 5
    :goto_2
    iput v3, v0, LEw0;->a:I

    .line 6
    iput-object v4, v0, LEw0;->b:LCQ0;

    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-ne v3, v10, :cond_3

    move-object v12, v4

    goto :goto_6

    .line 7
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 8
    iget v12, v0, LEw0;->a:I

    if-nez v12, :cond_5

    .line 9
    new-instance v12, Landroid/widget/RadioButton;

    invoke-direct {v12, v3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    if-eqz p6, :cond_4

    if-eqz v9, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 10
    :goto_3
    invoke-virtual {v12, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 11
    invoke-virtual {v12, v9}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_5

    :cond_5
    if-ne v12, v11, :cond_6

    const v12, 0x7f080232

    const v13, 0x7f0600b4

    goto :goto_4

    :cond_6
    const v12, 0x7f0802a8

    const v13, 0x7f06007a

    .line 12
    :goto_4
    invoke-static {v3, v12, v13}, LDM0;->a(Landroid/content/Context;II)LDM0;

    move-result-object v12

    .line 13
    new-instance v13, Landroid/widget/ImageButton;

    invoke-direct {v13, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v13, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    invoke-virtual {v13, v12}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {v13, v5, v5, v5, v5}, Landroid/widget/ImageButton;->setPadding(IIII)V

    move-object v12, v13

    .line 17
    :goto_5
    new-instance v3, LSf;

    sget-object v13, Landroid/support/v7/widget/GridLayout;->V:LLf;

    .line 18
    invoke-static {v2, v6, v13}, Landroid/support/v7/widget/GridLayout;->a(IILLf;)LVf;

    move-result-object v13

    sget-object v14, Landroid/support/v7/widget/GridLayout;->V:LLf;

    .line 19
    invoke-static {v5, v6, v14}, Landroid/support/v7/widget/GridLayout;->a(IILLf;)LVf;

    move-result-object v14

    invoke-direct {v3, v13, v14}, LSf;-><init>(LVf;LVf;)V

    .line 20
    iget-object v13, v0, LEw0;->g:LFw0;

    .line 21
    iget v14, v13, LFw0;->P:I

    .line 22
    iput v14, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 23
    iget v13, v13, LIw0;->x:I

    .line 24
    invoke-virtual {v3, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 25
    invoke-virtual {v1, v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-virtual {v12, v10}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 27
    iget-object v3, v0, LEw0;->g:LFw0;

    invoke-virtual {v12, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :goto_6
    iput-object v12, v0, LEw0;->c:Landroid/view/View;

    .line 29
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 30
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-nez v7, :cond_7

    const/4 v13, 0x2

    goto :goto_7

    :cond_7
    const/4 v13, 0x1

    :goto_7
    if-nez v8, :cond_8

    add-int/lit8 v13, v13, 0x1

    .line 31
    :cond_8
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 32
    iget v3, v0, LEw0;->a:I

    if-nez v3, :cond_a

    .line 33
    iget-object v3, v0, LEw0;->g:LFw0;

    iget-object v12, v0, LEw0;->b:LCQ0;

    iget-object v15, v3, LIw0;->w:LGw0;

    .line 34
    check-cast v15, LXw0;

    .line 35
    iget-object v15, v15, LXw0;->T:LFw0;

    if-ne v3, v15, :cond_9

    const/4 v15, 0x1

    goto :goto_8

    :cond_9
    const/4 v15, 0x0

    .line 36
    :goto_8
    invoke-virtual {v3, v12, v5, v15, v5}, LFw0;->a(LCQ0;ZZZ)Ljava/lang/CharSequence;

    move-result-object v3

    .line 37
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_9

    :cond_a
    if-ne v3, v6, :cond_b

    const v3, 0x7f070250

    .line 39
    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v9, 0x7f1401ed

    .line 40
    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v14, v12, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 41
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setMinimumHeight(I)V

    const/16 v3, 0x10

    .line 42
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 43
    invoke-static {}, Lwc1;->a()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_9

    :cond_b
    if-ne v3, v10, :cond_c

    const v3, 0x7f1401b7

    .line 44
    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v14, v9, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const v3, 0x7f0b0346

    .line 45
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setId(I)V

    const/4 v3, 0x4

    const/4 v3, 0x0

    const/4 v13, 0x4

    goto :goto_a

    :cond_c
    if-ne v3, v11, :cond_d

    const v3, 0x7f140210

    .line 46
    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v14, v9, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const v3, 0x7f0b034d

    .line 47
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setId(I)V

    const/4 v3, 0x1

    const/4 v13, 0x3

    goto :goto_a

    :cond_d
    :goto_9
    const/4 v3, 0x1

    .line 48
    :goto_a
    new-instance v9, LSf;

    sget-object v12, Landroid/support/v7/widget/GridLayout;->V:LLf;

    .line 49
    invoke-static {v2, v6, v12}, Landroid/support/v7/widget/GridLayout;->a(IILLf;)LVf;

    move-result-object v12

    sget-object v15, Landroid/support/v7/widget/GridLayout;->a0:LLf;

    const/high16 v11, 0x3f800000    # 1.0f

    .line 50
    invoke-static {v3, v13, v15, v11}, Landroid/support/v7/widget/GridLayout;->a(IILLf;F)LVf;

    move-result-object v3

    invoke-direct {v9, v12, v3}, LSf;-><init>(LVf;LVf;)V

    .line 51
    iget-object v3, v0, LEw0;->g:LFw0;

    .line 52
    iget v11, v3, LFw0;->P:I

    .line 53
    iput v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 54
    iput v5, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eqz v7, :cond_e

    .line 55
    iget v3, v3, LIw0;->x:I

    .line 56
    invoke-virtual {v9, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 57
    :cond_e
    invoke-virtual {v1, v14, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v3, v0, LEw0;->g:LFw0;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iput-object v14, v0, LEw0;->d:Landroid/widget/TextView;

    if-eqz v7, :cond_11

    .line 60
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 62
    iget-object v5, v0, LEw0;->b:LCQ0;

    .line 63
    iget-boolean v5, v5, LCQ0;->y:Z

    if-eqz v5, :cond_f

    .line 64
    iget-object v5, v0, LEw0;->g:LFw0;

    .line 65
    iget v5, v5, LFw0;->R:I

    .line 66
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setMaxWidth(I)V

    goto :goto_b

    .line 67
    :cond_f
    iget-object v5, v0, LEw0;->g:LFw0;

    .line 68
    iget v5, v5, LFw0;->S:I

    .line 69
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 70
    :goto_b
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 71
    iget-object v5, v0, LEw0;->b:LCQ0;

    .line 72
    iget-object v5, v5, LCQ0;->D:Landroid/graphics/drawable/Drawable;

    .line 73
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v8, :cond_10

    goto :goto_c

    :cond_10
    const/4 v10, 0x3

    .line 74
    :goto_c
    new-instance v5, LSf;

    sget-object v7, Landroid/support/v7/widget/GridLayout;->V:LLf;

    .line 75
    invoke-static {v2, v6, v7}, Landroid/support/v7/widget/GridLayout;->a(IILLf;)LVf;

    move-result-object v7

    sget-object v9, Landroid/support/v7/widget/GridLayout;->V:LLf;

    .line 76
    invoke-static {v10, v6, v9}, Landroid/support/v7/widget/GridLayout;->a(IILLf;)LVf;

    move-result-object v9

    invoke-direct {v5, v7, v9}, LSf;-><init>(LVf;LVf;)V

    .line 77
    iget-object v7, v0, LEw0;->g:LFw0;

    .line 78
    iget v7, v7, LFw0;->P:I

    .line 79
    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 80
    invoke-virtual {v1, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v5, v0, LEw0;->g:LFw0;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d

    :cond_11
    move-object v3, v4

    .line 82
    :goto_d
    iput-object v3, v0, LEw0;->e:Landroid/view/View;

    if-eqz v8, :cond_12

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f0e0152

    .line 84
    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 85
    new-instance v3, LSf;

    sget-object v5, Landroid/support/v7/widget/GridLayout;->V:LLf;

    .line 86
    invoke-static {v2, v6, v5}, Landroid/support/v7/widget/GridLayout;->a(IILLf;)LVf;

    move-result-object v2

    sget-object v5, Landroid/support/v7/widget/GridLayout;->V:LLf;

    const/4 v7, 0x3

    .line 87
    invoke-static {v7, v6, v5}, Landroid/support/v7/widget/GridLayout;->a(IILLf;)LVf;

    move-result-object v5

    invoke-direct {v3, v2, v5}, LSf;-><init>(LVf;LVf;)V

    .line 88
    iget-object v2, v0, LEw0;->g:LFw0;

    .line 89
    iget v2, v2, LFw0;->P:I

    .line 90
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 91
    invoke-virtual {v1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v1, v0, LEw0;->g:LFw0;

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_12
    iput-object v4, v0, LEw0;->f:Landroid/view/View;

    return-void
.end method
