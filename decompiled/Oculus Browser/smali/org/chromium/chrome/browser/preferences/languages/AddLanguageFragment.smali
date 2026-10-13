.class public Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;
.super Lz2;
.source "PG"


# instance fields
.field public u0:Landroid/support/v7/widget/SearchView;

.field public v0:Ljava/lang/String;

.field public w0:Landroid/support/v7/widget/RecyclerView;

.field public x0:LFz0;

.field public y0:Ljava/util/List;

.field public z0:LJz0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz2;-><init>()V

    return-void
.end method

.method public static final synthetic a(Landroid/app/Activity;LHz0;)V
    .locals 2

    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 30
    iget-object p1, p1, LHz0;->a:Ljava/lang/String;

    const-string v1, "AddLanguageFragment.NewLanguage"

    .line 31
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 32
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0e0026

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, ""

    .line 2
    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->v0:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p2

    const p3, 0x7f0b022e

    .line 4
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/support/v7/widget/RecyclerView;

    iput-object p3, p0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->w0:Landroid/support/v7/widget/RecyclerView;

    .line 5
    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p3, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->w0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/RecyclerView;->a(LQg;)V

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->w0:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Llf;

    .line 8
    iget p3, p3, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    .line 9
    invoke-direct {v1, p2, p3}, Llf;-><init>(Landroid/content/Context;I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(LLg;)V

    .line 11
    invoke-static {}, LTz0;->b()LTz0;

    move-result-object p3

    .line 12
    iget-object v0, p3, LTz0;->a:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    if-eqz v0, :cond_2

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-static {v0, v1}, LJ/N;->MvHhqYkm(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object p3, p3, LTz0;->b:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LHz0;

    .line 17
    iget-object v3, v2, LHz0;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_1
    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->y0:Ljava/util/List;

    .line 20
    new-instance p3, LCz0;

    invoke-direct {p3, p2}, LCz0;-><init>(Landroid/app/Activity;)V

    iput-object p3, p0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->z0:LJz0;

    .line 21
    new-instance p3, LFz0;

    invoke-direct {p3, p0, p2}, LFz0;-><init>(Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;Landroid/content/Context;)V

    iput-object p3, p0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->x0:LFz0;

    .line 22
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->w0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->a(LBg;)V

    .line 23
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->x0:LFz0;

    iget-object p3, p0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->y0:Ljava/util/List;

    invoke-virtual {p2, p3}, LOz0;->a(Ljava/util/List;)V

    .line 24
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->w0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    iget-object p3, p0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->w0:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f0b03df

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 26
    new-instance v1, Lwy0;

    invoke-direct {v1, p3, v0}, Lwy0;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 27
    invoke-virtual {p2, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    .line 28
    throw p1
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 34
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0f0004

    .line 35
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0b039f

    .line 36
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SearchView;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->u0:Landroid/support/v7/widget/SearchView;

    .line 37
    iget-object p1, p1, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/high16 p2, 0x2000000

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 38
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->u0:Landroid/support/v7/widget/SearchView;

    new-instance p2, LDz0;

    invoke-direct {p2, p0}, LDz0;-><init>(Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;)V

    .line 39
    iput-object p2, p1, Landroid/support/v7/widget/SearchView;->i0:Lvh;

    .line 40
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;->u0:Landroid/support/v7/widget/SearchView;

    new-instance p2, LEz0;

    invoke-direct {p2, p0}, LEz0;-><init>(Lorg/chromium/chrome/browser/preferences/languages/AddLanguageFragment;)V

    .line 41
    iput-object p2, p1, Landroid/support/v7/widget/SearchView;->h0:Lwh;

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lz2;->b(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const v0, 0x7f1304f5

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lz2;->c(Z)V

    const-string v0, "LanguageSettings.PageImpression"

    const/4 v1, 0x2

    .line 4
    invoke-static {v0, p1, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method
