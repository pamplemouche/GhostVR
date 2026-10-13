.class public Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;
.super Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;
.source "PG"


# instance fields
.field public p0:Landroid/view/View;

.field public q0:Ljava/lang/Runnable;

.field public r0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(LGc;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;->a(LGc;)V

    .line 2
    iget-object p1, p1, Ldh;->w:Landroid/view/View;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->p0:Landroid/view/View;

    .line 3
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070266

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x1020006

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    .line 7
    invoke-static {p1, v0, v1, v2, v3}, LA7;->a(Landroid/view/View;IIII)V

    .line 8
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->p0:Landroid/view/View;

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 9
    new-instance v0, Ldy0;

    invoke-direct {v0, p0, p1}, Ldy0;-><init>(Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 9

    .line 10
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<link>"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "</link>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, LuO0;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "</?link>"

    const-string v1, ""

    .line 13
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 p1, 0x1

    new-array v3, p1, [LWe1;

    const/4 v4, 0x0

    .line 14
    new-instance v5, LWe1;

    new-instance v6, LVe1;

    .line 15
    iget-object v7, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 16
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ley0;

    invoke-direct {v8, p0}, Ley0;-><init>(Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;)V

    invoke-direct {v6, v7, v8}, LVe1;-><init>(Landroid/content/res/Resources;Lorg/chromium/base/Callback;)V

    invoke-direct {v5, v1, v2, v6}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v5, v3, v4

    .line 17
    invoke-static {v0, v3}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object v0

    .line 18
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->r0:Z

    .line 19
    invoke-super {p0, v0}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 20
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
