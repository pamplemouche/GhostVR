.class public Lorg/chromium/chrome/browser/preferences/HomepageEditor;
.super Lz2;
.source "PG"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public u0:Lpt0;

.field public v0:Landroid/widget/EditText;

.field public w0:Landroid/widget/Button;

.field public x0:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz2;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-super {p0, p3}, Lz2;->b(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lpt0;->f()Lpt0;

    move-result-object p3

    iput-object p3, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->u0:Lpt0;

    .line 3
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p3

    const v0, 0x7f13045b

    invoke-virtual {p3, v0}, Landroid/app/Activity;->setTitle(I)V

    const/4 p3, 0x0

    const v0, 0x7f0e00d0

    .line 4
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b039a

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    const v0, 0x7f0b03df

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8
    new-instance v1, Lwy0;

    invoke-direct {v1, p1, v0}, Lwy0;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 9
    invoke-virtual {p2, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    const p2, 0x7f0b0200

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->v0:Landroid/widget/EditText;

    .line 11
    invoke-static {}, Lpt0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->v0:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 13
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->v0:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    const p2, 0x7f0b01fd

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->x0:Landroid/widget/Button;

    .line 15
    new-instance v0, Lfy0;

    invoke-direct {v0, p0}, Lfy0;-><init>(Lorg/chromium/chrome/browser/preferences/HomepageEditor;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->u0:Lpt0;

    invoke-virtual {p2}, Lpt0;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 17
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->x0:Landroid/widget/Button;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    const p2, 0x7f0b01fe

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->w0:Landroid/widget/Button;

    .line 19
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 20
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->w0:Landroid/widget/Button;

    new-instance p3, Lgy0;

    invoke-direct {p3, p0}, Lgy0;-><init>(Lorg/chromium/chrome/browser/preferences/HomepageEditor;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b01fc

    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 22
    new-instance p3, Lhy0;

    invoke-direct {p3, p0}, Lhy0;-><init>(Lorg/chromium/chrome/browser/preferences/HomepageEditor;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->w0:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->x0:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
