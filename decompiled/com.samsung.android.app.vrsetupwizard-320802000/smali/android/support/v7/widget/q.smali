.class Landroid/support/v7/widget/q;
.super Landroid/support/v7/widget/bn;


# instance fields
.field final synthetic b:Landroid/support/v7/widget/ActionMenuPresenter;

.field private c:Landroid/support/v7/g/l;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 5

    iput-object p1, p0, Landroid/support/v7/widget/q;->b:Landroid/support/v7/widget/ActionMenuPresenter;

    sget v0, Landroid/support/v7/b/b;->actionOverflowButtonStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Landroid/support/v7/widget/bn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/q;->setClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/q;->setFocusable(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Landroid/support/v7/b/l;->AppCompatTheme:[I

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Landroid/support/v7/b/l;->AppCompatTheme_actionMenuTextAppearance:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p0, v3}, Landroid/support/v4/widget/bq;->a(Landroid/widget/TextView;I)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/support/v7/widget/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v7/b/j;->sesl_more_item_label:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/q;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    sget v3, Landroid/support/v7/b/b;->isLightTheme:I

    invoke-virtual {p2, v3, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, v2, Landroid/util/TypedValue;->data:I

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-static {p1, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;Z)Z

    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->d(Landroid/support/v7/widget/ActionMenuPresenter;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroid/support/v7/b/f;->sesl_action_bar_item_text_background:I

    goto :goto_0

    :cond_1
    sget p1, Landroid/support/v7/b/f;->sesl_action_bar_item_text_background_dark:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/q;->setBackgroundResource(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1b

    if-le p1, p2, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/q;->a(Z)V

    goto :goto_1

    :cond_2
    new-instance p1, Landroid/support/v7/g/l;

    invoke-virtual {p0}, Landroid/support/v7/widget/q;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/v7/b/f;->sesl_action_text_button_show_button_background:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroid/support/v7/widget/q;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Landroid/support/v7/g/l;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/support/v7/widget/q;->c:Landroid/support/v7/g/l;

    :goto_1
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/bn;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Landroid/support/v7/widget/q;->c:Landroid/support/v7/g/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/g/l;->a()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/bn;->onMeasure(II)V

    iget-object p1, p0, Landroid/support/v7/widget/q;->c:Landroid/support/v7/g/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/g/l;->a()V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/support/v7/widget/bn;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/q;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/support/v7/widget/q;->b:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->f()Z

    return v1
.end method
