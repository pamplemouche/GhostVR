.class public Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;
.super Lorg/chromium/chrome/browser/infobar/InfoBar;
.source "PG"

# interfaces
.implements Lq0;
.implements Lng0;


# instance fields
.field public final G:I

.field public final H:I

.field public final I:Lkg0;

.field public J:J

.field public K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

.field public L:I

.field public M:Log0;

.field public N:Log0;

.field public O:Landroid/widget/ImageButton;

.field public P:Lpf0;

.field public Q:Lig0;

.field public R:Z

.field public S:Z

.field public T:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;[Ljava/lang/String;[II)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f08024f

    .line 1
    invoke-direct {p0, v4, v2, v3, v3}, Lorg/chromium/chrome/browser/infobar/InfoBar;-><init>(IILjava/lang/CharSequence;Landroid/graphics/Bitmap;)V

    const/4 v4, 0x1

    .line 2
    iput-boolean v4, v0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->S:Z

    move v4, p1

    .line 3
    iput v4, v0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->G:I

    move/from16 v4, p9

    .line 4
    iput v4, v0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->H:I

    .line 5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    if-eqz p8, :cond_0

    .line 7
    aget v4, p8, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_0
    move-object v4, v3

    .line 8
    :goto_1
    new-instance v5, Ljg0;

    aget-object v6, p7, v2

    aget-object v8, v1, v2

    invoke-direct {v5, v6, v8, v4}, Ljg0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Lkg0;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v4, v1

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v4 .. v12}, Lkg0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZZ[Z)V

    .line 10
    iput-object v1, v0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    return-void
.end method

.method public static create(ILjava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;[Ljava/lang/String;[II)Lorg/chromium/chrome/browser/infobar/InfoBar;
    .locals 11

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->f(I)V

    .line 2
    new-instance v0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;

    move-object v1, v0

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;-><init>(ILjava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;[Ljava/lang/String;[II)V

    return-object v0
.end method

.method public static f(I)V
    .locals 2

    const-string v0, "Translate.CompactInfobar.Event"

    const/16 v1, 0x19

    .line 1
    invoke-static {v0, p0, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method private onPageTranslated(I)V
    .locals 5

    .line 1
    iget v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->L:I

    const-string v1, "Translate.CompactInfobar.TranslationsPerPage"

    invoke-static {v1, v0}, LfV;->c(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, v0, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->n0:Lv0;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v1, Lv0;->e:Landroid/view/View;

    .line 5
    instance-of v3, v1, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabContent;

    if-eqz v3, :cond_1

    .line 6
    check-cast v1, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabContent;

    .line 7
    iget-object v3, v1, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabContent;->x:Landroid/widget/ProgressBar;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8
    iget-object v1, v1, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabContent;->w:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->n0:Lv0;

    :goto_0
    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    const v0, 0x7f130619

    .line 11
    invoke-static {p1, v0, v2}, Lmf1;->a(Landroid/content/Context;II)Lmf1;

    move-result-object p1

    .line 12
    iget-object p1, p1, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 13
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    .line 14
    iget-object p1, p1, Landroid/support/design/widget/TabLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    invoke-virtual {p1, v2}, Landroid/support/design/widget/TabLayout;->c(I)Lv0;

    move-result-object p1

    invoke-virtual {p1}, Lv0;->b()V

    .line 16
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    .line 17
    iget-object v0, p1, Landroid/support/design/widget/TabLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 18
    iget-object p1, p1, Landroid/support/design/widget/TabLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private setAutoAlwaysTranslate()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    const v1, 0x7f13061f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2
    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    .line 3
    invoke-virtual {v4}, Lkg0;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    invoke-virtual {v4}, Lkg0;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->a(Ljava/lang/String;II)V

    return-void
.end method

.method private setNativePtr(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->J:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 44
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    const v0, 0x7f130618

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v4, :cond_2

    const/4 v5, 0x3

    if-eq p1, v5, :cond_1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x6

    .line 46
    invoke-static {p1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->f(I)V

    .line 47
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->d(I)V

    .line 48
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->N:Log0;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->m()I

    move-result v0

    invoke-virtual {p1, v4, v0}, Log0;->a(II)V

    return-void

    :cond_1
    const/16 p1, 0x8

    .line 49
    invoke-static {p1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->f(I)V

    .line 50
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    .line 51
    iget-object p1, p1, Lkg0;->a:Ljava/lang/String;

    const-string v0, "Translate.CompactInfobar.Language.NeverTranslate"

    .line 52
    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    const v0, 0x7f130621

    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    iget-object v5, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    .line 55
    invoke-virtual {v5}, Lkg0;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p0, p1, v2, v4}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->a(Ljava/lang/String;II)V

    return-void

    :cond_2
    const/16 p1, 0x9

    .line 58
    invoke-static {p1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->f(I)V

    .line 59
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    const v0, 0x7f130622

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x14

    .line 61
    invoke-virtual {p0, p1, v0, v1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->a(Ljava/lang/String;II)V

    return-void

    .line 62
    :cond_3
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    .line 63
    iget-object p1, p1, Lkg0;->f:[Z

    aget-boolean p1, p1, v4

    if-nez p1, :cond_4

    const/4 p1, 0x7

    .line 64
    invoke-static {p1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->f(I)V

    .line 65
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    .line 66
    iget-object p1, p1, Lkg0;->a:Ljava/lang/String;

    const-string v0, "Translate.CompactInfobar.Language.AlwaysTranslate"

    .line 67
    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    const v0, 0x7f13061f

    new-array v2, v4, [Ljava/lang/Object;

    .line 69
    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    .line 70
    invoke-virtual {v4}, Lkg0;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    invoke-virtual {v4}, Lkg0;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 71
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x12

    .line 72
    invoke-virtual {p0, p1, v0, v3}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->a(Ljava/lang/String;II)V

    goto :goto_0

    .line 73
    :cond_4
    invoke-static {v2}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->f(I)V

    .line 74
    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->c(I)V

    :goto_0
    return-void

    .line 75
    :cond_5
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->f(I)V

    .line 76
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->d(I)V

    .line 77
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->N:Log0;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->m()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Log0;->a(II)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .line 78
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->J:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    .line 79
    iget-object v1, v0, Lkg0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lkg0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iput-object p1, v0, Lkg0;->b:Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x5

    .line 81
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->f(I)V

    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    .line 83
    iget-object v0, v0, Lkg0;->b:Ljava/lang/String;

    const-string v1, "Translate.CompactInfobar.Language.MoreLanguages"

    .line 84
    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->J:J

    const/4 v2, 0x1

    .line 86
    invoke-static {v0, v1, p0, v2, p1}, LJ/N;->Mcr$d_0m(JLjava/lang/Object;ILjava/lang/String;)V

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    invoke-virtual {v1, p1}, Lkg0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->a(ILjava/lang/CharSequence;)V

    .line 88
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->e(I)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->i()LZF0;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->c(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_5

    if-eq p3, v0, :cond_4

    const/4 v1, 0x2

    if-eq p3, v1, :cond_3

    const/4 v1, 0x3

    if-eq p3, v1, :cond_2

    const/4 v1, 0x4

    if-eq p3, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x16

    .line 91
    invoke-static {v1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->f(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    .line 92
    invoke-static {v1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->f(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xe

    .line 93
    invoke-static {v1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->f(I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    .line 94
    invoke-static {v1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->f(I)V

    goto :goto_0

    :cond_5
    const/16 v1, 0xd

    .line 95
    invoke-static {v1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->f(I)V

    .line 96
    :goto_0
    new-instance v1, Lig0;

    invoke-direct {v1, p0, p3}, Lig0;-><init>(Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;I)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->Q:Lig0;

    .line 97
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->i()LZF0;

    move-result-object p3

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->Q:Lig0;

    .line 98
    invoke-static {p1, v1, v0, p2}, LUF0;->a(Ljava/lang/CharSequence;LXF0;II)LUF0;

    move-result-object p1

    const/4 p2, 0x0

    .line 99
    iput-boolean p2, p1, LUF0;->h:Z

    .line 100
    iget-object p2, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    const v0, 0x7f130620

    .line 101
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 102
    iput-object p2, p1, LUF0;->d:Ljava/lang/String;

    .line 103
    iput-object v0, p1, LUF0;->e:Ljava/lang/Object;

    .line 104
    invoke-virtual {p3, p1}, LZF0;->a(LUF0;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 106
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lkg0;->e:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 107
    iget-object v0, v0, Lkg0;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    :cond_1
    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, LfV;->e(Ljava/lang/String;I)V

    :cond_2
    return-void

    .line 109
    :cond_3
    throw v1
.end method

.method public a(Lpf0;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e00dd

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4
    new-instance v1, Lfg0;

    invoke-direct {v1, p0}, Lfg0;-><init>(Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const v1, 0x7f0b04c0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    .line 6
    iget v3, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->H:I

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 7
    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    const v5, 0x7f06008c

    .line 8
    invoke-static {v3, v5}, LR3;->a(Landroid/content/Context;I)I

    move-result v3

    .line 9
    iget-object v5, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    const v6, 0x7f060183

    .line 10
    invoke-static {v5, v6}, LR3;->a(Landroid/content/Context;I)I

    move-result v5

    if-eqz v1, :cond_0

    .line 11
    invoke-static {v3, v5}, Landroid/support/design/widget/TabLayout;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 12
    iget-object v5, v1, Landroid/support/design/widget/TabLayout;->F:Landroid/content/res/ColorStateList;

    if-eq v5, v3, :cond_1

    .line 13
    iput-object v3, v1, Landroid/support/design/widget/TabLayout;->F:Landroid/content/res/ColorStateList;

    .line 14
    iget-object v3, v1, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    .line 15
    iget-object v6, v1, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv0;

    invoke-virtual {v6}, Lv0;->c()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 16
    :cond_0
    throw v4

    .line 17
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/CharSequence;

    iget-object v6, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    invoke-virtual {v6}, Lkg0;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    invoke-virtual {v6}, Lkg0;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    if-eqz v1, :cond_6

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 18
    aget-object v6, v5, v4

    .line 19
    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0e00de

    .line 20
    invoke-virtual {v8, v9, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabContent;

    .line 21
    iget-object v9, v1, Landroid/support/design/widget/TabLayout;->F:Landroid/content/res/ColorStateList;

    .line 22
    iget-object v10, v8, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabContent;->w:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 23
    iget-object v9, v8, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabContent;->w:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->c()Lv0;

    move-result-object v9

    .line 25
    iput-object v8, v9, Lv0;->e:Landroid/view/View;

    .line 26
    invoke-virtual {v9}, Lv0;->c()V

    .line 27
    iput-object v6, v9, Lv0;->c:Ljava/lang/CharSequence;

    .line 28
    invoke-virtual {v9}, Lv0;->c()V

    .line 29
    iget-object v6, v1, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    invoke-virtual {v1, v9, v6}, Landroid/support/design/widget/TabLayout;->a(Lv0;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 30
    :cond_2
    iget v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->G:I

    if-ne v1, v7, :cond_3

    .line 31
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    invoke-virtual {v1, v7}, Landroid/support/design/widget/TabLayout;->c(I)Lv0;

    move-result-object v1

    invoke-virtual {v1}, Lv0;->b()V

    .line 32
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    invoke-virtual {v1, v7}, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->e(I)V

    .line 33
    iput-boolean v7, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->T:Z

    goto :goto_2

    :cond_3
    if-ne v1, v3, :cond_4

    .line 34
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    invoke-virtual {v1, v7}, Landroid/support/design/widget/TabLayout;->c(I)Lv0;

    move-result-object v1

    invoke-virtual {v1}, Lv0;->b()V

    .line 35
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    .line 36
    iget-object v2, v1, Landroid/support/design/widget/TabLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 37
    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_5
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    new-instance v2, Lgg0;

    invoke-direct {v2, p0}, Lgg0;-><init>(Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const v1, 0x7f0b04bc

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->O:Landroid/widget/ImageButton;

    .line 40
    new-instance v2, Lhg0;

    invoke-direct {v2, p0}, Lhg0;-><init>(Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 41
    invoke-virtual {p1, v0, v1}, Lpf0;->a(Landroid/view/View;F)V

    .line 42
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->P:Lpf0;

    return-void

    .line 43
    :cond_6
    throw v4
.end method

.method public a(Lv0;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    .line 2
    iget-object v0, v0, Lkg0;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->c(Z)V

    return-void

    .line 5
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->J:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    .line 6
    iget-object v1, v0, Lkg0;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lkg0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iput-object p1, v0, Lkg0;->a:Ljava/lang/String;

    :cond_1
    if-eqz v1, :cond_2

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    .line 9
    iget-object v0, v0, Lkg0;->a:Ljava/lang/String;

    const-string v1, "Translate.CompactInfobar.Language.PageNotIn"

    .line 10
    invoke-virtual {p0, v1, v0}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->J:J

    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, p0, v2, p1}, LJ/N;->Mcr$d_0m(JLjava/lang/Object;ILjava/lang/String;)V

    .line 13
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    invoke-virtual {v1, p1}, Lkg0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->a(ILjava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->e(I)V

    :cond_2
    return-void
.end method

.method public b(Lv0;)V
    .locals 0

    return-void
.end method

.method public final c(I)V
    .locals 5

    .line 12
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->J:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eqz p1, :cond_4

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x3

    if-eq p1, v0, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_2

    return-void

    .line 13
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->n()V

    return-void

    .line 14
    :cond_2
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->T:Z

    .line 15
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->J:J

    .line 16
    invoke-static {v0, v1, p0, v3, v2}, LJ/N;->MIY$H5s3(JLjava/lang/Object;IZ)V

    return-void

    .line 17
    :cond_3
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->T:Z

    .line 18
    iget-wide v3, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->J:J

    .line 19
    invoke-static {v3, v4, p0, v1, v2}, LJ/N;->MIY$H5s3(JLjava/lang/Object;IZ)V

    return-void

    .line 20
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->n()V

    .line 21
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    .line 22
    iget-object p1, p1, Lkg0;->f:[Z

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_5

    .line 23
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    .line 24
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->a()I

    move-result p1

    if-nez p1, :cond_5

    .line 25
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->e(I)V

    :cond_5
    return-void
.end method

.method public c(Lv0;)V
    .locals 2

    .line 26
    iget p1, p1, Lv0;->d:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->f(I)V

    .line 28
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    .line 29
    iget-object p1, p1, Lkg0;->b:Ljava/lang/String;

    const-string v1, "Translate.CompactInfobar.Language.Translate"

    .line 30
    invoke-virtual {p0, v1, p1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->e(I)V

    return-void

    .line 32
    :cond_1
    iget p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->L:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->L:I

    const-string v0, "Translate.CompactInfobar.TranslationsPerPage"

    invoke-static {v0, p1}, LfV;->c(Ljava/lang/String;I)V

    const/16 p1, 0xc

    .line 33
    invoke-static {p1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->f(I)V

    const/4 p1, 0x4

    .line 34
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBar;->b(I)V

    return-void
.end method

.method public final c(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->D:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->T:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->f(I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->J:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    .line 5
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->J:J

    iget-boolean p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->R:Z

    .line 6
    invoke-static {v0, v1, p0, p1}, LJ/N;->MX8X$p3M(JLjava/lang/Object;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    const v0, 0x7f130621

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 8
    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    .line 9
    invoke-virtual {v3}, Lkg0;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x13

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->a(Ljava/lang/String;II)V

    return-void

    .line 11
    :cond_2
    invoke-super {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->e()V

    return-void
.end method

.method public final d(I)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->J:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MM0pw8sM(JLjava/lang/Object;)Z

    move-result v7

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->N:Log0;

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Log0;

    .line 5
    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    .line 6
    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->O:Landroid/widget/ImageButton;

    iget-object v5, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Log0;-><init>(Landroid/content/Context;Landroid/view/View;Lkg0;Lng0;Z)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->N:Log0;

    :cond_1
    return-void

    .line 7
    :cond_2
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->M:Log0;

    if-nez p1, :cond_3

    .line 8
    new-instance p1, Log0;

    .line 9
    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    .line 10
    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->O:Landroid/widget/ImageButton;

    iget-object v5, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Log0;-><init>(Landroid/content/Context;Landroid/view/View;Lkg0;Lng0;Z)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->M:Log0;

    :cond_3
    return-void
.end method

.method public e()V
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->e()V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->c(Z)V

    return-void
.end method

.method public final e(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 1
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;->e(I)V

    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/infobar/InfoBar;->b(I)V

    .line 3
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->T:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->K:Lorg/chromium/chrome/browser/infobar/translate/TranslateTabLayout;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout;->c(I)Lv0;

    move-result-object p1

    invoke-virtual {p1}, Lv0;->b()V

    :goto_0
    return-void
.end method

.method public j()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->l()V

    return-void
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->M:Log0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Log0;->a()V

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->N:Log0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Log0;->a()V

    .line 3
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->i()LZF0;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->Q:Lig0;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->i()LZF0;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->Q:Lig0;

    invoke-virtual {v0, v1}, LZF0;->a(LXF0;)V

    :cond_2
    return-void
.end method

.method public final m()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->P:Lpf0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    .line 2
    iget-object v1, v0, Lkg0;->f:[Z

    const/4 v2, 0x2

    aget-boolean v3, v1, v2

    xor-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    .line 3
    aget-boolean v1, v1, v4

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lkg0;->f:[Z

    aput-boolean v3, v0, v2

    .line 5
    :goto_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->J:J

    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->I:Lkg0;

    .line 6
    iget-object v3, v3, Lkg0;->f:[Z

    aget-boolean v3, v3, v2

    .line 7
    invoke-static {v0, v1, p0, v2, v3}, LJ/N;->MIY$H5s3(JLjava/lang/Object;IZ)V

    return-void
.end method

.method public onNativeDestroyed()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateCompactInfoBar;->J:J

    .line 2
    invoke-super {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->onNativeDestroyed()V

    return-void
.end method
