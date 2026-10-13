.class public Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;
.super Lrc;
.source "PG"


# instance fields
.field public E0:LuC0;

.field public F0:Ljava/util/ArrayList;

.field public G0:Ljava/util/ArrayList;

.field public H0:Landroid/support/v7/widget/SearchView;

.field public I0:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->I0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public L()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->G0:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->O()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->P()V

    :goto_0
    return-void
.end method

.method public final O()V
    .locals 4

    .line 1
    new-instance v0, LNC0;

    invoke-direct {v0}, LNC0;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->E0:LuC0;

    new-instance v2, LUB0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, LUB0;-><init>(Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;LSB0;)V

    invoke-virtual {v0, v1, v2}, LNC0;->a(LuC0;LMC0;)V

    return-void
.end method

.method public final P()V
    .locals 9

    .line 1
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 2
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 3
    invoke-virtual {v0}, Lvc;->y()V

    .line 4
    iget-object v1, p0, Lrc;->u0:LDc;

    .line 5
    iget-object v2, v1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 6
    new-instance v3, LXx0;

    .line 7
    iget-object v1, v1, LDc;->a:Landroid/content/Context;

    .line 8
    invoke-direct {v3, v1}, LXx0;-><init>(Landroid/content/Context;)V

    .line 9
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->F0:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOB0;

    .line 10
    iget-object v1, v1, LOB0;->z:Ljava/lang/String;

    .line 11
    iget-object v5, p0, Lz2;->e0:Landroid/view/View;

    .line 12
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1301e2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 14
    new-instance v1, LPB0;

    invoke-direct {v1, p0, v5}, LPB0;-><init>(Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;Ljava/lang/String;)V

    const v5, 0x7f1306a0

    const v6, 0x7f080113

    invoke-virtual {v3, v6, v5, v1}, LXx0;->a(IILandroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {v2, v3}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    .line 16
    new-instance v1, Landroid/support/v7/preference/Preference;

    .line 17
    iget-object v3, p0, Lrc;->u0:LDc;

    .line 18
    iget-object v3, v3, LDc;->a:Landroid/content/Context;

    const/4 v5, 0x0

    .line 19
    invoke-direct {v1, v3, v5}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v3, 0x7f0e0094

    .line 20
    iput v3, v1, Landroid/support/v7/preference/Preference;->b0:I

    .line 21
    invoke-virtual {v2, v1}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    .line 22
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->G0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->F0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 23
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->G0:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LyC0;

    .line 24
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->F0:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOB0;

    .line 25
    new-instance v3, LOC0;

    .line 26
    iget-object v7, p0, Lrc;->u0:LDc;

    .line 27
    iget-object v7, v7, LDc;->a:Landroid/content/Context;

    .line 28
    iget-object v8, p0, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->E0:LuC0;

    invoke-direct {v3, v7, v1, v8}, LOC0;-><init>(Landroid/content/Context;LyC0;LuC0;)V

    .line 29
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->h()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "org.chromium.chrome.preferences.site"

    invoke-virtual {v7, v8, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 30
    const-class v1, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 31
    iput-object v1, v3, Landroid/support/v7/preference/Preference;->K:Ljava/lang/String;

    const v1, 0x7f1306a1

    .line 32
    new-instance v7, LQB0;

    invoke-direct {v7, p0, v2}, LQB0;-><init>(Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;LOB0;)V

    invoke-virtual {v3, v6, v1, v7}, LXx0;->a(IILandroid/view/View$OnClickListener;)V

    .line 33
    new-instance v1, LTB0;

    invoke-direct {v1, p0, v2}, LTB0;-><init>(Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;LOB0;)V

    .line 34
    iput-object v1, v3, LXx0;->i0:Lqy0;

    .line 35
    invoke-static {v1, v3}, Lsy0;->b(Lqy0;Landroid/support/v7/preference/Preference;)V

    .line 36
    invoke-virtual {v0, v3}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 37
    :cond_0
    iput-object v5, p0, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->G0:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lrc;->a(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v0, "org.chromium.chrome.preferences.content_settings_type"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 4
    invoke-static {p1}, LuC0;->c(I)LuC0;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->E0:LuC0;

    .line 5
    iget-object p1, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v0, "org.chromium.chrome.preferences.object_infos"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->F0:Ljava/util/ArrayList;

    .line 7
    iget-object p1, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v0, "org.chromium.chrome.preferences.site_set"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->G0:Ljava/util/ArrayList;

    .line 9
    iget-object p1, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v0, "title"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lz2;->c(Z)V

    .line 13
    iput-boolean p1, p0, Lz2;->c0:Z

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 30
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 31
    iget-object p2, p1, LDc;->a:Landroid/content/Context;

    .line 32
    invoke-virtual {p1, p2}, LDc;->a(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Lrc;->b(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 14
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0f000b

    .line 15
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0b039f

    .line 16
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    .line 17
    invoke-interface {p2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    .line 18
    check-cast p2, Landroid/support/v7/widget/SearchView;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->H0:Landroid/support/v7/widget/SearchView;

    const/high16 v0, 0x2000000

    .line 19
    iget-object p2, p2, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2, v0}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 20
    new-instance p2, LSB0;

    invoke-direct {p2, p0}, LSB0;-><init>(Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;)V

    .line 21
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->H0:Landroid/support/v7/widget/SearchView;

    .line 22
    iput-object p2, v0, Landroid/support/v7/widget/SearchView;->h0:Lwh;

    const p2, 0x7f0b026d

    const v0, 0x7f1303bf

    const/4 v1, 0x0

    .line 23
    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 24
    invoke-virtual {p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080160

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v1

    invoke-virtual {v1}, LP3;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 25
    invoke-static {p2, v0, v1}, LY0;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)LY0;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 4

    .line 26
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0b026d

    if-ne p1, v0, :cond_0

    .line 27
    invoke-static {}, Lue0;->a()Lue0;

    move-result-object p1

    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object v0

    const v1, 0x7f13033a

    .line 28
    invoke-virtual {p0, v1}, Lz2;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    const/4 v3, 0x0

    .line 29
    invoke-virtual {p1, v0, v1, v2, v3}, Lue0;->a(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
