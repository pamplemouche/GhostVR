.class public Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;
.super Landroid/widget/LinearLayout;
.source "PG"


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/TextView;

.field public C:Ljava/util/List;

.field public D:Z

.field public w:I

.field public x:Landroid/widget/TableLayout;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xa

    .line 2
    iput p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->w:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    move-object/from16 v0, p0

    .line 24
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->x:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Landroid/widget/TableLayout;->removeViews(II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    .line 25
    :goto_0
    iget-object v11, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->C:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const v12, 0x7f0b0400

    const v13, 0x7f0b0403

    const v14, 0x7f0b0405

    const/4 v15, 0x0

    const v1, 0x7f0e007b

    if-ge v5, v11, :cond_2

    .line 26
    iget v2, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->w:I

    if-ge v5, v2, :cond_1

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 28
    invoke-virtual {v2, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 29
    invoke-virtual {v1, v14}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 30
    invoke-virtual {v1, v13}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 31
    invoke-virtual {v1, v12}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 32
    iget-object v13, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->C:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Liz0;

    .line 33
    iget-object v13, v13, Liz0;->a:Ljava/lang/String;

    const-string v14, "Other"

    .line 34
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f13026f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 36
    :cond_0
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v2, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->C:Ljava/util/List;

    .line 38
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liz0;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 39
    iget-wide v14, v2, Liz0;->b:J

    invoke-static {v13, v14, v15}, LBO0;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 40
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f130276

    new-array v15, v3, [Ljava/lang/Object;

    aput-object v2, v15, v4

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v2, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->C:Ljava/util/List;

    .line 43
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liz0;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 44
    iget-wide v13, v2, Liz0;->c:J

    move/from16 v16, v5

    iget-wide v4, v2, Liz0;->b:J

    sub-long/2addr v13, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    invoke-static {v11, v13, v14}, LBO0;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 45
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f130271

    new-array v14, v3, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    invoke-virtual {v11, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v2, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->x:Landroid/widget/TableLayout;

    add-int/lit8 v11, v16, 0x1

    invoke-virtual {v2, v1, v11}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    move/from16 v2, v16

    goto :goto_1

    :cond_1
    move/from16 v16, v5

    const-wide/16 v4, 0x0

    add-int/lit8 v6, v6, 0x1

    .line 48
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->C:Ljava/util/List;

    move/from16 v2, v16

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liz0;

    .line 49
    iget-wide v11, v1, Liz0;->b:J

    add-long/2addr v7, v11

    .line 50
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->C:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liz0;

    invoke-virtual {v1}, Liz0;->a()J

    move-result-wide v11

    add-long/2addr v11, v9

    move-wide v9, v11

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v5, v1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_2
    if-lez v6, :cond_3

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 53
    invoke-virtual {v1, v14}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 54
    invoke-virtual {v1, v13}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 55
    invoke-virtual {v1, v12}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f130270

    new-array v13, v3, [Ljava/lang/Object;

    .line 57
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x0

    aput-object v6, v13, v14

    .line 58
    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 61
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060093

    .line 63
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 64
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    new-instance v2, Loz0;

    invoke-direct {v2, v0}, Loz0;-><init>(Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v2, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->x:Landroid/widget/TableLayout;

    iget v4, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->w:I

    add-int/2addr v4, v3

    invoke-virtual {v2, v1, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 69
    :cond_3
    iget-object v1, v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->x:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->requestLayout()V

    return-void
.end method

.method public final a(Landroid/widget/TextView;)V
    .locals 3

    .line 14
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 15
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 16
    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 17
    aget-object v0, v0, v1

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->D:Z

    return-void

    .line 19
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 21
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 22
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->C:Ljava/util/List;

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->z:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->b(Landroid/widget/TextView;)V

    .line 3
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->A:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->b(Landroid/widget/TextView;)V

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->B:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->a(Landroid/widget/TextView;)V

    .line 5
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->C:Ljava/util/List;

    new-instance v0, Lpz0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpz0;-><init>(Llz0;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->y:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13026c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->C:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->a()V

    const/16 p1, 0x17

    .line 13
    invoke-static {p1}, LO60;->a(I)V

    :goto_0
    return-void
.end method

.method public final b(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 3
    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 4
    aget-object p1, p1, v1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->D:Z

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b013f

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->x:Landroid/widget/TableLayout;

    const v0, 0x7f0b013a

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->y:Landroid/widget/TextView;

    const v0, 0x7f0b0138

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->z:Landroid/widget/TextView;

    const v0, 0x7f0b0139

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->A:Landroid/widget/TextView;

    const v0, 0x7f0b0137

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->B:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->z:Landroid/widget/TextView;

    new-instance v1, Llz0;

    invoke-direct {v1, p0}, Llz0;-><init>(Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->A:Landroid/widget/TextView;

    new-instance v1, Lmz0;

    invoke-direct {v1, p0}, Lmz0;-><init>(Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->B:Landroid/widget/TextView;

    new-instance v1, Lnz0;

    invoke-direct {v1, p0}, Lnz0;-><init>(Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->D:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->D:Z

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->z:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->b(Landroid/widget/TextView;)V

    .line 5
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->A:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->b(Landroid/widget/TextView;)V

    .line 6
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->B:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionSiteBreakdownView;->a(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method
