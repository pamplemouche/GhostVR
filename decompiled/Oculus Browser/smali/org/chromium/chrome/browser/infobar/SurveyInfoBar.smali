.class public Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;
.super Lorg/chromium/chrome/browser/infobar/InfoBar;
.source "PG"


# instance fields
.field public final G:Ljava/lang/String;

.field public final H:Z

.field public final I:I

.field public final J:Lorg/chromium/chrome/browser/infobar/SurveyInfoBarDelegate;

.field public K:Z

.field public L:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZILorg/chromium/chrome/browser/infobar/SurveyInfoBarDelegate;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p3, v1, v0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBar;-><init>(IILjava/lang/CharSequence;Landroid/graphics/Bitmap;)V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->G:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->H:Z

    .line 4
    iput p3, p0, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->I:I

    .line 5
    iput-object p4, p0, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->J:Lorg/chromium/chrome/browser/infobar/SurveyInfoBarDelegate;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->e()V

    return-void
.end method

.method public static create(Ljava/lang/String;ZILorg/chromium/chrome/browser/infobar/SurveyInfoBarDelegate;)Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;-><init>(Ljava/lang/String;ZILorg/chromium/chrome/browser/infobar/SurveyInfoBarDelegate;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->K:Z

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->J:Lorg/chromium/chrome/browser/infobar/SurveyInfoBarDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/infobar/SurveyInfoBarDelegate;->c()V

    .line 4
    invoke-static {}, LkG0;->a()LkG0;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v0, :cond_0

    .line 6
    invoke-super {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->e()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public a(Lpf0;)V
    .locals 8

    .line 8
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->F:J

    .line 9
    invoke-static {v0, v1, p0}, LJ/N;->MmjlxAU9(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    .line 10
    new-instance v1, Ldg0;

    invoke-direct {v1, p0}, Ldg0;-><init>(Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;)V

    .line 11
    iget-object v2, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v2, v1}, LWT;->a(Ljava/lang/Object;)Z

    .line 12
    new-instance v1, LVe1;

    .line 13
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Lcg0;

    invoke-direct {v3, p0, v0}, Lcg0;-><init>(Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-direct {v1, v2, v3}, LVe1;-><init>(Landroid/content/res/Resources;Lorg/chromium/base/Callback;)V

    .line 14
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->J:Lorg/chromium/chrome/browser/infobar/SurveyInfoBarDelegate;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/infobar/SurveyInfoBarDelegate;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [LWe1;

    const/4 v4, 0x0

    new-instance v5, LWe1;

    const-string v6, "<LINK>"

    const-string v7, "</LINK>"

    invoke-direct {v5, v6, v7, v1}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v5, v3, v4

    invoke-static {v2, v3}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object v1

    .line 15
    new-instance v2, Landroid/widget/TextView;

    .line 16
    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    .line 17
    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/16 v1, 0x10

    .line 20
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    const v1, 0x7f1401c4

    .line 21
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 22
    new-instance v1, Leg0;

    invoke-direct {v1, p0, v0}, Leg0;-><init>(Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    invoke-virtual {p1, v2, v0}, Lpf0;->a(Landroid/view/View;F)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->e()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->J:Lorg/chromium/chrome/browser/infobar/SurveyInfoBarDelegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lorg/chromium/chrome/browser/infobar/SurveyInfoBarDelegate;->a(ZZ)V

    .line 3
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->L:Z

    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->L:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->A:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 3
    iget-object v1, v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/InfoBar;

    :goto_0
    const/4 v1, 0x1

    if-ne v0, p0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->J:Lorg/chromium/chrome/browser/infobar/SurveyInfoBarDelegate;

    invoke-interface {v0, v2, v1}, Lorg/chromium/chrome/browser/infobar/SurveyInfoBarDelegate;->a(ZZ)V

    goto :goto_2

    .line 6
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/SurveyInfoBar;->J:Lorg/chromium/chrome/browser/infobar/SurveyInfoBarDelegate;

    invoke-interface {v0, v2, v2}, Lorg/chromium/chrome/browser/infobar/SurveyInfoBarDelegate;->a(ZZ)V

    :goto_2
    return-void
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
