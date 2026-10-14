.class public abstract Landroid/support/v7/preference/r;
.super Landroid/support/v4/app/i;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private ae:Landroid/support/v7/preference/DialogPreference;

.field private af:Ljava/lang/CharSequence;

.field private ag:Ljava/lang/CharSequence;

.field private ah:Ljava/lang/CharSequence;

.field private ai:Ljava/lang/CharSequence;

.field private aj:I

.field private ak:Landroid/graphics/drawable/BitmapDrawable;

.field private al:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/i;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Dialog;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/support/v4/app/i;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v7/preference/r;->j()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/preference/c;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/support/v7/preference/c;

    invoke-virtual {p0}, Landroid/support/v7/preference/r;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    invoke-interface {v0, v1}, Landroid/support/v7/preference/c;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/DialogPreference;

    iput-object p1, p0, Landroid/support/v7/preference/r;->ae:Landroid/support/v7/preference/DialogPreference;

    iget-object p1, p0, Landroid/support/v7/preference/r;->ae:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/DialogPreference;->a()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/r;->af:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroid/support/v7/preference/r;->ae:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/DialogPreference;->d()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/r;->ag:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroid/support/v7/preference/r;->ae:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/DialogPreference;->e()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/r;->ah:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroid/support/v7/preference/r;->ae:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/DialogPreference;->b()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/preference/r;->ai:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroid/support/v7/preference/r;->ae:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/DialogPreference;->f()I

    move-result p1

    iput p1, p0, Landroid/support/v7/preference/r;->aj:I

    iget-object p1, p0, Landroid/support/v7/preference/r;->ae:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/DialogPreference;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/support/v7/preference/r;->m()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    :goto_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    :goto_1
    iput-object p1, p0, Landroid/support/v7/preference/r;->ak:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_2

    :cond_2
    const-string v0, "PreferenceDialogFragment.title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/r;->af:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.positiveText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/r;->ag:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.negativeText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/r;->ah:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/r;->ai:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.layout"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/r;->aj:I

    const-string v0, "PreferenceDialogFragment.icon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/support/v7/preference/r;->m()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/support/v7/preference/r;->ak:Landroid/graphics/drawable/BitmapDrawable;

    :cond_3
    :goto_2
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Target fragment must implement TargetFragment interface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Landroid/support/v7/app/s;)V
    .locals 0

    return-void
.end method

.method protected ab()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ac()Landroid/support/v7/preference/DialogPreference;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/preference/r;->ae:Landroid/support/v7/preference/DialogPreference;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/r;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/preference/r;->j()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/c;

    invoke-interface {v1, v0}, Landroid/support/v7/preference/c;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DialogPreference;

    iput-object v0, p0, Landroid/support/v7/preference/r;->ae:Landroid/support/v7/preference/DialogPreference;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/r;->ae:Landroid/support/v7/preference/DialogPreference;

    return-object v0
.end method

.method protected b(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    iget v0, p0, Landroid/support/v7/preference/r;->aj:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/view/View;)V
    .locals 3

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/r;->ai:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/preference/r;->l()Landroid/support/v4/app/p;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p0, Landroid/support/v7/preference/r;->al:I

    new-instance v0, Landroid/support/v7/app/s;

    invoke-direct {v0, p1}, Landroid/support/v7/app/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Landroid/support/v7/preference/r;->af:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/s;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/r;->ak:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/s;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/s;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/r;->ag:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/s;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/r;->ah:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/s;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/r;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/r;->b(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/app/s;->b(Landroid/view/View;)Landroid/support/v7/app/s;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v7/preference/r;->ai:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/s;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/s;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/r;->a(Landroid/support/v7/app/s;)V

    invoke-virtual {v0}, Landroid/support/v7/app/s;->b()Landroid/support/v7/app/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v7/preference/r;->ab()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/r;->a(Landroid/app/Dialog;)V

    :cond_1
    return-object p1
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/i;->e(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v7/preference/r;->af:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/preference/r;->ag:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.positiveText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/preference/r;->ah:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.negativeText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/preference/r;->ai:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.message"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/support/v7/preference/r;->aj:I

    const-string v1, "PreferenceDialogFragment.layout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/support/v7/preference/r;->ak:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "PreferenceDialogFragment.icon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public abstract h(Z)V
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iput p2, p0, Landroid/support/v7/preference/r;->al:I

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onDismiss(Landroid/content/DialogInterface;)V

    iget p1, p0, Landroid/support/v7/preference/r;->al:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/r;->h(Z)V

    return-void
.end method
