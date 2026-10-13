.class public Lorg/chromium/chrome/browser/preferences/languages/LanguageListPreference;
.super Landroid/support/v7/preference/Preference;
.source "PG"


# instance fields
.field public i0:Landroid/widget/TextView;

.field public j0:Landroid/support/v7/widget/RecyclerView;

.field public k0:LRz0;

.field public l0:LGz0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/preferences/languages/LanguageListPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, LRz0;

    invoke-direct {p2, p1}, LRz0;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/languages/LanguageListPreference;->k0:LRz0;

    return-void
.end method


# virtual methods
.method public a(LGc;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(LGc;)V

    const v0, 0x7f0b0034

    .line 2
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/languages/LanguageListPreference;->i0:Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    const v2, 0x7f0802a8

    const v3, 0x7f06014b

    .line 4
    invoke-static {v1, v2, v3}, LDM0;->a(Landroid/content/Context;II)LDM0;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/languages/LanguageListPreference;->i0:Landroid/widget/TextView;

    new-instance v1, LPz0;

    invoke-direct {v1, p0}, LPz0;-><init>(Lorg/chromium/chrome/browser/preferences/languages/LanguageListPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b022e

    .line 7
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/languages/LanguageListPreference;->j0:Landroid/support/v7/widget/RecyclerView;

    .line 8
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 9
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 10
    invoke-direct {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 11
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/languages/LanguageListPreference;->j0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(LQg;)V

    .line 12
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/languages/LanguageListPreference;->j0:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Llf;

    .line 13
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 14
    iget p1, p1, Landroid/support/v7/widget/LinearLayoutManager;->q:I

    .line 15
    invoke-direct {v1, v2, p1}, Llf;-><init>(Landroid/content/Context;I)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(LLg;)V

    .line 17
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/languages/LanguageListPreference;->j0:Landroid/support/v7/widget/RecyclerView;

    .line 18
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    .line 19
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/languages/LanguageListPreference;->k0:LRz0;

    if-eq v0, v1, :cond_0

    .line 20
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->a(LBg;)V

    .line 21
    invoke-static {}, LTz0;->b()LTz0;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/languages/LanguageListPreference;->k0:LRz0;

    .line 22
    iput-object v0, p1, LTz0;->c:LSz0;

    .line 23
    invoke-virtual {v0}, LRz0;->b()V

    :cond_0
    return-void
.end method
