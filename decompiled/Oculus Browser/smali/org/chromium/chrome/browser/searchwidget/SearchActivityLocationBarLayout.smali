.class public Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;
.super Lep0;
.source "PG"


# instance fields
.field public V:LmD0;

.field public W:Z

.field public a0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0e00fb

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lep0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iget-object p1, p0, Lep0;->A:LMp0;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, LMp0;->b:LQp0;

    .line 4
    iget-object p2, p1, LQp0;->w:Lle1;

    sget-object v0, LTp0;->b:Lhe1;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lle1;->a(Lhe1;Z)V

    .line 5
    iget-object p2, p1, LQp0;->w:Lle1;

    sget-object v0, LTp0;->f:Lhe1;

    iget-boolean p1, p1, LQp0;->y:Z

    invoke-virtual {p2, v0, p1}, Lle1;->a(Lhe1;Z)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/locale/LocaleManager;->getInstance()Lorg/chromium/chrome/browser/locale/LocaleManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/locale/LocaleManager;->a()Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;->W:Z

    .line 8
    iget-object p2, p0, Lep0;->B:LPq0;

    .line 9
    check-cast p2, Lar0;

    .line 10
    iget-object p2, p2, Lar0;->x:Lmr0;

    .line 11
    iput-boolean p1, p2, Lmr0;->T:Z

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;)LKp0;
    .locals 0

    .line 1
    iget-object p0, p0, Lep0;->y:LKp0;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;IJ)V
    .locals 0

    .line 2
    iget-object p2, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;->V:LmD0;

    invoke-interface {p2, p1}, LmD0;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/locale/LocaleManager;->getInstance()Lorg/chromium/chrome/browser/locale/LocaleManager;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lep0;->d(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lep0;->e(Z)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;->V:LmD0;

    invoke-interface {v0}, LmD0;->f()V

    return-void
.end method

.method public final f(Z)V
    .locals 29

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lep0;->S:Lsp0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lsp0;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, v0, Lep0;->S:Lsp0;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lsp0;->a(I)V

    goto/16 :goto_2

    .line 4
    :cond_0
    iget-object v1, v0, Lep0;->y:LKp0;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lep0;->y:LKp0;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 5
    :cond_1
    iget-object v1, v0, Lep0;->B:LPq0;

    .line 6
    check-cast v1, Lar0;

    .line 7
    iget-object v1, v1, Lar0;->x:Lmr0;

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, v1, Lmr0;->S:Z

    .line 9
    iget-object v1, v1, Lmr0;->K:Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;

    .line 10
    iput-boolean v2, v1, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->e:Z

    .line 11
    sget-object v3, LyT;->a:Landroid/content/SharedPreferences;

    const/4 v4, -0x1

    const-string v5, "zero_suggest_list_size"

    .line 12
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const-string v7, ""

    if-le v5, v2, :cond_3

    .line 13
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v8, Lnr0;

    const/4 v14, 0x0

    invoke-direct {v8, v14, v14}, Lnr0;-><init>(II)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v5, :cond_3

    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zero_suggest_answer_text"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    move/from16 v26, v13

    move-object/from16 v28, v15

    const/16 v27, 0x0

    goto/16 :goto_1

    .line 18
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zero_suggest_url"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 19
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zero_suggest_display_text"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 20
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zero_suggest_description"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 21
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "zero_suggest_native_type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v8, "zero_suggest_is_search"

    .line 22
    invoke-interface {v3, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 23
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "zero_suggest_is_starred"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 24
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "zero_suggest_is_deletable"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 25
    invoke-interface {v3, v10, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 26
    new-instance v12, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    xor-int/lit8 v10, v8, 0x1

    const/4 v11, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const-string v25, ""

    move-object v8, v12

    move-object v2, v12

    move/from16 v12, v18

    move/from16 v26, v13

    move-object/from16 v13, v16

    const/16 v27, 0x0

    move-object v14, v15

    move-object/from16 v28, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v28

    move-object/from16 v17, v20

    move-object/from16 v18, v25

    move-object/from16 v20, v21

    move-object/from16 v21, v24

    invoke-direct/range {v8 .. v23}, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;-><init>(IZIILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lorg/chromium/components/omnibox/SuggestionAnswer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 27
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v13, v26, 0x1

    move-object/from16 v15, v28

    const/4 v2, 0x1

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_3
    if-eqz v6, :cond_4

    .line 28
    iget-object v1, v1, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->c:LOq0;

    check-cast v1, Lmr0;

    invoke-virtual {v1, v6, v7}, Lmr0;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 29
    :cond_4
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, LlD0;

    invoke-direct {v2, v0}, LlD0;-><init>(Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void
.end method

.method public g(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lep0;->B:LPq0;

    .line 2
    check-cast v0, Lar0;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->nativePrefetchZeroSuggestResults()V

    .line 4
    iget-object v0, p0, Lep0;->S:Lsp0;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lsp0;->a()Z

    move-result v0

    .line 6
    invoke-static {}, LrD0;->a()LpD0;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    sget-object v3, LyT;->a:Landroid/content/SharedPreferences;

    const-string v4, "org.chromium.chrome.browser.searchwidget.IS_VOICE_SEARCH_AVAILABLE"

    .line 8
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eq v5, v0, :cond_1

    .line 9
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10
    invoke-static {v1}, LrD0;->a([I)V

    goto :goto_0

    .line 11
    :cond_0
    throw v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 12
    iget-object v1, p0, Lep0;->y:LKp0;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-super {p0, v2}, Lep0;->d(Z)V

    .line 14
    invoke-virtual {p0, v0}, Lep0;->e(Z)V

    .line 15
    :cond_2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;->W:Z

    .line 16
    iget-object v1, p0, Lep0;->B:LPq0;

    .line 17
    check-cast v1, Lar0;

    .line 18
    iget-object v1, v1, Lar0;->x:Lmr0;

    .line 19
    iput-boolean v0, v1, Lmr0;->T:Z

    .line 20
    iget-object v1, p0, Lep0;->A:LMp0;

    invoke-virtual {v1}, LMp0;->a()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 22
    iget-object v1, p0, Lep0;->B:LPq0;

    iget-object v2, p0, Lep0;->A:LMp0;

    .line 23
    invoke-virtual {v2}, LMp0;->b()Ljava/lang/String;

    move-result-object v2

    .line 24
    check-cast v1, Lar0;

    .line 25
    iget-object v1, v1, Lar0;->x:Lmr0;

    invoke-virtual {v1, v2}, Lmr0;->a(Ljava/lang/String;)V

    .line 26
    :cond_3
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;->a0:Z

    if-eqz v1, :cond_4

    .line 27
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;->f(Z)V

    .line 28
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/searchwidget/SearchActivityLocationBarLayout;->a0:Z

    :cond_4
    return-void

    .line 29
    :cond_5
    throw v1
.end method

.method public w()V
    .locals 2

    .line 1
    invoke-super {p0}, Lep0;->w()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p0, v0}, Lep0;->a(F)V

    const v0, 0x7f0b04d0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
