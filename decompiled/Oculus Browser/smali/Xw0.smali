.class public LXw0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;
.implements LGw0;


# instance fields
.field public final A:Z

.field public final B:Z

.field public final C:Z

.field public final D:Lxw0;

.field public final E:LNQ0;

.field public final F:LNQ0;

.field public final G:Landroid/view/ViewGroup;

.field public final H:Lorg/chromium/chrome/browser/payments/ui/PaymentRequestUiErrorView;

.field public final I:Lorg/chromium/base/Callback;

.field public final J:LOv0;

.field public K:Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;

.field public L:Landroid/widget/LinearLayout;

.field public M:Landroid/widget/TextView;

.field public N:Landroid/view/ViewGroup;

.field public O:Landroid/widget/Button;

.field public P:Landroid/widget/Button;

.field public Q:Landroid/view/View;

.field public R:Landroid/view/View;

.field public S:LCw0;

.field public T:LFw0;

.field public U:LFw0;

.field public V:LFw0;

.field public W:LFw0;

.field public X:Ljava/util/List;

.field public Y:LIw0;

.field public Z:Z

.field public a0:Z

.field public b0:Z

.field public c0:Z

.field public d0:Z

.field public e0:Z

.field public f0:Z

.field public g0:LZw0;

.field public h0:LZw0;

.field public i0:LZw0;

.field public j0:LZw0;

.field public k0:Landroid/animation/Animator;

.field public l0:LMM0;

.field public m0:I

.field public final w:LTw0;

.field public final x:Landroid/content/Context;

.field public final y:LRw0;

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LXw0;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;LRw0;ZZZZZLjava/lang/String;Ljava/lang/String;ILOv0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LXw0;->x:Landroid/content/Context;

    .line 3
    iput-object p2, p0, LXw0;->y:LRw0;

    .line 4
    iput-boolean p3, p0, LXw0;->z:Z

    .line 5
    iput-boolean p4, p0, LXw0;->A:Z

    .line 6
    iput-boolean p5, p0, LXw0;->B:Z

    .line 7
    iput-boolean p7, p0, LXw0;->C:Z

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070257

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, LXw0;->m0:I

    .line 9
    iget-object p2, p0, LXw0;->x:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 p3, 0x0

    const p4, 0x7f0e0159

    invoke-virtual {p2, p4, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lorg/chromium/chrome/browser/payments/ui/PaymentRequestUiErrorView;

    iput-object p2, p0, LXw0;->H:Lorg/chromium/chrome/browser/payments/ui/PaymentRequestUiErrorView;

    const p4, 0x7f0b01ef

    .line 10
    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lorg/chromium/chrome/browser/payments/ui/PaymentRequestHeader;

    .line 11
    invoke-virtual {p5, p8, p9, p10}, Lorg/chromium/chrome/browser/payments/ui/PaymentRequestHeader;->a(Ljava/lang/String;Ljava/lang/String;I)V

    const p5, 0x7f0b00d5

    .line 12
    invoke-virtual {p2, p5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p7

    .line 13
    invoke-virtual {p7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p7

    invoke-virtual {p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p7

    const v0, 0x7f07010b

    invoke-virtual {p7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p7

    const v0, 0x7f0b0304

    .line 15
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 17
    invoke-virtual {p2, p7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 18
    new-instance p2, LTw0;

    new-instance p7, LKw0;

    invoke-direct {p7, p0}, LKw0;-><init>(LXw0;)V

    invoke-direct {p2, p7}, LTw0;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, LXw0;->w:LTw0;

    .line 19
    new-instance p2, LLw0;

    invoke-direct {p2, p0}, LLw0;-><init>(LXw0;)V

    iput-object p2, p0, LXw0;->I:Lorg/chromium/base/Callback;

    .line 20
    iput-object p11, p0, LXw0;->J:LOv0;

    .line 21
    iget-object p2, p0, LXw0;->x:Landroid/content/Context;

    .line 22
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p7, 0x7f0e0153

    invoke-virtual {p2, p7, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, LXw0;->G:Landroid/view/ViewGroup;

    .line 23
    iget-object p7, p0, LXw0;->x:Landroid/content/Context;

    const p11, 0x7f0b0344

    .line 24
    invoke-virtual {p2, p11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, LXw0;->R:Landroid/view/View;

    const/4 p2, 0x1

    .line 25
    iput-boolean p2, p0, LXw0;->d0:Z

    .line 26
    iget-object p11, p0, LXw0;->G:Landroid/view/ViewGroup;

    const v0, 0x7f0b0278

    invoke-virtual {p11, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p11

    check-cast p11, Landroid/widget/TextView;

    const v0, 0x7f1304ce

    .line 27
    invoke-virtual {p11, v0}, Landroid/widget/TextView;->setText(I)V

    .line 28
    iget-object p11, p0, LXw0;->G:Landroid/view/ViewGroup;

    invoke-virtual {p11, p4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lorg/chromium/chrome/browser/payments/ui/PaymentRequestHeader;

    .line 29
    invoke-virtual {p4, p8, p9, p10}, Lorg/chromium/chrome/browser/payments/ui/PaymentRequestHeader;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    iget-object p4, p0, LXw0;->G:Landroid/view/ViewGroup;

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, LXw0;->Q:Landroid/view/View;

    .line 31
    invoke-virtual {p4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object p4, p0, LXw0;->G:Landroid/view/ViewGroup;

    const p5, 0x7f0b006f

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    iput-object p4, p0, LXw0;->N:Landroid/view/ViewGroup;

    const p5, 0x7f0b0096

    .line 33
    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/Button;

    iput-object p4, p0, LXw0;->P:Landroid/widget/Button;

    .line 34
    invoke-virtual {p4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object p4, p0, LXw0;->N:Landroid/view/ViewGroup;

    const p5, 0x7f0b0097

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/Button;

    iput-object p4, p0, LXw0;->O:Landroid/widget/Button;

    .line 36
    invoke-virtual {p4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, LXw0;->X:Ljava/util/List;

    .line 38
    iget-object p4, p0, LXw0;->G:Landroid/view/ViewGroup;

    const p5, 0x7f0b02fd

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;

    iput-object p4, p0, LXw0;->K:Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;

    .line 39
    iget-object p4, p0, LXw0;->G:Landroid/view/ViewGroup;

    const p5, 0x7f0b0340

    .line 40
    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    iput-object p4, p0, LXw0;->L:Landroid/widget/LinearLayout;

    .line 41
    iget-object p4, p0, LXw0;->G:Landroid/view/ViewGroup;

    const p5, 0x7f0b0385

    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, LXw0;->M:Landroid/widget/TextView;

    .line 42
    new-instance p4, LCw0;

    const p5, 0x7f1304d4

    .line 43
    invoke-virtual {p7, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    const p8, 0x7f1304e9

    .line 44
    invoke-virtual {p7, p8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p8

    invoke-direct {p4, p7, p5, p0, p8}, LCw0;-><init>(Landroid/content/Context;Ljava/lang/String;LGw0;Ljava/lang/String;)V

    iput-object p4, p0, LXw0;->S:LCw0;

    .line 45
    new-instance p4, LFw0;

    iget-object p5, p0, LXw0;->J:LOv0;

    .line 46
    iget p5, p5, LOv0;->a:I

    .line 47
    invoke-virtual {p7, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p7, p5, p0}, LFw0;-><init>(Landroid/content/Context;Ljava/lang/String;LGw0;)V

    iput-object p4, p0, LXw0;->T:LFw0;

    .line 48
    new-instance p4, LFw0;

    iget-object p5, p0, LXw0;->J:LOv0;

    .line 49
    iget p5, p5, LOv0;->b:I

    .line 50
    invoke-virtual {p7, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p7, p5, p0}, LFw0;-><init>(Landroid/content/Context;Ljava/lang/String;LGw0;)V

    iput-object p4, p0, LXw0;->U:LFw0;

    .line 51
    new-instance p4, LFw0;

    const p5, 0x7f1304bc

    .line 52
    invoke-virtual {p7, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p7, p5, p0}, LFw0;-><init>(Landroid/content/Context;Ljava/lang/String;LGw0;)V

    iput-object p4, p0, LXw0;->V:LFw0;

    .line 53
    new-instance p4, LFw0;

    const p5, 0x7f1304cf

    .line 54
    invoke-virtual {p7, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p7, p5, p0}, LFw0;-><init>(Landroid/content/Context;Ljava/lang/String;LGw0;)V

    iput-object p4, p0, LXw0;->W:LFw0;

    .line 55
    iget-object p5, p0, LXw0;->T:LFw0;

    const/4 p7, 0x0

    .line 56
    iput-boolean p7, p5, LFw0;->a0:Z

    .line 57
    iget-object p5, p0, LXw0;->U:LFw0;

    .line 58
    iput-boolean p2, p5, LFw0;->b0:Z

    .line 59
    iput-boolean p7, p5, LFw0;->O:Z

    .line 60
    iput-boolean p6, p4, LFw0;->O:Z

    const-string p2, "WebPaymentsMethodSectionOrderV2"

    .line 61
    invoke-static {p2}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result p2

    .line 62
    iget-object p4, p0, LXw0;->L:Landroid/widget/LinearLayout;

    iget-object p5, p0, LXw0;->S:LCw0;

    new-instance p6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p8, -0x2

    const/4 p9, -0x1

    invoke-direct {p6, p9, p8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p4, p5, p6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_0

    .line 63
    iget-object p4, p0, LXw0;->X:Ljava/util/List;

    new-instance p5, LHw0;

    iget-object p6, p0, LXw0;->L:Landroid/widget/LinearLayout;

    .line 64
    invoke-direct {p5, p6, p9}, LHw0;-><init>(Landroid/view/ViewGroup;I)V

    .line 65
    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object p4, p0, LXw0;->L:Landroid/widget/LinearLayout;

    iget-object p5, p0, LXw0;->W:LFw0;

    new-instance p6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p6, p9, p8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p4, p5, p6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    :cond_0
    iget-boolean p4, p0, LXw0;->z:Z

    if-eqz p4, :cond_1

    .line 68
    iget-object p4, p0, LXw0;->X:Ljava/util/List;

    new-instance p5, LHw0;

    iget-object p6, p0, LXw0;->L:Landroid/widget/LinearLayout;

    .line 69
    invoke-direct {p5, p6, p9}, LHw0;-><init>(Landroid/view/ViewGroup;I)V

    .line 70
    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p4, p0, LXw0;->L:Landroid/widget/LinearLayout;

    iget-object p5, p0, LXw0;->T:LFw0;

    new-instance p6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p6, p9, p8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p4, p5, p6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-nez p2, :cond_2

    .line 72
    iget-object p2, p0, LXw0;->X:Ljava/util/List;

    new-instance p4, LHw0;

    iget-object p5, p0, LXw0;->L:Landroid/widget/LinearLayout;

    .line 73
    invoke-direct {p4, p5, p9}, LHw0;-><init>(Landroid/view/ViewGroup;I)V

    .line 74
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object p2, p0, LXw0;->L:Landroid/widget/LinearLayout;

    iget-object p4, p0, LXw0;->W:LFw0;

    new-instance p5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p5, p9, p8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p4, p5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    :cond_2
    iget-boolean p2, p0, LXw0;->B:Z

    if-eqz p2, :cond_3

    .line 77
    iget-object p2, p0, LXw0;->X:Ljava/util/List;

    new-instance p4, LHw0;

    iget-object p5, p0, LXw0;->L:Landroid/widget/LinearLayout;

    .line 78
    invoke-direct {p4, p5, p9}, LHw0;-><init>(Landroid/view/ViewGroup;I)V

    .line 79
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object p2, p0, LXw0;->L:Landroid/widget/LinearLayout;

    iget-object p4, p0, LXw0;->V:LFw0;

    new-instance p5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p5, p9, p8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p4, p5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    :cond_3
    iget-object p2, p0, LXw0;->G:Landroid/view/ViewGroup;

    new-instance p4, LUw0;

    invoke-direct {p4, p0, p3}, LUw0;-><init>(LXw0;LKw0;)V

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 82
    iget-object p2, p0, LXw0;->P:Landroid/widget/Button;

    invoke-virtual {p2, p7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    new-instance p2, LNQ0;

    invoke-direct {p2, p1, p3}, LNQ0;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    iput-object p2, p0, LXw0;->E:LNQ0;

    .line 84
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-static {p2}, Lxw0;->a(Landroid/view/Window;)V

    .line 85
    new-instance p2, LNQ0;

    invoke-direct {p2, p1, p3}, LNQ0;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    iput-object p2, p0, LXw0;->F:LNQ0;

    .line 86
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-static {p2}, Lxw0;->a(Landroid/view/Window;)V

    .line 87
    iget-object p2, p0, LXw0;->F:LNQ0;

    .line 88
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    .line 89
    iget p4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p4, p4, 0x2000

    iput p4, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 90
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 91
    new-instance p2, Lxw0;

    invoke-direct {p2, p1, p0}, Lxw0;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p2, p0, LXw0;->D:Lxw0;

    return-void
.end method


# virtual methods
.method public a(ILZw0;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 68
    iput-object p2, p0, LXw0;->h0:LZw0;

    .line 69
    iget-object p1, p0, LXw0;->T:LFw0;

    invoke-virtual {p1, p2}, LFw0;->a(LZw0;)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 70
    iput-object p2, p0, LXw0;->i0:LZw0;

    .line 71
    iget-object p1, p0, LXw0;->U:LFw0;

    invoke-virtual {p1, p2}, LFw0;->a(LZw0;)V

    .line 72
    iget-boolean p1, p0, LXw0;->A:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, LXw0;->i0:LZw0;

    invoke-virtual {p1}, LZw0;->d()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, LXw0;->L:Landroid/widget/LinearLayout;

    iget-object p2, p0, LXw0;->U:LFw0;

    .line 73
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p0, LXw0;->L:Landroid/widget/LinearLayout;

    iget-object v2, p0, LXw0;->T:LFw0;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 75
    new-instance v2, LHw0;

    iget-object v3, p0, LXw0;->L:Landroid/widget/LinearLayout;

    add-int/lit8 v4, p1, 0x1

    invoke-direct {v2, v3, v4}, LHw0;-><init>(Landroid/view/ViewGroup;I)V

    .line 76
    iget-object v3, p0, LXw0;->X:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-boolean v3, p0, LXw0;->Z:Z

    if-eqz v3, :cond_2

    .line 78
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 79
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 80
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 81
    :cond_2
    iget-object v2, p0, LXw0;->L:Landroid/widget/LinearLayout;

    iget-object v3, p0, LXw0;->U:LFw0;

    add-int/2addr p1, v0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, p2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object p1, p0, LXw0;->L:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 83
    iput-object p2, p0, LXw0;->j0:LZw0;

    .line 84
    iget-object p1, p0, LXw0;->V:LFw0;

    invoke-virtual {p1, p2}, LFw0;->a(LZw0;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 85
    iput-object p2, p0, LXw0;->g0:LZw0;

    .line 86
    iget-object p1, p0, LXw0;->W:LFw0;

    invoke-virtual {p1, p2}, LFw0;->a(LZw0;)V

    .line 87
    :cond_5
    :goto_0
    iput-boolean v1, p0, LXw0;->e0:Z

    .line 88
    invoke-virtual {p0}, LXw0;->e()V

    .line 89
    invoke-virtual {p0}, LXw0;->d()V

    return-void
.end method

.method public final a(LIw0;)V
    .locals 10

    .line 116
    iget-boolean v0, p0, LXw0;->Z:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_3

    .line 117
    iget-object v0, p0, LXw0;->G:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v3, -0x1

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 118
    iget-object v0, p0, LXw0;->G:Landroid/view/ViewGroup;

    new-instance v4, LWw0;

    invoke-direct {v4, p0, v1}, LWw0;-><init>(LXw0;Z)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 119
    iget-object v0, p0, LXw0;->K:Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;

    invoke-virtual {v0, v2, v1}, Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;->a(II)V

    .line 120
    iget-object v0, p0, LXw0;->X:Ljava/util/List;

    new-instance v4, LHw0;

    iget-object v5, p0, LXw0;->L:Landroid/widget/LinearLayout;

    invoke-direct {v4, v5, v3}, LHw0;-><init>(Landroid/view/ViewGroup;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, LXw0;->L:Landroid/widget/LinearLayout;

    .line 122
    iget-boolean v3, p0, LXw0;->C:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 123
    iget-object v3, p0, LXw0;->x:Landroid/content/Context;

    const v5, 0x7f1304b6

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v3

    invoke-virtual {v3}, LKU0;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    iget-object v3, p0, LXw0;->x:Landroid/content/Context;

    const v5, 0x7f1304b7

    new-array v6, v1, [Ljava/lang/Object;

    .line 126
    invoke-static {}, LKU0;->d()LKU0;

    move-result-object v7

    invoke-virtual {v7}, LKU0;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 127
    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 128
    :cond_1
    iget-object v3, p0, LXw0;->x:Landroid/content/Context;

    const v5, 0x7f1304b8

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 129
    :goto_0
    new-instance v5, LVe1;

    iget-object v6, p0, LXw0;->x:Landroid/content/Context;

    .line 130
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, LJw0;

    invoke-direct {v7, p0}, LJw0;-><init>(LXw0;)V

    invoke-direct {v5, v6, v7}, LVe1;-><init>(Landroid/content/res/Resources;Lorg/chromium/base/Callback;)V

    new-array v6, v1, [LWe1;

    .line 131
    new-instance v7, LWe1;

    const-string v8, "BEGIN_LINK"

    const-string v9, "END_LINK"

    invoke-direct {v7, v8, v9, v5}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v6, v4

    invoke-static {v3, v6}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object v3

    .line 132
    new-instance v5, Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    iget-object v6, p0, LXw0;->x:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v3, 0x7f1401b7

    .line 135
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 136
    iget-object v3, p0, LXw0;->x:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07010b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 137
    invoke-static {v5, v3, v3, v3, v3}, LA7;->a(Landroid/view/View;IIII)V

    .line 138
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 139
    :goto_1
    iget-object v3, p0, LXw0;->X:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, LXw0;->X:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LHw0;

    .line 140
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 141
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 142
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_2
    iget-object v0, p0, LXw0;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 144
    iget-object v0, p0, LXw0;->O:Landroid/widget/Button;

    iget-object v3, p0, LXw0;->x:Landroid/content/Context;

    const v4, 0x7f1301d4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {p0}, LXw0;->e()V

    .line 146
    iput-boolean v1, p0, LXw0;->Z:Z

    .line 147
    :cond_3
    iput-object p1, p0, LXw0;->Y:LIw0;

    .line 148
    iget-object v0, p0, LXw0;->S:LCw0;

    if-ne p1, v0, :cond_4

    .line 149
    iget-object p1, p0, LXw0;->y:LRw0;

    new-instance v0, LOw0;

    invoke-direct {v0, p0}, LOw0;-><init>(LXw0;)V

    check-cast p1, Lyv0;

    .line 150
    iget-object v1, p1, Lyv0;->z:Landroid/os/Handler;

    new-instance v2, Lkv0;

    invoke-direct {v2, p1, v0}, Lkv0;-><init>(Lyv0;Lorg/chromium/base/Callback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 151
    :cond_4
    iget-object v0, p0, LXw0;->T:LFw0;

    if-ne p1, v0, :cond_5

    .line 152
    iget-object p1, p0, LXw0;->y:LRw0;

    .line 153
    new-instance v0, LPw0;

    invoke-direct {v0, p0, v1}, LPw0;-><init>(LXw0;I)V

    .line 154
    check-cast p1, Lyv0;

    invoke-virtual {p1, v1, v0}, Lyv0;->a(ILorg/chromium/base/Callback;)V

    goto :goto_2

    .line 155
    :cond_5
    iget-object v0, p0, LXw0;->U:LFw0;

    if-ne p1, v0, :cond_6

    .line 156
    iget-object p1, p0, LXw0;->y:LRw0;

    .line 157
    new-instance v0, LPw0;

    invoke-direct {v0, p0, v2}, LPw0;-><init>(LXw0;I)V

    .line 158
    check-cast p1, Lyv0;

    invoke-virtual {p1, v2, v0}, Lyv0;->a(ILorg/chromium/base/Callback;)V

    goto :goto_2

    .line 159
    :cond_6
    iget-object v0, p0, LXw0;->V:LFw0;

    if-ne p1, v0, :cond_7

    .line 160
    iget-object p1, p0, LXw0;->y:LRw0;

    .line 161
    new-instance v0, LPw0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LPw0;-><init>(LXw0;I)V

    .line 162
    check-cast p1, Lyv0;

    invoke-virtual {p1, v1, v0}, Lyv0;->a(ILorg/chromium/base/Callback;)V

    goto :goto_2

    .line 163
    :cond_7
    iget-object v0, p0, LXw0;->W:LFw0;

    if-ne p1, v0, :cond_8

    .line 164
    iget-object p1, p0, LXw0;->y:LRw0;

    .line 165
    new-instance v0, LPw0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, LPw0;-><init>(LXw0;I)V

    .line 166
    check-cast p1, Lyv0;

    invoke-virtual {p1, v1, v0}, Lyv0;->a(ILorg/chromium/base/Callback;)V

    goto :goto_2

    .line 167
    :cond_8
    invoke-virtual {p0}, LXw0;->f()V

    :goto_2
    return-void
.end method

.method public a(LIw0;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 90
    :goto_0
    iput-boolean v2, p0, LXw0;->c0:Z

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    .line 91
    :cond_1
    iput-boolean v0, p0, LXw0;->e0:Z

    .line 92
    iget-boolean p2, p0, LXw0;->c0:Z

    if-eqz p2, :cond_2

    .line 93
    iput-object p1, p0, LXw0;->Y:LIw0;

    .line 94
    invoke-virtual {p0}, LXw0;->f()V

    const/4 p2, 0x6

    .line 95
    invoke-virtual {p1, p2}, LIw0;->a(I)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 96
    invoke-virtual {p0, p1}, LXw0;->a(LIw0;)V

    .line 97
    :goto_1
    invoke-virtual {p0}, LXw0;->d()V

    return-void
.end method

.method public a(Lcx0;)V
    .locals 14

    if-eqz p1, :cond_7

    .line 1
    iget-object v0, p1, Lcx0;->a:Lyw0;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, LXw0;->S:LCw0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, LXw0;->S:LCw0;

    .line 4
    iget-object v2, v0, LCw0;->N:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 5
    iget-object v3, p1, Lcx0;->a:Lyw0;

    .line 6
    iget-object v4, v3, Lyw0;->b:Ljava/lang/String;

    .line 7
    iget-object v3, v3, Lyw0;->c:Ljava/lang/String;

    const/4 v5, 0x1

    .line 8
    invoke-virtual {v0, v4, v3, v5}, LCw0;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 9
    iget-object v4, v0, LIw0;->K:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v4, v0, LIw0;->K:Landroid/widget/TextView;

    .line 12
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 13
    iget-object v4, v0, LIw0;->K:Landroid/widget/TextView;

    .line 14
    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 15
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    iget-object v6, v0, LCw0;->O:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getAlpha()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0x1f4

    .line 16
    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 17
    sget-object v6, LNM0;->e:Ld8;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 18
    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 19
    iget-object v6, v0, LCw0;->O:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 20
    iget-object v4, v0, LCw0;->R:Landroid/os/Handler;

    iget-object v6, v0, LCw0;->Q:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    iget-object v4, v0, LCw0;->R:Landroid/os/Handler;

    iget-object v6, v0, LCw0;->Q:Ljava/lang/Runnable;

    const-wide/16 v7, 0x1388

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    :cond_2
    :goto_0
    iget-object v4, p1, Lcx0;->a:Lyw0;

    .line 23
    iget-object v4, v4, Lyw0;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v4, v3}, LIw0;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 25
    iget-object v3, v0, LCw0;->N:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 26
    iget-object v3, v0, LCw0;->P:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 27
    invoke-virtual {p1}, Lcx0;->a()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    goto/16 :goto_4

    .line 28
    :cond_3
    iget-object v3, v0, LCw0;->N:Landroid/support/v7/widget/GridLayout;

    .line 29
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    .line 30
    invoke-virtual {p1}, Lcx0;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 31
    iget-object v7, v0, LCw0;->N:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/GridLayout;->b(I)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_8

    .line 32
    invoke-virtual {p1}, Lcx0;->a()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyw0;

    .line 33
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 34
    iget-boolean v10, v8, Lyw0;->d:Z

    const v11, 0x7f14020e

    const v12, 0x7f14020f

    if-eqz v10, :cond_4

    const v10, 0x7f14020f

    goto :goto_2

    :cond_4
    const v10, 0x7f14020e

    .line 35
    :goto_2
    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v9, v13, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 36
    iget-object v10, v8, Lyw0;->a:Ljava/lang/String;

    .line 37
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 39
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    if-lez v3, :cond_5

    .line 40
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 41
    :cond_5
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 42
    iget-boolean v13, v8, Lyw0;->d:Z

    if-eqz v13, :cond_6

    const v11, 0x7f14020f

    .line 43
    :cond_6
    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v10, v12, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 44
    iget-object v11, v8, Lyw0;->b:Ljava/lang/String;

    .line 45
    iget-object v8, v8, Lyw0;->c:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v11, v8, v1}, LCw0;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v8, v0, LCw0;->P:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v8, LSf;

    sget-object v11, Landroid/support/v7/widget/GridLayout;->S:LLf;

    .line 49
    invoke-static {v7, v5, v11}, Landroid/support/v7/widget/GridLayout;->a(IILLf;)LVf;

    move-result-object v11

    sget-object v12, Landroid/support/v7/widget/GridLayout;->S:LLf;

    .line 50
    invoke-static {v1, v5, v12}, Landroid/support/v7/widget/GridLayout;->a(IILLf;)LVf;

    move-result-object v12

    invoke-direct {v8, v11, v12}, LSf;-><init>(LVf;LVf;)V

    .line 51
    new-instance v11, LSf;

    sget-object v12, Landroid/support/v7/widget/GridLayout;->S:LLf;

    .line 52
    invoke-static {v7, v5, v12}, Landroid/support/v7/widget/GridLayout;->a(IILLf;)LVf;

    move-result-object v12

    sget-object v13, Landroid/support/v7/widget/GridLayout;->S:LLf;

    .line 53
    invoke-static {v5, v5, v13}, Landroid/support/v7/widget/GridLayout;->a(IILLf;)LVf;

    move-result-object v13

    invoke-direct {v11, v12, v13}, LSf;-><init>(LVf;LVf;)V

    .line 54
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070252

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 55
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 56
    iget-object v12, v0, LCw0;->N:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v12, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v8, v0, LCw0;->N:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 58
    :cond_7
    :goto_3
    iget-object p1, p0, LXw0;->S:LCw0;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 59
    iget-object v0, p0, LXw0;->M:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 62
    iget-object p1, p0, LXw0;->M:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 63
    :cond_1
    iget-boolean p1, p0, LXw0;->Z:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 64
    iget-object p1, p0, LXw0;->x:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07010b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 65
    iget-object v1, p0, LXw0;->M:Landroid/widget/TextView;

    invoke-static {v1, v0, p1, v0, p1}, LA7;->a(Landroid/view/View;IIII)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object p1, p0, LXw0;->M:Landroid/widget/TextView;

    invoke-static {p1, v0, v0, v0, v0}, LA7;->a(Landroid/view/View;IIII)V

    .line 67
    :goto_0
    iget-object p1, p0, LXw0;->M:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 98
    iget-boolean v0, p0, LXw0;->d0:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 99
    :cond_0
    iput-boolean p1, p0, LXw0;->d0:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, LXw0;->K:Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 101
    iget-object p1, p0, LXw0;->N:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 102
    iget-object p1, p0, LXw0;->Q:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object p1, p0, LXw0;->R:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object p1, p0, LXw0;->G:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 105
    iget-object p1, p0, LXw0;->G:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    .line 106
    :cond_1
    iget-object p1, p0, LXw0;->K:Lorg/chromium/chrome/browser/ui/widget/FadingEdgeScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 107
    iget-object p1, p0, LXw0;->N:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 108
    iget-object p1, p0, LXw0;->Q:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object p1, p0, LXw0;->R:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-boolean p1, p0, LXw0;->Z:Z

    if-eqz p1, :cond_2

    .line 111
    iget-object p1, p0, LXw0;->G:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 112
    iget-object p1, p0, LXw0;->G:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 113
    iget-object v0, p0, LXw0;->D:Lxw0;

    .line 114
    iget-boolean v0, v0, Lxw0;->d:Z

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, LXw0;->k0:Landroid/animation/Animator;

    if-nez v0, :cond_0

    iget-object v0, p0, LXw0;->l0:LMM0;

    if-nez v0, :cond_0

    iget-boolean v0, p0, LXw0;->a0:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LXw0;->e0:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LXw0;->f0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(LIw0;)V
    .locals 3

    .line 1
    iget-object v0, p0, LXw0;->T:LFw0;

    const/4 v1, 0x3

    if-ne p1, v0, :cond_0

    .line 2
    iget-object v0, p0, LXw0;->y:LRw0;

    const/4 v1, 0x1

    iget-object v2, p0, LXw0;->I:Lorg/chromium/base/Callback;

    check-cast v0, Lyv0;

    invoke-virtual {v0, v1, v2}, Lyv0;->b(ILorg/chromium/base/Callback;)I

    move-result v1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, LXw0;->V:LFw0;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 4
    iget-object v0, p0, LXw0;->y:LRw0;

    check-cast v0, Lyv0;

    invoke-virtual {v0, v1, v2}, Lyv0;->b(ILorg/chromium/base/Callback;)I

    move-result v1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, LXw0;->W:LFw0;

    if-ne p1, v0, :cond_2

    .line 6
    iget-object v0, p0, LXw0;->y:LRw0;

    const/4 v1, 0x4

    check-cast v0, Lyv0;

    invoke-virtual {v0, v1, v2}, Lyv0;->b(ILorg/chromium/base/Callback;)I

    move-result v1

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v1}, LXw0;->a(LIw0;I)V

    return-void
.end method

.method public final b(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, LXw0;->f0:Z

    .line 9
    iget-object v1, p0, LXw0;->D:Lxw0;

    .line 10
    iget-object v2, v1, Lxw0;->a:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 11
    new-instance p1, Lvw0;

    invoke-direct {p1, v1, v0}, Lvw0;-><init>(Lxw0;Z)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, v1, Lxw0;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 13
    invoke-virtual {p0}, LXw0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LXw0;->g0:LZw0;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LXw0;->c0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 6

    .line 1
    iget-object v0, p0, LXw0;->D:Lxw0;

    iget-object v1, p0, LXw0;->G:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x51

    .line 3
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    iget-object v4, v0, Lxw0;->b:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    new-instance v3, Lww0;

    invoke-direct {v3, v0, v2}, Lww0;-><init>(Lxw0;Luw0;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 6
    iget-object v0, p0, LXw0;->D:Lxw0;

    .line 7
    iget-object v0, v0, Lxw0;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 8
    iget-object v0, p0, LXw0;->y:LRw0;

    new-instance v1, LMw0;

    invoke-direct {v1, p0}, LMw0;-><init>(LXw0;)V

    check-cast v0, Lyv0;

    .line 9
    iput-object v1, v0, Lyv0;->q0:Lorg/chromium/base/Callback;

    .line 10
    iget-object v1, v0, Lyv0;->n0:LZw0;

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lyv0;->x0:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, v0, Lyv0;->z:Landroid/os/Handler;

    new-instance v2, Ljv0;

    invoke-direct {v2, v0}, Ljv0;-><init>(Lyv0;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    .line 12
    :cond_2
    throw v2
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-boolean v0, p0, LXw0;->B:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, LXw0;->j0:LZw0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, LZw0;->b()LCQ0;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    :goto_1
    iget-boolean v3, p0, LXw0;->z:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, LXw0;->h0:LZw0;

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {v3}, LZw0;->b()LCQ0;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    .line 5
    :goto_3
    iget-boolean v4, p0, LXw0;->A:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, LXw0;->i0:LZw0;

    if-eqz v4, :cond_4

    .line 6
    invoke-virtual {v4}, LZw0;->b()LCQ0;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v4, 0x1

    .line 7
    :goto_5
    iget-object v5, p0, LXw0;->P:Landroid/widget/Button;

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    iget-object v0, p0, LXw0;->g0:LZw0;

    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {v0}, LZw0;->b()LCQ0;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, LXw0;->c0:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, LXw0;->e0:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, LXw0;->f0:Z

    if-nez v0, :cond_6

    const/4 v1, 0x1

    .line 9
    :cond_6
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 10
    iget-object v0, p0, LXw0;->w:LTw0;

    invoke-virtual {v0}, LTw0;->a()V

    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-boolean v0, p0, LXw0;->c0:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, LXw0;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3
    iget-object v3, p0, LXw0;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4
    instance-of v4, v3, LIw0;

    if-nez v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    check-cast v3, LIw0;

    .line 6
    iget-object v4, v3, LIw0;->y:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 7
    invoke-virtual {v3}, LIw0;->a()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    new-instance v0, LQw0;

    invoke-direct {v0, p0}, LQw0;-><init>(LXw0;)V

    .line 2
    new-instance v1, LMM0;

    iget-object v2, p0, LXw0;->L:Landroid/widget/LinearLayout;

    iget-object v3, p0, LXw0;->Y:LIw0;

    invoke-direct {v1, v2, v3, v0}, LMM0;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Ljava/lang/Runnable;)V

    iput-object v1, p0, LXw0;->l0:LMM0;

    .line 3
    iget-object v0, p0, LXw0;->S:LCw0;

    iget-object v1, p0, LXw0;->Y:LIw0;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    .line 4
    :goto_1
    invoke-virtual {v0, v1}, LIw0;->a(I)V

    .line 5
    iget-object v0, p0, LXw0;->T:LFw0;

    iget-object v1, p0, LXw0;->Y:LIw0;

    if-ne v1, v0, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, LFw0;->a(Z)V

    .line 6
    iget-object v0, p0, LXw0;->U:LFw0;

    iget-object v1, p0, LXw0;->Y:LIw0;

    if-ne v1, v0, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, LFw0;->a(Z)V

    .line 7
    iget-object v0, p0, LXw0;->V:LFw0;

    iget-object v1, p0, LXw0;->Y:LIw0;

    if-ne v1, v0, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, LFw0;->a(Z)V

    .line 8
    iget-object v0, p0, LXw0;->W:LFw0;

    iget-object v1, p0, LXw0;->Y:LIw0;

    if-ne v1, v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {v0, v2}, LFw0;->a(Z)V

    .line 9
    invoke-virtual {p0}, LXw0;->e()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, LXw0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LXw0;->Q:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, LXw0;->b(Z)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, LXw0;->b()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    instance-of v0, p1, LIw0;

    if-eqz v0, :cond_3

    .line 6
    move-object v0, p1

    check-cast v0, LIw0;

    .line 7
    invoke-virtual {v0}, LIw0;->a()I

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, LXw0;->S:LCw0;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_4

    .line 9
    invoke-virtual {p0, v0}, LXw0;->a(LIw0;)V

    goto/16 :goto_2

    .line 10
    :cond_4
    iget-object v3, p0, LXw0;->T:LFw0;

    if-ne p1, v3, :cond_5

    .line 11
    invoke-virtual {p0, v3}, LXw0;->a(LIw0;)V

    goto :goto_2

    .line 12
    :cond_5
    iget-object v3, p0, LXw0;->U:LFw0;

    if-ne p1, v3, :cond_6

    .line 13
    invoke-virtual {p0, v3}, LXw0;->a(LIw0;)V

    goto :goto_2

    .line 14
    :cond_6
    iget-object v3, p0, LXw0;->V:LFw0;

    if-ne p1, v3, :cond_7

    .line 15
    invoke-virtual {p0, v3}, LXw0;->a(LIw0;)V

    goto :goto_2

    .line 16
    :cond_7
    iget-object v3, p0, LXw0;->W:LFw0;

    if-ne p1, v3, :cond_8

    .line 17
    invoke-virtual {p0, v3}, LXw0;->a(LIw0;)V

    goto :goto_2

    .line 18
    :cond_8
    iget-object v3, p0, LXw0;->P:Landroid/widget/Button;

    if-ne p1, v3, :cond_c

    .line 19
    iput-boolean v1, p0, LXw0;->a0:Z

    .line 20
    iget-object p1, p0, LXw0;->y:LRw0;

    .line 21
    iget-object v0, p0, LXw0;->h0:LZw0;

    if-nez v0, :cond_9

    move-object v0, v2

    goto :goto_0

    .line 22
    :cond_9
    invoke-virtual {v0}, LZw0;->b()LCQ0;

    move-result-object v0

    .line 23
    :goto_0
    iget-object v3, p0, LXw0;->i0:LZw0;

    if-nez v3, :cond_a

    move-object v3, v2

    goto :goto_1

    .line 24
    :cond_a
    invoke-virtual {v3}, LZw0;->b()LCQ0;

    move-result-object v3

    :goto_1
    iget-object v4, p0, LXw0;->g0:LZw0;

    .line 25
    invoke-virtual {v4}, LZw0;->b()LCQ0;

    move-result-object v4

    .line 26
    check-cast p1, Lyv0;

    invoke-virtual {p1, v0, v3, v4}, Lyv0;->a(LCQ0;LCQ0;LCQ0;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 27
    invoke-virtual {p0, v1}, LXw0;->a(Z)V

    goto :goto_2

    .line 28
    :cond_b
    iget-object p1, p0, LXw0;->D:Lxw0;

    .line 29
    iget-object p1, p1, Lxw0;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    goto :goto_2

    .line 30
    :cond_c
    iget-object v3, p0, LXw0;->O:Landroid/widget/Button;

    if-ne p1, v3, :cond_e

    .line 31
    iget-boolean p1, p0, LXw0;->Z:Z

    if-eqz p1, :cond_d

    .line 32
    invoke-virtual {p0, v1}, LXw0;->b(Z)V

    goto :goto_2

    .line 33
    :cond_d
    invoke-virtual {p0, v0}, LXw0;->a(LIw0;)V

    .line 34
    :cond_e
    :goto_2
    invoke-virtual {p0, v2}, LXw0;->a(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, LXw0;->d()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, LXw0;->f0:Z

    .line 2
    iget-object v0, p0, LXw0;->E:LNQ0;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LXw0;->E:LNQ0;

    invoke-virtual {v0}, LiM0;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, LXw0;->F:LNQ0;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LXw0;->F:LNQ0;

    invoke-virtual {v0}, LiM0;->dismiss()V

    .line 4
    :cond_1
    iget-boolean v0, p0, LXw0;->b0:Z

    if-nez v0, :cond_2

    iget-object v0, p0, LXw0;->y:LRw0;

    check-cast v0, Lyv0;

    .line 5
    iget-object v1, v0, Lyv0;->K:LHu0;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LHu0;->a(I)V

    const-string v1, "User closed the Payment Request UI."

    .line 6
    invoke-virtual {v0, v1, p1}, Lyv0;->a(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
