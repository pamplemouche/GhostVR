.class public LiC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LMC0;


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;LfC0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LiC0;->a:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, LiC0;->a:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-virtual {v1}, Lz2;->l()LD2;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, LiC0;->a:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    const/4 v2, 0x0

    .line 3
    iput-object v2, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->Q0:Ljava/util/List;

    .line 4
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->S()V

    .line 5
    iget-object v1, v0, LiC0;->a:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    .line 6
    iget-object v1, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    .line 7
    iget v1, v1, LuC0;->a:I

    invoke-static {v1}, LuC0;->b(I)I

    move-result v1

    const/16 v3, 0x27

    const/4 v4, -0x1

    if-eq v1, v3, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x14

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v4, :cond_1e

    .line 8
    iget-object v1, v0, LiC0;->a:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    .line 9
    iget-object v2, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->S0:Ljava/util/Set;

    if-nez v2, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LyC0;

    .line 12
    iget-object v4, v4, LyC0;->w:LzC0;

    .line 13
    invoke-virtual {v4}, LzC0;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, LFO0;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 14
    iget-object v7, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->S0:Ljava/util/Set;

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 15
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 16
    :cond_4
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LyC0;

    .line 18
    iget-object v8, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->J0:Ljava/lang/String;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v7}, LyC0;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->J0:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 19
    :cond_6
    new-instance v8, LOC0;

    .line 20
    iget-object v9, v1, Lrc;->u0:LDc;

    .line 21
    iget-object v9, v9, LDc;->a:Landroid/content/Context;

    .line 22
    iget-object v10, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    invoke-direct {v8, v9, v7, v10}, LOC0;-><init>(Landroid/content/Context;LyC0;LuC0;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 23
    :cond_7
    iput v6, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->P0:I

    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8

    .line 25
    invoke-virtual {v1, v6}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->h(I)V

    .line 26
    invoke-virtual {v1, v6, v5}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->a(IZ)V

    .line 27
    invoke-virtual {v1, v6}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->i(I)V

    goto/16 :goto_11

    .line 28
    :cond_8
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 29
    iget-boolean v4, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->K0:Z

    if-nez v4, :cond_a

    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LOC0;

    .line 31
    iget-object v8, v1, Lrc;->u0:LDc;

    .line 32
    iget-object v8, v8, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 33
    invoke-virtual {v8, v7}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4

    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_10

    .line 34
    :cond_a
    iget-object v4, v1, Lrc;->u0:LDc;

    .line 35
    iget-object v4, v4, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string v7, "allowed_group"

    .line 36
    invoke-virtual {v4, v7}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lvc;

    .line 37
    iget-object v7, v1, Lrc;->u0:LDc;

    .line 38
    iget-object v7, v7, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string v8, "blocked_group"

    .line 39
    invoke-virtual {v7, v8}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Lvc;

    .line 40
    iget-object v8, v1, Lrc;->u0:LDc;

    .line 41
    iget-object v8, v8, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    const-string v9, "managed_group"

    .line 42
    invoke-virtual {v8, v9}, Lvc;->c(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lvc;

    .line 43
    iget-object v9, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, LuC0;->a(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 44
    invoke-static {}, LA20;->a()LA20;

    move-result-object v9

    .line 45
    iget-object v9, v9, LA20;->a:LB20;

    invoke-virtual {v9}, LB20;->a()Ljava/util/Set;

    move-result-object v9

    goto :goto_5

    .line 46
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v9

    .line 47
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LOC0;

    .line 48
    iget-object v14, v13, LOC0;->n0:LyC0;

    .line 49
    iget-object v14, v14, LyC0;->w:LzC0;

    .line 50
    invoke-virtual {v14}, LzC0;->b()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 51
    invoke-virtual {v8, v13}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_e

    :cond_c
    const/4 v14, 0x0

    :goto_7
    const/16 v15, 0x13

    if-ge v14, v15, :cond_13

    .line 52
    iget-object v15, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    invoke-virtual {v15, v14}, LuC0;->a(I)Z

    move-result v15

    if-nez v15, :cond_d

    goto :goto_b

    :cond_d
    const/4 v15, 0x0

    :goto_8
    const/16 v6, 0x9

    const/4 v5, 0x2

    if-ge v15, v6, :cond_f

    .line 53
    invoke-static {v15}, LWB0;->a(I)I

    move-result v6

    .line 54
    invoke-static {v14}, LuC0;->b(I)I

    move-result v3

    if-ne v6, v3, :cond_e

    .line 55
    iget-object v3, v13, LOC0;->n0:LyC0;

    .line 56
    invoke-virtual {v3, v15}, LyC0;->a(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v5, v3, :cond_13

    goto :goto_a

    :cond_e
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x1

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    :goto_9
    const/16 v6, 0x8

    if-ge v3, v6, :cond_12

    .line 57
    invoke-static {v3}, LcC0;->a(I)I

    move-result v15

    .line 58
    invoke-static {v14}, LuC0;->b(I)I

    move-result v6

    if-ne v15, v6, :cond_11

    const/4 v6, 0x4

    if-ne v3, v6, :cond_10

    goto :goto_c

    .line 59
    :cond_10
    iget-object v6, v13, LOC0;->n0:LyC0;

    .line 60
    invoke-virtual {v6, v3}, LyC0;->b(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v5, v3, :cond_13

    :goto_a
    const/4 v3, 0x1

    goto :goto_d

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_12
    :goto_b
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_7

    :cond_13
    :goto_c
    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_14

    .line 61
    invoke-virtual {v7, v13}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x1

    goto :goto_e

    .line 62
    :cond_14
    invoke-virtual {v4, v13}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    .line 63
    iget v3, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->P0:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    iput v3, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->P0:I

    :goto_e
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 64
    :cond_15
    iget-object v3, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    invoke-virtual {v3, v5}, LuC0;->a(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 65
    iget v3, v4, Landroid/support/v7/preference/Preference;->C:I

    add-int/2addr v3, v5

    .line 66
    invoke-virtual {v7, v3}, Landroid/support/v7/preference/Preference;->b(I)V

    .line 67
    :cond_16
    iget-boolean v3, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->O0:Z

    if-eqz v3, :cond_19

    .line 68
    iget v3, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->P0:I

    if-nez v3, :cond_18

    if-nez v12, :cond_17

    if-lez v11, :cond_17

    .line 69
    iput-boolean v5, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->N0:Z

    goto :goto_f

    .line 70
    :cond_17
    iput-boolean v5, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->L0:Z

    :cond_18
    :goto_f
    const/4 v3, 0x0

    .line 71
    iput-boolean v3, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->O0:Z

    .line 72
    :cond_19
    iget-boolean v3, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->L0:Z

    if-nez v3, :cond_1a

    invoke-virtual {v7}, Lvc;->y()V

    .line 73
    :cond_1a
    iget-boolean v3, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->M0:Z

    if-nez v3, :cond_1b

    invoke-virtual {v4}, Lvc;->y()V

    .line 74
    :cond_1b
    iget-boolean v3, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->N0:Z

    if-nez v3, :cond_1c

    invoke-virtual {v8}, Lvc;->y()V

    :cond_1c
    move v6, v12

    .line 75
    :goto_10
    iput-object v2, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->Q0:Ljava/util/List;

    .line 76
    invoke-virtual {v1, v6}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->h(I)V

    .line 77
    iget v3, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->P0:I

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->R()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->a(IZ)V

    .line 78
    invoke-virtual {v1, v11}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->i(I)V

    .line 79
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v5, 0x1

    goto :goto_12

    :cond_1d
    :goto_11
    const/4 v5, 0x0

    :goto_12
    move v4, v5

    const/4 v8, 0x0

    goto/16 :goto_15

    .line 80
    :cond_1e
    iget-object v1, v0, LiC0;->a:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    if-eqz v1, :cond_28

    .line 81
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 82
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LyC0;

    .line 83
    invoke-virtual {v5}, LyC0;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_20
    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LOB0;

    .line 84
    iget-object v8, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->J0:Ljava/lang/String;

    if-eqz v8, :cond_21

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_21

    .line 85
    iget-object v8, v7, LOB0;->z:Ljava/lang/String;

    .line 86
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->J0:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 87
    :cond_21
    iget-object v8, v7, LOB0;->A:Ljava/lang/String;

    .line 88
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    if-nez v8, :cond_22

    .line 89
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 90
    iget-object v9, v7, LOB0;->A:Ljava/lang/String;

    .line 91
    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_22
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v7, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_23
    const/4 v5, 0x0

    .line 94
    invoke-virtual {v1, v5}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->h(I)V

    const/4 v4, 0x1

    .line 95
    invoke-virtual {v1, v5, v4}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->a(IZ)V

    .line 96
    invoke-virtual {v1, v5}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->i(I)V

    .line 97
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 98
    new-instance v7, Landroid/support/v7/preference/Preference;

    .line 99
    iget-object v8, v1, Lrc;->u0:LDc;

    .line 100
    iget-object v8, v8, LDc;->a:Landroid/content/Context;

    .line 101
    invoke-direct {v7, v8, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    invoke-virtual {v7}, Landroid/support/v7/preference/Preference;->h()Landroid/os/Bundle;

    move-result-object v8

    .line 103
    iget-object v9, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    .line 104
    invoke-virtual {v9}, LuC0;->b()I

    move-result v9

    const-string v10, "org.chromium.chrome.preferences.content_settings_type"

    .line 105
    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    invoke-virtual {v1}, Lz2;->l()LD2;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "title"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/io/Serializable;

    const-string v10, "org.chromium.chrome.preferences.object_infos"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 108
    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/io/Serializable;

    const-string v10, "org.chromium.chrome.preferences.site_set"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 109
    iget-object v8, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->I0:LuC0;

    .line 110
    invoke-virtual {v8}, LuC0;->b()I

    move-result v8

    invoke-static {v8}, LYB0;->b(I)I

    move-result v8

    .line 111
    invoke-virtual {v7, v8}, Landroid/support/v7/preference/Preference;->a(I)V

    .line 112
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LOB0;

    .line 113
    iget-object v6, v6, LOB0;->z:Ljava/lang/String;

    .line 114
    invoke-virtual {v7, v6}, Landroid/support/v7/preference/Preference;->b(Ljava/lang/CharSequence;)V

    .line 115
    const-class v6, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 116
    iput-object v6, v7, Landroid/support/v7/preference/Preference;->K:Ljava/lang/String;

    .line 117
    iget-object v6, v1, Lrc;->u0:LDc;

    .line 118
    iget-object v6, v6, LDc;->h:Landroid/support/v7/preference/PreferenceScreen;

    .line 119
    invoke-virtual {v6, v7}, Lvc;->b(Landroid/support/v7/preference/Preference;)Z

    goto :goto_14

    :cond_24
    const/4 v8, 0x0

    .line 120
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_15

    :cond_25
    const/4 v4, 0x0

    .line 121
    :goto_15
    iget-object v1, v0, LiC0;->a:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    .line 122
    iget-object v1, v1, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->F0:Landroid/widget/TextView;

    if-nez v1, :cond_26

    return-void

    :cond_26
    if-eqz v4, :cond_27

    const/16 v8, 0x8

    .line 123
    :cond_27
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 124
    :cond_28
    throw v2
.end method
