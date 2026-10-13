.class public Lns0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lwr0;


# instance fields
.field public final w:LTr0;

.field public final x:Ljava/util/Map;

.field public final y:I

.field public z:LIe0;


# direct methods
.method public constructor <init>(Landroid/content/Context;LTr0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lns0;->w:LTr0;

    .line 3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lns0;->x:Ljava/util/Map;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070223

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lns0;->y:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;)Lle1;
    .locals 1

    .line 1
    new-instance p1, Lle1;

    sget-object v0, Lxs0;->g:[LUd1;

    invoke-direct {p1, v0}, Lle1;-><init>([LUd1;)V

    return-object p1
.end method

.method public a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;Lle1;)V
    .locals 0

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;Lle1;I)V
    .locals 9

    .line 2
    sget-object v0, Lxs0;->d:Lke1;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lns0;->w:LTr0;

    .line 4
    check-cast v0, Lmr0;

    if-eqz v0, :cond_5

    .line 5
    new-instance v1, Lhr0;

    invoke-direct {v1, v0, p1, p3}, Lhr0;-><init>(Lmr0;Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;I)V

    .line 6
    sget-object p3, Lorg/chromium/base/SysUtils;->b:Ljava/lang/Integer;

    if-nez p3, :cond_0

    .line 7
    invoke-static {}, Lorg/chromium/base/SysUtils;->a()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sput-object p3, Lorg/chromium/base/SysUtils;->b:Ljava/lang/Integer;

    .line 8
    :cond_0
    sget-object p3, Lorg/chromium/base/SysUtils;->b:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/high16 v0, 0x180000

    if-lt p3, v0, :cond_4

    .line 9
    iget-object p3, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->k:Ljava/lang/String;

    .line 10
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 11
    :try_start_0
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Failed to parse dominant color: "

    .line 12
    invoke-static {v0, p3}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "EntitySP"

    invoke-static {v3, p3, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_1
    :goto_0
    sget-object p3, Lxs0;->e:Lje1;

    invoke-virtual {p2, p3, v2}, Lle1;->a(Lje1;I)V

    .line 14
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 15
    iget-object v4, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->j:Ljava/lang/String;

    .line 16
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    iget-object p3, p0, Lns0;->x:Ljava/util/Map;

    invoke-interface {p3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 18
    iget-object p3, p0, Lns0;->x:Ljava/util/Map;

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lns0;->x:Ljava/util/Map;

    invoke-interface {v0, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v3, p0, Lns0;->z:LIe0;

    iget v7, p0, Lns0;->y:I

    new-instance v8, Lms0;

    invoke-direct {v8, p0, v4}, Lms0;-><init>(Lns0;Ljava/lang/String;)V

    const-string v5, "EntitySuggestions"

    move v6, v7

    invoke-virtual/range {v3 .. v8}, LIe0;->a(Ljava/lang/String;Ljava/lang/String;IILorg/chromium/base/Callback;)V

    .line 23
    :cond_4
    :goto_1
    sget-object p3, Lxs0;->b:Lke1;

    .line 24
    iget-object v0, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->c:Ljava/lang/String;

    .line 25
    invoke-virtual {p2, p3, v0}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 26
    sget-object p3, Lxs0;->c:Lke1;

    .line 27
    iget-object p1, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->e:Ljava/lang/String;

    .line 28
    invoke-virtual {p2, p3, p1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 29
    sget-object p1, Lxs0;->a:Lke1;

    invoke-virtual {p2, p1, v1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    return-void

    .line 30
    :cond_5
    throw v1
.end method

.method public b(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;Lle1;)V
    .locals 1

    .line 1
    sget-object p1, Lxs0;->d:Lke1;

    invoke-virtual {p2, p1}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lxs0;->e:Lje1;

    invoke-virtual {p2, p1}, Lle1;->a(Lee1;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string p2, "Omnibox.RichEntity.DecorationType"

    const/4 v0, 0x3

    .line 3
    invoke-static {p2, p1, v0}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method
