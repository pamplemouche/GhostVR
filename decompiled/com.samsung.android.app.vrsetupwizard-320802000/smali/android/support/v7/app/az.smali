.class public Landroid/support/v7/app/az;
.super Landroid/support/v7/app/r;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private b:Landroid/support/v7/widget/SeslProgressBar;

.field private c:Landroid/widget/TextView;

.field private d:I

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/TextView;

.field private h:Ljava/text/NumberFormat;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Ljava/lang/CharSequence;

.field private q:Z

.field private r:Z

.field private s:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/app/r;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/app/az;->d:I

    invoke-direct {p0}, Landroid/support/v7/app/az;->b()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/az;)Landroid/support/v7/widget/SeslProgressBar;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/app/az;->b:Landroid/support/v7/widget/SeslProgressBar;

    return-object p0
.end method

.method static synthetic b(Landroid/support/v7/app/az;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/app/az;->f:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .locals 2

    const-string v0, "%1d/%1d"

    iput-object v0, p0, Landroid/support/v7/app/az;->f:Ljava/lang/String;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/az;->h:Ljava/text/NumberFormat;

    iget-object v0, p0, Landroid/support/v7/app/az;->h:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method static synthetic c(Landroid/support/v7/app/az;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/app/az;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget v0, p0, Landroid/support/v7/app/az;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/az;->s:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/az;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method static synthetic d(Landroid/support/v7/app/az;)Ljava/text/NumberFormat;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/app/az;->h:Ljava/text/NumberFormat;

    return-object p0
.end method

.method private d()Z
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/support/v7/app/az;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/b/b;->isLightTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method static synthetic e(Landroid/support/v7/app/az;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/app/az;->g:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/az;->b:Landroid/support/v7/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/support/v7/app/az;->n:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/az;->b:Landroid/support/v7/widget/SeslProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/az;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/support/v7/app/az;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/az;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iput-object p1, p0, Landroid/support/v7/app/az;->p:Ljava/lang/CharSequence;

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/az;->b:Landroid/support/v7/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/app/az;->q:Z

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/app/az;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/az;->b:Landroid/support/v7/widget/SeslProgressBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setProgress(I)V

    invoke-direct {p0}, Landroid/support/v7/app/az;->c()V

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/support/v7/app/az;->j:I

    :goto_0
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/az;->b:Landroid/support/v7/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/support/v7/app/az;->o:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/az;->b:Landroid/support/v7/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setSecondaryProgress(I)V

    invoke-direct {p0}, Landroid/support/v7/app/az;->c()V

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/support/v7/app/az;->k:I

    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/az;->b:Landroid/support/v7/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setMax(I)V

    invoke-direct {p0}, Landroid/support/v7/app/az;->c()V

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/support/v7/app/az;->i:I

    :goto_0
    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/az;->b:Landroid/support/v7/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslProgressBar;->c(I)V

    invoke-direct {p0}, Landroid/support/v7/app/az;->c()V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/app/az;->l:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/app/az;->l:I

    :goto_0
    return-void
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/az;->b:Landroid/support/v7/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslProgressBar;->d(I)V

    invoke-direct {p0}, Landroid/support/v7/app/az;->c()V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/app/az;->m:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/app/az;->m:I

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/app/az;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/app/az;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/v7/b/l;->AlertDialog:[I

    const/4 v3, 0x0

    const v4, 0x101005d

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/app/az;->d:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    new-instance v2, Landroid/support/v7/app/ba;

    invoke-direct {v2, p0}, Landroid/support/v7/app/ba;-><init>(Landroid/support/v7/app/az;)V

    iput-object v2, p0, Landroid/support/v7/app/az;->s:Landroid/os/Handler;

    sget v2, Landroid/support/v7/b/l;->AlertDialog_horizontalProgressLayout:I

    sget v4, Landroid/support/v7/b/i;->sesl_alert_dialog_progress:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v2, Landroid/support/v7/b/g;->progress:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SeslProgressBar;

    iput-object v2, p0, Landroid/support/v7/app/az;->b:Landroid/support/v7/widget/SeslProgressBar;

    sget v2, Landroid/support/v7/b/g;->progress_number:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v7/app/az;->e:Landroid/widget/TextView;

    sget v2, Landroid/support/v7/b/g;->progress_percent:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v7/app/az;->g:Landroid/widget/TextView;

    :goto_0
    sget v2, Landroid/support/v7/b/g;->message:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v7/app/az;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/az;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_0
    const/16 v4, 0x3e8

    if-ne v2, v4, :cond_2

    invoke-virtual {p0, v3}, Landroid/support/v7/app/az;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/support/v7/app/az;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {p0}, Landroid/support/v7/app/az;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Landroid/support/v7/b/f;->sesl_progress_dialog_circle_background_shape:I

    goto :goto_1

    :cond_1
    sget v4, Landroid/support/v7/b/f;->sesl_progress_dialog_circle_background_shape_dark:I

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    sget v2, Landroid/support/v7/b/i;->sesl_progress_dialog_circle:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v2, Landroid/support/v7/b/g;->progress:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SeslProgressBar;

    iput-object v2, p0, Landroid/support/v7/app/az;->b:Landroid/support/v7/widget/SeslProgressBar;

    sget v2, Landroid/support/v7/b/g;->message:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v7/app/az;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/az;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/support/v7/app/az;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroid/support/v7/b/e;->sesl_progress_dialog_circle_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/app/az;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Landroid/view/Window;->setLayout(II)V

    goto :goto_2

    :cond_2
    sget v2, Landroid/support/v7/b/l;->AlertDialog_progressLayout:I

    sget v4, Landroid/support/v7/b/i;->sesl_progress_dialog:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v2, Landroid/support/v7/b/g;->progress:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SeslProgressBar;

    iput-object v2, p0, Landroid/support/v7/app/az;->b:Landroid/support/v7/widget/SeslProgressBar;

    goto :goto_0

    :goto_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget v0, p0, Landroid/support/v7/app/az;->i:I

    if-lez v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v7/app/az;->d(I)V

    :cond_3
    iget v0, p0, Landroid/support/v7/app/az;->j:I

    if-lez v0, :cond_4

    invoke-virtual {p0, v0}, Landroid/support/v7/app/az;->b(I)V

    :cond_4
    iget v0, p0, Landroid/support/v7/app/az;->k:I

    if-lez v0, :cond_5

    invoke-virtual {p0, v0}, Landroid/support/v7/app/az;->c(I)V

    :cond_5
    iget v0, p0, Landroid/support/v7/app/az;->l:I

    if-lez v0, :cond_6

    invoke-virtual {p0, v0}, Landroid/support/v7/app/az;->e(I)V

    :cond_6
    iget v0, p0, Landroid/support/v7/app/az;->m:I

    if-lez v0, :cond_7

    invoke-virtual {p0, v0}, Landroid/support/v7/app/az;->f(I)V

    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/az;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Landroid/support/v7/app/az;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/az;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Landroid/support/v7/app/az;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/az;->p:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Landroid/support/v7/app/az;->a(Ljava/lang/CharSequence;)V

    :cond_a
    iget-boolean v0, p0, Landroid/support/v7/app/az;->q:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/app/az;->a(Z)V

    invoke-direct {p0}, Landroid/support/v7/app/az;->c()V

    invoke-super {p0, p1}, Landroid/support/v7/app/r;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/r;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/az;->r:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/r;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/az;->r:Z

    return-void
.end method
