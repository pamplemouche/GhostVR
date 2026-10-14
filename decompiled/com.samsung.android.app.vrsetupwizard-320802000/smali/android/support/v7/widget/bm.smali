.class Landroid/support/v7/widget/bm;
.super Landroid/support/v7/widget/bk;


# instance fields
.field private b:Landroid/support/v7/widget/kt;

.field private c:Landroid/support/v7/widget/kt;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/bk;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    invoke-super {p0}, Landroid/support/v7/widget/bk;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/bm;->b:Landroid/support/v7/widget/kt;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bm;->c:Landroid/support/v7/widget/kt;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bm;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/bm;->b:Landroid/support/v7/widget/kt;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/bm;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/kt;)V

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/bm;->c:Landroid/support/v7/widget/kt;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/bm;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/kt;)V

    :cond_1
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/bk;->a(Landroid/util/AttributeSet;I)V

    iget-object v0, p0, Landroid/support/v7/widget/bm;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/support/v7/widget/ap;->a()Landroid/support/v7/widget/ap;

    move-result-object v1

    sget-object v2, Landroid/support/v7/b/l;->AppCompatTextHelper:[I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Landroid/support/v7/b/l;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Landroid/support/v7/b/l;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-static {v0, v1, p2}, Landroid/support/v7/widget/bm;->a(Landroid/content/Context;Landroid/support/v7/widget/ap;I)Landroid/support/v7/widget/kt;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/bm;->b:Landroid/support/v7/widget/kt;

    :cond_0
    sget p2, Landroid/support/v7/b/l;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Landroid/support/v7/b/l;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-static {v0, v1, p2}, Landroid/support/v7/widget/bm;->a(Landroid/content/Context;Landroid/support/v7/widget/ap;I)Landroid/support/v7/widget/kt;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/bm;->c:Landroid/support/v7/widget/kt;

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
