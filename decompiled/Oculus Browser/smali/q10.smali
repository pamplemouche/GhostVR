.class public Lq10;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements LDd1;


# instance fields
.field public final A:Landroid/widget/TextView;

.field public final B:Landroid/widget/TextView;

.field public final C:Landroid/widget/EditText;

.field public final D:Landroid/widget/EditText;

.field public final E:Landroid/widget/EditText;

.field public final F:Landroid/view/View;

.field public final G:Landroid/widget/TextView;

.field public final H:Landroid/widget/TextView;

.field public final I:Landroid/widget/CheckBox;

.field public final J:Landroid/widget/CheckBox;

.field public final K:Landroid/widget/ImageView;

.field public L:Landroid/widget/PopupWindow;

.field public final M:Landroid/view/ViewGroup;

.field public final N:Landroid/view/View;

.field public final O:Landroid/widget/ProgressBar;

.field public final P:Landroid/widget/TextView;

.field public final Q:J

.field public R:I

.field public S:I

.field public T:Z

.field public U:LBd1;

.field public V:Landroid/content/Context;

.field public W:Z

.field public X:Z

.field public Y:Z

.field public final w:Lp10;

.field public x:Lle1;

.field public y:Z

.field public final z:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lq10;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lp10;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lq10;->w:Lp10;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e002d

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0b021d

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lq10;->A:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iput-object p2, p0, Lq10;->z:Landroid/view/View;

    const p4, 0x7f0b02d8

    .line 8
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lq10;->B:Landroid/widget/TextView;

    const p4, 0x7f0b00a0

    .line 9
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/EditText;

    iput-object p4, p0, Lq10;->C:Landroid/widget/EditText;

    const p4, 0x7f0b01af

    .line 10
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/EditText;

    iput-object p4, p0, Lq10;->D:Landroid/widget/EditText;

    const p4, 0x7f0b01b0

    .line 11
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/EditText;

    iput-object p4, p0, Lq10;->E:Landroid/widget/EditText;

    const p4, 0x7f0b01ae

    .line 12
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, Lq10;->F:Landroid/view/View;

    const p4, 0x7f0b02c6

    .line 13
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lq10;->G:Landroid/widget/TextView;

    .line 14
    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p4, 0x7f0b019e

    .line 15
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lq10;->H:Landroid/widget/TextView;

    const p4, 0x7f0b043d

    .line 16
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/CheckBox;

    iput-object p4, p0, Lq10;->I:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p8, :cond_0

    if-eqz p9, :cond_0

    const/4 p9, 0x1

    goto :goto_0

    :cond_0
    const/4 p9, 0x0

    .line 17
    :goto_0
    invoke-virtual {p4, p9}, Landroid/widget/CheckBox;->setChecked(Z)V

    const p4, 0x7f0b04dd

    .line 18
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/CheckBox;

    iput-object p4, p0, Lq10;->J:Landroid/widget/CheckBox;

    .line 19
    invoke-virtual {p4, p10}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 p4, 0x8

    if-nez p8, :cond_1

    const-string p9, "AutofillCreditCardAuthentication"

    .line 20
    invoke-static {p9}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result p9

    if-nez p9, :cond_2

    .line 21
    :cond_1
    iget-object p9, p0, Lq10;->J:Landroid/widget/CheckBox;

    invoke-virtual {p9, p4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 22
    iget-object p9, p0, Lq10;->J:Landroid/widget/CheckBox;

    invoke-virtual {p9, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    const p9, 0x7f0b043f

    .line 23
    invoke-virtual {p2, p9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p9

    check-cast p9, Landroid/widget/ImageView;

    iput-object p9, p0, Lq10;->K:Landroid/widget/ImageView;

    .line 24
    invoke-virtual {p9, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p8, :cond_3

    const p8, 0x7f0b043e

    .line 25
    invoke-virtual {p2, p8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p8

    invoke-virtual {p8, p4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const p4, 0x7f0b011f

    .line 26
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    iput-object p4, p0, Lq10;->M:Landroid/view/ViewGroup;

    const p4, 0x7f0b04e4

    .line 27
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, Lq10;->N:Landroid/view/View;

    const p4, 0x7f0b04e5

    .line 28
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ProgressBar;

    iput-object p4, p0, Lq10;->O:Landroid/widget/ProgressBar;

    const p4, 0x7f0b04e3

    .line 29
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lq10;->P:Landroid/widget/TextView;

    .line 30
    iput-wide p11, p0, Lq10;->Q:J

    const p4, 0x7f0b0133

    .line 31
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    invoke-virtual {p4, p6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 33
    new-instance p4, LXd1;

    sget-object p6, LEd1;->q:[LUd1;

    invoke-direct {p4, p6}, LXd1;-><init>([LUd1;)V

    sget-object p6, LEd1;->a:Lfe1;

    .line 34
    invoke-virtual {p4, p6, p0}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p6, LEd1;->c:Lke1;

    .line 35
    invoke-virtual {p4, p6, p3}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p3, LEd1;->f:Lke1;

    .line 36
    invoke-virtual {p4, p3, p2}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p2, LEd1;->g:Lke1;

    .line 37
    invoke-virtual {p4, p2, p5}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p2, LEd1;->j:Lke1;

    const p3, 0x7f1301d4

    .line 38
    invoke-virtual {p4, p2, p1, p3}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    .line 39
    invoke-virtual {p4}, LXd1;->a()Lle1;

    move-result-object p1

    iput-object p1, p0, Lq10;->x:Lle1;

    .line 40
    iput-boolean p7, p0, Lq10;->y:Z

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lq10;->R:I

    .line 42
    iput p1, p0, Lq10;->S:I

    if-eqz p7, :cond_4

    .line 43
    new-instance p1, Lo10;

    invoke-direct {p1, p0, v1}, Lo10;-><init>(Lq10;Ln10;)V

    sget-object p2, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    .line 44
    :cond_4
    iget-object p1, p0, Lq10;->C:Landroid/widget/EditText;

    new-array p2, v2, [Landroid/text/InputFilter;

    new-instance p3, Landroid/text/InputFilter$LengthFilter;

    iget-object p4, p0, Lq10;->w:Lp10;

    .line 45
    invoke-interface {p4}, Lp10;->b()I

    move-result p4

    invoke-direct {p3, p4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object p3, p2, v0

    .line 46
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 47
    iget-object p1, p0, Lq10;->C:Landroid/widget/EditText;

    new-instance p2, Lg10;

    invoke-direct {p2, p0}, Lg10;-><init>(Lq10;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 48
    iget-object p1, p0, Lq10;->C:Landroid/widget/EditText;

    new-instance p2, Lh10;

    invoke-direct {p2, p0}, Lh10;-><init>(Lq10;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 49
    iget-object p1, p0, Lq10;->D:Landroid/widget/EditText;

    new-instance p2, Li10;

    invoke-direct {p2, p0}, Li10;-><init>(Lq10;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 50
    iget-object p1, p0, Lq10;->E:Landroid/widget/EditText;

    new-instance p2, Lj10;

    invoke-direct {p2, p0}, Lj10;-><init>(Lq10;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 13
    iget-object v0, p0, Lq10;->H:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lq10;->V:Landroid/content/Context;

    iget-object v1, p0, Lq10;->D:Landroid/widget/EditText;

    iget-object v2, p0, Lq10;->E:Landroid/widget/EditText;

    iget-object v3, p0, Lq10;->C:Landroid/widget/EditText;

    const/4 v4, 0x7

    invoke-static {v4, v0, v1, v2, v3}, Le10;->a(ILandroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    return-void
.end method

.method public final a(I)V
    .locals 7

    .line 6
    iget-object v0, p0, Lq10;->N:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lq10;->M:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/16 v0, 0xfa

    .line 8
    iget-object v3, p0, Lq10;->N:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 9
    iget-object v3, p0, Lq10;->N:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v5, v0

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 10
    iget-object v0, p0, Lq10;->M:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 11
    :cond_1
    iget-object v0, p0, Lq10;->M:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    :goto_1
    invoke-static {v0, v2}, LA7;->f(Landroid/view/View;I)V

    .line 12
    iget-object v0, p0, Lq10;->M:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    const/high16 p1, 0x20000

    goto :goto_2

    :cond_3
    const/high16 p1, 0x60000

    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    return-void
.end method

.method public a(Lle1;I)V
    .locals 0

    .line 17
    iget-object p1, p0, Lq10;->w:Lp10;

    invoke-interface {p1}, Lp10;->a()V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lq10;->x:Lle1;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq10;->C:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lq10;->D:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lq10;->E:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lq10;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Lq10;->x:Lle1;

    sget-object v1, LEd1;->i:Lhe1;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Lle1;->a(Lhe1;Z)V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq10;->d()V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq10;->V:Landroid/content/Context;

    const-string v1, "input_method"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    iget-boolean v1, p0, Lq10;->y:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lq10;->D:Landroid/widget/EditText;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lq10;->C:Landroid/widget/EditText;

    :goto_0
    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const/16 v0, 0x8

    .line 5
    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public b(Lle1;I)V
    .locals 7

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 6
    iget-object v1, p0, Lq10;->w:Lp10;

    iget-object p1, p0, Lq10;->C:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lq10;->D:Landroid/widget/EditText;

    .line 7
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lq10;->E:Landroid/widget/EditText;

    .line 8
    invoke-static {p1}, Le10;->a(Landroid/widget/EditText;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lq10;->I:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object p1, p0, Lq10;->J:Landroid/widget/CheckBox;

    .line 10
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    .line 11
    invoke-interface/range {v1 .. v6}, Lp10;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_1
    if-ne p2, v0, :cond_2

    .line 12
    iget-object p2, p0, Lq10;->U:LBd1;

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, LBd1;->a(Lle1;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lq10;->y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lq10;->F:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lq10;->F:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lq10;->C:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEms(I)V

    .line 4
    iget-object v0, p0, Lq10;->D:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5
    iget-object v0, p0, Lq10;->E:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lq10;->y:Z

    const/4 v1, 0x7

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lq10;->D:Landroid/widget/EditText;

    iget-object v2, p0, Lq10;->E:Landroid/widget/EditText;

    iget-boolean v3, p0, Lq10;->W:Z

    iget-boolean v4, p0, Lq10;->X:Z

    invoke-static {v0, v2, v3, v4}, Le10;->a(Landroid/widget/EditText;Landroid/widget/EditText;ZZ)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    .line 3
    :goto_0
    iget-object v2, p0, Lq10;->w:Lp10;

    iget-object v3, p0, Lq10;->C:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lp10;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x6

    if-eqz v2, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-boolean v2, p0, Lq10;->Y:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lq10;->C:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-nez v2, :cond_4

    if-eq v0, v1, :cond_3

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x5

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x4

    goto :goto_2

    :cond_4
    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 5
    :cond_5
    :goto_2
    iget-object v2, p0, Lq10;->x:Lle1;

    sget-object v4, LEd1;->i:Lhe1;

    const/4 v5, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v2, v4, v1}, Lle1;->a(Lhe1;Z)V

    .line 6
    iget-object v1, p0, Lq10;->V:Landroid/content/Context;

    iget-object v2, p0, Lq10;->H:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Le10;->a(ILandroid/content/Context;Landroid/widget/TextView;)V

    .line 7
    iget-object v1, p0, Lq10;->V:Landroid/content/Context;

    iget-object v2, p0, Lq10;->D:Landroid/widget/EditText;

    iget-object v4, p0, Lq10;->E:Landroid/widget/EditText;

    iget-object v6, p0, Lq10;->C:Landroid/widget/EditText;

    invoke-static {v0, v1, v2, v4, v6}, Le10;->a(ILandroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    if-ne v0, v3, :cond_9

    .line 8
    iget-object v0, p0, Lq10;->D:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    iget-object v0, p0, Lq10;->D:Landroid/widget/EditText;

    .line 9
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 10
    iget-object v0, p0, Lq10;->E:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 11
    iget-object v0, p0, Lq10;->C:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 12
    iput-boolean v5, p0, Lq10;->Y:Z

    goto :goto_4

    .line 13
    :cond_7
    iget-object v0, p0, Lq10;->E:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 14
    iput-boolean v5, p0, Lq10;->X:Z

    goto :goto_4

    .line 15
    :cond_8
    iget-object v0, p0, Lq10;->E:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lq10;->E:Landroid/widget/EditText;

    .line 16
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 17
    iget-object v0, p0, Lq10;->C:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 18
    iput-boolean v5, p0, Lq10;->Y:Z

    :cond_9
    :goto_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lq10;->K:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 2
    iget-object p1, p0, Lq10;->L:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    new-instance p1, Landroid/widget/PopupWindow;

    iget-object v0, p0, Lq10;->V:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lq10;->L:Landroid/widget/PopupWindow;

    .line 4
    new-instance v6, Lm10;

    invoke-direct {v6, p0}, Lm10;-><init>(Lq10;)V

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, LH6;->a(Ljava/util/Locale;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lq10;->V:Landroid/content/Context;

    iget-object v2, p0, Lq10;->L:Landroid/widget/PopupWindow;

    const v3, 0x7f130160

    new-instance v4, Ln10;

    invoke-direct {v4, p0}, Ln10;-><init>(Lq10;)V

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lq10;->I:Landroid/widget/CheckBox;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lq10;->K:Landroid/widget/ImageView;

    :goto_1
    move-object v5, p1

    .line 8
    invoke-static/range {v1 .. v6}, Le10;->a(Landroid/content/Context;Landroid/widget/PopupWindow;ILd10;Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 9
    :cond_3
    iget-object p1, p0, Lq10;->w:Lp10;

    invoke-interface {p1}, Lp10;->c()V

    .line 10
    iget-object p1, p0, Lq10;->G:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lq10;->C:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p0}, Lq10;->a()V

    .line 13
    iget-object p1, p0, Lq10;->D:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :goto_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
