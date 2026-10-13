.class public LDr0;
.super LCr0;
.source "PG"


# instance fields
.field public final g:Z

.field public final h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/chromium/components/omnibox/SuggestionAnswer$ImageLine;Z)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, LCr0;-><init>(Landroid/content/Context;)V

    .line 2
    iput-boolean p4, p0, LDr0;->g:Z

    .line 3
    iput p2, p0, LDr0;->h:I

    .line 4
    iget-object p1, p3, Lorg/chromium/components/omnibox/SuggestionAnswer$ImageLine;->a:Ljava/util/List;

    const/4 p2, 0x0

    const/4 p4, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p4, v0, :cond_2

    .line 6
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/omnibox/SuggestionAnswer$TextField;

    .line 7
    iget-object v0, v0, Lorg/chromium/components/omnibox/SuggestionAnswer$TextField;->b:Ljava/lang/String;

    .line 8
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/components/omnibox/SuggestionAnswer$TextField;

    .line 9
    iget v2, v2, Lorg/chromium/components/omnibox/SuggestionAnswer$TextField;->a:I

    .line 10
    invoke-virtual {p0, v2}, LCr0;->a(I)[Landroid/text/style/MetricAffectingSpan;

    move-result-object v2

    .line 11
    invoke-virtual {p0, v0, v2}, LCr0;->a(Ljava/lang/String;[Landroid/text/style/MetricAffectingSpan;)V

    .line 12
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/omnibox/SuggestionAnswer$TextField;

    .line 13
    iget v0, v0, Lorg/chromium/components/omnibox/SuggestionAnswer$TextField;->d:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 14
    iget v0, p0, LCr0;->f:I

    const/4 v1, 0x3

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/components/omnibox/SuggestionAnswer$TextField;

    .line 15
    iget v2, v2, Lorg/chromium/components/omnibox/SuggestionAnswer$TextField;->d:I

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCr0;->f:I

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 17
    :cond_2
    iget-object p1, p3, Lorg/chromium/components/omnibox/SuggestionAnswer$ImageLine;->b:Lorg/chromium/components/omnibox/SuggestionAnswer$TextField;

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    const-string p4, "  "

    if-eqz p1, :cond_4

    .line 18
    iget-object p1, p0, LCr0;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 19
    iget-object p1, p3, Lorg/chromium/components/omnibox/SuggestionAnswer$ImageLine;->b:Lorg/chromium/components/omnibox/SuggestionAnswer$TextField;

    .line 20
    iget-object v0, p1, Lorg/chromium/components/omnibox/SuggestionAnswer$TextField;->b:Ljava/lang/String;

    .line 21
    iget p1, p1, Lorg/chromium/components/omnibox/SuggestionAnswer$TextField;->a:I

    .line 22
    invoke-virtual {p0, p1}, LCr0;->a(I)[Landroid/text/style/MetricAffectingSpan;

    move-result-object p1

    .line 23
    invoke-virtual {p0, v0, p1}, LCr0;->a(Ljava/lang/String;[Landroid/text/style/MetricAffectingSpan;)V

    .line 24
    :cond_4
    iget-object p1, p3, Lorg/chromium/components/omnibox/SuggestionAnswer$ImageLine;->c:Lorg/chromium/components/omnibox/SuggestionAnswer$TextField;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_6

    .line 25
    iget-object p1, p0, LCr0;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26
    iget-object p1, p3, Lorg/chromium/components/omnibox/SuggestionAnswer$ImageLine;->c:Lorg/chromium/components/omnibox/SuggestionAnswer$TextField;

    .line 27
    iget-object p2, p1, Lorg/chromium/components/omnibox/SuggestionAnswer$TextField;->b:Ljava/lang/String;

    .line 28
    iget p1, p1, Lorg/chromium/components/omnibox/SuggestionAnswer$TextField;->a:I

    .line 29
    invoke-virtual {p0, p1}, LCr0;->a(I)[Landroid/text/style/MetricAffectingSpan;

    move-result-object p1

    .line 30
    invoke-virtual {p0, p2, p1}, LCr0;->a(Ljava/lang/String;[Landroid/text/style/MetricAffectingSpan;)V

    .line 31
    :cond_6
    iget-object p1, p0, LCr0;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LCr0;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, LCr0;-><init>(Landroid/content/Context;)V

    .line 33
    iput-boolean p3, p0, LDr0;->g:Z

    const/4 p1, 0x0

    .line 34
    iput p1, p0, LDr0;->h:I

    const/16 p1, 0x8

    .line 35
    invoke-virtual {p0, p1}, LDr0;->a(I)[Landroid/text/style/MetricAffectingSpan;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, LCr0;->a(Ljava/lang/String;[Landroid/text/style/MetricAffectingSpan;)V

    return-void
.end method


# virtual methods
.method public a(I)[Landroid/text/style/MetricAffectingSpan;
    .locals 5

    .line 1
    iget-boolean v0, p0, LDr0;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    iget v0, p0, LDr0;->h:I

    const v3, 0x7f1401c4

    if-eq v0, v2, :cond_0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    new-array p1, v2, [Landroid/text/style/TextAppearanceSpan;

    .line 3
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, LCr0;->a:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    aput-object v0, p1, v1

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    const-string v0, "Unknown answer type: "

    .line 4
    invoke-static {v0, p1}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v4, "AnswerTextNewLayout"

    invoke-static {v4, p1, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    const v3, 0x7f1401bd

    goto :goto_0

    :cond_1
    const v3, 0x7f140207

    goto :goto_0

    :cond_2
    const v3, 0x7f140206

    :cond_3
    :goto_0
    :pswitch_1
    new-array p1, v2, [Landroid/text/style/TextAppearanceSpan;

    .line 5
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, LCr0;->a:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    aput-object v0, p1, v1

    goto :goto_1

    :cond_4
    new-array p1, v2, [Landroid/text/style/TextAppearanceSpan;

    .line 6
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, LCr0;->a:Landroid/content/Context;

    const v3, 0x7f1401c2

    invoke-direct {v0, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    aput-object v0, p1, v1

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
