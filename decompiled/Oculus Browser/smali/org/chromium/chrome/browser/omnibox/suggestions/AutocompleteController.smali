.class public Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J

.field public b:J

.field public final c:LOq0;

.field public final d:Lxr0;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(LOq0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lxr0;

    invoke-direct {v0}, Lxr0;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->d:Lxr0;

    .line 3
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->c:LOq0;

    return-void
.end method

.method public static addOmniboxSuggestionToList(Ljava/util/List;Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static buildOmniboxSuggestion(IZIILjava/lang/String;[I[ILjava/lang/String;[I[ILorg/chromium/components/omnibox/SuggestionAnswer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;
    .locals 17

    move-object/from16 v0, p5

    move-object/from16 v1, p8

    .line 1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 3
    new-instance v4, Lnr0;

    aget v5, v0, v3

    aget v7, p6, v3

    invoke-direct {v4, v5, v7}, Lnr0;-><init>(II)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :goto_1
    array-length v0, v1

    if-ge v2, v0, :cond_1

    .line 6
    new-instance v0, Lnr0;

    aget v3, v1, v2

    aget v4, p9, v2

    invoke-direct {v0, v3, v4}, Lnr0;-><init>(II)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v16, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    move-object/from16 v0, v16

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p7

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move/from16 v14, p15

    move/from16 v15, p16

    invoke-direct/range {v0 .. v15}, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;-><init>(IZIILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lorg/chromium/components/omnibox/SuggestionAnswer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v16
.end method

.method public static createOmniboxSuggestionList(I)Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static isEquivalentOmniboxSuggestion(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->hashCode()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private native nativeClassify(JLjava/lang/String;Z)Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;
.end method

.method private native nativeDeleteSuggestion(JII)V
.end method

.method private native nativeOnOmniboxFocused(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private native nativeOnSuggestionSelected(JIILjava/lang/String;IJILorg/chromium/content_public/browser/WebContents;)V
.end method

.method public static native nativePrefetchZeroSuggestResults()V
.end method

.method public static native nativeQualifyPartialURLQuery(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeResetSession(J)V
.end method

.method private native nativeStart(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZZ)V
.end method

.method private native nativeStop(JZ)V
.end method

.method private native nativeUpdateMatchDestinationURLWithQueryFormulationTime(JIIJ)Ljava/lang/String;
.end method

.method private notifyNativeDestroyed()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a:J

    return-void
.end method


# virtual methods
.method public a(IIJ)Ljava/lang/String;
    .locals 7

    .line 41
    iget-wide v1, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->nativeUpdateMatchDestinationURLWithQueryFormulationTime(JIIJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Z)Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;
    .locals 5

    .line 8
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 9
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->nativeClassify(JLjava/lang/String;Z)Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 5

    .line 36
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 37
    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->nativeResetSession(J)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 5

    .line 38
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 39
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->nativeDeleteSuggestion(JII)V

    :cond_0
    return-void
.end method

.method public a(IIILjava/lang/String;IJILorg/chromium/content_public/browser/WebContents;)V
    .locals 12

    const/16 v0, 0x14

    move v1, p3

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 40
    iget-wide v2, v0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->nativeOnSuggestionSelected(JIILjava/lang/String;IJILorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 14

    move-object v12, p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v13, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v13

    .line 2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "cr_Autocomplete"

    const-string v2, "starting autocomplete controller..[%b][%b]"

    .line 3
    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 4
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J

    move-result-wide v1

    iput-wide v1, v12, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p6

    .line 6
    invoke-direct/range {v0 .. v11}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->nativeStart(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZZ)V

    .line 7
    iput-boolean v13, v12, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->f:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_6

    .line 10
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 11
    :cond_0
    invoke-static {p3}, LMm0;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 12
    invoke-static {}, Li00;->a()Li00;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 13
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 14
    sget-object v2, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 15
    iget-boolean v2, v2, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "OmniboxSpareRenderer"

    .line 16
    invoke-static {v2}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 18
    iget-object v2, v0, Li00;->e:Lorg/chromium/content_public/browser/WebContents;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    .line 19
    invoke-virtual {v0, v2}, Li00;->a(I)V

    .line 20
    iget-object v2, v0, Li00;->e:Lorg/chromium/content_public/browser/WebContents;

    iget-object v3, v0, Li00;->g:Lh00;

    invoke-interface {v2, v3}, Lorg/chromium/content_public/browser/WebContents;->b(Lg11;)V

    .line 21
    iget-object v2, v0, Li00;->e:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v2}, Lorg/chromium/content_public/browser/WebContents;->destroy()V

    .line 22
    iput-object v1, v0, Li00;->e:Lorg/chromium/content_public/browser/WebContents;

    .line 23
    iput-object v1, v0, Li00;->g:Lh00;

    .line 24
    :goto_0
    invoke-static {p1}, LJ/N;->M8gRDwVJ(Ljava/lang/Object;)V

    goto :goto_1

    .line 25
    :cond_3
    throw v1

    .line 26
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_6

    .line 27
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->e:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->f:Z

    .line 28
    :cond_5
    iget-wide v1, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a:J

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->nativeOnOmniboxFocused(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public a(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->d:Lxr0;

    .line 30
    iget-object v0, v0, Lxr0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->b:J

    const/4 v2, 0x0

    .line 32
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->f:Z

    .line 33
    iget-wide v3, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a:J

    cmp-long v5, v3, v0

    if-eqz v5, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "cr_Autocomplete"

    const-string v2, "stopping autocomplete."

    .line 34
    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-wide v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->nativeStop(JZ)V

    :cond_1
    return-void
.end method

.method public native nativeInit(Lorg/chromium/chrome/browser/profiles/Profile;)J
.end method

.method public onSuggestionsReceived(Ljava/util/List;Ljava/lang/String;J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->d:Lxr0;

    .line 2
    iget-object v1, v0, Lxr0;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_0
    iget-object v3, v0, Lxr0;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqp0;

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v0, v1, v3, v4}, Lxr0;->a(Ljava/util/List;Lqp0;F)V

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget v3, v3, Lqp0;->b:F

    .line 10
    iget v4, v0, Lxr0;->c:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    const/4 v3, 0x1

    .line 11
    :goto_1
    iget-object v4, v0, Lxr0;->a:Ljava/util/List;

    .line 12
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v5, p1, 0x3

    if-ge v4, v5, :cond_2

    .line 14
    iget-object v4, v0, Lxr0;->a:Ljava/util/List;

    .line 15
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqp0;

    iget v5, v0, Lxr0;->b:F

    .line 16
    invoke-virtual {v0, v1, v4, v5}, Lxr0;->a(Ljava/util/List;Lqp0;F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object p1, v1

    .line 17
    :cond_3
    iput-wide p3, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->b:J

    .line 18
    iget-object p3, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->c:LOq0;

    check-cast p3, Lmr0;

    invoke-virtual {p3, p1, p2}, Lmr0;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 19
    iget-boolean p2, p0, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->f:Z

    if-eqz p2, :cond_5

    .line 20
    sget-object p2, LyT;->a:Landroid/content/SharedPreferences;

    .line 21
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const-string p4, "zero_suggest_list_size"

    invoke-interface {p2, p4, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    .line 24
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    .line 25
    iget-object p4, p3, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->g:Lorg/chromium/components/omnibox/SuggestionAnswer;

    if-eqz p4, :cond_4

    goto :goto_3

    :cond_4
    const-string p4, "zero_suggest_url"

    .line 26
    invoke-static {p4, v2}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    .line 27
    iget-object v0, p3, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->i:Ljava/lang/String;

    .line 28
    invoke-interface {p2, p4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    const-string v0, "zero_suggest_display_text"

    invoke-static {v0, v2}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 29
    iget-object v1, p3, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->c:Ljava/lang/String;

    .line 30
    invoke-interface {p4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    const-string v0, "zero_suggest_description"

    invoke-static {v0, v2}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 31
    iget-object v1, p3, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->e:Ljava/lang/String;

    .line 32
    invoke-interface {p4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    const-string v0, "zero_suggest_native_type"

    invoke-static {v0, v2}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 33
    iget v1, p3, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a:I

    .line 34
    invoke-interface {p4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    const-string v0, "zero_suggest_is_search"

    invoke-static {v0, v2}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-boolean v1, p3, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->b:Z

    xor-int/lit8 v1, v1, 0x1

    xor-int/lit8 v1, v1, 0x1

    .line 36
    invoke-interface {p4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    const-string v0, "zero_suggest_is_deletable"

    invoke-static {v0, v2}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p3, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->o:Z

    .line 37
    invoke-interface {p4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    const-string v0, "zero_suggest_is_starred"

    invoke-static {v0, v2}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-boolean p3, p3, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->n:Z

    .line 38
    invoke-interface {p4, v0, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 39
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
