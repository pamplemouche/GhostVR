.class public LIP0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements LDd1;


# instance fields
.field public A:Landroid/widget/EditText;

.field public B:Landroid/widget/LinearLayout;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/widget/TextView;

.field public E:Landroid/widget/RatingBar;

.field public F:Landroid/widget/ImageView;

.field public G:Landroid/view/View;

.field public H:Landroid/widget/ImageView;

.field public I:Z

.field public w:Lle1;

.field public x:LBd1;

.field public y:LMP0;

.field public z:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LIP0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LBd1;ILMP0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LIP0;->x:LBd1;

    .line 3
    iput-object p4, p0, LIP0;->y:LMP0;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p4, 0x7f0e0028

    const/4 v0, 0x0

    invoke-virtual {p2, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, LIP0;->z:Landroid/view/View;

    const p4, 0x7f0b0422

    .line 5
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, LIP0;->G:Landroid/view/View;

    .line 6
    iget-object p2, p0, LIP0;->z:Landroid/view/View;

    const p4, 0x7f0b0204

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, LIP0;->H:Landroid/widget/ImageView;

    .line 7
    iget-object p2, p0, LIP0;->z:Landroid/view/View;

    const p4, 0x7f0b047a

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, LIP0;->A:Landroid/widget/EditText;

    .line 8
    iget-object p2, p0, LIP0;->z:Landroid/view/View;

    const p4, 0x7f0b004c

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, LIP0;->B:Landroid/widget/LinearLayout;

    const p4, 0x7f0b02ba

    .line 9
    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, LIP0;->C:Landroid/widget/TextView;

    .line 10
    iget-object p2, p0, LIP0;->B:Landroid/widget/LinearLayout;

    const p4, 0x7f0b02fe

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, LIP0;->D:Landroid/widget/TextView;

    .line 11
    iget-object p2, p0, LIP0;->B:Landroid/widget/LinearLayout;

    const p4, 0x7f0b011b

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RatingBar;

    iput-object p2, p0, LIP0;->E:Landroid/widget/RatingBar;

    .line 12
    iget-object p2, p0, LIP0;->z:Landroid/view/View;

    const p4, 0x7f0b0353

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, LIP0;->F:Landroid/widget/ImageView;

    .line 13
    iget-object p2, p0, LIP0;->C:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p2, p0, LIP0;->H:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p2, p0, LIP0;->z:Landroid/view/View;

    new-instance p4, LGP0;

    invoke-direct {p4, p0}, LGP0;-><init>(LIP0;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 16
    iget-object p2, p0, LIP0;->A:Landroid/widget/EditText;

    new-instance p4, LHP0;

    invoke-direct {p4, p0}, LHP0;-><init>(LIP0;)V

    invoke-virtual {p2, p4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 18
    new-instance p2, LXd1;

    sget-object p4, LEd1;->q:[LUd1;

    invoke-direct {p2, p4}, LXd1;-><init>([LUd1;)V

    sget-object p4, LEd1;->a:Lfe1;

    .line 19
    invoke-virtual {p2, p4, p0}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p4, LEd1;->c:Lke1;

    .line 20
    invoke-virtual {p2, p4, p1, p3}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object p3, LEd1;->g:Lke1;

    const p4, 0x7f130135

    .line 21
    invoke-virtual {p2, p3, p1, p4}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object p3, LEd1;->i:Lhe1;

    const/4 p4, 0x1

    .line 22
    invoke-virtual {p2, p3, p4}, LXd1;->a(Lce1;Z)LXd1;

    sget-object p3, LEd1;->j:Lke1;

    const v0, 0x7f1301d4

    .line 23
    invoke-virtual {p2, p3, p1, v0}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object p1, LEd1;->f:Lke1;

    iget-object p3, p0, LIP0;->z:Landroid/view/View;

    .line 24
    invoke-virtual {p2, p1, p3}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p1, LEd1;->m:Lhe1;

    .line 25
    invoke-virtual {p2, p1, p4}, LXd1;->a(Lce1;Z)LXd1;

    .line 26
    invoke-virtual {p2}, LXd1;->a()Lle1;

    move-result-object p1

    iput-object p1, p0, LIP0;->w:Lle1;

    .line 27
    iget-object p2, p0, LIP0;->x:LBd1;

    const/4 p3, 0x0

    .line 28
    invoke-virtual {p2, p1, p3, p3}, LBd1;->a(Lle1;IZ)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, LIP0;->A:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, LIP0;->A:Landroid/widget/EditText;

    .line 2
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, LIP0;->w:Lle1;

    sget-object v4, LEd1;->i:Lhe1;

    iget-boolean v5, p0, LIP0;->I:Z

    if-eqz v5, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    invoke-virtual {v3, v4, v1}, Lle1;->a(Lhe1;Z)V

    return-void
.end method

.method public a(Lle1;I)V
    .locals 0

    .line 4
    iget-object p1, p0, LIP0;->y:LMP0;

    invoke-interface {p1}, LMP0;->b()V

    return-void
.end method

.method public b(Lle1;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, LIP0;->y:LMP0;

    iget-object p2, p0, LIP0;->A:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, LMP0;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 2
    :goto_0
    iget-object p2, p0, LIP0;->x:LBd1;

    iget-object v0, p0, LIP0;->w:Lle1;

    invoke-virtual {p2, v0, p1}, LBd1;->a(Lle1;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, LIP0;->C:Landroid/widget/TextView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, LIP0;->H:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, LIP0;->y:LMP0;

    invoke-interface {p1}, LMP0;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, LIP0;->x:LBd1;

    iget-object v0, p0, LIP0;->w:Lle1;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, LBd1;->a(Lle1;I)V

    :cond_1
    return-void
.end method
