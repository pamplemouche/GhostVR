.class public final synthetic LqA0;
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

    iput-object p1, p0, LqA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, LqA0;->w:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;

    .line 1
    iget-object v0, p1, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->y0:Landroid/view/View;

    const v1, 0x7f0b0328

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, LxA0;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f130481

    invoke-static {p1, v0, v2}, Lmf1;->a(Landroid/content/Context;II)Lmf1;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0x90

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->Q()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, LxA0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->P()V

    goto :goto_0

    .line 9
    :cond_2
    iput-boolean v2, p1, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryViewer;->z0:Z

    const v1, 0x7f1303a1

    const v2, 0x7f0b0327

    .line 10
    iget-object p1, p1, Lz2;->N:LY2;

    .line 11
    invoke-static {v1, v2, p1, v0}, LxA0;->a(IILH2;I)V

    :goto_0
    return-void
.end method
