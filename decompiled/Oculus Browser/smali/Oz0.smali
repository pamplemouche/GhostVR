.class public abstract LOz0;
.super LXM0;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LXM0;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, LLz0;

    invoke-direct {p1, p0}, LLz0;-><init>(LOz0;)V

    .line 3
    iput-object p1, p0, LXM0;->F:LYM0;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Ldh;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e001c

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, LNz0;

    invoke-direct {p2, p1}, LNz0;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(Ldh;I)V
    .locals 3

    .line 4
    check-cast p1, LNz0;

    iget-object v0, p0, LXM0;->B:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LHz0;

    .line 5
    iget-object v0, p1, LNz0;->P:Landroid/widget/TextView;

    .line 6
    iget-object v1, p2, LHz0;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p2, LHz0;->b:Ljava/lang/String;

    .line 9
    iget-object v1, p2, LHz0;->c:Ljava/lang/String;

    .line 10
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p1, LNz0;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p1, LNz0;->Q:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object v0, p1, LNz0;->Q:Landroid/widget/TextView;

    .line 14
    iget-object v2, p2, LHz0;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_0
    iget-object v0, p1, LNz0;->S:Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;

    .line 17
    iget-object p2, p2, LHz0;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->a(Ljava/lang/String;)V

    .line 19
    iget-object p2, p1, LNz0;->R:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    iget-object p1, p1, LNz0;->S:Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LXM0;->B:Ljava/util/List;

    .line 22
    iget-object p1, p0, LBg;->w:LCg;

    invoke-virtual {p1}, LCg;->b()V

    return-void
.end method
