.class public abstract Lnc;
.super Ls2;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public D0:Lec;

.field public E0:Ljava/lang/CharSequence;

.field public F0:Ljava/lang/CharSequence;

.field public G0:Ljava/lang/CharSequence;

.field public H0:Ljava/lang/CharSequence;

.field public I0:I

.field public J0:Landroid/graphics/drawable/BitmapDrawable;

.field public K0:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls2;-><init>()V

    return-void
.end method


# virtual methods
.method public O()Lec;
    .locals 2

    .line 1
    iget-object v0, p0, Lnc;->D0:Lec;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v1, "key"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lz2;->D:Lz2;

    .line 5
    check-cast v1, Ldc;

    .line 6
    invoke-interface {v1, v0}, Ldc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lec;

    iput-object v0, p0, Lnc;->D0:Lec;

    .line 7
    :cond_0
    iget-object v0, p0, Lnc;->D0:Lec;

    return-object v0
.end method

.method public P()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(LO8;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Ls2;->b(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lz2;->D:Lz2;

    .line 3
    instance-of v1, v0, Ldc;

    if-eqz v1, :cond_4

    .line 4
    check-cast v0, Ldc;

    .line 5
    iget-object v1, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v2, "key"

    .line 6
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 7
    invoke-interface {v0, v1}, Ldc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lec;

    iput-object p1, p0, Lnc;->D0:Lec;

    .line 8
    iget-object v0, p1, Lec;->i0:Ljava/lang/CharSequence;

    .line 9
    iput-object v0, p0, Lnc;->E0:Ljava/lang/CharSequence;

    .line 10
    iget-object v0, p1, Lec;->l0:Ljava/lang/CharSequence;

    .line 11
    iput-object v0, p0, Lnc;->F0:Ljava/lang/CharSequence;

    .line 12
    iget-object v0, p1, Lec;->m0:Ljava/lang/CharSequence;

    .line 13
    iput-object v0, p0, Lnc;->G0:Ljava/lang/CharSequence;

    .line 14
    iget-object v0, p1, Lec;->j0:Ljava/lang/CharSequence;

    .line 15
    iput-object v0, p0, Lnc;->H0:Ljava/lang/CharSequence;

    .line 16
    iget v0, p1, Lec;->n0:I

    .line 17
    iput v0, p0, Lnc;->I0:I

    .line 18
    iget-object p1, p1, Lec;->k0:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 19
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 21
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 22
    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 23
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 24
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 25
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 26
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lnc;->J0:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lnc;->J0:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    :cond_2
    const-string v0, "PreferenceDialogFragment.title"

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lnc;->E0:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.positiveText"

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lnc;->F0:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.negativeText"

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lnc;->G0:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.message"

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lnc;->H0:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.layout"

    .line 32
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnc;->I0:I

    const-string v0, "PreferenceDialogFragment.icon"

    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    .line 34
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lnc;->J0:Landroid/graphics/drawable/BitmapDrawable;

    :cond_3
    :goto_1
    return-void

    .line 35
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Target fragment must implement TargetFragment interface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    const v0, 0x102000b

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 37
    iget-object v0, p0, Lnc;->H0:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 39
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 40
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x0

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ls2;->d(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lnc;->E0:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lnc;->F0:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.positiveText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lnc;->G0:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.negativeText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lnc;->H0:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.message"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6
    iget v0, p0, Lnc;->I0:I

    const-string v1, "PreferenceDialogFragment.layout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    iget-object v0, p0, Lnc;->J0:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "PreferenceDialogFragment.icon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public h(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const/4 v0, -0x2

    .line 2
    iput v0, p0, Lnc;->K0:I

    .line 3
    new-instance v0, LO8;

    invoke-direct {v0, p1}, LO8;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lnc;->E0:Ljava/lang/CharSequence;

    .line 4
    iget-object v2, v0, LO8;->a:LK8;

    iput-object v1, v2, LK8;->f:Ljava/lang/CharSequence;

    .line 5
    iget-object v1, p0, Lnc;->J0:Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    iput-object v1, v2, LK8;->d:Landroid/graphics/drawable/Drawable;

    .line 7
    iget-object v1, p0, Lnc;->F0:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {v0, v1, p0}, LO8;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)LO8;

    iget-object v1, p0, Lnc;->G0:Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {v0, v1, p0}, LO8;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)LO8;

    .line 10
    iget v1, p0, Lnc;->I0:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {p0, v2}, Lnc;->b(Landroid/view/View;)V

    .line 14
    iget-object p1, v0, LO8;->a:LK8;

    iput-object v2, p1, LK8;->u:Landroid/view/View;

    const/4 v1, 0x0

    .line 15
    iput v1, p1, LK8;->t:I

    .line 16
    iput-boolean v1, p1, LK8;->v:Z

    goto :goto_1

    .line 17
    :cond_1
    iget-object p1, p0, Lnc;->H0:Ljava/lang/CharSequence;

    .line 18
    iget-object v1, v0, LO8;->a:LK8;

    iput-object p1, v1, LK8;->h:Ljava/lang/CharSequence;

    .line 19
    :goto_1
    invoke-virtual {p0, v0}, Lnc;->a(LO8;)V

    .line 20
    invoke-virtual {v0}, LO8;->a()LP8;

    move-result-object p1

    .line 21
    invoke-virtual {p0}, Lnc;->P()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    return-object p1
.end method

.method public abstract i(Z)V
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnc;->K0:I

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Ls2;->A0:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Ls2;->g(Z)V

    .line 3
    :cond_0
    iget p1, p0, Lnc;->K0:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lnc;->i(Z)V

    return-void
.end method
