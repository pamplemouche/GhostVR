.class public Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;
.super Lrc;
.source "PG"

# interfaces
.implements Lmc;


# instance fields
.field public E0:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrc;-><init>()V

    return-void
.end method


# virtual methods
.method public L()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz2;->c0:Z

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->O()V

    return-void
.end method

.method public final O()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-boolean v3, v0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->E0:Z

    const/16 v4, 0xa

    const/16 v5, 0xe

    const/4 v6, 0x1

    const/16 v7, 0x9

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x7

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 6
    :cond_0
    invoke-static {}, LuC0;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v3, 0x11

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {}, LwT;->c()LwT;

    move-result-object v3

    const-string v12, "enable-experimental-web-platform-features"

    .line 11
    invoke-virtual {v3, v12}, LwT;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x12

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x8

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xb

    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xd

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x10

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v12, 0x0

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 25
    invoke-virtual {v0, v3}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->h(I)Landroid/support/v7/preference/Preference;

    move-result-object v13

    .line 26
    invoke-static {v3}, LuC0;->b(I)I

    move-result v14

    .line 27
    invoke-virtual {v1, v14}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b(I)Z

    move-result v15

    if-ne v3, v11, :cond_4

    .line 28
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->b()Lorg/chromium/chrome/browser/preferences/LocationSettings;

    move-result-object v16

    .line 29
    invoke-virtual/range {v16 .. v16}, Lorg/chromium/chrome/browser/preferences/LocationSettings;->a()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 30
    invoke-static {}, LOT0;->d()LOT0;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, LOT0;->c()Z

    move-result v16

    if-eqz v16, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    :cond_4
    if-eqz v15, :cond_5

    .line 31
    invoke-static {v1, v14}, LJ/N;->MuzIxnPt(Ljava/lang/Object;I)I

    move-result v16

    const/4 v5, 0x0

    goto :goto_3

    .line 32
    :cond_5
    invoke-virtual {v1, v14}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->a(I)Z

    move-result v16

    :goto_2
    move/from16 v5, v16

    const/16 v16, 0x0

    .line 33
    :goto_3
    invoke-static {v14}, LYB0;->c(I)LXB0;

    move-result-object v6

    .line 34
    iget v6, v6, LXB0;->b:I

    .line 35
    invoke-virtual {v13, v6}, Landroid/support/v7/preference/Preference;->d(I)V

    .line 36
    iput-object v0, v13, Landroid/support/v7/preference/Preference;->B:Lmc;

    if-eq v10, v3, :cond_6

    if-eq v7, v3, :cond_6

    if-ne v4, v3, :cond_7

    .line 37
    :cond_6
    invoke-static {v3}, LuC0;->d(I)LuC0;

    move-result-object v6

    .line 38
    invoke-virtual/range {p0 .. p0}, Lz2;->l()LD2;

    move-result-object v4

    invoke-virtual {v6, v4}, LuC0;->c(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 39
    invoke-static {v14, v12}, LYB0;->a(IZ)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/support/v7/preference/Preference;->c(I)V

    goto :goto_4

    :cond_7
    if-ne v8, v3, :cond_8

    if-eqz v5, :cond_8

    .line 40
    invoke-static {v1}, LJ/N;->M5m45FqE(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const v3, 0x7f130678

    .line 41
    invoke-virtual {v13, v3}, Landroid/support/v7/preference/Preference;->c(I)V

    goto :goto_4

    :cond_8
    if-ne v11, v3, :cond_9

    if-eqz v5, :cond_9

    .line 42
    invoke-static {v1}, LJ/N;->M2FD$AKz(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const v3, 0x7f130677

    .line 43
    invoke-virtual {v13, v3}, Landroid/support/v7/preference/Preference;->c(I)V

    goto :goto_4

    :cond_9
    if-ne v9, v3, :cond_a

    if-nez v5, :cond_a

    const v3, 0x7f130681

    .line 44
    invoke-virtual {v13, v3}, Landroid/support/v7/preference/Preference;->c(I)V

    :goto_4
    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    const/4 v4, 0x1

    if-ne v4, v3, :cond_b

    if-nez v5, :cond_b

    const v3, 0x7f130676

    .line 45
    invoke-virtual {v13, v3}, Landroid/support/v7/preference/Preference;->c(I)V

    :goto_5
    const/16 v6, 0xe

    goto :goto_6

    :cond_b
    const/16 v6, 0xe

    if-ne v6, v3, :cond_c

    if-nez v5, :cond_c

    const v3, 0x7f130693

    .line 46
    invoke-virtual {v13, v3}, Landroid/support/v7/preference/Preference;->c(I)V

    goto :goto_6

    :cond_c
    if-eqz v15, :cond_d

    .line 47
    invoke-static/range {v16 .. v16}, LYB0;->a(I)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/support/v7/preference/Preference;->c(I)V

    goto :goto_6

    .line 48
    :cond_d
    invoke-static {v14, v5}, LYB0;->a(IZ)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/support/v7/preference/Preference;->c(I)V

    .line 49
    :goto_6
    invoke-virtual {v13}, Landroid/support/v7/preference/Preference;->n()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 50
    invoke-virtual/range {p0 .. p0}, Lz2;->l()LD2;

    move-result-object v3

    invoke-static {v14}, LYB0;->b(I)I

    move-result v5

    .line 51
    invoke-static {v3, v5}, Lxy0;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 52
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v14, v3}, LYB0;->a(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/support/v7/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    const/16 v4, 0xa

    const/16 v5, 0xe

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 53
    :cond_f
    invoke-virtual {v0, v12}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->h(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 54
    iput-object v0, v1, Landroid/support/v7/preference/Preference;->B:Lmc;

    :cond_10
    const-string v1, "media"

    .line 55
    invoke-virtual {v0, v1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 56
    iput-object v0, v1, Landroid/support/v7/preference/Preference;->B:Lmc;

    :cond_11
    const/16 v1, 0xf

    .line 57
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->h(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 58
    iput-object v0, v1, Landroid/support/v7/preference/Preference;->B:Lmc;

    :cond_12
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lz2;->c0:Z

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lrc;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    const p1, 0x7f170018

    .line 1
    invoke-static {p0, p1}, Lxy0;->a(Lrc;I)V

    .line 2
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    const p2, 0x7f130501

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    .line 3
    iget-object p1, p0, Lz2;->C:Landroid/os/Bundle;

    const-string p2, "media"

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "category"

    const-string v2, ""

    .line 4
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->E0:Z

    .line 7
    invoke-virtual {p0}, Lz2;->l()LD2;

    move-result-object p1

    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 8
    iget-object v1, v1, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    .line 9
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 10
    :cond_0
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->E0:Z

    const/16 v1, 0xc

    const/4 v2, 0x2

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x13

    if-ge p1, v0, :cond_3

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lrc;->u0:LDc;

    .line 12
    iget-object v0, v0, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 13
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->h(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v0, v3}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 15
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 16
    invoke-virtual {p0, p2}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    .line 17
    :cond_4
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 18
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 19
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->h(I)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 20
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 21
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 22
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->h(I)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 23
    invoke-static {}, LuC0;->e()Z

    move-result p1

    if-nez p1, :cond_5

    .line 24
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 25
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 26
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->h(I)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 27
    :cond_5
    invoke-static {}, LwT;->c()LwT;

    move-result-object p1

    const-string p2, "enable-experimental-web-platform-features"

    .line 28
    invoke-virtual {p1, p2}, LwT;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 29
    iget-object p1, p0, Lrc;->u0:LDc;

    .line 30
    iget-object p1, p1, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const/16 p2, 0x12

    .line 31
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->h(I)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lvc;->d(Landroid/support/v7/preference/Preference;)Z

    .line 32
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsPreferences;->O()V

    return-void
.end method

.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->h()Landroid/os/Bundle;

    move-result-object v0

    .line 2
    iget-object v1, p1, Landroid/support/v7/preference/Preference;->I:Ljava/lang/String;

    const-string v2, "category"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->h()Landroid/os/Bundle;

    move-result-object v0

    .line 5
    iget-object p1, p1, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "title"

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final h(I)Landroid/support/v7/preference/Preference;
    .locals 0

    .line 1
    invoke-static {p1}, LuC0;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrc;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    return-object p1
.end method
