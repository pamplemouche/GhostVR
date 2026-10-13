.class public Lhr0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcs0;


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

.field public final synthetic b:I

.field public final synthetic c:Lmr0;


# direct methods
.method public constructor <init>(Lmr0;Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhr0;->c:Lmr0;

    iput-object p2, p0, Lhr0;->a:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    iput p3, p0, Lhr0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lhr0;->c:Lmr0;

    .line 2
    iget-object v1, v0, Lmr0;->K:Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a(Z)V

    .line 3
    :cond_0
    invoke-virtual {v0}, Lmr0;->b()V

    return-void
.end method

.method public b()V
    .locals 10

    .line 1
    iget-object v0, p0, Lhr0;->c:Lmr0;

    iget-object v1, p0, Lhr0;->a:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    iget v2, p0, Lhr0;->b:I

    if-eqz v0, :cond_8

    const-string v3, "MobileOmniboxDeleteGesture"

    .line 2
    invoke-static {v3}, LhV;->a(Ljava/lang/String;)V

    .line 3
    iget-boolean v3, v1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->o:Z

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    iget-object v3, v0, Lmr0;->c0:Lorg/chromium/ui/base/WindowAndroid;

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    invoke-virtual {v3}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    if-eqz v3, :cond_7

    .line 6
    instance-of v4, v3, LBg0;

    if-nez v4, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    check-cast v3, LBg0;

    .line 8
    iget-object v3, v3, LBg0;->R:LBd1;

    if-nez v3, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    new-instance v4, Ljr0;

    invoke-direct {v4, v0, v2, v1, v3}, Ljr0;-><init>(Lmr0;ILorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;LBd1;)V

    .line 10
    iget-object v2, v0, Lmr0;->w:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f13044d

    .line 11
    iget v6, v1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a:I

    const/16 v7, 0x13

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v6, v7, :cond_5

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_5

    const/16 v7, 0x1b

    if-ne v6, v7, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_6

    const v5, 0x7f13044e

    .line 12
    :cond_6
    new-instance v6, LXd1;

    sget-object v7, LEd1;->q:[LUd1;

    invoke-direct {v6, v7}, LXd1;-><init>([LUd1;)V

    sget-object v7, LEd1;->a:Lfe1;

    .line 13
    invoke-virtual {v6, v7, v4}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object v4, LEd1;->c:Lke1;

    .line 14
    iget-object v1, v1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {v6, v4, v1}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object v1, LEd1;->e:Lke1;

    .line 16
    invoke-virtual {v6, v1, v2, v5}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object v1, LEd1;->g:Lke1;

    const v4, 0x7f130443

    .line 17
    invoke-virtual {v6, v1, v2, v4}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object v1, LEd1;->j:Lke1;

    const v4, 0x7f1301d4

    .line 18
    invoke-virtual {v6, v1, v2, v4}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object v1, LEd1;->m:Lhe1;

    .line 19
    invoke-virtual {v6, v1, v8}, LXd1;->a(Lce1;Z)LXd1;

    .line 20
    invoke-virtual {v6}, LXd1;->a()Lle1;

    move-result-object v1

    .line 21
    invoke-virtual {v0, v9}, Lmr0;->a(Z)V

    .line 22
    invoke-virtual {v3, v1, v9, v9}, LBd1;->a(Lle1;IZ)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    const/4 v0, 0x0

    .line 23
    throw v0
.end method

.method public c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lhr0;->c:Lmr0;

    iget-object v1, p0, Lhr0;->a:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v2}, Lmr0;->a(Z)V

    .line 3
    iget-boolean v3, v1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->b:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 4
    iget-object v1, v1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->h:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    aput-object v1, v5, v2

    const-string v1, " "

    aput-object v1, v5, v4

    .line 5
    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_0
    iget-object v2, v0, Lmr0;->x:Lbr0;

    invoke-interface {v2, v1}, Lhs0;->d(Ljava/lang/String;)V

    .line 7
    iget-object v1, v0, Lmr0;->y:LOp0;

    check-cast v1, LMp0;

    invoke-virtual {v1}, LMp0;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lmr0;->y:LOp0;

    .line 8
    check-cast v2, LMp0;

    invoke-virtual {v2}, LMp0;->a()Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Lmr0;->a(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    const-string v0, "MobileOmniboxRefineSuggestion.Url"

    .line 10
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "MobileOmniboxRefineSuggestion.Search"

    .line 11
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lhr0;->c:Lmr0;

    iget-object v1, p0, Lhr0;->a:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    iget v2, p0, Lhr0;->b:I

    .line 2
    invoke-virtual {v0, v1, v2}, Lmr0;->b(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;I)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lhr0;->c:Lmr0;

    .line 2
    iget-boolean v1, v0, Lmr0;->W:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lmr0;->W:Z

    .line 4
    iget-object v1, p0, Lhr0;->a:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    .line 5
    iget-object v0, v0, Lmr0;->x:Lbr0;

    .line 6
    iget-object v1, v1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->h:Ljava/lang/String;

    .line 7
    invoke-interface {v0, v1}, Lhs0;->d(Ljava/lang/String;)V

    return-void
.end method
