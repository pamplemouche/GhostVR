.class public Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreference;
.super Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(LGc;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->a(LGc;)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070266

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x1020006

    .line 4
    invoke-virtual {p1, v1}, LGc;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    .line 6
    invoke-static {p1, v0, v1, v2, v3}, LA7;->a(Landroid/view/View;IIII)V

    return-void
.end method
