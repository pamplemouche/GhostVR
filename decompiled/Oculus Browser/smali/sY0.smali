.class public abstract LsY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Landroid/app/Activity;

.field public B:Landroid/util/DisplayMetrics;

.field public C:Landroid/widget/PopupWindow;

.field public D:Landroid/widget/LinearLayout;

.field public E:Ljava/lang/String;

.field public F:I

.field public G:Landroid/widget/TextView;

.field public H:Landroid/widget/TextView;

.field public I:Landroid/widget/ListView;

.field public J:Landroid/widget/LinearLayout;

.field public K:Landroid/view/View;

.field public L:I

.field public M:Z

.field public final w:Landroid/content/Context;

.field public final x:Lorg/chromium/content/browser/input/TextSuggestionHost;

.field public final y:Landroid/view/View;

.field public z:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/input/TextSuggestionHost;Lorg/chromium/ui/base/WindowAndroid;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LsY0;->w:Landroid/content/Context;

    .line 3
    iput-object p2, p0, LsY0;->x:Lorg/chromium/content/browser/input/TextSuggestionHost;

    .line 4
    iput-object p3, p0, LsY0;->z:Lorg/chromium/ui/base/WindowAndroid;

    .line 5
    iput-object p4, p0, LsY0;->y:Landroid/view/View;

    .line 6
    new-instance p1, Landroid/widget/PopupWindow;

    invoke-direct {p1}, Landroid/widget/PopupWindow;-><init>()V

    iput-object p1, p0, LsY0;->C:Landroid/widget/PopupWindow;

    const/4 p2, -0x2

    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 8
    iget-object p1, p0, LsY0;->C:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9
    iget-object p1, p0, LsY0;->C:Landroid/widget/PopupWindow;

    iget-object p2, p0, LsY0;->w:Landroid/content/Context;

    .line 10
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0800ea

    .line 11
    invoke-static {p2, p3}, LdT;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object p1, p0, LsY0;->C:Landroid/widget/PopupWindow;

    iget-object p2, p0, LsY0;->w:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0702fc

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 13
    iget-object p1, p0, LsY0;->C:Landroid/widget/PopupWindow;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 14
    iget-object p1, p0, LsY0;->C:Landroid/widget/PopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 15
    iget-object p1, p0, LsY0;->C:Landroid/widget/PopupWindow;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 16
    iget-object p1, p0, LsY0;->C:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 17
    iget-object p1, p0, LsY0;->w:Landroid/content/Context;

    const-string p3, "layout_inflater"

    .line 18
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const/4 p3, 0x0

    const p4, 0x7f0e01bc

    .line 19
    invoke-virtual {p1, p4, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    iput-object p4, p0, LsY0;->D:Landroid/widget/LinearLayout;

    .line 20
    iget-object p4, p0, LsY0;->w:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f0702fd

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, LsY0;->L:I

    .line 21
    iget-object p4, p0, LsY0;->D:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0446

    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ListView;

    iput-object p4, p0, LsY0;->I:Landroid/widget/ListView;

    .line 22
    invoke-virtual {p4, p3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const p4, 0x7f0e01be

    .line 23
    invoke-virtual {p1, p4, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, LsY0;->J:Landroid/widget/LinearLayout;

    .line 24
    iget-object p4, p0, LsY0;->I:Landroid/widget/ListView;

    invoke-virtual {p4, p1, p3, p2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 25
    iget-object p1, p0, LsY0;->I:Landroid/widget/ListView;

    new-instance p2, LrY0;

    invoke-direct {p2, p0, p3}, LrY0;-><init>(LsY0;LqY0;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 26
    iget-object p1, p0, LsY0;->I:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 27
    iget-object p1, p0, LsY0;->D:Landroid/widget/LinearLayout;

    const p2, 0x7f0b0167

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, LsY0;->K:Landroid/view/View;

    .line 28
    iget-object p1, p0, LsY0;->D:Landroid/widget/LinearLayout;

    const p2, 0x7f0b0033

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LsY0;->G:Landroid/widget/TextView;

    .line 29
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p0, LsY0;->D:Landroid/widget/LinearLayout;

    const p2, 0x7f0b014e

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LsY0;->H:Landroid/widget/TextView;

    .line 31
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object p1, p0, LsY0;->C:Landroid/widget/PopupWindow;

    iget-object p2, p0, LsY0;->D:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(DDLjava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, LsY0;->a()I

    move-result v0

    iput v0, p0, LsY0;->F:I

    .line 2
    iput-object p5, p0, LsY0;->E:Ljava/lang/String;

    .line 3
    iget-object p5, p0, LsY0;->z:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {p5}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/Activity;

    iput-object p5, p0, LsY0;->A:Landroid/app/Activity;

    if-eqz p5, :cond_0

    .line 4
    invoke-virtual {p5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iput-object p5, p0, LsY0;->B:Landroid/util/DisplayMetrics;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p5, p0, LsY0;->w:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iput-object p5, p0, LsY0;->B:Landroid/util/DisplayMetrics;

    .line 6
    :goto_0
    iget-object p5, p0, LsY0;->A:Landroid/app/Activity;

    const/4 v0, 0x0

    if-eqz p5, :cond_2

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 8
    invoke-static {p5}, LaT;->a(Landroid/app/Activity;)Z

    move-result p5

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    :goto_1
    if-nez p5, :cond_2

    .line 9
    new-instance p5, Landroid/graphics/Rect;

    invoke-direct {p5}, Landroid/graphics/Rect;-><init>()V

    .line 10
    iget-object v1, p0, LsY0;->A:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 11
    iget p5, p5, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_2
    const/4 p5, 0x0

    .line 12
    :goto_2
    iget-object v1, p0, LsY0;->J:Landroid/widget/LinearLayout;

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 13
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 15
    iget-object v1, p0, LsY0;->B:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v1, p5

    iget-object p5, p0, LsY0;->J:Landroid/widget/LinearLayout;

    .line 16
    invoke-virtual {p5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr v1, p5

    iget p5, p0, LsY0;->L:I

    const/4 v2, 0x2

    mul-int/lit8 p5, p5, 0x2

    sub-int/2addr v1, p5

    iget-object p5, p0, LsY0;->D:Landroid/widget/LinearLayout;

    .line 17
    invoke-virtual {p5}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p5

    sub-int/2addr v1, p5

    iget-object p5, p0, LsY0;->D:Landroid/widget/LinearLayout;

    invoke-virtual {p5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p5

    sub-int/2addr v1, p5

    .line 18
    iget-object p5, p0, LsY0;->w:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v3, 0x7f0702f4

    invoke-virtual {p5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    if-lez v1, :cond_3

    .line 19
    div-int p5, v1, p5

    goto :goto_3

    :cond_3
    const/4 p5, 0x0

    .line 20
    :goto_3
    iget v1, p0, LsY0;->F:I

    invoke-static {v1, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    iput p5, p0, LsY0;->F:I

    if-nez p5, :cond_4

    .line 21
    iget-object p5, p0, LsY0;->K:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 22
    :cond_4
    iget-object p5, p0, LsY0;->K:Landroid/view/View;

    invoke-virtual {p5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    :goto_4
    iget-object p5, p0, LsY0;->I:Landroid/widget/ListView;

    invoke-virtual {p5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p5

    invoke-static {p5}, Lwc1;->a(Landroid/widget/ListAdapter;)I

    move-result p5

    .line 24
    iget-object v1, p0, LsY0;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, LsY0;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, p5

    .line 25
    iget-object p5, p0, LsY0;->B:Landroid/util/DisplayMetrics;

    iget p5, p5, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v1, -0x80000000

    invoke-static {p5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    .line 26
    iget-object v1, p0, LsY0;->D:Landroid/widget/LinearLayout;

    const/high16 v4, 0x40000000    # 2.0f

    .line 27
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 28
    invoke-virtual {v1, v4, p5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 29
    iget-object p5, p0, LsY0;->C:Landroid/widget/PopupWindow;

    invoke-virtual {p5, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 30
    iget-object p5, p0, LsY0;->D:Landroid/widget/LinearLayout;

    invoke-virtual {p5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p5

    .line 31
    iget-object v1, p0, LsY0;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v3, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    sub-double/2addr p1, v3

    .line 32
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    .line 33
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-int p1, p3

    new-array p3, v2, [I

    .line 34
    iget-object p4, p0, LsY0;->y:Landroid/view/View;

    invoke-virtual {p4, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 35
    aget p4, p3, v0

    add-int/2addr p2, p4

    const/4 p4, 0x1

    .line 36
    aget p3, p3, p4

    add-int/2addr p1, p3

    .line 37
    iget-object p3, p0, LsY0;->D:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p3

    sub-int/2addr p1, p3

    .line 38
    iget-object p3, p0, LsY0;->B:Landroid/util/DisplayMetrics;

    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr p3, p5

    iget-object p4, p0, LsY0;->D:Landroid/widget/LinearLayout;

    .line 39
    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p4

    add-int/2addr p4, p3

    .line 40
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 41
    iget-object p3, p0, LsY0;->D:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p3

    neg-int p3, p3

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 42
    iget-object p3, p0, LsY0;->B:Landroid/util/DisplayMetrics;

    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr p3, v1

    iget-object p4, p0, LsY0;->D:Landroid/widget/LinearLayout;

    .line 43
    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p4

    sub-int/2addr p3, p4

    iget p4, p0, LsY0;->L:I

    sub-int/2addr p3, p4

    .line 44
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 45
    iget-object p3, p0, LsY0;->C:Landroid/widget/PopupWindow;

    iget-object p4, p0, LsY0;->y:Landroid/view/View;

    invoke-virtual {p3, p4, v0, p2, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public abstract a(I)V
.end method

.method public abstract b(I)Ljava/lang/Object;
.end method

.method public abstract c(I)Landroid/text/SpannableString;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, LsY0;->G:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, LsY0;->E:Ljava/lang/String;

    const-string v2, "word"

    .line 4
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, LsY0;->w:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7
    iget-object p1, p0, LsY0;->x:Lorg/chromium/content/browser/input/TextSuggestionHost;

    iget-object v0, p0, LsY0;->E:Ljava/lang/String;

    .line 8
    iget-wide v2, p1, Lorg/chromium/content/browser/input/TextSuggestionHost;->w:J

    .line 9
    invoke-static {v2, v3, p1, v0}, LJ/N;->MpJ8AQhr(JLjava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-boolean v1, p0, LsY0;->M:Z

    .line 11
    iget-object p1, p0, LsY0;->C:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, LsY0;->H:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 13
    iget-object p1, p0, LsY0;->x:Lorg/chromium/content/browser/input/TextSuggestionHost;

    .line 14
    iget-wide v2, p1, Lorg/chromium/content/browser/input/TextSuggestionHost;->w:J

    .line 15
    invoke-static {v2, v3, p1}, LJ/N;->MCBTtv2g(JLjava/lang/Object;)V

    .line 16
    iput-boolean v1, p0, LsY0;->M:Z

    .line 17
    iget-object p1, p0, LsY0;->C:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, LsY0;->x:Lorg/chromium/content/browser/input/TextSuggestionHost;

    iget-boolean v1, p0, LsY0;->M:Z

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/TextSuggestionHost;->a(Z)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LsY0;->M:Z

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget p1, p0, LsY0;->F:I

    if-lt p3, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p3}, LsY0;->a(I)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, LsY0;->M:Z

    .line 4
    iget-object p1, p0, LsY0;->C:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
