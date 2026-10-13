.class public Lzr0;
.super LJr0;
.source "PG"


# instance fields
.field public final A:LTr0;

.field public final B:LOp0;

.field public C:LIe0;

.field public final y:Ljava/util/Map;

.field public final z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;LTr0;LOp0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LJr0;-><init>(Landroid/content/Context;LTr0;)V

    .line 2
    iput-object p1, p0, Lzr0;->z:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lzr0;->A:LTr0;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lzr0;->y:Ljava/util/Map;

    .line 5
    iput-object p3, p0, Lzr0;->B:LOp0;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;)Lle1;
    .locals 1

    .line 1
    new-instance p1, Lle1;

    sget-object v0, LBr0;->h:[LUd1;

    invoke-direct {p1, v0}, Lle1;-><init>([LUd1;)V

    return-object p1
.end method

.method public a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;Lle1;)V
    .locals 0

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;Lle1;I)V
    .locals 8

    .line 2
    invoke-super {p0, p1, p2, p3}, LJr0;->a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;Lle1;I)V

    .line 3
    iget-object p3, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->g:Lorg/chromium/components/omnibox/SuggestionAnswer;

    .line 4
    iget-object p3, p0, Lzr0;->z:Landroid/content/Context;

    iget-object v0, p0, Lzr0;->B:LOp0;

    .line 5
    check-cast v0, LMp0;

    invoke-virtual {v0}, LMp0;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [LCr0;

    .line 6
    iget-object v3, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->g:Lorg/chromium/components/omnibox/SuggestionAnswer;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 7
    new-instance v3, LDr0;

    invoke-direct {v3, p3, v0, v5}, LDr0;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    aput-object v3, v2, v4

    .line 8
    new-instance v0, LDr0;

    .line 9
    iget-object v3, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->c:Ljava/lang/String;

    .line 10
    invoke-direct {v0, p3, v3, v4}, LDr0;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    aput-object v0, v2, v5

    goto :goto_0

    .line 11
    :cond_0
    iget v0, v3, Lorg/chromium/components/omnibox/SuggestionAnswer;->a:I

    if-ne v0, v5, :cond_1

    .line 12
    new-instance v6, LDr0;

    .line 13
    iget-object v7, v3, Lorg/chromium/components/omnibox/SuggestionAnswer;->b:Lorg/chromium/components/omnibox/SuggestionAnswer$ImageLine;

    .line 14
    invoke-direct {v6, p3, v0, v7, v5}, LDr0;-><init>(Landroid/content/Context;ILorg/chromium/components/omnibox/SuggestionAnswer$ImageLine;Z)V

    aput-object v6, v2, v4

    .line 15
    new-instance v0, LDr0;

    .line 16
    iget v6, v3, Lorg/chromium/components/omnibox/SuggestionAnswer;->a:I

    .line 17
    iget-object v3, v3, Lorg/chromium/components/omnibox/SuggestionAnswer;->c:Lorg/chromium/components/omnibox/SuggestionAnswer$ImageLine;

    .line 18
    invoke-direct {v0, p3, v6, v3, v4}, LDr0;-><init>(Landroid/content/Context;ILorg/chromium/components/omnibox/SuggestionAnswer$ImageLine;Z)V

    aput-object v0, v2, v5

    .line 19
    aget-object p3, v2, v4

    iput v5, p3, LCr0;->f:I

    goto :goto_0

    .line 20
    :cond_1
    new-instance v6, LDr0;

    .line 21
    iget-object v7, v3, Lorg/chromium/components/omnibox/SuggestionAnswer;->c:Lorg/chromium/components/omnibox/SuggestionAnswer$ImageLine;

    .line 22
    invoke-direct {v6, p3, v0, v7, v5}, LDr0;-><init>(Landroid/content/Context;ILorg/chromium/components/omnibox/SuggestionAnswer$ImageLine;Z)V

    aput-object v6, v2, v4

    .line 23
    new-instance v0, LDr0;

    .line 24
    iget v6, v3, Lorg/chromium/components/omnibox/SuggestionAnswer;->a:I

    .line 25
    iget-object v3, v3, Lorg/chromium/components/omnibox/SuggestionAnswer;->b:Lorg/chromium/components/omnibox/SuggestionAnswer$ImageLine;

    .line 26
    invoke-direct {v0, p3, v6, v3, v4}, LDr0;-><init>(Landroid/content/Context;ILorg/chromium/components/omnibox/SuggestionAnswer$ImageLine;Z)V

    aput-object v0, v2, v5

    .line 27
    aget-object p3, v2, v5

    iput v5, p3, LCr0;->f:I

    .line 28
    aget-object p3, v2, v5

    iget-object p3, p3, LCr0;->d:Ljava/lang/String;

    .line 29
    aget-object v0, v2, v5

    aget-object v3, v2, v4

    iget-object v3, v3, LCr0;->d:Ljava/lang/String;

    iput-object v3, v0, LCr0;->d:Ljava/lang/String;

    .line 30
    aget-object v0, v2, v4

    iput-object p3, v0, LCr0;->d:Ljava/lang/String;

    .line 31
    :goto_0
    sget-object p3, LBr0;->b:Lke1;

    aget-object v0, v2, v4

    iget-object v0, v0, LCr0;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2, p3, v0}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 32
    sget-object p3, LBr0;->e:Lke1;

    aget-object v0, v2, v5

    iget-object v0, v0, LCr0;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2, p3, v0}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 33
    sget-object p3, LBr0;->c:Lke1;

    aget-object v0, v2, v4

    iget-object v0, v0, LCr0;->d:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 34
    sget-object p3, LBr0;->f:Lke1;

    aget-object v0, v2, v5

    iget-object v0, v0, LCr0;->d:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 35
    sget-object p3, LBr0;->a:Lje1;

    aget-object v0, v2, v4

    iget v0, v0, LCr0;->f:I

    invoke-virtual {p2, p3, v0}, Lle1;->a(Lje1;I)V

    .line 36
    sget-object p3, LBr0;->d:Lje1;

    aget-object v0, v2, v5

    iget v0, v0, LCr0;->f:I

    invoke-virtual {p2, p3, v0}, Lle1;->a(Lje1;I)V

    .line 37
    iget-object p3, p0, Lzr0;->z:Landroid/content/Context;

    .line 38
    iget-object v0, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->g:Lorg/chromium/components/omnibox/SuggestionAnswer;

    if-eqz v0, :cond_4

    .line 39
    iget v0, v0, Lorg/chromium/components/omnibox/SuggestionAnswer;->a:I

    const v2, 0x7f08013f

    if-eq v0, v5, :cond_3

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const v2, 0x7f080168

    goto :goto_1

    :pswitch_1
    const v2, 0x7f080131

    goto :goto_1

    :pswitch_2
    const v2, 0x7f08025a

    goto :goto_1

    :pswitch_3
    const v2, 0x7f08025b

    goto :goto_1

    :pswitch_4
    const v2, 0x7f080234

    goto :goto_1

    :cond_2
    const v2, 0x7f08021f

    goto :goto_1

    :cond_3
    const v2, 0x7f080105

    goto :goto_1

    :cond_4
    const v2, 0x7f080128

    .line 40
    :goto_1
    new-instance v0, LPr0;

    invoke-static {p3, v2}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {v0, p3}, LPr0;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 41
    iput-boolean v5, v0, LPr0;->c:Z

    .line 42
    invoke-virtual {v0}, LPr0;->a()LQr0;

    move-result-object p3

    .line 43
    sget-object v0, LKr0;->a:Lke1;

    invoke-virtual {p2, v0, p3}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 44
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 45
    iget-object p3, p0, Lzr0;->A:LTr0;

    check-cast p3, Lmr0;

    .line 46
    iget-object p3, p3, Lmr0;->H:LSJ0;

    if-eqz p3, :cond_5

    invoke-interface {p3}, LSJ0;->c()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p3

    goto :goto_2

    :cond_5
    const/4 p3, 0x0

    :goto_2
    if-nez p3, :cond_6

    goto :goto_3

    .line 47
    :cond_6
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a()Z

    move-result p3

    if-nez p3, :cond_7

    goto :goto_3

    .line 48
    :cond_7
    iget-object p1, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->g:Lorg/chromium/components/omnibox/SuggestionAnswer;

    .line 49
    iget-object p1, p1, Lorg/chromium/components/omnibox/SuggestionAnswer;->c:Lorg/chromium/components/omnibox/SuggestionAnswer$ImageLine;

    .line 50
    iget-object v3, p1, Lorg/chromium/components/omnibox/SuggestionAnswer$ImageLine;->d:Ljava/lang/String;

    if-nez v3, :cond_8

    goto :goto_3

    .line 51
    :cond_8
    iget-object p1, p0, Lzr0;->y:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 52
    iget-object p1, p0, Lzr0;->y:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 53
    :cond_9
    iget-object p1, p0, Lzr0;->C:LIe0;

    if-nez p1, :cond_a

    .line 54
    sget-object p1, LjZ;->a:LCT;

    const p3, 0x7d000

    .line 55
    invoke-static {}, LKe0;->a()LKe0;

    move-result-object v0

    invoke-static {v1, v0, p1, p3}, LLe0;->a(ILKe0;LCT;I)LIe0;

    move-result-object p1

    .line 56
    iput-object p1, p0, Lzr0;->C:LIe0;

    .line 57
    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p2, p0, Lzr0;->y:Ljava/util/Map;

    invoke-interface {p2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v2, p0, Lzr0;->C:LIe0;

    new-instance v7, Lyr0;

    invoke-direct {v7, p0, v3}, Lyr0;-><init>(Lzr0;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "AnswerSuggestions"

    .line 61
    invoke-virtual/range {v2 .. v7}, LIe0;->a(Ljava/lang/String;Ljava/lang/String;IILorg/chromium/base/Callback;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;Lle1;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->g:Lorg/chromium/components/omnibox/SuggestionAnswer;

    .line 3
    iget p1, p1, Lorg/chromium/components/omnibox/SuggestionAnswer;->a:I

    const/16 p2, 0xd

    const-string v0, "Omnibox.AnswerInSuggestShown"

    .line 4
    invoke-static {v0, p1, p2}, LfV;->a(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
