.class public Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;
.super Landroid/support/v7/preference/Preference;
.source "PG"


# instance fields
.field public i0:Landroid/content/res/ColorStateList;

.field public j0:Lqy0;

.field public k0:Ljava/lang/Boolean;

.field public l0:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0e016c

    .line 3
    iput v0, p0, Landroid/support/v7/preference/Preference;->b0:I

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->e(Z)V

    .line 5
    sget-object v1, LeS;->I:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->i0:Landroid/content/res/ColorStateList;

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(LGc;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(LGc;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->i0:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->j0:Lqy0;

    iget-object v1, p1, Ldh;->w:Landroid/view/View;

    invoke-static {v0, p0, v1}, Lsy0;->a(Lqy0;Landroid/support/v7/preference/Preference;Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->k0:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 8
    iput-boolean v0, p1, LGc;->Q:Z

    .line 9
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->l0:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 11
    iput-boolean v0, p1, LGc;->R:Z

    :cond_2
    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ChromeBasePreference;->j0:Lqy0;

    invoke-static {v0, p0}, Lsy0;->c(Lqy0;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
