.class public LRz0;
.super LOz0;
.source "PG"

# interfaces
.implements LSz0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LOz0;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ldh;I)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, LOz0;->a(Ldh;I)V

    .line 2
    iget-object v0, p0, LXM0;->B:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, LHz0;

    .line 4
    check-cast p1, LNz0;

    .line 5
    invoke-virtual {p0}, LXM0;->a()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    iget-object v1, p0, LXM0;->F:LYM0;

    check-cast v1, LLz0;

    .line 6
    iget-boolean v1, v1, LLz0;->c:Z

    xor-int/2addr v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f08011e

    .line 7
    iget-object v2, p1, LNz0;->R:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v2, p1, LNz0;->R:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object v1, p1, LNz0;->R:Landroid/widget/ImageView;

    .line 10
    new-instance v2, LIz0;

    invoke-direct {v2, p0, p1}, LIz0;-><init>(LOz0;LNz0;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    :cond_1
    :goto_0
    new-instance v1, LQz0;

    invoke-direct {v1, p0, v0, p2}, LQz0;-><init>(LRz0;LHz0;I)V

    .line 12
    iget-object p2, p1, LNz0;->S:Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;

    invoke-virtual {p2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 13
    iget-object p2, p1, LNz0;->S:Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;

    .line 14
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->b()V

    .line 15
    iput-object v1, p2, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->A:LuM0;

    .line 16
    iget-object p2, p1, Ldh;->w:Landroid/view/View;

    invoke-static {p2}, LA7;->m(Landroid/view/View;)I

    move-result v0

    iget-object v1, p1, Ldh;->w:Landroid/view/View;

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object p1, p1, Ldh;->w:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    .line 18
    invoke-virtual {p2, v0, v1, v3, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, LXM0;->F:LYM0;

    check-cast v0, LLz0;

    .line 2
    iget-boolean v0, v0, LLz0;->c:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, LXM0;->z:Lxi;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, LWM0;

    invoke-direct {v0, p0, v1}, LWM0;-><init>(LXM0;LSM0;)V

    iput-object v0, p0, LXM0;->A:Lsi;

    .line 5
    new-instance v2, Lxi;

    invoke-direct {v2, v0}, Lxi;-><init>(Lsi;)V

    iput-object v2, p0, LXM0;->z:Lxi;

    .line 6
    :cond_0
    iget-object v0, p0, LXM0;->z:Lxi;

    iget-object v2, p0, LXM0;->C:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Lxi;->a(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, LXM0;->z:Lxi;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lxi;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 8
    :cond_2
    :goto_0
    invoke-static {}, LTz0;->b()LTz0;

    move-result-object v0

    .line 9
    iget-object v2, v0, LTz0;->a:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    if-eqz v2, :cond_5

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-static {v2, v1}, LJ/N;->MvHhqYkm(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 14
    iget-object v4, v0, LTz0;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, LTz0;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LHz0;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p0, v2}, LOz0;->a(Ljava/util/List;)V

    return-void

    .line 16
    :cond_5
    throw v1
.end method
