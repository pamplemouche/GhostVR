.class public LrA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LsA0;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;)V
    .locals 0

    .line 1
    iput-object p1, p0, LrA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object p1, p0, LrA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;

    .line 2
    iget-boolean p1, p1, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->v0:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v0, 0x4

    const-string v1, "PasswordManager.Android.PasswordCredentialEntry"

    .line 3
    invoke-static {v1, p1, v0}, LfV;->a(Ljava/lang/String;II)V

    .line 4
    sget-object p1, LvA0;->a:LwA0;

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 6
    iget-object p1, p1, LwA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;

    .line 7
    iget-object v0, p0, LrA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;

    .line 8
    iget v0, v0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->u0:I

    .line 9
    invoke-interface {p1, v0}, LtA0;->a(I)V

    .line 10
    sget-object p1, LvA0;->a:LwA0;

    .line 11
    invoke-virtual {p1, p0}, LwA0;->b(LsA0;)V

    .line 12
    iget-object p1, p0, LrA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;

    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f13029b

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lmf1;->a(Landroid/content/Context;II)Lmf1;

    move-result-object p1

    .line 13
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 14
    iget-object p1, p0, LrA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;

    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 15
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-object p1, p0, LrA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;

    .line 2
    iget-boolean p1, p1, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->v0:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    const/4 v0, 0x4

    const-string v1, "PasswordManager.Android.PasswordExceptionEntry"

    .line 3
    invoke-static {v1, p1, v0}, LfV;->a(Ljava/lang/String;II)V

    .line 4
    sget-object p1, LvA0;->a:LwA0;

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 6
    iget-object p1, p1, LwA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;

    .line 7
    iget-object v0, p0, LrA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;

    .line 8
    iget v0, v0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->u0:I

    .line 9
    invoke-interface {p1, v0}, LtA0;->c(I)V

    .line 10
    sget-object p1, LvA0;->a:LwA0;

    .line 11
    invoke-virtual {p1, p0}, LwA0;->b(LsA0;)V

    .line 12
    iget-object p1, p0, LrA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;

    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f13029b

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lmf1;->a(Landroid/content/Context;II)Lmf1;

    move-result-object p1

    .line 13
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 14
    iget-object p1, p0, LrA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;

    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 15
    throw p1

    :cond_1
    :goto_0
    return-void
.end method
