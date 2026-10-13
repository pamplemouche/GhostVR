.class public Lorg/chromium/chrome/browser/preferences/TextScalePreference;
.super LJy0;
.source "PG"


# instance fields
.field public o0:Landroid/widget/TextView;

.field public final p0:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

.field public final q0:Ll00;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LJy0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, LMy0;

    invoke-direct {p1, p0}, LMy0;-><init>(Lorg/chromium/chrome/browser/preferences/TextScalePreference;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->q0:Ll00;

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->d()Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->p0:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    const p1, 0x7f0e0071

    .line 4
    iput p1, p0, Landroid/support/v7/preference/Preference;->b0:I

    const p1, 0x7f0e0178

    .line 5
    iput p1, p0, Landroid/support/v7/preference/Preference;->c0:I

    return-void
.end method


# virtual methods
.method public a(LGc;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, LJy0;->a(LGc;)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->o0:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0b035f

    .line 3
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->o0:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->w()V

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->o0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    .line 2
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->p0:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    .line 3
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->a()F

    move-result v3

    mul-float v3, v3, v2

    .line 4
    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
