.class public final synthetic LnA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LnA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, LnA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;

    .line 1
    iget-object v0, p1, Lz2;->C:Landroid/os/Bundle;

    const-string v1, "name"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "username"

    .line 3
    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->w0:Landroid/content/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 5
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f130485

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lmf1;->a(Landroid/content/Context;II)Lmf1;

    move-result-object p1

    .line 6
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x2

    const-string v0, "PasswordManager.Android.PasswordCredentialEntry.Username"

    .line 7
    invoke-static {v0, v1, p1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method
