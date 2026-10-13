.class public Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;
.super Lz2;
.source "PG"


# instance fields
.field public u0:Landroid/widget/EditText;

.field public v0:Landroid/widget/EditText;

.field public w0:Landroid/widget/EditText;

.field public x0:Landroid/widget/ImageButton;

.field public y0:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

.field public z0:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz2;-><init>()V

    return-void
.end method


# virtual methods
.method public L()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, LxA0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->z0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->O()V

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->x0:Landroid/widget/ImageButton;

    new-instance v1, LmA0;

    invoke-direct {v1, p0}, LmA0;-><init>(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final O()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->w0:Landroid/widget/EditText;

    const v1, 0x20091

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->x0:Landroid/widget/ImageButton;

    const v1, 0x7f080227

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->x0:Landroid/widget/ImageButton;

    .line 5
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    const v2, 0x7f13047e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x1

    .line 1
    invoke-virtual {p0, p3}, Lz2;->c(Z)V

    .line 2
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p3

    const v0, 0x7f13047d

    invoke-virtual {p3, v0}, Landroid/app/Activity;->setTitle(I)V

    const p3, 0x7f0e0146

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0f0006

    .line 20
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const v0, 0x7f0b0404

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->u0:Landroid/widget/EditText;

    const v0, 0x7f0b04df

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->v0:Landroid/widget/EditText;

    const v0, 0x7f0b0322

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->w0:Landroid/widget/EditText;

    const v0, 0x7f0b032f

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->y0:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    const v0, 0x7f0b0324

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->x0:Landroid/widget/ImageButton;

    .line 9
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->u0:Landroid/widget/EditText;

    .line 10
    iget-object v0, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v1, "credentialUrl"

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->v0:Landroid/widget/EditText;

    .line 13
    iget-object v0, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v1, "credentialName"

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->w0:Landroid/widget/EditText;

    .line 16
    iget-object v0, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v1, "credentialPassword"

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    const-string p1, "viewButtonPressed"

    .line 18
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->z0:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->z0:Z

    :goto_0
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    .line 21
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0b002e

    if-ne p1, v0, :cond_1

    .line 22
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->w0:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->y0:Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;

    invoke-virtual {p0}, Lz2;->p()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1304f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/widget/ChromeTextInputLayout;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->z0:Z

    const-string v1, "viewButtonPressed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
