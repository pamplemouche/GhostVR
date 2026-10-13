.class public Lr70;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lh70;


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Landroid/app/Dialog;

.field public c:Lq70;

.field public d:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

.field public e:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

.field public f:Landroid/widget/ProgressBar;

.field public g:Landroid/widget/ListView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/Button;

.field public j:Lp70;

.field public k:Lj70;

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lq70;Lp70;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr70;->a:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lr70;->c:Lq70;

    .line 4
    iput-object p3, p0, Lr70;->j:Lp70;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x0

    const v0, 0x7f0e00e1

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v0, 0x7f0b0222

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lr70;->g:Landroid/widget/ListView;

    const v0, 0x7f0b0365

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lr70;->f:Landroid/widget/ProgressBar;

    const v0, 0x7f0b0432

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lr70;->h:Landroid/widget/TextView;

    const v0, 0x7f0b0162

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    iput-object v0, p0, Lr70;->d:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    const v0, 0x7f0b02dd

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    iput-object v0, p0, Lr70;->e:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    .line 11
    iget-object v0, p0, Lr70;->d:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    iget-object v1, p3, Lp70;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lr70;->d:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 13
    iget-object v0, p0, Lr70;->e:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 14
    iget-object v0, p0, Lr70;->h:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0b0357

    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lr70;->i:Landroid/widget/Button;

    .line 16
    iget-object p3, p3, Lp70;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p3, p0, Lr70;->i:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 18
    new-instance p3, Ln70;

    invoke-direct {p3, p0}, Ln70;-><init>(Lr70;)V

    .line 19
    new-instance v1, Lj70;

    iget-object v2, p0, Lr70;->a:Landroid/app/Activity;

    const v3, 0x7f0e00e2

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lj70;-><init>(Landroid/content/Context;ZI)V

    iput-object v1, p0, Lr70;->k:Lj70;

    .line 20
    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 21
    iget-object v1, p0, Lr70;->k:Lj70;

    .line 22
    iput-object p0, v1, Lj70;->E:Lh70;

    .line 23
    iget-object v1, p0, Lr70;->i:Landroid/widget/Button;

    invoke-virtual {v1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object p3, p0, Lr70;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lr70;->k:Lj70;

    invoke-virtual {p3, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 25
    iget-object p3, p0, Lr70;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lr70;->k:Lj70;

    invoke-virtual {p3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 26
    iget-object p3, p0, Lr70;->g:Landroid/widget/ListView;

    invoke-virtual {p3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 27
    iget-object p3, p0, Lr70;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lr70;->e:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    invoke-virtual {p3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 28
    iget-object p3, p0, Lr70;->g:Landroid/widget/ListView;

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 29
    invoke-virtual {p0, v4}, Lr70;->a(I)V

    .line 30
    iput-boolean v0, p0, Lr70;->l:Z

    .line 31
    new-instance p2, Lo70;

    iget-object p3, p0, Lr70;->a:Landroid/app/Activity;

    invoke-direct {p2, p0, p3}, Lo70;-><init>(Lr70;Landroid/content/Context;)V

    iput-object p2, p0, Lr70;->b:Landroid/app/Dialog;

    .line 32
    invoke-virtual {p2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 33
    iget-object p2, p0, Lr70;->b:Landroid/app/Dialog;

    invoke-virtual {p2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 34
    iget-object p2, p0, Lr70;->b:Landroid/app/Dialog;

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, p3}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object p2, p0, Lr70;->b:Landroid/app/Dialog;

    new-instance p3, Lm70;

    invoke-direct {p3, p0}, Lm70;-><init>(Lr70;)V

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 36
    iget-object p2, p0, Lr70;->b:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 37
    iget-object p3, p0, Lr70;->a:Landroid/app/Activity;

    invoke-static {p3}, Lorg/chromium/ui/base/DeviceFormFactor;->a(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 38
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p3, 0x30

    .line 39
    invoke-virtual {p2, p3}, Landroid/view/Window;->setGravity(I)V

    const/4 p3, -0x2

    .line 40
    invoke-virtual {p2, v0, p3}, Landroid/view/Window;->setLayout(II)V

    .line 41
    :cond_0
    iget-object p2, p0, Lr70;->b:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 42
    new-instance p2, Ll70;

    invoke-direct {p2, p0, p1}, Ll70;-><init>(Lr70;Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr70;->k:Lj70;

    invoke-virtual {v0}, Lj70;->clear()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lr70;->a(I)V

    return-void
.end method

.method public final a(I)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    iget-object p1, p0, Lr70;->k:Lj70;

    invoke-virtual {p1}, Lj70;->isEmpty()Z

    move-result p1

    .line 9
    iget-object v2, p0, Lr70;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 10
    iget-object v3, p0, Lr70;->j:Lp70;

    iget-object v3, v3, Lp70;->e:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lr70;->j:Lp70;

    iget-object v3, v3, Lp70;->f:Ljava/lang/CharSequence;

    .line 11
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v2, p0, Lr70;->e:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    iget-object v3, p0, Lr70;->j:Lp70;

    iget-object v3, v3, Lp70;->c:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v2, p0, Lr70;->e:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 14
    :cond_3
    iget-object p1, p0, Lr70;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lr70;->j:Lp70;

    iget-object v2, v2, Lp70;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lr70;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lr70;->g:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_2

    .line 17
    :cond_4
    iget-object p1, p0, Lr70;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lr70;->j:Lp70;

    iget-object v2, v2, Lp70;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_5
    iget-object p1, p0, Lr70;->g:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lr70;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lr70;->e:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lr70;->g:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lr70;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lr70;->e:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lr70;->e:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lr70;->h:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
