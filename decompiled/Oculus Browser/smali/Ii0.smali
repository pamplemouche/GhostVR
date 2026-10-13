.class public LIi0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LDi0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;

.field public c:LP8;

.field public d:Landroid/widget/EditText;

.field public e:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LIi0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, LIi0;->b:Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e00d1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b04de

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, LIi0;->d:Landroid/widget/EditText;

    const p2, 0x7f0b031e

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, LIi0;->e:Landroid/widget/EditText;

    .line 7
    new-instance v0, LEi0;

    invoke-direct {v0, p0}, LEi0;-><init>(LIi0;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const p2, 0x7f0b01b1

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, LIi0;->b:Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;

    .line 10
    iget-wide v1, v0, Lorg/chromium/chrome/browser/login/ChromeHttpAuthHandler;->w:J

    .line 11
    invoke-static {v1, v2, v0}, LJ/N;->MDNVFLnS(JLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    new-instance p2, Ltc1;

    iget-object v0, p0, LIi0;->a:Landroid/content/Context;

    const v1, 0x7f140245

    invoke-direct {p2, v0, v1}, Ltc1;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f1303a4

    .line 14
    invoke-virtual {p2, v0}, LO8;->b(I)LO8;

    .line 15
    iget-object v0, p2, LO8;->a:LK8;

    iput-object p1, v0, LK8;->u:Landroid/view/View;

    const/4 p1, 0x0

    .line 16
    iput p1, v0, LK8;->t:I

    .line 17
    iput-boolean p1, v0, LK8;->v:Z

    const v0, 0x7f1303a2

    .line 18
    new-instance v1, LFi0;

    invoke-direct {v1, p0}, LFi0;-><init>(LIi0;)V

    .line 19
    invoke-virtual {p2, v0, v1}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const v0, 0x7f1301d4

    new-instance v1, LGi0;

    invoke-direct {v1, p0}, LGi0;-><init>(LIi0;)V

    .line 20
    invoke-virtual {p2, v0, v1}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    new-instance v0, LHi0;

    invoke-direct {v0, p0}, LHi0;-><init>(LIi0;)V

    .line 21
    iget-object v1, p2, LO8;->a:LK8;

    iput-object v0, v1, LK8;->n:Landroid/content/DialogInterface$OnCancelListener;

    .line 22
    invoke-virtual {p2}, LO8;->a()LP8;

    move-result-object p2

    iput-object p2, p0, LIi0;->c:LP8;

    .line 23
    invoke-virtual {p2}, Lm9;->a()LS8;

    move-result-object p2

    check-cast p2, Lk9;

    .line 24
    iput-boolean p1, p2, Lk9;->N:Z

    .line 25
    iget-object p1, p0, LIi0;->c:LP8;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
