.class public final synthetic LpA0;
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

    iput-object p1, p0, LpA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, LpA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;

    .line 1
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LxA0;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f130481

    invoke-static {p1, v0, v1}, Lmf1;->a(Landroid/content/Context;II)Lmf1;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, LxA0;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->O()V

    goto :goto_0

    .line 6
    :cond_1
    iput-boolean v1, p1, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->A0:Z

    const v1, 0x7f13039f

    const v2, 0x7f0b0327

    .line 7
    iget-object p1, p1, Lz2;->N:LY2;

    .line 8
    invoke-static {v1, v2, p1, v0}, LxA0;->a(IILH2;I)V

    :goto_0
    return-void
.end method
