.class public La10;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/text/TextWatcher;
.implements LDd1;


# instance fields
.field public final A:Landroid/widget/ImageView;

.field public B:Landroid/widget/PopupWindow;

.field public C:LBd1;

.field public D:Landroid/content/Context;

.field public final w:LZ00;

.field public final x:Lle1;

.field public final y:Landroid/view/View;

.field public final z:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;LZ00;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, La10;->w:LZ00;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0035

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, La10;->y:Landroid/view/View;

    const v0, 0x7f0b00af

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, La10;->z:Landroid/widget/EditText;

    .line 6
    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p2, p4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 7
    iget-object p2, p0, La10;->y:Landroid/view/View;

    const v0, 0x7f0b00b0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, La10;->A:Landroid/widget/ImageView;

    .line 8
    new-instance v0, LV00;

    invoke-direct {v0, p0}, LV00;-><init>(La10;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance p2, LXd1;

    sget-object v0, LEd1;->q:[LUd1;

    invoke-direct {p2, v0}, LXd1;-><init>([LUd1;)V

    sget-object v0, LEd1;->a:Lfe1;

    .line 10
    invoke-virtual {p2, v0, p0}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object v0, LEd1;->c:Lke1;

    .line 11
    invoke-virtual {p2, v0, p3}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p3, LEd1;->f:Lke1;

    iget-object v0, p0, La10;->y:Landroid/view/View;

    .line 12
    invoke-virtual {p2, p3, v0}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p3, LEd1;->g:Lke1;

    .line 13
    invoke-virtual {p2, p3, p5}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p3, LEd1;->j:Lke1;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v0, 0x7f1301d4

    invoke-virtual {p2, p3, p5, v0}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object p3, LEd1;->m:Lhe1;

    const/4 p5, 0x0

    .line 15
    invoke-virtual {p2, p3, p5}, LXd1;->a(Lce1;Z)LXd1;

    sget-object p3, LEd1;->i:Lhe1;

    .line 16
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    .line 17
    invoke-virtual {p2, p3, p4}, LXd1;->a(Lce1;Z)LXd1;

    if-eqz p6, :cond_0

    .line 18
    sget-object p3, LEd1;->d:Lke1;

    if-eqz p6, :cond_0

    .line 19
    invoke-static {p1, p6}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    .line 20
    :cond_0
    invoke-virtual {p2}, LXd1;->a()Lle1;

    move-result-object p1

    iput-object p1, p0, La10;->x:Lle1;

    .line 21
    iget-object p1, p0, La10;->z:Landroid/widget/EditText;

    new-instance p2, LW00;

    invoke-direct {p2, p0}, LW00;-><init>(La10;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

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
    iget-object p1, p0, La10;->w:LZ00;

    invoke-interface {p1}, LZ00;->a()V

    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object p1, p0, La10;->x:Lle1;

    sget-object v0, LEd1;->i:Lhe1;

    iget-object v1, p0, La10;->z:Landroid/widget/EditText;

    .line 2
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    .line 3
    invoke-virtual {p1, v0, v1}, Lle1;->a(Lhe1;Z)V

    return-void
.end method

.method public b(Lle1;I)V
    .locals 2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, La10;->w:LZ00;

    iget-object v1, p0, La10;->z:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, LZ00;->a(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, La10;->C:LBd1;

    invoke-virtual {p2, p1, v0}, LBd1;->a(Lle1;I)V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 3
    iget-object p2, p0, La10;->C:LBd1;

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
