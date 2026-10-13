.class public LSr0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lwr0;


# instance fields
.field public A:Z

.field public final B:I

.field public final w:Landroid/content/Context;

.field public final x:LTr0;

.field public final y:LOp0;

.field public z:LIa0;


# direct methods
.method public constructor <init>(Landroid/content/Context;LTr0;LOp0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LSr0;->w:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070224

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, LSr0;->B:I

    .line 4
    iput-object p2, p0, LSr0;->x:LTr0;

    .line 5
    iput-object p3, p0, LSr0;->y:LOp0;

    return-void
.end method

.method public static a(Landroid/text/Spannable;Ljava/util/List;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnr0;

    .line 84
    iget v3, v2, Lnr0;->b:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    .line 85
    iget v1, v2, Lnr0;->a:I

    .line 86
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    if-ne v0, v2, :cond_0

    .line 87
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 88
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnr0;

    iget v2, v2, Lnr0;->a:I

    .line 89
    :goto_1
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 90
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 91
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-interface {p0, v3, v1, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;ZZ)Landroid/text/Spannable;
    .locals 5

    .line 60
    iget-object v0, p0, LSr0;->y:LOp0;

    check-cast v0, LMp0;

    invoke-virtual {v0}, LMp0;->b()Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 61
    iget-object p2, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->i:Ljava/lang/String;

    .line 62
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 63
    iget-object p2, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->e:Ljava/lang/String;

    .line 64
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 65
    iget-object p2, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->e:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->f:Ljava/util/List;

    goto :goto_0

    .line 67
    :cond_0
    iget-object p2, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->c:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->d:Ljava/util/List;

    :goto_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance p2, Lnr0;

    invoke-direct {p2, v1, v1}, Lnr0;-><init>(II)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, ""

    .line 71
    :cond_1
    iget v2, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 72
    iget-object p1, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->h:Ljava/lang/String;

    const-string p1, "\u2026 "

    .line 73
    invoke-static {p1, p2}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p1, 0x0

    .line 74
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 75
    new-instance v2, Lnr0;

    .line 76
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnr0;

    iget v3, v3, Lnr0;->a:I

    add-int/lit8 v3, v3, 0x2

    .line 77
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnr0;

    iget v4, v4, Lnr0;->b:I

    invoke-direct {v2, v3, v4}, Lnr0;-><init>(II)V

    .line 78
    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 79
    :cond_2
    new-instance p1, Lnr0;

    invoke-direct {p1, v1, v1}, Lnr0;-><init>(II)V

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 80
    :cond_3
    invoke-static {p2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p1

    if-eqz p3, :cond_4

    .line 81
    invoke-static {p1, v0}, LSr0;->a(Landroid/text/Spannable;Ljava/util/List;)Z

    :cond_4
    return-object p1
.end method

.method public a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;)Lle1;
    .locals 1

    .line 1
    new-instance p1, Lle1;

    sget-object v0, Les0;->p:[LUd1;

    invoke-direct {p1, v0}, Lle1;-><init>([LUd1;)V

    return-object p1
.end method

.method public a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;Lle1;)V
    .locals 1

    .line 57
    sget-object p1, Les0;->c:Lje1;

    .line 58
    invoke-virtual {p2, p1}, Lle1;->a(Lee1;)I

    move-result p1

    const/16 p2, 0x8

    const-string v0, "Omnibox.SuggestionUsed.IconOrFaviconType"

    .line 59
    invoke-static {v0, p1, p2}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;Lle1;I)V
    .locals 11

    .line 2
    sget-object v0, Les0;->a:Lke1;

    iget-object v1, p0, LSr0;->x:LTr0;

    .line 3
    check-cast v1, Lmr0;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 4
    new-instance v3, Lhr0;

    invoke-direct {v3, v1, p1, p3}, Lhr0;-><init>(Lmr0;Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;I)V

    .line 5
    invoke-virtual {p2, v0, v3}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 6
    iget p3, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a:I

    .line 7
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/16 v3, 0x1a

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->i:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->c:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 12
    iget-object v6, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->d:Ljava/util/List;

    .line 13
    invoke-static {v0, v6}, LSr0;->a(Landroid/text/Spannable;Ljava/util/List;)Z

    move-result v6

    .line 14
    iget-object v7, p0, LSr0;->w:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 15
    sget-object v8, Lsr0;->a:Lhe1;

    invoke-virtual {p2, v8}, Lle1;->a(Lce1;)Z

    move-result v8

    if-eqz v8, :cond_0

    const v8, 0x7f06016a

    goto :goto_0

    :cond_0
    const v8, 0x7f06016b

    .line 16
    :goto_0
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    if-ne p3, v3, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    const/4 p3, 0x3

    goto :goto_1

    :cond_2
    move-object v0, v2

    const/4 p3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    xor-int/2addr v6, v1

    .line 17
    invoke-virtual {p0, p1, v1, v6}, LSr0;->a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;ZZ)Landroid/text/Spannable;

    move-result-object v6

    goto :goto_5

    .line 18
    :cond_3
    invoke-virtual {p0, p1, v5, v1}, LSr0;->a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;ZZ)Landroid/text/Spannable;

    move-result-object v6

    const/16 v0, 0x9

    if-eq p3, v0, :cond_5

    const/16 v0, 0xc

    if-ne p3, v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v2

    const/4 v7, 0x0

    goto :goto_4

    .line 19
    :cond_5
    :goto_2
    iget-object p3, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->e:Ljava/lang/String;

    .line 20
    invoke-static {p3}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p3

    .line 21
    iget-object v0, p0, LSr0;->w:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 22
    sget-object v7, Lsr0;->a:Lhe1;

    invoke-virtual {p2, v7}, Lle1;->a(Lce1;)Z

    move-result v7

    if-eqz v7, :cond_6

    const v7, 0x7f06008e

    goto :goto_3

    :cond_6
    const v7, 0x7f060092

    .line 23
    :goto_3
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    move v7, v0

    move-object v0, p3

    :goto_4
    const/4 p3, 0x0

    .line 24
    :goto_5
    sget-object v8, Les0;->c:Lje1;

    .line 25
    iget-boolean v9, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->b:Z

    xor-int/2addr v9, v1

    if-eqz v9, :cond_8

    .line 26
    iget v9, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a:I

    if-eq v9, v3, :cond_9

    const/16 v10, 0x1b

    if-ne v9, v10, :cond_7

    goto :goto_6

    .line 27
    :cond_7
    iget-boolean v9, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->n:Z

    if-eqz v9, :cond_c

    const/4 v4, 0x1

    goto :goto_7

    .line 28
    :cond_8
    iget v4, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a:I

    const/4 v9, 0x7

    if-eq v4, v9, :cond_b

    const/16 v9, 0xb

    if-eq v4, v9, :cond_b

    const/16 v9, 0x14

    if-eq v4, v9, :cond_a

    :cond_9
    :goto_6
    const/4 v4, 0x4

    goto :goto_7

    :cond_a
    const/4 v4, 0x5

    goto :goto_7

    :cond_b
    const/4 v4, 0x2

    .line 29
    :cond_c
    :goto_7
    invoke-virtual {p2, v8, v4}, Lle1;->a(Lje1;I)V

    .line 30
    sget-object v4, Les0;->d:Lke1;

    invoke-virtual {p2, v4, v2}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 31
    sget-object v2, Les0;->i:Lke1;

    new-instance v4, Lds0;

    invoke-direct {v4, v6}, Lds0;-><init>(Landroid/text/Spannable;)V

    invoke-virtual {p2, v2, v4}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 32
    sget-object v2, Les0;->e:Lke1;

    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, p0, LSr0;->w:Landroid/content/Context;

    .line 34
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f070225

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 35
    invoke-static {v4, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 36
    invoke-virtual {p2, v2, v4}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 37
    sget-object v2, Les0;->n:Lke1;

    new-instance v4, Lds0;

    invoke-direct {v4, v0}, Lds0;-><init>(Landroid/text/Spannable;)V

    invoke-virtual {p2, v2, v4}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 38
    sget-object v0, Les0;->l:Lje1;

    invoke-virtual {p2, v0, v7}, Lle1;->a(Lje1;I)V

    .line 39
    sget-object v0, Les0;->m:Lje1;

    invoke-virtual {p2, v0, p3}, Lle1;->a(Lje1;I)V

    .line 40
    sget-object p3, Les0;->j:Lke1;

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, LSr0;->w:Landroid/content/Context;

    .line 42
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07022c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 43
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 44
    invoke-virtual {p2, p3, v0}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 45
    sget-object p3, Les0;->f:Lje1;

    invoke-virtual {p2, p3, v1}, Lle1;->a(Lje1;I)V

    .line 46
    sget-object p3, Les0;->k:Lje1;

    invoke-virtual {p2, p3, v1}, Lle1;->a(Lje1;I)V

    .line 47
    iget-object p3, p0, LSr0;->z:LIa0;

    if-eqz p3, :cond_d

    .line 48
    iget-object v0, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->i:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 49
    iget v2, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a:I

    if-eq v2, v3, :cond_d

    .line 50
    iget v2, p0, LSr0;->B:I

    new-instance v3, LRr0;

    invoke-direct {v3, p0, p2}, LRr0;-><init>(LSr0;Lle1;)V

    invoke-virtual {p3, v0, v2, v3}, LIa0;->a(Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)Z

    .line 51
    :cond_d
    iget-object p3, p0, LSr0;->y:LOp0;

    .line 52
    check-cast p3, LMp0;

    invoke-virtual {p3}, LMp0;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 53
    iget-object p1, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->c:Ljava/lang/String;

    .line 54
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .line 55
    sget-object p3, Les0;->b:Lhe1;

    xor-int/2addr p1, v1

    invoke-virtual {p2, p3, p1}, Lle1;->a(Lhe1;Z)V

    return-void

    .line 56
    :cond_e
    throw v2
.end method

.method public b(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;Lle1;)V
    .locals 1

    .line 1
    sget-object p1, Les0;->c:Lje1;

    .line 2
    invoke-virtual {p2, p1}, Lle1;->a(Lee1;)I

    move-result p1

    const/16 p2, 0x8

    const-string v0, "Omnibox.IconOrFaviconShown"

    .line 3
    invoke-static {v0, p1, p2}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method
