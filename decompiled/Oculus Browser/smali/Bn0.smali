.class public LBn0;
.super LdG0;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;LUF0;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, LdG0;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;LUF0;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 1

    const v0, 0x1020002

    .line 1
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method public a()V
    .locals 4

    .line 2
    iget-object v0, p0, LdG0;->d:Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LdG0;->d:Lorg/chromium/chrome/browser/snackbar/TemplatePreservingTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LdG0;->b:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f13060d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()I
    .locals 4

    .line 1
    iget-object v0, p0, LdG0;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v1, p0, LdG0;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2
    iget-object v1, p0, LdG0;->a:Landroid/app/Activity;

    instance-of v2, v1, Lorg/chromium/chrome/browser/ChromeActivity;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast v1, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 4
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->A0()Lbd0;

    move-result-object v2

    .line 5
    iget v2, v2, Lbd0;->I:I

    if-nez v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeActivity;->A0()Lbd0;

    move-result-object v1

    .line 7
    iget v3, v1, Lbd0;->D:I

    :goto_0
    sub-int/2addr v0, v3

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, LdG0;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    neg-int v0, v0

    return v0
.end method
