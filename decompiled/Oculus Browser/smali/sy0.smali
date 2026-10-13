.class public abstract Lsy0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a()I
    .locals 1

    .line 27
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    invoke-static {v0}, LJ/N;->McA8KddJ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1303ad

    goto :goto_0

    :cond_0
    const v0, 0x7f1303ae

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 30
    throw v0
.end method

.method public static a(Lqy0;Landroid/support/v7/preference/Preference;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-nez p0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->i()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-interface {p0, p1}, Lqy0;->a(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p1, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    const p1, 0x7f0800ce

    .line 6
    invoke-static {p0, p1}, Lxy0;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-interface {p0, p1}, Lqy0;->b(Landroid/support/v7/preference/Preference;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 8
    iget-object p0, p1, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    const p1, 0x7f0800f5

    .line 9
    invoke-static {p0, p1}, Lxy0;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->i()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f1303ac

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static a(Lqy0;Landroid/support/v7/preference/Preference;Landroid/view/View;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-interface {p0, p1}, Lqy0;->c(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 12
    invoke-static {p2, v1}, LGO0;->a(Landroid/view/View;Z)V

    :cond_1
    const v0, 0x1020010

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 14
    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 15
    :goto_0
    invoke-interface {p0, p1}, Lqy0;->a(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 16
    iget-object p0, p1, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    const p1, 0x7f1303ac

    .line 17
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 18
    :cond_3
    invoke-interface {p0, p1}, Lqy0;->b(Landroid/support/v7/preference/Preference;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 19
    iget-object p0, p1, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 20
    invoke-static {}, Lsy0;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 21
    :cond_4
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    .line 22
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    move-object v0, v2

    goto :goto_2

    .line 23
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const/4 v0, 0x1

    aput-object v2, p1, v0

    const-string v0, "%s\n%s"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 25
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lsy0;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static b(Lqy0;Landroid/support/v7/preference/Preference;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v0, p1, LXx0;

    if-nez v0, :cond_1

    .line 4
    invoke-static {p0, p1}, Lsy0;->a(Lqy0;Landroid/support/v7/preference/Preference;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 5
    :cond_1
    invoke-interface {p0, p1}, Lqy0;->c(Landroid/support/v7/preference/Preference;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 6
    iput-boolean p0, p1, Landroid/support/v7/preference/Preference;->a0:Z

    .line 7
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->o()V

    const/4 p0, 0x0

    .line 8
    iput-object p0, p1, Landroid/support/v7/preference/Preference;->K:Ljava/lang/String;

    .line 9
    iput-object p0, p1, Landroid/support/v7/preference/Preference;->J:Landroid/content/Intent;

    .line 10
    iput-object p0, p1, Landroid/support/v7/preference/Preference;->B:Lmc;

    :cond_2
    return-void
.end method

.method public static c(Lqy0;Landroid/support/v7/preference/Preference;)Z
    .locals 1

    if-eqz p0, :cond_3

    .line 1
    invoke-interface {p0, p1}, Lqy0;->c(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p0, p1}, Lqy0;->a(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p0, p1, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 4
    invoke-static {p0}, Lsy0;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p0, p1}, Lqy0;->b(Landroid/support/v7/preference/Preference;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 6
    iget-object p0, p1, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 7
    invoke-static {p0}, Lsy0;->b(Landroid/content/Context;)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
