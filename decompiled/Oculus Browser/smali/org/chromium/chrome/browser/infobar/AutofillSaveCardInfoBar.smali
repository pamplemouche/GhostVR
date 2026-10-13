.class public Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;
.super Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
.source "PG"


# instance fields
.field public final J:J

.field public final K:Ljava/util/List;

.field public L:I

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Z

.field public final P:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(JILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    move-object v8, p0

    move/from16 v9, p9

    const/4 v0, 0x0

    if-eqz v9, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p3}, LGZ;->a(I)I

    move-result v1

    :goto_0
    if-eqz v9, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const v0, 0x7f0600e9

    const v2, 0x7f0600e9

    :goto_1
    move-object v0, p0

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;-><init>(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->K:Ljava/util/List;

    const/4 v0, -0x1

    .line 3
    iput v0, v8, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->L:I

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v8, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->P:Ljava/util/LinkedList;

    .line 5
    invoke-static {p3}, LGZ;->a(I)I

    move-result v0

    iput v0, v8, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->L:I

    move-object v0, p5

    .line 6
    iput-object v0, v8, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->M:Ljava/lang/String;

    .line 7
    iput-boolean v9, v8, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->O:Z

    move-wide v0, p1

    .line 8
    iput-wide v0, v8, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->J:J

    return-void
.end method

.method private addDetail(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->K:Ljava/util/List;

    new-instance v1, LYe0;

    invoke-direct {v1, p1, p2, p3}, LYe0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLegalMessageLine(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->P:Ljava/util/LinkedList;

    new-instance v1, LXe0;

    invoke-direct {v1, p1}, LXe0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLinkToLastLegalMessageLine(IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->P:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXe0;

    iget-object v0, v0, LXe0;->b:Ljava/util/List;

    new-instance v1, LWe0;

    invoke-direct {v1, p1, p2, p3}, LWe0;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static create(JILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;
    .locals 11

    .line 1
    new-instance v10, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;

    move-object v0, v10

    move-wide v1, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;-><init>(JILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v10
.end method

.method private setDescriptionText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->N:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(LUf0;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->a(LUf0;)V

    .line 2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->O:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, LUf0;->I:Landroid/widget/TextView;

    .line 4
    invoke-static {v0}, Lwc1;->a(Landroid/view/View;)V

    .line 5
    iget-object v0, p1, LUf0;->G:LRf0;

    .line 6
    iget v2, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->L:I

    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->M:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0e00d6

    .line 8
    invoke-virtual {v4, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 9
    new-instance v5, LPf0;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, LPf0;-><init>(LOf0;)V

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x7f0b0119

    .line 10
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 11
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x7f0b011a

    .line 12
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 13
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070160

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 15
    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 16
    :cond_0
    invoke-virtual {p1}, LUf0;->a()LRf0;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->N:Ljava/lang/String;

    invoke-virtual {p1, v0}, LRf0;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    .line 19
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->K:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LYe0;

    .line 21
    iget v4, v0, LYe0;->a:I

    const/4 v5, 0x0

    iget-object v6, v0, LYe0;->b:Ljava/lang/String;

    iget-object v7, v0, LYe0;->c:Ljava/lang/String;

    const v8, 0x7f070154

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, LRf0;->a(IILjava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/view/View;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->P:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LXe0;

    .line 23
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, v1, LXe0;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v1, v1, LXe0;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LWe0;

    .line 25
    new-instance v4, LVe0;

    invoke-direct {v4, p0, v3}, LVe0;-><init>(Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;LWe0;)V

    iget v5, v3, LWe0;->a:I

    iget v3, v3, LWe0;->b:I

    const/16 v6, 0x11

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 26
    :cond_3
    invoke-virtual {p1, v2}, LRf0;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    goto :goto_1

    :cond_4
    return-void
.end method
