.class public Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;
.super Lz2;
.source "PG"

# interfaces
.implements LsA0;


# instance fields
.field public A0:Z

.field public B0:Z

.field public u0:I

.field public v0:Z

.field public w0:Landroid/content/ClipboardManager;

.field public x0:Landroid/os/Bundle;

.field public y0:Landroid/view/View;

.field public z0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz2;-><init>()V

    return-void
.end method


# virtual methods
.method public K()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    sget-object v0, LvA0;->a:LwA0;

    .line 3
    invoke-virtual {v0, p0}, LwA0;->b(LsA0;)V

    return-void
.end method

.method public L()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, LxA0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->z0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->P()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->A0:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->O()V

    .line 5
    :cond_1
    sget-object v0, LvA0;->a:LwA0;

    .line 6
    invoke-virtual {v0, p0}, LwA0;->a(LsA0;)V

    return-void
.end method

.method public final O()V
    .locals 3

    .line 1
    iget-object v0, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v1, "password"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->w0:Landroid/content/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 5
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130480

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf1;->a(Landroid/content/Context;II)Lmf1;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x3

    const-string v1, "PasswordManager.Android.PasswordCredentialEntry.Password"

    .line 7
    invoke-static {v1, v2, v0}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public final P()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x20091

    const v1, 0x7f13047e

    const v2, 0x7f080227

    .line 2
    invoke-virtual {p0, v2, v0, v1}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->a(III)V

    const/4 v0, 0x1

    const/4 v1, 0x3

    const-string v2, "PasswordManager.Android.PasswordCredentialEntry.Password"

    .line 3
    invoke-static {v2, v0, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public final Q()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const v0, 0x20081

    const v1, 0x7f130487

    const v2, 0x7f080226

    .line 2
    invoke-virtual {p0, v2, v0, v1}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->a(III)V

    const/4 v0, 0x2

    const/4 v1, 0x3

    const-string v2, "PasswordManager.Android.PasswordCredentialEntry.Password"

    .line 3
    invoke-static {v2, v0, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-super {p0, p3}, Lz2;->b(Landroid/os/Bundle;)V

    .line 2
    iget-object p3, p0, Lz2;->C:Landroid/os/Bundle;

    .line 3
    iput-object p3, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->x0:Landroid/os/Bundle;

    const-string v0, "id"

    .line 4
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->u0:I

    .line 5
    iget-object p3, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->x0:Landroid/os/Bundle;

    const-string v0, "found_via_search_args"

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->B0:Z

    .line 7
    iget-object p3, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->x0:Landroid/os/Bundle;

    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 8
    iget-object p3, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->x0:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 9
    :goto_1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->v0:Z

    .line 10
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->x0:Landroid/os/Bundle;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    iput-object v2, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->w0:Landroid/content/ClipboardManager;

    .line 12
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->v0:Z

    if-eqz v2, :cond_2

    const v2, 0x7f0e0147

    goto :goto_2

    :cond_2
    const v2, 0x7f0e0149

    :goto_2
    invoke-virtual {p1, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b039a

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->y0:Landroid/view/View;

    .line 14
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p2

    const v2, 0x7f130484

    invoke-virtual {p2, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 15
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->w0:Landroid/content/ClipboardManager;

    const p2, 0x7f0b04d7

    .line 16
    invoke-virtual {p0, p2, v0}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->a(ILjava/lang/String;)V

    .line 17
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->y0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->y0:Landroid/view/View;

    const v4, 0x7f0b03df

    .line 18
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 19
    new-instance v5, Lwy0;

    invoke-direct {v5, v3, v4}, Lwy0;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 20
    invoke-virtual {v0, v5}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 21
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->y0:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0b0325

    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    .line 23
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v3

    const v4, 0x7f130478

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {p2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v3

    const v4, 0x7f080110

    invoke-static {v3, v4}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 26
    invoke-virtual {p2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    new-instance v3, LoA0;

    invoke-direct {v3, p0}, LoA0;-><init>(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;)V

    invoke-virtual {p2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-boolean p2, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->v0:Z

    const/4 v3, 0x4

    if-nez p2, :cond_3

    .line 29
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/app/Activity;->setTitle(I)V

    const p2, 0x7f0b04e1

    .line 30
    invoke-virtual {p0, p2, p3}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->a(ILjava/lang/String;)V

    .line 31
    iget-object p3, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->y0:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    .line 33
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p3

    invoke-static {p3, v4}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 34
    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p3

    const v0, 0x7f130479

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 36
    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 37
    new-instance p3, LnA0;

    invoke-direct {p3, p0}, LnA0;-><init>(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->Q()V

    .line 39
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->y0:Landroid/view/View;

    const p3, 0x7f0b0326

    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    .line 41
    iget-object p3, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->y0:Landroid/view/View;

    const v0, 0x7f0b032a

    .line 42
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    .line 43
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-static {v0, v4}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44
    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    new-instance v0, LpA0;

    invoke-direct {v0, p0}, LpA0;-><init>(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance p2, LqA0;

    invoke-direct {p2, p0}, LqA0;-><init>(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;)V

    invoke-virtual {p3, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "PasswordManager.Android.PasswordCredentialEntry"

    .line 47
    invoke-static {p2, v1, v3}, LfV;->a(Ljava/lang/String;II)V

    .line 48
    iget-boolean p3, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->B0:Z

    if-eqz p3, :cond_4

    const/4 p3, 0x3

    .line 49
    invoke-static {p2, p3, v3}, LfV;->a(Ljava/lang/String;II)V

    goto :goto_3

    .line 50
    :cond_3
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p2

    const p3, 0x7f13055e

    invoke-virtual {p2, p3}, Landroid/app/Activity;->setTitle(I)V

    const-string p2, "PasswordManager.Android.PasswordExceptionEntry"

    .line 51
    invoke-static {p2, v1, v3}, LfV;->a(Ljava/lang/String;II)V

    :cond_4
    :goto_3
    return-object p1
.end method

.method public a(I)V
    .locals 3

    .line 80
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->v0:Z

    if-eqz p1, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->y0:Landroid/view/View;

    const v0, 0x7f0b0338

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 82
    sget-object v0, LvA0;->a:LwA0;

    if-eqz v0, :cond_1

    .line 83
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 84
    iget-object v0, v0, LwA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;

    .line 85
    iget v1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->u0:I

    .line 86
    invoke-interface {v0, v1}, LtA0;->b(I)Lorg/chromium/chrome/browser/preferences/password/SavedPasswordEntry;

    move-result-object v0

    const v1, 0x7f0b04d7

    .line 87
    iget-object v2, v0, Lorg/chromium/chrome/browser/preferences/password/SavedPasswordEntry;->a:Ljava/lang/String;

    .line 88
    invoke-virtual {p0, v1, v2}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->a(ILjava/lang/String;)V

    const v1, 0x7f0b04e1

    .line 89
    iget-object v2, v0, Lorg/chromium/chrome/browser/preferences/password/SavedPasswordEntry;->b:Ljava/lang/String;

    .line 90
    invoke-virtual {p0, v1, v2}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->a(ILjava/lang/String;)V

    .line 91
    iget-object v0, v0, Lorg/chromium/chrome/browser/preferences/password/SavedPasswordEntry;->c:Ljava/lang/String;

    .line 92
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 93
    throw p1
.end method

.method public final a(III)V
    .locals 4

    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->y0:Landroid/view/View;

    const v1, 0x7f0b0328

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->y0:Landroid/view/View;

    const v2, 0x7f0b032a

    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 73
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->x0:Landroid/os/Bundle;

    const-string v3, "password"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setInputType(I)V

    .line 75
    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 76
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->y0:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b0329

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0f0007

    .line 52
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0b0026

    .line 53
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const-string p2, "PasswordEditingAndroid"

    .line 54
    invoke-static {p2}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 55
    iget-boolean p2, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->v0:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    .line 56
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0b0024

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 57
    new-instance p1, LrA0;

    invoke-direct {p1, p0}, LrA0;-><init>(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;)V

    .line 58
    sget-object v0, LvA0;->a:LwA0;

    .line 59
    invoke-virtual {v0, p1}, LwA0;->a(LsA0;)V

    .line 60
    sget-object p1, LvA0;->a:LwA0;

    if-eqz p1, :cond_0

    .line 61
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 62
    iget-object p1, p1, LwA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;

    .line 63
    invoke-interface {p1}, LtA0;->a()V

    return v1

    .line 64
    :cond_0
    throw v2

    :cond_1
    const v0, 0x7f0b0026

    if-ne p1, v0, :cond_3

    .line 65
    sget-object p1, LvA0;->a:LwA0;

    if-eqz p1, :cond_2

    .line 66
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 67
    iget-object p1, p1, LwA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;

    .line 68
    invoke-virtual {p0}, Lz2;->p()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->u0:I

    invoke-interface {p1, v0, v2}, LtA0;->a(Landroid/content/Context;I)V

    return v1

    .line 69
    :cond_2
    throw v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lz2;->b(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lz2;->c(Z)V

    return-void
.end method
