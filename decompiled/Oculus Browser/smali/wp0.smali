.class public abstract Lwp0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)Lup0;
    .locals 4

    .line 1
    invoke-static {p0, p1}, LJ/N;->MzJAD730(Ljava/lang/Object;Ljava/lang/String;)[I

    move-result-object p0

    .line 2
    new-instance p1, Lup0;

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    const/4 v3, 0x3

    aget p0, p0, v3

    invoke-direct {p1, v0, v1, v2, p0}, Lup0;-><init>(IIII)V

    return-object p1
.end method

.method public static a(Landroid/text/Spannable;Landroid/content/res/Resources;Lorg/chromium/chrome/browser/profiles/Profile;IZZZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    .line 4
    invoke-static {v4, v3}, Lwp0;->a(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)Lup0;

    move-result-object v4

    if-nez p5, :cond_0

    const v5, 0x7f060198

    goto :goto_0

    :cond_0
    const v5, 0x7f060199

    .line 5
    :goto_0
    iget v6, v4, Lup0;->a:I

    .line 6
    iget v7, v4, Lup0;->b:I

    add-int/2addr v7, v6

    .line 7
    iget v8, v4, Lup0;->c:I

    .line 8
    iget v9, v4, Lup0;->d:I

    add-int/2addr v9, v8

    .line 9
    invoke-virtual {v4}, Lup0;->a()Z

    move-result v10

    const-string v11, "data"

    const/16 v12, 0x21

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v10, :cond_c

    if-nez p4, :cond_9

    if-eqz v2, :cond_6

    const/4 v10, 0x2

    if-eq v2, v10, :cond_4

    const/4 v10, 0x3

    if-eq v2, v10, :cond_4

    const/4 v10, 0x5

    if-eq v2, v10, :cond_1

    const/4 v10, 0x6

    if-eq v2, v10, :cond_6

    goto :goto_2

    :cond_1
    if-eqz p6, :cond_3

    if-eqz p5, :cond_2

    const v2, 0x7f060089

    goto :goto_1

    :cond_2
    const v2, 0x7f06008a

    goto :goto_1

    :cond_3
    move v2, v5

    :goto_1
    move v10, v2

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    if-eqz p6, :cond_8

    if-eqz p5, :cond_5

    const v2, 0x7f060077

    goto :goto_3

    :cond_5
    const v2, 0x7f060078

    goto :goto_3

    .line 10
    :cond_6
    invoke-virtual {v4, v3}, Lup0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz p5, :cond_7

    const v2, 0x7f06008e

    goto :goto_3

    :cond_7
    const v2, 0x7f060092

    goto :goto_3

    :cond_8
    :goto_2
    move v2, v5

    :goto_3
    move v10, v2

    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_a

    .line 12
    new-instance v2, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisSecurityErrorSpan;

    invoke-direct {v2}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisSecurityErrorSpan;-><init>()V

    .line 13
    invoke-interface {p0, v2, v6, v7, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :cond_9
    move v10, v5

    .line 14
    :cond_a
    :goto_5
    new-instance v2, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisColorSpan;

    .line 15
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 16
    invoke-direct {v2, v10}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisColorSpan;-><init>(I)V

    .line 17
    invoke-interface {p0, v2, v6, v7, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 18
    iget v2, v4, Lup0;->d:I

    if-lez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_c

    .line 19
    new-instance v2, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisColorSpan;

    .line 20
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 21
    invoke-direct {v2, v6}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisColorSpan;-><init>(I)V

    .line 22
    invoke-interface {p0, v2, v7, v8, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 23
    :cond_c
    iget v2, v4, Lup0;->d:I

    if-lez v2, :cond_d

    const/4 v13, 0x1

    :cond_d
    if-eqz v13, :cond_f

    const v2, 0x7f060196

    if-nez p5, :cond_e

    const v2, 0x7f060197

    .line 24
    :cond_e
    new-instance v4, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisColorSpan;

    .line 25
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 26
    invoke-direct {v4, v2}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisColorSpan;-><init>(I)V

    .line 27
    invoke-interface {p0, v4, v8, v9, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 28
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v9, v2, :cond_10

    .line 29
    new-instance v2, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisColorSpan;

    .line 30
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 31
    invoke-direct {v2, v1}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisColorSpan;-><init>(I)V

    .line 32
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p0, v2, v9, v1, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    .line 33
    :cond_f
    invoke-virtual {v4, v3}, Lup0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 34
    new-instance v2, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisColorSpan;

    .line 35
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 36
    invoke-direct {v2, v1}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisColorSpan;-><init>(I)V

    .line 37
    iget v1, v4, Lup0;->a:I

    iget v4, v4, Lup0;->b:I

    add-int/2addr v1, v4

    .line 38
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 39
    invoke-interface {p0, v2, v1, v3, v12}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_10
    :goto_7
    return-void
.end method
