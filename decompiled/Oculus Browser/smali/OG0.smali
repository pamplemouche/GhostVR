.class public LOG0;
.super Ls2;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls2;-><init>()V

    return-void
.end method


# virtual methods
.method public O()I
    .locals 3

    .line 1
    iget-object v0, p0, Lz2;->C:Landroid/os/Bundle;

    const/4 v1, 0x4

    const-string v2, "arg_current_type"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to find argument with current type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lz2;->l()LD2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0e01af

    .line 2
    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0b031d

    .line 3
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 4
    invoke-virtual/range {p0 .. p0}, LOG0;->O()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v4, v5, :cond_0

    .line 5
    new-instance v8, Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lz2;->l()LD2;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0702be

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 8
    invoke-virtual {v8, v7, v9, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 9
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 10
    invoke-virtual/range {p0 .. p0}, Lz2;->l()LD2;

    move-result-object v9

    const v10, 0x7f1305e0

    .line 11
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v6, [LWe1;

    new-instance v12, LWe1;

    new-instance v13, LLG0;

    invoke-direct {v13, v0, v9}, LLG0;-><init>(LOG0;Landroid/content/Context;)V

    const-string v9, "<resetlink>"

    const-string v14, "</resetlink>"

    invoke-direct {v12, v9, v14, v13}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v12, v11, v7

    .line 12
    invoke-static {v10, v11}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object v9

    .line 13
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v3, v8}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 15
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x2

    if-eqz v4, :cond_2

    if-eq v4, v6, :cond_2

    if-eq v4, v9, :cond_1

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :goto_0
    new-instance v10, LMG0;

    .line 21
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v12, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_6

    .line 22
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eqz v14, :cond_5

    if-eq v14, v6, :cond_5

    if-eq v14, v9, :cond_4

    if-eq v14, v5, :cond_3

    const-string v14, ""

    goto :goto_2

    :cond_3
    const v14, 0x7f1305e3

    .line 23
    invoke-virtual {v0, v14}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 24
    :cond_4
    iget-object v14, v0, Lz2;->C:Landroid/os/Bundle;

    const-string v15, "arg_passphrase_time"

    .line 25
    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 26
    invoke-static {v9}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v5

    .line 27
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const v9, 0x7f1305e5

    .line 28
    invoke-virtual {v0, v9}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v9

    new-array v14, v6, [Ljava/lang/Object;

    aput-object v5, v14, v7

    .line 29
    invoke-static {v9, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_5
    const v5, 0x7f1305e6

    .line 30
    invoke-virtual {v0, v5}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v14

    .line 31
    :goto_2
    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x3

    const/4 v9, 0x2

    goto :goto_1

    .line 32
    :cond_6
    invoke-direct {v10, v0, v8, v12, v2}, LMG0;-><init>(LOG0;Ljava/util/List;[Ljava/lang/String;LLG0;)V

    .line 33
    invoke-virtual {v3, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v2, 0x7f0b031c

    .line 34
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setId(I)V

    .line 35
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 36
    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 37
    iget-object v2, v10, LMG0;->w:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 38
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 39
    new-instance v2, LO8;

    invoke-virtual/range {p0 .. p0}, Lz2;->l()LD2;

    move-result-object v3

    const v4, 0x7f140245

    invoke-direct {v2, v3, v4}, LO8;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f1301d4

    .line 40
    invoke-virtual {v2, v3, v0}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const v3, 0x7f1305e7

    .line 41
    invoke-virtual {v2, v3}, LO8;->b(I)LO8;

    .line 42
    iget-object v3, v2, LO8;->a:LK8;

    iput-object v1, v3, LK8;->u:Landroid/view/View;

    .line 43
    iput v7, v3, LK8;->t:I

    .line 44
    iput-boolean v7, v3, LK8;->v:Z

    .line 45
    invoke-virtual {v2}, LO8;->a()LP8;

    move-result-object v1

    return-object v1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Ls2;->g(Z)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, LOG0;->O()I

    move-result p1

    long-to-int p2, p4

    .line 2
    iget-object p3, p0, Lz2;->C:Landroid/os/Bundle;

    const-string p4, "arg_is_encrypt_everything_allowed"

    .line 3
    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 4
    invoke-static {p1, p3}, LoV0;->a(IZ)Ljava/util/List;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    if-eq p2, p1, :cond_0

    .line 5
    iget-object p1, p0, Lz2;->D:Lz2;

    .line 6
    check-cast p1, LNG0;

    .line 7
    invoke-interface {p1, p2}, LNG0;->c(I)V

    :cond_0
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Ls2;->g(Z)V

    :cond_1
    return-void
.end method
