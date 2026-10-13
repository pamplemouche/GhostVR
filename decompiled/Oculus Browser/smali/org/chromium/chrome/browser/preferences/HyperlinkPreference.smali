.class public Lorg/chromium/chrome/browser/preferences/HyperlinkPreference;
.super Landroid/support/v7/preference/Preference;
.source "PG"


# instance fields
.field public final i0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object v0, LeS;->a0:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lorg/chromium/chrome/browser/preferences/HyperlinkPreference;->i0:I

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/Preference;->e(Z)V

    return-void
.end method


# virtual methods
.method public r()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 2
    invoke-static {v0}, LzT;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 4
    iget v2, p0, Lorg/chromium/chrome/browser/preferences/HyperlinkPreference;->i0:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lorg/chromium/base/LocaleUtils;->getDefaultLocaleString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2d

    const/16 v4, 0x5f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const-string v3, "$LOCALE"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lp60;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
