.class public abstract Le10;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/widget/EditText;)I
    .locals 3

    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, -0x1

    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x64

    if-ge p0, v2, :cond_1

    .line 36
    rem-int/lit8 v2, v0, 0x64
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v2, v0, v2

    add-int/2addr p0, v2

    :cond_1
    if-lt p0, v0, :cond_3

    add-int/lit8 v0, v0, 0xa

    if-le p0, v0, :cond_2

    goto :goto_0

    :cond_2
    return p0

    :catch_0
    :cond_3
    :goto_0
    return v1
.end method

.method public static a(Landroid/widget/EditText;Landroid/widget/EditText;ZZ)I
    .locals 8

    .line 24
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 26
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    const/4 v4, -0x1

    .line 27
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v5, v1, :cond_0

    const/16 v6, 0xc

    if-le v5, v6, :cond_1

    :catch_0
    :cond_0
    const/4 v5, -0x1

    :cond_1
    const/4 v6, 0x6

    if-ne v5, v4, :cond_4

    .line 28
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    if-eq v7, v3, :cond_3

    .line 29
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    if-nez p3, :cond_4

    return v6

    :cond_3
    :goto_0
    return v1

    .line 30
    :cond_4
    invoke-static {p1}, Le10;->a(Landroid/widget/EditText;)I

    move-result p0

    if-ne p0, v4, :cond_7

    .line 31
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    if-eq p0, v3, :cond_6

    .line 32
    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p0

    if-nez p0, :cond_5

    if-eqz p3, :cond_5

    goto :goto_1

    :cond_5
    return v6

    :cond_6
    :goto_1
    return v3

    :cond_7
    if-ne v5, v4, :cond_8

    return v6

    :cond_8
    if-ne p0, v2, :cond_9

    if-ge v5, v0, :cond_9

    const/4 p0, 0x3

    return p0

    :cond_9
    const/4 p0, 0x7

    return p0
.end method

.method public static a(ILandroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 6

    .line 48
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0600ea

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 51
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 p1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq p0, v3, :cond_1

    if-eq p0, p1, :cond_1

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x2

    if-eq p0, v5, :cond_3

    if-eq p0, p1, :cond_3

    if-ne p0, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    move-object v4, v0

    goto :goto_4

    :cond_4
    move-object v4, v5

    .line 52
    :goto_4
    invoke-virtual {p2}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eqz p1, :cond_5

    move-object p1, v0

    goto :goto_5

    :cond_5
    move-object p1, v5

    .line 53
    :goto_5
    invoke-virtual {p3}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eqz p4, :cond_9

    const/4 p1, 0x4

    if-eq p0, p1, :cond_6

    if-ne p0, v2, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    move-object v0, v5

    .line 54
    :goto_6
    invoke-virtual {p4}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_9
    return-void
.end method

.method public static a(ILandroid/content/Context;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_5

    const/4 v0, 0x7

    if-eq p0, v0, :cond_5

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const p0, 0x7f13015b

    .line 38
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const p0, 0x7f13015a

    .line 39
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const p0, 0x7f13015c

    .line 40
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const p0, 0x7f13015e

    .line 41
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const p0, 0x7f13015d

    .line 42
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 43
    :goto_0
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 44
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    .line 46
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p0, 0x8

    .line 47
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/PopupWindow;ILd10;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const v2, 0x7f14021b

    if-lt p2, v1, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v0, p2, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f07005e

    .line 7
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const v1, 0x7f07005f

    .line 8
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 9
    invoke-virtual {v0, p2, v1, p2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 p2, 0x0

    .line 10
    invoke-virtual {v0, p2, p2}, Landroid/widget/TextView;->measure(II)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p2, -0x2

    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 p2, 0x1

    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const p2, 0x7f0802ce

    .line 15
    invoke-static {p0, p2}, LdT;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    new-instance p0, Lc10;

    invoke-direct {p0, p1}, Lc10;-><init>(Landroid/widget/PopupWindow;)V

    .line 17
    sget-object p2, LzT;->a:Landroid/content/Context;

    .line 18
    invoke-virtual {p2, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 19
    new-instance p2, Lb10;

    invoke-direct {p2, p5, p0}, Lb10;-><init>(Ljava/lang/Runnable;Landroid/content/ComponentCallbacks;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 20
    invoke-interface {p3, v0}, Ld10;->b(Landroid/widget/TextView;)I

    move-result p0

    .line 21
    invoke-interface {p3, v0}, Ld10;->a(Landroid/widget/TextView;)I

    move-result p2

    .line 22
    invoke-virtual {p1, p4, p0, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 23
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
