.class Landroid/support/v7/widget/it;
.super Landroid/text/method/NumberKeyListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/if;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/if;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/it;->a:Landroid/support/v7/widget/if;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/it;->a:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->l(Landroid/support/v7/widget/if;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_6

    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v2, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p2

    invoke-interface {p4, p6, p2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/it;->a:Landroid/support/v7/widget/if;

    invoke-static {p2, p1}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/if;Ljava/lang/String;)I

    move-result p2

    iget-object p3, p0, Landroid/support/v7/widget/it;->a:Landroid/support/v7/widget/if;

    invoke-static {p3}, Landroid/support/v7/widget/if;->m(Landroid/support/v7/widget/if;)I

    move-result p3

    if-gt p2, p3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/it;->a:Landroid/support/v7/widget/if;

    invoke-static {p2}, Landroid/support/v7/widget/if;->m(Landroid/support/v7/widget/if;)I

    move-result p3

    invoke-static {p2, p3}, Landroid/support/v7/widget/if;->b(Landroid/support/v7/widget/if;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-le p1, p2, :cond_2

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/it;->a:Landroid/support/v7/widget/if;

    invoke-static {p1}, Landroid/support/v7/widget/if;->c(Landroid/support/v7/widget/if;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroid/support/v7/widget/it;->a:Landroid/support/v7/widget/if;

    invoke-static {p1}, Landroid/support/v7/widget/if;->n(Landroid/support/v7/widget/if;)Landroid/widget/Toast;

    move-result-object p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroid/support/v7/widget/it;->a:Landroid/support/v7/widget/if;

    iget-object p2, p1, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    iget-object p3, p0, Landroid/support/v7/widget/it;->a:Landroid/support/v7/widget/if;

    invoke-static {p3}, Landroid/support/v7/widget/if;->o(Landroid/support/v7/widget/if;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/if;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/it;->a:Landroid/support/v7/widget/if;

    invoke-static {p1}, Landroid/support/v7/widget/if;->n(Landroid/support/v7/widget/if;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    return-object v1

    :cond_6
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v2, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p3

    invoke-interface {p4, p6, p3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Landroid/support/v7/widget/it;->a:Landroid/support/v7/widget/if;

    invoke-static {p3}, Landroid/support/v7/widget/if;->l(Landroid/support/v7/widget/if;)[Ljava/lang/String;

    move-result-object p3

    array-length p4, p3

    const/4 p5, 0x0

    :goto_1
    if-ge p5, p4, :cond_9

    aget-object p6, p3, p5

    invoke-virtual {p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p6

    iget-object v0, p0, Landroid/support/v7/widget/it;->a:Landroid/support/v7/widget/if;

    invoke-static {v0}, Landroid/support/v7/widget/if;->p(Landroid/support/v7/widget/if;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_8

    return-object p1

    :cond_7
    invoke-virtual {p6, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_8

    return-object p1

    :cond_8
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_9
    iget-object p1, p0, Landroid/support/v7/widget/it;->a:Landroid/support/v7/widget/if;

    invoke-static {p1}, Landroid/support/v7/widget/if;->c(Landroid/support/v7/widget/if;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Landroid/support/v7/widget/it;->a:Landroid/support/v7/widget/if;

    invoke-static {p1}, Landroid/support/v7/widget/if;->n(Landroid/support/v7/widget/if;)Landroid/widget/Toast;

    move-result-object p1

    if-nez p1, :cond_a

    iget-object p1, p0, Landroid/support/v7/widget/it;->a:Landroid/support/v7/widget/if;

    iget-object p2, p1, Landroid/support/v7/widget/if;->b:Landroid/content/Context;

    iget-object p3, p0, Landroid/support/v7/widget/it;->a:Landroid/support/v7/widget/if;

    invoke-static {p3}, Landroid/support/v7/widget/if;->o(Landroid/support/v7/widget/if;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v7/widget/if;->a(Landroid/support/v7/widget/if;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_a
    iget-object p1, p0, Landroid/support/v7/widget/it;->a:Landroid/support/v7/widget/if;

    invoke-static {p1}, Landroid/support/v7/widget/if;->n(Landroid/support/v7/widget/if;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_b
    return-object v1
.end method

.method protected getAcceptedChars()[C
    .locals 1

    invoke-static {}, Landroid/support/v7/widget/if;->u()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
