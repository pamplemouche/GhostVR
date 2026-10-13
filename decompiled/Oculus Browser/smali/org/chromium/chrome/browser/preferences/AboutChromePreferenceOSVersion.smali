.class public Lorg/chromium/chrome/browser/preferences/AboutChromePreferenceOSVersion;
.super Landroid/support/v7/preference/Preference;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0e013d

    .line 2
    iput p1, p0, Landroid/support/v7/preference/Preference;->b0:I

    return-void
.end method


# virtual methods
.method public a(LGc;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(LGc;)V

    .line 2
    invoke-static {}, Lpo0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b0301

    .line 3
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
