.class public Lxr0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxr0;->a:Ljava/util/List;

    const v0, 0x3e99999a    # 0.3f

    .line 3
    iput v0, p0, Lxr0;->b:F

    const v0, 0x3f4ccccd    # 0.8f

    .line 4
    iput v0, p0, Lxr0;->c:F

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lqp0;F)V
    .locals 20

    move-object/from16 v0, p2

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    .line 2
    iget-object v2, v2, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->c:Ljava/lang/String;

    .line 3
    iget-object v4, v0, Lqp0;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget v1, v0, Lqp0;->b:F

    cmpg-float v2, v1, p3

    if-gez v2, :cond_3

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v1

    .line 7
    iget-object v2, v0, Lqp0;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2}, Lorg/chromium/components/search_engines/TemplateUrlService;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 9
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v1, Lnr0;

    invoke-direct {v1, v3, v3}, Lnr0;-><init>(II)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    const/16 v5, 0x14

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 12
    iget-object v9, v0, Lqp0;->a:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v4, v1

    move-object v10, v12

    .line 13
    invoke-direct/range {v4 .. v19}, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;-><init>(IZIILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lorg/chromium/components/omnibox/SuggestionAnswer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, p1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
