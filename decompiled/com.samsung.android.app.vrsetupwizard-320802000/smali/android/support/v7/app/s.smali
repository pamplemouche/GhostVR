.class public Landroid/support/v7/app/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/v7/app/j;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/app/r;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/s;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/app/j;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Landroid/support/v7/app/r;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/support/v7/app/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iput p2, p0, Landroid/support/v7/app/s;->b:I

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iget-object v0, v0, Landroid/support/v7/app/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(I)Landroid/support/v7/app/s;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iget-object v1, v0, Landroid/support/v7/app/j;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/support/v7/app/j;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iget-object v1, v0, Landroid/support/v7/app/j;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/support/v7/app/j;->i:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iput-object p2, p1, Landroid/support/v7/app/j;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iput-object p1, v0, Landroid/support/v7/app/j;->p:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iput-object p1, v0, Landroid/support/v7/app/j;->q:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iput-object p1, v0, Landroid/support/v7/app/j;->r:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iput-object p1, v0, Landroid/support/v7/app/j;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/v7/app/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iput-object p1, v0, Landroid/support/v7/app/j;->g:Landroid/view/View;

    return-object p0
.end method

.method public a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iput-object p1, v0, Landroid/support/v7/app/j;->t:Landroid/widget/ListAdapter;

    iput-object p2, v0, Landroid/support/v7/app/j;->u:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v7/app/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iput-object p1, v0, Landroid/support/v7/app/j;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iput-object p1, v0, Landroid/support/v7/app/j;->i:Ljava/lang/CharSequence;

    iput-object p2, v0, Landroid/support/v7/app/j;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Z)Landroid/support/v7/app/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iput-boolean p1, v0, Landroid/support/v7/app/j;->o:Z

    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iput-object p1, v0, Landroid/support/v7/app/j;->s:[Ljava/lang/CharSequence;

    iput-object p3, v0, Landroid/support/v7/app/j;->u:Landroid/content/DialogInterface$OnClickListener;

    iput p2, v0, Landroid/support/v7/app/j;->F:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v7/app/j;->E:Z

    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iput-object p1, v0, Landroid/support/v7/app/j;->s:[Ljava/lang/CharSequence;

    iput-object p3, v0, Landroid/support/v7/app/j;->G:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iput-object p2, v0, Landroid/support/v7/app/j;->C:[Z

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v7/app/j;->D:Z

    return-object p0
.end method

.method public b()Landroid/support/v7/app/r;
    .locals 3

    new-instance v0, Landroid/support/v7/app/r;

    iget-object v1, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iget-object v1, v1, Landroid/support/v7/app/j;->a:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/app/s;->b:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/r;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iget-object v2, v0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/AlertController;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/j;->a(Landroid/support/v7/app/AlertController;)V

    iget-object v1, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iget-boolean v1, v1, Landroid/support/v7/app/j;->o:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/r;->setCancelable(Z)V

    iget-object v1, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iget-boolean v1, v1, Landroid/support/v7/app/j;->o:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/r;->setCanceledOnTouchOutside(Z)V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iget-object v1, v1, Landroid/support/v7/app/j;->p:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/r;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iget-object v1, v1, Landroid/support/v7/app/j;->q:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/r;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iget-object v1, v1, Landroid/support/v7/app/j;->r:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iget-object v1, v1, Landroid/support/v7/app/j;->r:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/r;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public b(I)Landroid/support/v7/app/s;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iget-object v1, v0, Landroid/support/v7/app/j;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/support/v7/app/j;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iget-object v1, v0, Landroid/support/v7/app/j;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/support/v7/app/j;->k:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iput-object p2, p1, Landroid/support/v7/app/j;->l:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b(Landroid/view/View;)Landroid/support/v7/app/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iput-object p1, v0, Landroid/support/v7/app/j;->w:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, v0, Landroid/support/v7/app/j;->v:I

    iput-boolean p1, v0, Landroid/support/v7/app/j;->B:Z

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v7/app/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iput-object p1, v0, Landroid/support/v7/app/j;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/s;->a:Landroid/support/v7/app/j;

    iput-object p1, v0, Landroid/support/v7/app/j;->k:Ljava/lang/CharSequence;

    iput-object p2, v0, Landroid/support/v7/app/j;->l:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c()Landroid/support/v7/app/r;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/s;->b()Landroid/support/v7/app/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/r;->show()V

    return-object v0
.end method
