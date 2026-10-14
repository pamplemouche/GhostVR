.class Landroid/support/v7/app/ba;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Landroid/support/v7/app/az;


# direct methods
.method constructor <init>(Landroid/support/v7/app/az;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/ba;->a:Landroid/support/v7/app/az;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object p1, p0, Landroid/support/v7/app/ba;->a:Landroid/support/v7/app/az;

    invoke-static {p1}, Landroid/support/v7/app/az;->a(Landroid/support/v7/app/az;)Landroid/support/v7/widget/SeslProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslProgressBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Landroid/support/v7/app/ba;->a:Landroid/support/v7/app/az;

    invoke-static {v0}, Landroid/support/v7/app/az;->a(Landroid/support/v7/app/az;)Landroid/support/v7/widget/SeslProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslProgressBar;->getMax()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/ba;->a:Landroid/support/v7/app/az;

    invoke-static {v1}, Landroid/support/v7/app/az;->b(Landroid/support/v7/app/az;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/ba;->a:Landroid/support/v7/app/az;

    invoke-static {v1}, Landroid/support/v7/app/az;->b(Landroid/support/v7/app/az;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/app/ba;->a:Landroid/support/v7/app/az;

    invoke-static {v4}, Landroid/support/v7/app/az;->c(Landroid/support/v7/app/az;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/ly;->a(Landroid/view/View;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/app/ba;->a:Landroid/support/v7/app/az;

    invoke-static {v4}, Landroid/support/v7/app/az;->c(Landroid/support/v7/app/az;)Landroid/widget/TextView;

    move-result-object v4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/support/v7/app/ba;->a:Landroid/support/v7/app/az;

    invoke-static {v4}, Landroid/support/v7/app/az;->c(Landroid/support/v7/app/az;)Landroid/widget/TextView;

    move-result-object v4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/ba;->a:Landroid/support/v7/app/az;

    invoke-static {v1}, Landroid/support/v7/app/az;->c(Landroid/support/v7/app/az;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Landroid/support/v7/app/ba;->a:Landroid/support/v7/app/az;

    invoke-static {v1}, Landroid/support/v7/app/az;->d(Landroid/support/v7/app/az;)Ljava/text/NumberFormat;

    move-result-object v1

    if-eqz v1, :cond_2

    int-to-double v1, p1

    int-to-double v4, v0

    div-double/2addr v1, v4

    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Landroid/support/v7/app/ba;->a:Landroid/support/v7/app/az;

    invoke-static {v0}, Landroid/support/v7/app/az;->d(Landroid/support/v7/app/az;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Landroid/support/v7/app/ba;->a:Landroid/support/v7/app/az;

    invoke-static {v0}, Landroid/support/v7/app/az;->e(Landroid/support/v7/app/az;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Landroid/support/v7/app/ba;->a:Landroid/support/v7/app/az;

    invoke-static {p1}, Landroid/support/v7/app/az;->e(Landroid/support/v7/app/az;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
