.class public Lpp0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LWc1;


# instance fields
.field public final w:I

.field public final synthetic x:Lsp0;


# direct methods
.method public constructor <init>(Lsp0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpp0;->x:Lsp0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lpp0;->w:I

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/ui/base/WindowAndroid;ILandroid/content/Intent;)V
    .locals 8

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_18

    .line 1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-object p1, p0, Lpp0;->x:Lsp0;

    .line 3
    iget-object p1, p1, Lsp0;->a:Lop0;

    .line 4
    invoke-interface {p1}, Lop0;->p()LPq0;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lpp0;->x:Lsp0;

    iget v1, p0, Lpp0;->w:I

    if-eqz p2, :cond_17

    .line 6
    sget-object p2, Lsp0;->d:LaV;

    invoke-virtual {p2, v1}, LaV;->a(I)V

    .line 7
    iget-object p2, p0, Lpp0;->x:Lsp0;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p2, :cond_16

    const/4 v1, 0x0

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "android.speech.extra.RESULTS"

    .line 8
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "android.speech.extra.CONFIDENCE_SCORES"

    .line 9
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object p3

    if-eqz v2, :cond_6

    if-nez p3, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    array-length v4, p3

    if-eq v3, v4, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    iget-object p2, p2, Lsp0;->a:Lop0;

    invoke-interface {p2}, Lop0;->p()LPq0;

    move-result-object p2

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 13
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 14
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 15
    move-object v6, p2

    check-cast v6, Lar0;

    if-eqz v6, :cond_5

    .line 16
    invoke-static {v5}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->nativeQualifyPartialURLQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 17
    new-instance v7, Lqp0;

    if-nez v6, :cond_4

    .line 18
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :cond_4
    aget v6, p3, v4

    invoke-direct {v7, v5, v6}, Lqp0;-><init>(Ljava/lang/String;F)V

    .line 19
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20
    :cond_5
    throw v0

    :cond_6
    :goto_1
    move-object v3, v0

    .line 21
    :cond_7
    check-cast p1, Lar0;

    .line 22
    iget-object p1, p1, Lar0;->x:Lmr0;

    .line 23
    iget-object p1, p1, Lmr0;->K:Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;

    .line 24
    iget-object p1, p1, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->d:Lxr0;

    .line 25
    iget-object p2, p1, Lxr0;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    if-eqz v3, :cond_9

    .line 26
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    goto :goto_2

    .line 27
    :cond_8
    iget-object p1, p1, Lxr0;->a:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    :goto_2
    if-eqz v3, :cond_a

    .line 28
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqp0;

    goto :goto_3

    :cond_a
    move-object p1, v0

    :goto_3
    if-nez p1, :cond_c

    .line 29
    iget-object p1, p0, Lpp0;->x:Lsp0;

    if-eqz p1, :cond_b

    .line 30
    sget-object p1, Lsp0;->g:LVU;

    invoke-virtual {p1, v1}, LVU;->a(Z)V

    return-void

    :cond_b
    throw v0

    .line 31
    :cond_c
    iget-object p2, p1, Lqp0;->a:Ljava/lang/String;

    .line 32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 33
    iget-object p1, p0, Lpp0;->x:Lsp0;

    if-eqz p1, :cond_d

    .line 34
    sget-object p1, Lsp0;->g:LVU;

    invoke-virtual {p1, v1}, LVU;->a(Z)V

    return-void

    :cond_d
    throw v0

    .line 35
    :cond_e
    iget-object p3, p0, Lpp0;->x:Lsp0;

    if-eqz p3, :cond_15

    .line 36
    sget-object p3, Lsp0;->g:LVU;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, LVU;->a(Z)V

    .line 37
    iget-object p3, p0, Lpp0;->x:Lsp0;

    .line 38
    iget v1, p1, Lqp0;->b:F

    if-eqz p3, :cond_14

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float v1, v1, p3

    .line 39
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 40
    sget-object v1, Lsp0;->h:LaV;

    invoke-virtual {v1, p3}, LaV;->a(I)V

    .line 41
    iget p1, p1, Lqp0;->b:F

    const p3, 0x3f666666    # 0.9f

    cmpg-float p1, p1, p3

    if-gez p1, :cond_f

    .line 42
    iget-object p1, p0, Lpp0;->x:Lsp0;

    .line 43
    iget-object p1, p1, Lsp0;->a:Lop0;

    .line 44
    invoke-interface {p1, p2}, Lop0;->b(Ljava/lang/String;)V

    return-void

    .line 45
    :cond_f
    invoke-static {p2}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->nativeQualifyPartialURLQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10

    .line 46
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/chromium/components/search_engines/TemplateUrlService;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    :cond_10
    iget-object p2, p0, Lpp0;->x:Lsp0;

    .line 48
    iget-object p2, p2, Lsp0;->a:Lop0;

    .line 49
    invoke-interface {p2}, Lop0;->i()LSJ0;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 50
    invoke-interface {p2}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p2

    goto :goto_4

    :cond_11
    move-object p2, v0

    :goto_4
    if-eqz p2, :cond_13

    .line 51
    iget-object p3, p0, Lpp0;->x:Lsp0;

    .line 52
    iget-object p3, p3, Lsp0;->b:Lg11;

    if-eqz p3, :cond_12

    .line 53
    invoke-virtual {p3}, Lg11;->destroy()V

    .line 54
    iget-object p3, p0, Lpp0;->x:Lsp0;

    .line 55
    iput-object v0, p3, Lsp0;->b:Lg11;

    .line 56
    :cond_12
    iget-object p2, p2, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p2, :cond_13

    .line 57
    iget-object p3, p0, Lpp0;->x:Lsp0;

    new-instance v0, Lrp0;

    .line 58
    invoke-direct {v0, p3, p2}, Lrp0;-><init>(Lsp0;Lorg/chromium/content_public/browser/WebContents;)V

    .line 59
    iput-object v0, p3, Lsp0;->b:Lg11;

    .line 60
    :cond_13
    iget-object p2, p0, Lpp0;->x:Lsp0;

    .line 61
    iget-object p2, p2, Lsp0;->a:Lop0;

    .line 62
    invoke-interface {p2, p1}, Lop0;->c(Ljava/lang/String;)V

    return-void

    .line 63
    :cond_14
    throw v0

    .line 64
    :cond_15
    throw v0

    .line 65
    :cond_16
    throw v0

    .line 66
    :cond_17
    throw v0

    :cond_18
    :goto_5
    if-nez p2, :cond_1a

    .line 67
    iget-object p1, p0, Lpp0;->x:Lsp0;

    iget p2, p0, Lpp0;->w:I

    if-eqz p1, :cond_19

    .line 68
    sget-object p1, Lsp0;->e:LaV;

    invoke-virtual {p1, p2}, LaV;->a(I)V

    goto :goto_6

    :cond_19
    throw v0

    .line 69
    :cond_1a
    iget-object p1, p0, Lpp0;->x:Lsp0;

    iget p2, p0, Lpp0;->w:I

    if-eqz p1, :cond_1b

    .line 70
    sget-object p1, Lsp0;->f:LaV;

    invoke-virtual {p1, p2}, LaV;->a(I)V

    :goto_6
    return-void

    :cond_1b
    throw v0
.end method
