.class public LEK0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LWo0;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;LAK0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 2
    iget-object v0, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    iget-object v0, v0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->e0:LSJ0;

    .line 3
    invoke-interface {v0}, LSJ0;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    iget-object v1, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->e0:LSJ0;

    .line 5
    invoke-interface {v1}, LSJ0;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 7
    iget v1, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->c0:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 8
    :cond_1
    iget-object v1, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    iget-object v1, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->e0:LSJ0;

    .line 9
    invoke-interface {v1}, LSJ0;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "about:blank"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 11
    sget-object v1, LZ01;->a:LFW;

    iget-object v2, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 12
    iget-object v2, v2, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->g0:Ljava/lang/Runnable;

    const-wide/16 v3, 0x320

    .line 13
    invoke-static {v1, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    .line 14
    :cond_2
    iget-object v1, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 15
    iget-object v1, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->O:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 17
    :cond_3
    :goto_0
    iget-object v0, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 18
    iget-object v0, v0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->O:Landroid/widget/TextView;

    const-string v1, ""

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(LKK0;)V
    .locals 2

    .line 20
    iget-object v0, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 21
    iget-object v0, v0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->N:LMp0;

    .line 22
    iget-object v0, v0, LMp0;->b:LQp0;

    .line 23
    iget-object v0, v0, LQp0;->w:Lle1;

    sget-object v1, LTp0;->a:Lke1;

    invoke-virtual {v0, v1, p1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    return-void
.end method

.method public a(LMm0;)V
    .locals 0

    return-void
.end method

.method public a(LSJ0;)V
    .locals 1

    .line 1
    iget-object v0, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    iput-object p1, v0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->e0:LSJ0;

    return-void
.end method

.method public a(LVp0;)V
    .locals 0

    return-void
.end method

.method public a(Lk00;Lorg/chromium/ui/base/WindowAndroid;LgY;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(ZLjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public b(LVp0;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, LEK0;->d()V

    .line 2
    :cond_0
    invoke-virtual {p0}, LEK0;->l()V

    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    return-object v0
.end method

.method public d()V
    .locals 15

    .line 1
    iget-object v0, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->a(Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->N:LMp0;

    .line 4
    sget-object v2, LNp0;->h:LNp0;

    invoke-virtual {v0, v2, v1, v1}, LMp0;->a(LNp0;II)Z

    return-void

    .line 5
    :cond_0
    invoke-static {v0}, Lorg/chromium/chrome/browser/tab/TrustedCdn;->a(Lorg/chromium/chrome/browser/tab/Tab;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_0
    iget-object v3, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 8
    iget v4, v3, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->c0:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 9
    iget-object v3, v3, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->e0:LSJ0;

    .line 10
    invoke-interface {v3}, LSJ0;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, LEK0;->a()V

    .line 11
    :cond_2
    iget-object v3, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    invoke-static {v3}, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->a(Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    .line 12
    iget-boolean v3, v3, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 13
    invoke-static {v0, v3}, Lul0;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "about:blank"

    .line 14
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_d

    :cond_3
    if-eqz v2, :cond_14

    .line 15
    iget-object v3, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 16
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f130268

    new-array v6, v5, [Ljava/lang/Object;

    .line 17
    invoke-static {v2}, LJ/N;->MpCt7siL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {v2}, LJ/N;->M25QTkfm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    sget-object v7, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->i0:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {}, Ly6;->a()Ly6;

    move-result-object v8

    .line 21
    iget-object v9, v8, Ly6;->c:LA6;

    const/4 v10, 0x2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto/16 :goto_8

    .line 22
    :cond_4
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    check-cast v9, LE6;

    invoke-virtual {v9, v2, v1, v11}, LE6;->a(Ljava/lang/CharSequence;II)Z

    move-result v9

    .line 23
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 24
    iget v12, v8, Ly6;->b:I

    and-int/2addr v12, v10

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    :goto_1
    const/4 v13, -0x1

    if-eqz v12, :cond_b

    if-eqz v9, :cond_6

    .line 25
    sget-object v12, LG6;->b:LA6;

    goto :goto_2

    :cond_6
    sget-object v12, LG6;->a:LA6;

    .line 26
    :goto_2
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v14

    check-cast v12, LE6;

    invoke-virtual {v12, v2, v1, v14}, LE6;->a(Ljava/lang/CharSequence;II)Z

    move-result v12

    .line 27
    iget-boolean v14, v8, Ly6;->a:Z

    if-nez v14, :cond_8

    if-nez v12, :cond_7

    invoke-static {v2}, Ly6;->a(Ljava/lang/CharSequence;)I

    move-result v14

    if-ne v14, v5, :cond_8

    .line 28
    :cond_7
    sget-object v12, Ly6;->e:Ljava/lang/String;

    goto :goto_3

    .line 29
    :cond_8
    iget-boolean v14, v8, Ly6;->a:Z

    if-eqz v14, :cond_a

    if-eqz v12, :cond_9

    invoke-static {v2}, Ly6;->a(Ljava/lang/CharSequence;)I

    move-result v12

    if-ne v12, v13, :cond_a

    .line 30
    :cond_9
    sget-object v12, Ly6;->f:Ljava/lang/String;

    goto :goto_3

    :cond_a
    move-object v12, v7

    .line 31
    :goto_3
    invoke-virtual {v11, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 32
    :cond_b
    iget-boolean v12, v8, Ly6;->a:Z

    if-eq v9, v12, :cond_d

    if-eqz v9, :cond_c

    const/16 v12, 0x202b

    goto :goto_4

    :cond_c
    const/16 v12, 0x202a

    .line 33
    :goto_4
    invoke-virtual {v11, v12}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 34
    invoke-virtual {v11, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v12, 0x202c

    .line 35
    invoke-virtual {v11, v12}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    .line 36
    :cond_d
    invoke-virtual {v11, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_5
    if-eqz v9, :cond_e

    .line 37
    sget-object v9, LG6;->b:LA6;

    goto :goto_6

    :cond_e
    sget-object v9, LG6;->a:LA6;

    .line 38
    :goto_6
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v12

    check-cast v9, LE6;

    invoke-virtual {v9, v2, v1, v12}, LE6;->a(Ljava/lang/CharSequence;II)Z

    move-result v9

    .line 39
    iget-boolean v12, v8, Ly6;->a:Z

    if-nez v12, :cond_10

    if-nez v9, :cond_f

    invoke-static {v2}, Ly6;->b(Ljava/lang/CharSequence;)I

    move-result v12

    if-ne v12, v5, :cond_10

    .line 40
    :cond_f
    sget-object v7, Ly6;->e:Ljava/lang/String;

    goto :goto_7

    .line 41
    :cond_10
    iget-boolean v8, v8, Ly6;->a:Z

    if-eqz v8, :cond_12

    if-eqz v9, :cond_11

    invoke-static {v2}, Ly6;->b(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v13, :cond_12

    .line 42
    :cond_11
    sget-object v7, Ly6;->f:Ljava/lang/String;

    .line 43
    :cond_12
    :goto_7
    invoke-virtual {v11, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 44
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_8
    aput-object v2, v6, v1

    .line 45
    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 46
    iget-object v3, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 47
    iget-boolean v4, v3, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->T:Z

    if-eqz v4, :cond_13

    .line 48
    iget-object v3, v3, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->U:Landroid/content/res/ColorStateList;

    goto :goto_9

    .line 49
    :cond_13
    iget-object v3, v3, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->V:Landroid/content/res/ColorStateList;

    :goto_9
    new-array v4, v10, [LWe1;

    .line 50
    new-instance v6, LWe1;

    .line 51
    sget-object v7, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->h0:Ljava/lang/Object;

    const-string v8, "<pub>"

    const-string v9, "</pub>"

    .line 52
    invoke-direct {v6, v8, v9, v7}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v6, v4, v1

    new-instance v6, LWe1;

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    .line 53
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-direct {v7, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const-string v3, "<bg>"

    const-string v8, "</bg>"

    invoke-direct {v6, v3, v8, v7}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v6, v4, v5

    .line 54
    invoke-static {v2, v4}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object v2

    .line 55
    sget-object v3, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->h0:Ljava/lang/Object;

    .line 56
    invoke-virtual {v2, v3}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 57
    sget-object v4, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->h0:Ljava/lang/Object;

    .line 58
    invoke-virtual {v2, v4}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 59
    sget-object v6, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->h0:Ljava/lang/Object;

    .line 60
    invoke-virtual {v2, v6}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    goto :goto_a

    .line 61
    :cond_14
    iget-object v2, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    iget-object v2, v2, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->e0:LSJ0;

    .line 62
    invoke-interface {v2}, LSJ0;->m()LNp0;

    move-result-object v2

    .line 63
    iget-object v3, v2, LNp0;->b:Ljava/lang/CharSequence;

    iget v4, v2, LNp0;->d:I

    iget v2, v2, LNp0;->e:I

    invoke-interface {v3, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 64
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v3, 0x0

    .line 65
    :goto_a
    iget-object v6, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    iget-object v6, v6, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->e0:LSJ0;

    .line 66
    invoke-interface {v6}, LSJ0;->n()Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 67
    iget-object v6, v6, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->K:Landroid/widget/TextView;

    .line 68
    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_15

    const/4 v6, 0x1

    goto :goto_b

    :cond_15
    const/4 v6, 0x0

    .line 69
    :goto_b
    iget-object v7, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 70
    iget-object v7, v7, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->L:Landroid/view/View;

    const/16 v8, 0x8

    if-eqz v6, :cond_16

    const/4 v9, 0x0

    goto :goto_c

    :cond_16
    const/16 v9, 0x8

    .line 71
    :goto_c
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v7, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 73
    iget-object v7, v7, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->M:Landroid/view/View;

    if-eqz v6, :cond_17

    const/4 v8, 0x0

    .line 74
    :cond_17
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v6, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 76
    iget-object v6, v6, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->N:LMp0;

    .line 77
    invoke-static {v0, v2, v3, v4, v0}, LNp0;->a(Ljava/lang/String;Ljava/lang/CharSequence;IILjava/lang/String;)LNp0;

    move-result-object v0

    .line 78
    invoke-virtual {v6, v0, v5, v1}, LMp0;->a(LNp0;II)Z

    return-void

    .line 79
    :cond_18
    :goto_d
    iget-object v0, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 80
    iget-object v0, v0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->N:LMp0;

    .line 81
    sget-object v2, LNp0;->h:LNp0;

    invoke-virtual {v0, v2, v1, v1}, LMp0;->a(LNp0;II)Z

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->a(Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->n()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k()V
    .locals 6

    .line 1
    iget-object v0, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, LEK0;->l()V

    .line 3
    iget-object v1, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 4
    iget-object v2, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->S:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 5
    iget-boolean v3, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->T:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->U:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->V:Landroid/content/res/ColorStateList;

    .line 6
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 7
    :cond_1
    iget-object v2, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->R:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->a(Landroid/widget/ImageButton;)V

    .line 8
    iget-object v2, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    .line 9
    iget-object v5, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->a(Landroid/widget/ImageButton;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10
    :cond_2
    iget-object v2, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->P:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->a(Landroid/widget/ImageButton;)V

    .line 11
    iget-object v1, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 12
    iget-object v2, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->N:LMp0;

    .line 13
    iget-boolean v1, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->T:Z

    .line 14
    iget-object v2, v2, LMp0;->b:LQp0;

    invoke-virtual {v2, v1}, LQp0;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {p0}, LEK0;->d()V

    .line 16
    :cond_3
    iget-object v1, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 17
    iget-object v2, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->O:Landroid/widget/TextView;

    .line 18
    iget-boolean v1, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->T:Z

    if-eqz v1, :cond_4

    const v1, 0x7f06008e

    goto :goto_2

    :cond_4
    const v1, 0x7f060092

    .line 19
    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 20
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    iget-object v1, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 22
    iget-object v2, v1, LQK0;->D:LqK0;

    if-eqz v2, :cond_6

    .line 23
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->getBackground()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    .line 24
    invoke-static {v1, v3, v2}, LAO0;->a(Landroid/content/res/Resources;ZI)Z

    move-result v1

    if-nez v1, :cond_5

    .line 25
    iget-object v0, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 26
    iget-object v1, v0, LQK0;->D:LqK0;

    .line 27
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->getBackground()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {v1, v0, v3}, LqK0;->a(IZ)V

    goto :goto_3

    .line 28
    :cond_5
    iget-object v1, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 29
    iget-object v1, v1, LQK0;->D:LqK0;

    const v2, 0x7f060155

    .line 30
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 31
    invoke-virtual {v1, v2}, LjM0;->setBackgroundColor(I)V

    .line 32
    iget-object v1, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 33
    iget-object v1, v1, LQK0;->D:LqK0;

    const v2, 0x7f060156

    .line 34
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 35
    invoke-virtual {v1, v0}, LqK0;->a(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public l()V
    .locals 3

    .line 1
    iget-object v0, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 2
    iget v1, v0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->c0:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->e0:LSJ0;

    .line 4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->a(Landroid/content/Context;)Z

    move-result v0

    .line 5
    invoke-interface {v1, v0}, LSJ0;->a(Z)I

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 7
    iget-object v0, v0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->P:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v0, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 10
    iget-object v0, v0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->b0:LHK0;

    .line 11
    iget-object v1, v0, LHK0;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, LHK0;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 12
    :cond_1
    iget-object v1, v0, LHK0;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, LHK0;->b:Landroid/view/View;

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iget v2, v0, LHK0;->e:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, v0, LHK0;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 15
    :cond_3
    iget-object v1, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 16
    iget-object v1, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->P:Landroid/widget/ImageButton;

    .line 17
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 18
    iget-object v0, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 19
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 20
    iget-object v1, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    iget-object v1, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->e0:LSJ0;

    .line 21
    invoke-interface {v1}, LSJ0;->p()I

    move-result v1

    .line 22
    invoke-static {v0, v1}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 23
    iget-object v1, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 24
    iget-object v1, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->P:Landroid/widget/ImageButton;

    .line 25
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 26
    iget-object v0, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 27
    iget-object v0, v0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->b0:LHK0;

    .line 28
    iget-object v1, v0, LHK0;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, LHK0;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 29
    :cond_4
    iget-object v1, v0, LHK0;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, LHK0;->a:Landroid/view/View;

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 31
    :cond_5
    iget-object v0, v0, LHK0;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 32
    :cond_6
    :goto_0
    iget-object v0, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    iget-object v0, v0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->e0:LSJ0;

    .line 33
    invoke-interface {v0}, LSJ0;->j()I

    move-result v0

    .line 34
    iget-object v1, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v1, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 36
    iget-object v1, v1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->P:Landroid/widget/ImageButton;

    .line 37
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p0}, LEK0;->d()V

    .line 39
    iget-object v0, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 40
    iget-object v0, v0, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->K:Landroid/widget/TextView;

    .line 41
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, LEK0;->w:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    invoke-virtual {v0}, LQK0;->k()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public n()V
    .locals 0

    return-void
.end method
