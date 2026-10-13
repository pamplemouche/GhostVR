.class public Lorg/chromium/chrome/browser/preferences/developer/TracingCategoriesPreferences;
.super Lrc;
.source "PG"

# interfaces
.implements Llc;


# instance fields
.field public E0:I

.field public F0:Ljava/util/Set;

.field public G0:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const-string p2, "Select categories"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 3
    iget-object p2, p1, LDc;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p1, p2}, LDc;->a(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p1, Lvc;->j0:Z

    .line 6
    iget-object v0, p0, Lz2;->C:Landroid/os/Bundle;

    const-string v1, "type"

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingCategoriesPreferences;->E0:I

    .line 8
    new-instance v0, Ljava/util/HashSet;

    iget v1, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingCategoriesPreferences;->E0:I

    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->h(I)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingCategoriesPreferences;->F0:Ljava/util/Set;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingCategoriesPreferences;->G0:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-static {}, LPL0;->a()LPL0;

    move-result-object v1

    .line 12
    iget-object v1, v1, LPL0;->d:Ljava/util/Set;

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 15
    new-instance v1, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 16
    iget-object v2, p0, Lrc;->u0:LDc;

    .line 17
    iget-object v2, v2, LDc;->a:Landroid/content/Context;

    const/4 v3, 0x0

    .line 18
    invoke-direct {v1, v2, v3}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v2, "select-all"

    .line 19
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->d(Ljava/lang/String;)V

    const-string v2, "Select all"

    .line 20
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 21
    iput-boolean v2, v1, Landroid/support/v7/preference/Preference;->P:Z

    .line 22
    iput-object p0, v1, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 23
    invoke-virtual {p1, v1}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 25
    invoke-static {v4}, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->e(Ljava/lang/String;)I

    move-result v5

    iget v6, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingCategoriesPreferences;->E0:I

    if-ne v5, v6, :cond_0

    .line 26
    new-instance v5, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;

    .line 27
    iget-object v6, p0, Lrc;->u0:LDc;

    .line 28
    iget-object v6, v6, LDc;->a:Landroid/content/Context;

    .line 29
    invoke-direct {v5, v6, v3}, Lorg/chromium/chrome/browser/preferences/ChromeBaseCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {v5, v4}, Landroid/support/v7/preference/Preference;->d(Ljava/lang/String;)V

    const-string v6, "disabled-by-default-"

    .line 31
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x14

    .line 32
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v4

    .line 33
    :goto_1
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v6, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingCategoriesPreferences;->F0:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v5, v4}, LKc;->f(Z)V

    .line 35
    iput-boolean v2, v5, Landroid/support/v7/preference/Preference;->P:Z

    .line 36
    iput-object p0, v5, Landroid/support/v7/preference/Preference;->A:Llc;

    .line 37
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingCategoriesPreferences;->G0:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p1, v5}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingCategoriesPreferences;->F0:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingCategoriesPreferences;->G0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {v1, p2}, LKc;->f(Z)V

    .line 40
    invoke-virtual {p0, p1}, Lrc;->b(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 41
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 42
    iget-object v0, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v1, "select-all"

    .line 43
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 44
    iget-object p1, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingCategoriesPreferences;->G0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZb;

    .line 45
    invoke-virtual {v0, p2}, LKc;->f(Z)V

    .line 46
    iget-boolean v2, v0, LKc;->k0:Z

    .line 47
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    if-eqz p2, :cond_2

    .line 48
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingCategoriesPreferences;->F0:Ljava/util/Set;

    .line 49
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    .line 50
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 51
    :cond_2
    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingCategoriesPreferences;->F0:Ljava/util/Set;

    .line 52
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    .line 53
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 54
    :goto_1
    iget p1, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingCategoriesPreferences;->E0:I

    iget-object p2, p0, Lorg/chromium/chrome/browser/preferences/developer/TracingCategoriesPreferences;->F0:Ljava/util/Set;

    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/preferences/developer/TracingPreferences;->a(ILjava/util/Set;)V

    return v1
.end method
