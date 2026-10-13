.class public final synthetic LoA0;
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

    iput-object p1, p0, LoA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, LoA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;

    .line 1
    iget-object v0, p1, Lz2;->C:Landroid/os/Bundle;

    const-string v1, "url"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "site"

    .line 3
    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->w0:Landroid/content/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 5
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130482

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf1;->a(Landroid/content/Context;II)Lmf1;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7
    iget-boolean p1, p1, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->v0:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const-string p1, "PasswordManager.Android.PasswordExceptionEntry.Website"

    .line 8
    invoke-static {p1, v2, v0}, LfV;->a(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    const-string p1, "PasswordManager.Android.PasswordCredentialEntry.Website"

    .line 9
    invoke-static {p1, v2, v0}, LfV;->a(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method
