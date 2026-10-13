.class public final synthetic LmA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LmA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, LmA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;

    .line 1
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object v0

    invoke-static {v0}, LxA0;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    const v0, 0x7f130481

    invoke-static {p1, v0, v1}, Lmf1;->a(Landroid/content/Context;II)Lmf1;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->w0:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v2, 0x90

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    .line 5
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 6
    iget-object v0, p1, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->w0:Landroid/widget/EditText;

    const v1, 0x20081

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 7
    iget-object v0, p1, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->x0:Landroid/widget/ImageButton;

    const v1, 0x7f080226

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 8
    iget-object v0, p1, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->x0:Landroid/widget/ImageButton;

    .line 9
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    const v1, 0x7f130487

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 11
    invoke-static {v0}, LxA0;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->O()V

    goto :goto_0

    .line 13
    :cond_2
    iput-boolean v1, p1, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->z0:Z

    const v1, 0x7f1303a1

    const v2, 0x7f0b0323

    .line 14
    iget-object p1, p1, Lz2;->N:LY2;

    .line 15
    invoke-static {v1, v2, p1, v0}, LxA0;->a(IILH2;I)V

    :goto_0
    return-void
.end method
