.class public LT00;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/text/TextWatcher;
.implements LDd1;


# instance fields
.field public final A:Landroid/widget/EditText;

.field public final B:Landroid/widget/TextView;

.field public final C:Landroid/widget/TextView;

.field public D:LBd1;

.field public E:Landroid/content/Context;

.field public F:Z

.field public G:Z

.field public final w:LS00;

.field public final x:Lle1;

.field public final y:Landroid/view/View;

.field public final z:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;LS00;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LT00;->w:LS00;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0033

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, LT00;->y:Landroid/view/View;

    const v0, 0x7f0b019e

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, LT00;->B:Landroid/widget/TextView;

    .line 6
    iget-object p2, p0, LT00;->y:Landroid/view/View;

    const v0, 0x7f0b00ac

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, LT00;->C:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p2, p0, LT00;->y:Landroid/view/View;

    const p6, 0x7f0b00ad

    invoke-virtual {p2, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, LT00;->z:Landroid/widget/EditText;

    .line 9
    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    iget-object p2, p0, LT00;->z:Landroid/widget/EditText;

    new-instance p6, LQ00;

    invoke-direct {p6, p0}, LQ00;-><init>(LT00;)V

    invoke-virtual {p2, p6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 11
    iget-object p2, p0, LT00;->y:Landroid/view/View;

    const p6, 0x7f0b00b2

    invoke-virtual {p2, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, LT00;->A:Landroid/widget/EditText;

    .line 12
    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 13
    iget-object p2, p0, LT00;->A:Landroid/widget/EditText;

    new-instance p6, LR00;

    invoke-direct {p6, p0}, LR00;-><init>(LT00;)V

    invoke-virtual {p2, p6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 14
    new-instance p2, LXd1;

    sget-object p6, LEd1;->q:[LUd1;

    invoke-direct {p2, p6}, LXd1;-><init>([LUd1;)V

    sget-object p6, LEd1;->a:Lfe1;

    .line 15
    invoke-virtual {p2, p6, p0}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p6, LEd1;->c:Lke1;

    .line 16
    invoke-virtual {p2, p6, p3}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p3, LEd1;->f:Lke1;

    iget-object p6, p0, LT00;->y:Landroid/view/View;

    .line 17
    invoke-virtual {p2, p3, p6}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p3, LEd1;->g:Lke1;

    .line 18
    invoke-virtual {p2, p3, p4}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p3, LEd1;->j:Lke1;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p6, 0x7f1301d4

    invoke-virtual {p2, p3, p4, p6}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object p3, LEd1;->m:Lhe1;

    const/4 p4, 0x0

    .line 20
    invoke-virtual {p2, p3, p4}, LXd1;->a(Lce1;Z)LXd1;

    sget-object p3, LEd1;->i:Lhe1;

    const/4 p4, 0x1

    .line 21
    invoke-virtual {p2, p3, p4}, LXd1;->a(Lce1;Z)LXd1;

    if-eqz p5, :cond_0

    .line 22
    sget-object p3, LEd1;->d:Lke1;

    if-eqz p5, :cond_0

    .line 23
    invoke-static {p1, p5}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    .line 24
    :cond_0
    invoke-virtual {p2}, LXd1;->a()Lle1;

    move-result-object p1

    iput-object p1, p0, LT00;->x:Lle1;

    return-void
.end method


# virtual methods
.method public a(Lle1;I)V
    .locals 0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    .line 1
    iget-object p1, p0, LT00;->w:LS00;

    invoke-interface {p1}, LS00;->a()V

    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 1
    iget-object p1, p0, LT00;->z:Landroid/widget/EditText;

    iget-object v0, p0, LT00;->A:Landroid/widget/EditText;

    iget-boolean v1, p0, LT00;->F:Z

    iget-boolean v2, p0, LT00;->G:Z

    invoke-static {p1, v0, v1, v2}, Le10;->a(Landroid/widget/EditText;Landroid/widget/EditText;ZZ)I

    move-result p1

    .line 2
    iget-object v0, p0, LT00;->x:Lle1;

    sget-object v1, LEd1;->i:Lhe1;

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lle1;->a(Lhe1;Z)V

    .line 3
    iget-object v0, p0, LT00;->E:Landroid/content/Context;

    iget-object v1, p0, LT00;->B:Landroid/widget/TextView;

    invoke-static {p1, v0, v1}, Le10;->a(ILandroid/content/Context;Landroid/widget/TextView;)V

    .line 4
    iget-object v0, p0, LT00;->E:Landroid/content/Context;

    iget-object v1, p0, LT00;->z:Landroid/widget/EditText;

    iget-object v2, p0, LT00;->A:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-static {p1, v0, v1, v2, v4}, Le10;->a(ILandroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 5
    iget-object v0, p0, LT00;->z:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LT00;->z:Landroid/widget/EditText;

    .line 6
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eq p1, v3, :cond_1

    .line 7
    iget-object p1, p0, LT00;->A:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 8
    iput-boolean v3, p0, LT00;->G:Z

    :cond_1
    return-void
.end method

.method public b(Lle1;I)V
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, LT00;->z:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object v1, p0, LT00;->A:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, LT00;->w:LS00;

    invoke-interface {v2, p2, v1}, LS00;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, LT00;->D:LBd1;

    invoke-virtual {p2, p1, v0}, LBd1;->a(Lle1;I)V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 5
    iget-object p2, p0, LT00;->D:LBd1;

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, LBd1;->a(Lle1;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
