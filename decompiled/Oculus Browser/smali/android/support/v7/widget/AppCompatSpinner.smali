.class public Landroid/support/v7/widget/AppCompatSpinner;
.super Landroid/widget/Spinner;
.source "PG"


# static fields
.field public static final E:[I


# instance fields
.field public final A:Z

.field public B:LPe;

.field public C:I

.field public final D:Landroid/graphics/Rect;

.field public final w:Loe;

.field public final x:Landroid/content/Context;

.field public y:Lyf;

.field public z:Landroid/widget/SpinnerAdapter;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102f1

    aput v2, v0, v1

    .line 1
    sput-object v0, Landroid/support/v7/widget/AppCompatSpinner;->E:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const v0, 0x7f0401f9

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner;->D:Landroid/graphics/Rect;

    .line 3
    sget-object v1, LeS;->H0:[I

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 5
    new-instance v3, Loe;

    invoke-direct {v3, p0}, Loe;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Landroid/support/v7/widget/AppCompatSpinner;->w:Loe;

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 6
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    new-instance v5, LPc;

    invoke-direct {v5, p1, v4}, LPc;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Landroid/support/v7/widget/AppCompatSpinner;->x:Landroid/content/Context;

    goto :goto_1

    .line 8
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_1

    move-object v4, p1

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    iput-object v4, p0, Landroid/support/v7/widget/AppCompatSpinner;->x:Landroid/content/Context;

    .line 9
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatSpinner;->x:Landroid/content/Context;

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    const/4 v4, -0x1

    .line 10
    :try_start_0
    sget-object v6, Landroid/support/v7/widget/AppCompatSpinner;->E:[I

    invoke-virtual {p1, p2, v6, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-virtual {v6, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 12
    invoke-virtual {v6, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v3, v6

    goto :goto_4

    :catch_0
    move-exception v7

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception v6

    move-object v7, v6

    move-object v6, v3

    :goto_2
    :try_start_2
    const-string v8, "AppCompatSpinner"

    const-string v9, "Could not read android:spinnerMode"

    .line 13
    invoke-static {v8, v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_3

    .line 14
    :cond_2
    :goto_3
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    if-ne v4, v5, :cond_5

    .line 15
    new-instance v4, LPe;

    iget-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->x:Landroid/content/Context;

    invoke-direct {v4, p0, v6, p2, v0}, LPe;-><init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iget-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->x:Landroid/content/Context;

    sget-object v7, LeS;->H0:[I

    invoke-static {v6, p2, v7, v0, v2}, LNh;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)LNh;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, -0x2

    .line 17
    invoke-virtual {v6, v7, v8}, LNh;->e(II)I

    move-result v7

    iput v7, p0, Landroid/support/v7/widget/AppCompatSpinner;->C:I

    .line 18
    invoke-virtual {v6, v5}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 19
    iget-object v8, v4, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x2

    .line 20
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 21
    iput-object v7, v4, LPe;->b0:Ljava/lang/CharSequence;

    .line 22
    iget-object v6, v6, LNh;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    iput-object v4, p0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    .line 24
    new-instance v6, LKe;

    invoke-direct {v6, p0, p0, v4}, LKe;-><init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/view/View;LPe;)V

    iput-object v6, p0, Landroid/support/v7/widget/AppCompatSpinner;->y:Lyf;

    goto :goto_5

    :goto_4
    if-eqz v3, :cond_4

    .line 25
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    throw p1

    .line 26
    :cond_5
    :goto_5
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 27
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v4, p1, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p1, 0x7f0e01aa

    .line 28
    invoke-virtual {v4, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 29
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 30
    :cond_6
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    iput-boolean v5, p0, Landroid/support/v7/widget/AppCompatSpinner;->A:Z

    .line 32
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner;->z:Landroid/widget/SpinnerAdapter;

    if-eqz p1, :cond_7

    .line 33
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 34
    iput-object v3, p0, Landroid/support/v7/widget/AppCompatSpinner;->z:Landroid/widget/SpinnerAdapter;

    .line 35
    :cond_7
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner;->w:Loe;

    invoke-virtual {p1, p2, v0}, Loe;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v5, v3, 0xf

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v3

    rsub-int/lit8 v5, v5, 0xf

    sub-int/2addr v3, v5

    .line 5
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    move-object v7, v5

    const/4 v6, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    .line 6
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v0, :cond_1

    move-object v7, v5

    move v0, v8

    .line 7
    :cond_1
    invoke-interface {p1, v3, v7, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 8
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_2

    .line 9
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :cond_2
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 11
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 12
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner;->D:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 13
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner;->D:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p1

    add-int/2addr v6, p2

    :cond_4
    return v6
.end method

.method public drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/Spinner;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->w:Loe;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Loe;->a()V

    :cond_0
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lmg;->B:I

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, v0, Lmg;->E:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, v0, Lmg;->C:I

    :goto_0
    return v0

    .line 4
    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->C:I

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmg;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->x:Landroid/content/Context;

    return-object v0

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 4
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, LPe;->b0:Ljava/lang/CharSequence;

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    invoke-virtual {v0}, Lmg;->dismiss()V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 2
    iget-object p2, p0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result p2

    .line 4
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 5
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 7
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result p2

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/widget/Spinner;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->y:Lyf;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lyf;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lmg;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    invoke-virtual {v0}, LPe;->a()V

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 4
    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3

    .line 2
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->A:Z

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner;->z:Landroid/widget/SpinnerAdapter;

    return-void

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 5
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->x:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    new-instance v2, LLe;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-direct {v2, p1, v0}, LLe;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v1, v2}, LPe;->a(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner;->w:Loe;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Loe;->d()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->w:Loe;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Loe;->a(I)V

    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    if-eqz v0, :cond_0

    .line 2
    iput p1, v0, Lmg;->B:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    :goto_0
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    if-eqz v0, :cond_0

    .line 2
    iput p1, v0, Lmg;->C:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v0, Lmg;->E:Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    :goto_0
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Landroid/support/v7/widget/AppCompatSpinner;->C:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    :goto_0
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner;->B:LPe;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, v0, LPe;->b0:Ljava/lang/CharSequence;

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
