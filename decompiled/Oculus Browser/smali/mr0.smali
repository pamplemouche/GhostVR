.class public Lmr0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LOq0;
.implements LTr0;
.implements Lzi0;


# instance fields
.field public final A:Ljava/util/List;

.field public final B:Ljava/util/List;

.field public final C:Landroid/os/Handler;

.field public final D:LSr0;

.field public E:Ljs0;

.field public F:Lzr0;

.field public final G:Lns0;

.field public H:LSJ0;

.field public I:Lv30;

.field public J:Z

.field public K:Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;

.field public L:J

.field public M:I

.field public N:J

.field public O:Z

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/Runnable;

.field public R:Lkr0;

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:J

.field public W:Z

.field public X:F

.field public Y:F

.field public Z:Z

.field public a0:Z

.field public b0:I

.field public c0:Lorg/chromium/ui/base/WindowAndroid;

.field public d0:Lqi0;

.field public e0:LfY;

.field public final w:Landroid/content/Context;

.field public final x:Lbr0;

.field public final y:LOp0;

.field public final z:Lle1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr0;LOp0;Lle1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmr0;->B:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lmr0;->N:J

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lmr0;->W:Z

    .line 5
    iput-boolean v0, p0, Lmr0;->Z:Z

    .line 6
    iput-object p1, p0, Lmr0;->w:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lmr0;->x:Lbr0;

    .line 8
    iput-object p3, p0, Lmr0;->y:LOp0;

    .line 9
    iput-object p4, p0, Lmr0;->z:Lle1;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmr0;->A:Ljava/util/List;

    .line 11
    new-instance p1, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;

    invoke-direct {p1, p0}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;-><init>(LOq0;)V

    iput-object p1, p0, Lmr0;->K:Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;

    .line 12
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lmr0;->C:Landroid/os/Handler;

    .line 13
    new-instance p1, LSr0;

    iget-object p4, p0, Lmr0;->w:Landroid/content/Context;

    invoke-direct {p1, p4, p0, p3}, LSr0;-><init>(Landroid/content/Context;LTr0;LOp0;)V

    iput-object p1, p0, Lmr0;->D:LSr0;

    .line 14
    new-instance p1, Lzr0;

    iget-object p4, p0, Lmr0;->w:Landroid/content/Context;

    invoke-direct {p1, p4, p0, p3}, Lzr0;-><init>(Landroid/content/Context;LTr0;LOp0;)V

    iput-object p1, p0, Lmr0;->F:Lzr0;

    .line 15
    new-instance p1, Ljs0;

    iget-object p3, p0, Lmr0;->w:Landroid/content/Context;

    new-instance p4, Lcr0;

    invoke-direct {p4, p0}, Lcr0;-><init>(Lmr0;)V

    invoke-direct {p1, p3, p0, p2, p4}, Ljs0;-><init>(Landroid/content/Context;LTr0;Lhs0;Lis0;)V

    iput-object p1, p0, Lmr0;->E:Ljs0;

    .line 16
    new-instance p1, Lns0;

    iget-object p2, p0, Lmr0;->w:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lns0;-><init>(Landroid/content/Context;LTr0;)V

    iput-object p1, p0, Lmr0;->G:Lns0;

    return-void
.end method


# virtual methods
.method public final a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;I)I
    .locals 1

    .line 4
    invoke-virtual {p0}, Lmr0;->d()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 5
    iget-object v0, p0, Lmr0;->A:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llr0;

    iget-object v0, v0, Llr0;->b:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    if-ne v0, p1, :cond_0

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lmr0;->d()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 7
    invoke-virtual {p0, p2}, Lmr0;->a(I)Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public a(I)Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;
    .locals 1

    .line 1
    iget-object v0, p0, Lmr0;->A:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llr0;

    iget-object p1, p1, Llr0;->b:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    return-object p1
.end method

.method public final a(ILorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;JZ)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 92
    iget-wide v4, v0, Lmr0;->L:J

    sub-long/2addr v2, v4

    const-string v4, "Omnibox.FocusToOpenTimeAnyPopupState3"

    invoke-static {v4, v2, v3}, LfV;->b(Ljava/lang/String;J)V

    const/4 v2, 0x1

    xor-int/lit8 v3, p5, 0x1

    .line 93
    iget v4, v1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a:I

    const/16 v5, 0x14

    const-wide/16 v6, -0x1

    const-wide/16 v8, 0x0

    if-ne v4, v5, :cond_0

    .line 94
    iget-object v3, v1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->i:Ljava/lang/String;

    move-object v4, v3

    move/from16 v3, p1

    goto :goto_2

    :cond_0
    const/4 v4, -0x1

    if-nez v3, :cond_1

    move/from16 v3, p1

    .line 95
    invoke-virtual {v0, v1, v3}, Lmr0;->a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;I)I

    move-result v5

    goto :goto_0

    :cond_1
    move/from16 v3, p1

    const/4 v5, -0x1

    :goto_0
    if-ne v5, v4, :cond_2

    .line 96
    iget-object v4, v1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->i:Ljava/lang/String;

    goto :goto_2

    .line 97
    :cond_2
    iget-wide v10, v0, Lmr0;->N:J

    cmp-long v4, v10, v8

    if-lez v4, :cond_3

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, v0, Lmr0;->N:J

    sub-long/2addr v10, v12

    goto :goto_1

    :cond_3
    move-wide v10, v6

    .line 99
    :goto_1
    iget-object v4, v0, Lmr0;->K:Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;

    .line 100
    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->hashCode()I

    move-result v12

    .line 101
    invoke-virtual {v4, v5, v12, v10, v11}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a(IIJ)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 102
    iget-object v4, v1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->i:Ljava/lang/String;

    .line 103
    :cond_4
    :goto_2
    iget v5, v1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->m:I

    .line 104
    iget v15, v1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a:I

    .line 105
    iget-object v10, v0, Lmr0;->H:LSJ0;

    invoke-interface {v10}, LSJ0;->e()Ljava/lang/String;

    move-result-object v14

    .line 106
    iget-object v10, v0, Lmr0;->H:LSJ0;

    invoke-interface {v10}, LSJ0;->h()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v0, Lmr0;->H:LSJ0;

    invoke-interface {v10}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v10

    .line 107
    iget-object v10, v10, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    :goto_3
    move-object/from16 v19, v10

    .line 108
    iget-wide v10, v0, Lmr0;->N:J

    cmp-long v12, v10, v8

    if-lez v12, :cond_6

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v0, Lmr0;->N:J

    sub-long/2addr v6, v8

    :cond_6
    move-wide/from16 v16, v6

    .line 110
    iget-boolean v6, v0, Lmr0;->S:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    iget-object v6, v0, Lmr0;->R:Lkr0;

    if-eqz v6, :cond_7

    .line 111
    iget-boolean v6, v6, Lkr0;->y:Z

    if-nez v6, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    if-nez v6, :cond_8

    .line 112
    iget-object v6, v0, Lmr0;->y:LOp0;

    check-cast v6, LMp0;

    invoke-virtual {v6}, LMp0;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v8, v0, Lmr0;->y:LOp0;

    .line 113
    check-cast v8, LMp0;

    invoke-virtual {v8}, LMp0;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v18, v6, v8

    .line 114
    iget-object v6, v0, Lmr0;->H:LSJ0;

    iget-object v8, v0, Lmr0;->x:Lbr0;

    .line 115
    invoke-interface {v8}, Lbr0;->r()Z

    move-result v8

    invoke-interface {v6, v8}, LSJ0;->b(Z)I

    move-result v6

    .line 116
    iget-object v10, v0, Lmr0;->K:Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->hashCode()I

    move-result v12

    move/from16 v11, p1

    move v13, v15

    move v3, v15

    move v15, v6

    invoke-virtual/range {v10 .. v19}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a(IIILjava/lang/String;IJILorg/chromium/content_public/browser/WebContents;)V

    goto :goto_5

    :cond_8
    move v3, v15

    :goto_5
    and-int/lit16 v6, v5, 0xff

    const/16 v8, 0x8

    if-ne v6, v2, :cond_9

    .line 117
    iget-object v2, v0, Lmr0;->H:LSJ0;

    .line 118
    invoke-interface {v2}, LSJ0;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    const/4 v2, 0x5

    if-ne v6, v2, :cond_a

    .line 119
    iget-object v1, v1, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->h:Ljava/lang/String;

    .line 120
    iget-object v2, v0, Lmr0;->H:LSJ0;

    invoke-interface {v2}, LSJ0;->b()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    if-nez v3, :cond_b

    .line 122
    iget-object v1, v0, Lmr0;->y:LOp0;

    .line 123
    check-cast v1, LMp0;

    .line 124
    iget-object v1, v1, LMp0;->a:LKp0;

    invoke-virtual {v1}, LNo0;->m()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v8, 0x0

    goto :goto_6

    :cond_b
    move v8, v5

    .line 125
    :goto_6
    iget-object v1, v0, Lmr0;->x:Lbr0;

    move-wide/from16 v2, p3

    invoke-interface {v1, v4, v8, v2, v3}, Lbr0;->a(Ljava/lang/String;IJ)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "cr_Autocomplete"

    const-string v3, "onTextChangedForAutocomplete"

    .line 8
    invoke-static {v2, v3, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-boolean v1, p0, Lmr0;->T:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lmr0;->W:Z

    .line 11
    invoke-virtual {p0}, Lmr0;->b()V

    .line 12
    iget-boolean v3, p0, Lmr0;->O:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lmr0;->J:Z

    if-eqz v3, :cond_1

    .line 13
    iget-object v3, p0, Lmr0;->K:Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a()V

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lmr0;->N:J

    .line 15
    iput-boolean v1, p0, Lmr0;->O:Z

    .line 16
    :cond_1
    invoke-virtual {p0, v0}, Lmr0;->a(Z)V

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "onTextChangedForAutocomplete: url is empty"

    .line 18
    invoke-static {v2, v0, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Lmr0;->f()V

    .line 20
    invoke-virtual {p0}, Lmr0;->j()V

    goto :goto_0

    .line 21
    :cond_2
    new-instance v0, Ler0;

    invoke-direct {v0, p0, p1}, Ler0;-><init>(Lmr0;Ljava/lang/String;)V

    iput-object v0, p0, Lmr0;->Q:Ljava/lang/Runnable;

    .line 22
    iget-boolean p1, p0, Lmr0;->J:Z

    if-eqz p1, :cond_3

    .line 23
    iget-object p1, p0, Lmr0;->C:Landroid/os/Handler;

    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 24
    :cond_3
    iget-object p1, p0, Lmr0;->B:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :goto_0
    iget-object p1, p0, Lmr0;->x:Lbr0;

    invoke-interface {p1}, Lbr0;->e()V

    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 8

    .line 86
    invoke-virtual {p0}, Lmr0;->d()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lmr0;->P:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0, v1}, Lmr0;->a(I)Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    move-result-object p1

    const/4 v1, 0x1

    move-object v4, p1

    const/4 v7, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lmr0;->K:Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;

    iget-object v2, p0, Lmr0;->x:Lbr0;

    invoke-interface {v2}, Lbr0;->r()Z

    move-result v2

    invoke-virtual {v0, p1, v2}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a(Ljava/lang/String;Z)Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    move-object v4, p1

    const/4 v7, 0x0

    :goto_0
    const/4 v3, 0x0

    move-object v2, p0

    move-wide v5, p2

    .line 90
    invoke-virtual/range {v2 .. v7}, Lmr0;->a(ILorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;JZ)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 9

    .line 26
    iget-boolean v0, p0, Lmr0;->T:Z

    if-nez v0, :cond_18

    iget v0, p0, Lmr0;->M:I

    if-nez v0, :cond_0

    goto/16 :goto_c

    .line 27
    :cond_0
    iget-object v0, p0, Lmr0;->R:Lkr0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lmr0;->R:Lkr0;

    iget v6, v5, Lkr0;->x:I

    if-le v4, v6, :cond_1

    iget-object v4, v5, Lkr0;->w:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    .line 29
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 30
    invoke-virtual {v4, v5}, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 31
    :goto_0
    iput-boolean v4, v0, Lkr0;->y:Z

    .line 32
    iget-object v0, p0, Lmr0;->R:Lkr0;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 33
    iput-object v1, p0, Lmr0;->R:Lkr0;

    .line 34
    :cond_2
    iget-object v0, p0, Lmr0;->y:LOp0;

    check-cast v0, LMp0;

    invoke-virtual {v0}, LMp0;->b()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0, p2}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmr0;->P:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lmr0;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v0, v4, :cond_5

    const/4 v0, 0x0

    .line 37
    :goto_1
    iget-object v4, p0, Lmr0;->A:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 38
    iget-object v4, p0, Lmr0;->A:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llr0;

    iget-object v4, v4, Llr0;->b:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lmr0;->X:F

    .line 40
    iput v0, p0, Lmr0;->Y:F

    .line 41
    iput-boolean v3, p0, Lmr0;->U:Z

    .line 42
    iget-object v0, p0, Lmr0;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 43
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_16

    .line 44
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    .line 45
    iget-object v5, p0, Lmr0;->F:Lzr0;

    if-eqz v5, :cond_15

    .line 46
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a()Z

    move-result v5

    if-nez v5, :cond_7

    .line 47
    iget v5, v4, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a:I

    const/16 v6, 0x12

    if-ne v5, v6, :cond_6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v5, 0x1

    :goto_5
    if-eqz v5, :cond_8

    .line 48
    iget-object v5, p0, Lmr0;->F:Lzr0;

    goto :goto_9

    .line 49
    :cond_8
    iget-object v5, p0, Lmr0;->G:Lns0;

    if-eqz v5, :cond_14

    .line 50
    iget v5, v4, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_9

    const/4 v5, 0x1

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_a

    .line 51
    iget-object v5, p0, Lmr0;->G:Lns0;

    goto :goto_9

    .line 52
    :cond_a
    iget-object v5, p0, Lmr0;->E:Ljs0;

    if-eqz v5, :cond_11

    .line 53
    iget-boolean v6, v5, Ljs0;->E:Z

    if-nez v6, :cond_b

    .line 54
    iput-boolean v3, v5, Ljs0;->E:Z

    .line 55
    iput-boolean v3, v5, Ljs0;->F:Z

    .line 56
    :cond_b
    iget v6, v4, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a:I

    if-nez v6, :cond_10

    .line 57
    iget-boolean v6, v5, Ljs0;->F:Z

    if-eqz v6, :cond_c

    goto :goto_7

    .line 58
    :cond_c
    iput-object v4, v5, Ljs0;->y:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    .line 59
    iget-object v6, v5, Ljs0;->A:Ljava/lang/String;

    if-nez v6, :cond_d

    .line 60
    iget-object v6, v4, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->i:Ljava/lang/String;

    .line 61
    iput-object v6, v5, Ljs0;->A:Ljava/lang/String;

    .line 62
    :cond_d
    iget-object v6, v5, Ljs0;->y:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    .line 63
    iget-object v6, v6, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->i:Ljava/lang/String;

    .line 64
    iget-object v7, v5, Ljs0;->A:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_7

    .line 65
    :cond_e
    iget-boolean v6, v5, Ljs0;->x:Z

    if-nez v6, :cond_f

    .line 66
    iput-boolean v3, v5, Ljs0;->x:Z

    .line 67
    iget-object v5, v5, Ljs0;->w:Lhs0;

    const-string v6, ""

    invoke-interface {v5, v6}, Lhs0;->d(Ljava/lang/String;)V

    :cond_f
    const/4 v5, 0x1

    goto :goto_8

    :cond_10
    :goto_7
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_11

    .line 68
    iget-object v5, p0, Lmr0;->E:Ljs0;

    goto :goto_9

    .line 69
    :cond_11
    iget-object v5, p0, Lmr0;->D:LSr0;

    .line 70
    :goto_9
    invoke-interface {v5, v4}, Lwr0;->a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;)Lle1;

    move-result-object v6

    .line 71
    sget-object v7, Lsr0;->b:Lje1;

    iget v8, p0, Lmr0;->b0:I

    invoke-virtual {v6, v7, v8}, Lle1;->a(Lje1;I)V

    .line 72
    sget-object v7, Lsr0;->a:Lhe1;

    iget-boolean v8, p0, Lmr0;->Z:Z

    invoke-virtual {v6, v7, v8}, Lle1;->a(Lhe1;Z)V

    .line 73
    sget-object v7, Lsr0;->c:Lhe1;

    iget-boolean v8, p0, Lmr0;->a0:Z

    if-nez v8, :cond_13

    iget-object v8, p0, Lmr0;->w:Landroid/content/Context;

    .line 74
    invoke-static {v8}, Lorg/chromium/ui/base/DeviceFormFactor;->a(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_12

    goto :goto_a

    :cond_12
    const/4 v8, 0x0

    goto :goto_b

    :cond_13
    :goto_a
    const/4 v8, 0x1

    .line 75
    :goto_b
    invoke-virtual {v6, v7, v8}, Lle1;->a(Lhe1;Z)V

    .line 76
    iget-object v7, p0, Lmr0;->A:Ljava/util/List;

    new-instance v8, Llr0;

    invoke-direct {v8, v5, v4, v6}, Llr0;-><init>(Lwr0;Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;Lle1;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-interface {v5, v4, v6, v0}, Lwr0;->a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;Lle1;I)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 78
    :cond_14
    throw v1

    .line 79
    :cond_15
    throw v1

    .line 80
    :cond_16
    iput-boolean v2, p0, Lmr0;->U:Z

    .line 81
    invoke-virtual {p0}, Lmr0;->h()V

    .line 82
    iget-object p1, p0, Lmr0;->z:Lle1;

    sget-object v0, Ltr0;->a:Lhe1;

    invoke-virtual {p1, v0}, Lle1;->a(Lce1;)Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lmr0;->d()I

    move-result p1

    if-nez p1, :cond_17

    .line 83
    invoke-virtual {p0}, Lmr0;->f()V

    .line 84
    :cond_17
    iget-object p1, p0, Lmr0;->x:Lbr0;

    invoke-interface {p1, p2}, Lbr0;->a(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lmr0;->k()V

    :cond_18
    :goto_c
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 126
    iget-object v0, p0, Lmr0;->K:Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a(Z)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lmr0;->b()V

    return-void
.end method

.method public a(Lle1;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lmr0;->A:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lmr0;->A:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llr0;

    iget-object v2, v2, Llr0;->c:Lle1;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b()V
    .locals 2

    .line 8
    iget-object v0, p0, Lmr0;->Q:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, Lmr0;->B:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lmr0;->C:Landroid/os/Handler;

    iget-object v1, p0, Lmr0;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lmr0;->Q:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public final b(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;I)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lmr0;->S:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmr0;->J:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lir0;

    invoke-direct {v0, p0, p1, p2}, Lir0;-><init>(Lmr0;Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;I)V

    iput-object v0, p0, Lmr0;->R:Lkr0;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmr0;->a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lmr0;->A:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llr0;

    .line 5
    iget-object v1, v0, Llr0;->a:Lwr0;

    iget-object v2, v0, Llr0;->b:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    iget-object v0, v0, Llr0;->c:Lle1;

    invoke-interface {v1, v2, v0}, Lwr0;->a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;Lle1;)V

    .line 6
    :cond_1
    iget-wide v6, p0, Lmr0;->V:J

    const/4 v8, 0x1

    move-object v3, p0

    move v4, p2

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Lmr0;->a(ILorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;JZ)V

    .line 7
    iget-object p1, p0, Lmr0;->x:Lbr0;

    invoke-interface {p1}, Lbr0;->b()V

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmr0;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmr0;->K:Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmr0;->J:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lmr0;->a(Z)V

    .line 3
    iget-object v0, p0, Lmr0;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p0}, Lmr0;->h()V

    .line 5
    invoke-virtual {p0}, Lmr0;->k()V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmr0;->i()V

    return-void
.end method

.method public h()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmr0;->U:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lmr0;->z:Lle1;

    sget-object v1, Ltr0;->c:Lke1;

    invoke-virtual {v0, v1}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQd1;

    .line 3
    invoke-virtual {v0}, LLd1;->clear()V

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lmr0;->A:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    iget-object v2, p0, Lmr0;->A:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llr0;

    iget-object v2, v2, Llr0;->c:Lle1;

    .line 6
    new-instance v3, LPd1;

    iget-object v4, p0, Lmr0;->A:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llr0;

    iget-object v4, v4, Llr0;->a:Lwr0;

    invoke-interface {v4}, Lwr0;->a()I

    move-result v4

    invoke-direct {v3, v4, v2}, LPd1;-><init>(ILle1;)V

    invoke-virtual {v0, v3}, LLd1;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 6

    .line 1
    iget-object v0, p0, Lmr0;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llr0;

    .line 2
    iget-object v3, v2, Llr0;->a:Lwr0;

    iget-object v4, v2, Llr0;->b:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    iget-object v5, v2, Llr0;->c:Lle1;

    invoke-interface {v3, v4, v5}, Lwr0;->b(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;Lle1;)V

    .line 3
    iget-object v2, v2, Llr0;->a:Lwr0;

    invoke-interface {v2}, Lwr0;->a()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    const/16 v2, 0xb

    const/4 v3, 0x1

    const-string v4, "Omnibox.RichEntityShown"

    .line 4
    invoke-static {v4, v1, v3, v0, v2}, LfV;->b(Ljava/lang/String;IIII)V

    return-void
.end method

.method public final j()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lmr0;->O:Z

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lmr0;->N:J

    .line 3
    iget-boolean v0, p0, Lmr0;->J:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmr0;->x:Lbr0;

    invoke-interface {v0}, Lbr0;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmr0;->H:LSJ0;

    .line 4
    invoke-interface {v0}, LSJ0;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmr0;->H:LSJ0;

    invoke-interface {v0}, LSJ0;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Lmr0;->H:LSJ0;

    iget-object v1, p0, Lmr0;->x:Lbr0;

    .line 6
    invoke-interface {v1}, Lbr0;->r()Z

    move-result v1

    invoke-interface {v0, v1}, LSJ0;->b(Z)I

    move-result v6

    .line 7
    iget-object v2, p0, Lmr0;->K:Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;

    iget-object v0, p0, Lmr0;->H:LSJ0;

    invoke-interface {v0}, LSJ0;->c()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    iget-object v0, p0, Lmr0;->y:LOp0;

    .line 8
    check-cast v0, LMp0;

    invoke-virtual {v0}, LMp0;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lmr0;->H:LSJ0;

    .line 9
    invoke-interface {v0}, LSJ0;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lmr0;->H:LSJ0;

    invoke-interface {v0}, LSJ0;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual/range {v2 .. v7}, Lorg/chromium/chrome/browser/omnibox/suggestions/AutocompleteController;->a(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 5

    .line 1
    iget v0, p0, Lmr0;->M:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lmr0;->d()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lmr0;->z:Lle1;

    sget-object v3, Ltr0;->a:Lhe1;

    invoke-virtual {v1, v3}, Lle1;->a(Lce1;)Z

    move-result v1

    .line 4
    iget-object v3, p0, Lmr0;->z:Lle1;

    sget-object v4, Ltr0;->a:Lhe1;

    invoke-virtual {v3, v4, v0}, Lle1;->a(Lhe1;Z)V

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 5
    iput-boolean v2, p0, Lmr0;->W:Z

    :cond_1
    return-void
.end method
