.class public LUt0;
.super LDQ0;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/autofill/PersonalDataManager$GetSubKeysRequestDelegate;


# instance fields
.field public final c:Landroid/os/Handler;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/Set;

.field public final f:Lu10;

.field public final g:LTt0;

.field public final h:I

.field public final i:Z

.field public j:Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;

.field public k:LTQ0;

.field public l:LTQ0;

.field public m:LTQ0;

.field public n:Ljava/util/List;

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/Runnable;

.field public r:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

.field public s:LYQ0;

.field public t:Landroid/app/ProgressDialog;

.field public u:LO81;


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, LDQ0;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LUt0;->c:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LUt0;->d:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LUt0;->e:Ljava/util/Set;

    .line 5
    new-instance v0, Lu10;

    invoke-direct {v0}, Lu10;-><init>()V

    iput-object v0, p0, LUt0;->f:Lu10;

    .line 6
    new-instance v0, LTt0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LTt0;-><init>(LSt0;)V

    iput-object v0, p0, LUt0;->g:LTt0;

    .line 7
    iput p1, p0, LUt0;->h:I

    .line 8
    iput-boolean p2, p0, LUt0;->i:Z

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 103
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;ILjava/lang/CharSequence;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    invoke-static {p2}, LUt0;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 86
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->d:Ljava/lang/String;

    return-void

    .line 87
    :pswitch_1
    invoke-static {p2}, LUt0;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 88
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->e:Ljava/lang/String;

    return-void

    .line 89
    :pswitch_2
    invoke-static {p2}, LUt0;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 90
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->f:Ljava/lang/String;

    return-void

    .line 91
    :pswitch_3
    invoke-static {p2}, LUt0;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 92
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->j:Ljava/lang/String;

    return-void

    .line 93
    :pswitch_4
    invoke-static {p2}, LUt0;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 94
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->k:Ljava/lang/String;

    return-void

    .line 95
    :pswitch_5
    invoke-static {p2}, LUt0;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 96
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->i:Ljava/lang/String;

    return-void

    .line 97
    :pswitch_6
    invoke-static {p2}, LUt0;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 98
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->h:Ljava/lang/String;

    return-void

    .line 99
    :pswitch_7
    invoke-static {p2}, LUt0;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 100
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->g:Ljava/lang/String;

    return-void

    .line 101
    :pswitch_8
    invoke-static {p2}, LUt0;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 102
    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->l:Ljava/lang/String;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, LUt0;->u:LO81;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, v0, LO81;->i:Ljava/lang/String;

    return-object p1

    .line 3
    :pswitch_1
    iget-object p1, v0, LO81;->f:Ljava/lang/String;

    return-object p1

    .line 4
    :pswitch_2
    iget-object p1, v0, LO81;->b:Ljava/lang/String;

    return-object p1

    .line 5
    :pswitch_3
    iget-object p1, v0, LO81;->h:Ljava/lang/String;

    return-object p1

    .line 6
    :pswitch_4
    iget-object p1, v0, LO81;->k:Ljava/lang/String;

    return-object p1

    .line 7
    :pswitch_5
    iget-object p1, v0, LO81;->e:Ljava/lang/String;

    return-object p1

    .line 8
    :pswitch_6
    iget-object p1, v0, LO81;->c:Ljava/lang/String;

    return-object p1

    .line 9
    :pswitch_7
    iget-object p1, v0, LO81;->j:Ljava/lang/String;

    return-object p1

    .line 10
    :pswitch_8
    iget-object p1, v0, LO81;->d:Ljava/lang/String;

    return-object p1

    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, LUt0;->o:Z

    .line 105
    iget-object v1, p0, LDQ0;->a:LNQ0;

    .line 106
    iput-boolean v0, v1, LNQ0;->S:Z

    .line 107
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    const/4 v0, 0x5

    int-to-long v1, v0

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-nez v6, :cond_5

    .line 108
    iget-boolean p1, p0, LUt0;->o:Z

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 109
    iput-boolean p1, p0, LUt0;->o:Z

    .line 110
    iget-object v1, p0, LDQ0;->a:LNQ0;

    .line 111
    iget-boolean v1, v1, LNQ0;->S:Z

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 112
    :cond_1
    iget-object v1, p0, LUt0;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 113
    new-instance v2, LTQ0;

    invoke-direct {v2, v0}, LTQ0;-><init>(I)V

    .line 114
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object p1, p0, LUt0;->p:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 116
    iget-object p1, p0, LUt0;->t:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 117
    iget-object p1, p0, LUt0;->t:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 118
    :cond_2
    iput-object v5, p0, LUt0;->t:Landroid/app/ProgressDialog;

    .line 119
    iget-object p1, p0, LUt0;->p:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LUt0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, LUt0;->c:Landroid/os/Handler;

    iget-object v0, p0, LUt0;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 121
    :cond_3
    iget-object p1, p0, LUt0;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LTQ0;

    iget-object v2, p0, LUt0;->r:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0}, Lju0;->b(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;I)Ljava/lang/String;

    move-result-object v0

    .line 123
    iput-object v0, v1, LTQ0;->s:Ljava/lang/CharSequence;

    goto :goto_0

    .line 124
    :cond_4
    iget-object p1, p0, LUt0;->k:LTQ0;

    .line 125
    iget-object p1, p1, LTQ0;->s:Ljava/lang/CharSequence;

    .line 126
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LUt0;->r:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p0, p1, v0}, LUt0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, LDQ0;->a:LNQ0;

    iget-object v0, p0, LUt0;->s:LYQ0;

    invoke-virtual {p1, v0}, LNQ0;->a(LYQ0;)V

    :goto_1
    return-void

    .line 129
    :cond_5
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 130
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 131
    iget-wide v1, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 132
    invoke-static {v1, v2, v0, p1}, LJ/N;->M4kIHYDl(JLjava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 134
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 135
    iget-wide v6, v8, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    const/4 v10, 0x5

    move-object v9, p1

    move-object v11, p0

    .line 136
    invoke-static/range {v6 .. v11}, LJ/N;->M8TAYWBI(JLjava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 137
    :cond_6
    throw v5

    .line 138
    :cond_7
    throw v5
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 139
    iget-object v0, p0, LUt0;->j:Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 140
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 141
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 143
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v2, p1

    move-object v3, p2

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    .line 145
    invoke-static/range {v2 .. v7}, LJ/N;->MM$m8Gqm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 146
    iput-object p1, v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;->a:Ljava/lang/String;

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 147
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge p2, v0, :cond_2

    .line 148
    new-instance v0, LXy0;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 149
    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v11, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    invoke-direct {v0, v3, v4, v5, v2}, LXy0;-><init>(ILjava/lang/String;ZZ)V

    .line 150
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 151
    :cond_2
    iput-object v12, p0, LUt0;->n:Ljava/util/List;

    .line 152
    iget-object p2, p0, LUt0;->k:LTQ0;

    invoke-virtual {p0, p1}, LUt0;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    iput-object v0, p2, LTQ0;->n:Ljava/lang/CharSequence;

    .line 154
    iget-object p2, p0, LUt0;->s:LYQ0;

    iget-object v0, p0, LUt0;->k:LTQ0;

    .line 155
    iget-object p2, p2, LYQ0;->b:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 156
    :goto_3
    iget-object v0, p0, LUt0;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_8

    .line 157
    iget-object v0, p0, LUt0;->n:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXy0;

    .line 158
    iget-object v3, p0, LUt0;->d:Ljava/util/Map;

    iget v4, v0, LXy0;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LTQ0;

    .line 159
    iget v4, v0, LXy0;->a:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3

    iget v4, p0, LUt0;->h:I

    if-eq v4, v2, :cond_3

    const-string v4, "AutofillEnableCompanyName"

    .line 160
    invoke-static {v4}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_8

    .line 161
    :cond_3
    iget-object v4, v0, LXy0;->b:Ljava/lang/String;

    .line 162
    iput-object v4, v3, LTQ0;->p:Ljava/lang/CharSequence;

    .line 163
    iget-boolean v4, v0, LXy0;->d:Z

    if-nez v4, :cond_5

    iget v4, v0, LXy0;->a:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v4, 0x1

    .line 164
    :goto_5
    iput-boolean v4, v3, LTQ0;->z:Z

    .line 165
    iget-boolean v4, v0, LXy0;->c:Z

    if-nez v4, :cond_7

    iget v4, v0, LXy0;->a:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6

    goto :goto_6

    .line 166
    :cond_6
    iput-object v1, v3, LTQ0;->l:Ljava/lang/CharSequence;

    goto :goto_7

    .line 167
    :cond_7
    :goto_6
    iget-object v4, p0, LDQ0;->b:Landroid/content/Context;

    const v5, 0x7f1304f1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 168
    iput-object v4, v3, LTQ0;->l:Ljava/lang/CharSequence;

    .line 169
    :goto_7
    iget v0, v0, LXy0;->a:I

    invoke-virtual {p0, v0}, LUt0;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    iput-object v0, v3, LTQ0;->n:Ljava/lang/CharSequence;

    .line 171
    iget-object v0, p0, LUt0;->s:LYQ0;

    .line 172
    iget-object v0, v0, LYQ0;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 173
    :cond_8
    iget-object p1, p0, LUt0;->l:LTQ0;

    iget-object p2, p0, LUt0;->u:LO81;

    if-eqz p2, :cond_9

    iget-object v1, p2, LO81;->g:Ljava/lang/String;

    .line 174
    :cond_9
    iput-object v1, p1, LTQ0;->n:Ljava/lang/CharSequence;

    .line 175
    iget-object p1, p0, LUt0;->s:LYQ0;

    iget-object p2, p0, LUt0;->l:LTQ0;

    .line 176
    iget-object p1, p1, LYQ0;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object p1, p0, LUt0;->m:LTQ0;

    if-eqz p1, :cond_a

    iget-object p2, p0, LUt0;->s:LYQ0;

    .line 178
    iget-object p2, p2, LYQ0;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    return-void

    .line 179
    :cond_b
    throw v1
.end method

.method public a(Lju0;Lorg/chromium/base/Callback;)V
    .locals 13

    .line 11
    iget-object v0, p0, LUt0;->j:Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;-><init>()V

    iput-object v0, p0, LUt0;->j:Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 12
    new-instance v3, Lju0;

    iget-object v4, p0, LDQ0;->b:Landroid/content/Context;

    new-instance v5, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-direct {v5}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;-><init>()V

    invoke-direct {v3, v4, v5}, Lju0;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)V

    goto :goto_1

    :cond_2
    move-object v3, p1

    .line 13
    :goto_1
    iget-object v4, v3, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 14
    iput-object v4, p0, LUt0;->r:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 15
    new-instance v4, LYQ0;

    if-eqz v2, :cond_3

    .line 16
    iget-object v2, p0, LDQ0;->b:Landroid/content/Context;

    const v5, 0x7f13016d

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 17
    :cond_3
    iget-object v2, p1, LCQ0;->A:Ljava/lang/String;

    .line 18
    :goto_2
    invoke-direct {v4, v2}, LYQ0;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, LUt0;->s:LYQ0;

    const/4 v2, 0x0

    .line 19
    iput-object v2, p0, LUt0;->p:Ljava/lang/String;

    .line 20
    iget-object v4, p0, LUt0;->k:LTQ0;

    if-nez v4, :cond_5

    .line 21
    iget-object v4, p0, LDQ0;->b:Landroid/content/Context;

    const v5, 0x7f130183

    .line 22
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 23
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-static {v5, v6}, LJ/N;->Mp96QTcn(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    .line 27
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 28
    new-instance v9, LYy0;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-direct {v9, v10, v11}, LYy0;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 29
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v5

    .line 30
    invoke-virtual {v5, v0}, Ljava/text/Collator;->setStrength(I)V

    .line 31
    new-instance v0, LVy0;

    invoke-direct {v0, v5}, LVy0;-><init>(Ljava/text/Collator;)V

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 32
    invoke-static {v4, v7, v2}, LTQ0;->a(Ljava/lang/CharSequence;Ljava/util/List;Ljava/lang/CharSequence;)LTQ0;

    move-result-object v0

    iput-object v0, p0, LUt0;->k:LTQ0;

    .line 33
    :cond_5
    iget-object v0, p0, LUt0;->k:LTQ0;

    new-instance v2, LSt0;

    invoke-direct {v2, p0}, LSt0;-><init>(LUt0;)V

    .line 34
    iput-object v2, v0, LTQ0;->u:Lorg/chromium/base/Callback;

    .line 35
    iget-object v0, p0, LUt0;->k:LTQ0;

    iget-object v2, p0, LUt0;->r:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-static {v2}, Lju0;->b(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object v2

    .line 36
    iput-object v2, v0, LTQ0;->s:Ljava/lang/CharSequence;

    .line 37
    iget-object v0, p0, LUt0;->g:LTt0;

    iget-object v2, p0, LUt0;->k:LTQ0;

    .line 38
    iget-object v2, v2, LTQ0;->s:Ljava/lang/CharSequence;

    .line 39
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    iput-object v2, v0, LTt0;->a:Ljava/lang/String;

    .line 41
    iget-object v0, p0, LUt0;->f:Lu10;

    iget-object v2, p0, LUt0;->k:LTQ0;

    .line 42
    iget-object v2, v2, LTQ0;->s:Ljava/lang/CharSequence;

    .line 43
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    iput-object v2, v0, Lu10;->x:Ljava/lang/String;

    .line 45
    iget-object v0, p0, LUt0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 46
    iget-object v0, p0, LUt0;->d:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, LTQ0;->e()LTQ0;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, LUt0;->d:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, LTQ0;->e()LTQ0;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, LUt0;->d:Ljava/util/Map;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, LTQ0;->e()LTQ0;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, LUt0;->d:Ljava/util/Map;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 50
    new-instance v6, LTQ0;

    const/4 v7, 0x6

    invoke-direct {v6, v7}, LTQ0;-><init>(I)V

    .line 51
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, LUt0;->d:Ljava/util/Map;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 53
    new-instance v6, LTQ0;

    invoke-direct {v6, v7}, LTQ0;-><init>(I)V

    .line 54
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, LUt0;->d:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 56
    new-instance v6, LTQ0;

    invoke-direct {v6, v2}, LTQ0;-><init>(I)V

    .line 57
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, LUt0;->d:Ljava/util/Map;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 59
    new-instance v5, LTQ0;

    invoke-direct {v5, v4}, LTQ0;-><init>(I)V

    .line 60
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_6
    iget-object v0, p0, LUt0;->l:LTQ0;

    if-nez v0, :cond_7

    const/4 v4, 0x1

    .line 62
    iget-object v0, p0, LDQ0;->b:Landroid/content/Context;

    const v2, 0x7f130185

    .line 63
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, LUt0;->e:Ljava/util/Set;

    iget-object v7, p0, LUt0;->f:Lu10;

    iget-object v8, p0, LUt0;->g:LTt0;

    const/4 v9, 0x0

    iget-object v0, p0, LDQ0;->b:Landroid/content/Context;

    const v2, 0x7f1304f1

    .line 64
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, LDQ0;->b:Landroid/content/Context;

    const v2, 0x7f1304d6

    .line 65
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 66
    invoke-static/range {v4 .. v12}, LTQ0;->a(ILjava/lang/CharSequence;Ljava/util/Set;Landroid/text/TextWatcher;LRQ0;LSQ0;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)LTQ0;

    move-result-object v0

    iput-object v0, p0, LUt0;->l:LTQ0;

    .line 67
    :cond_7
    iget-object v0, p0, LUt0;->l:LTQ0;

    iget-object v2, p0, LUt0;->r:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 68
    iput-object v2, v0, LTQ0;->s:Ljava/lang/CharSequence;

    .line 69
    iget v0, p0, LUt0;->h:I

    if-eq v0, v1, :cond_9

    .line 70
    iget-object v0, p0, LUt0;->m:LTQ0;

    if-nez v0, :cond_8

    const/4 v4, 0x2

    .line 71
    iget-object v0, p0, LDQ0;->b:Landroid/content/Context;

    const v1, 0x7f130184

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, LDQ0;->b:Landroid/content/Context;

    const v1, 0x7f1304ca

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 74
    invoke-static/range {v4 .. v12}, LTQ0;->a(ILjava/lang/CharSequence;Ljava/util/Set;Landroid/text/TextWatcher;LRQ0;LSQ0;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)LTQ0;

    move-result-object v0

    iput-object v0, p0, LUt0;->m:LTQ0;

    .line 75
    :cond_8
    iget-object v0, p0, LUt0;->m:LTQ0;

    iget-object v1, p0, LUt0;->r:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    .line 76
    iput-object v1, v0, LTQ0;->s:Ljava/lang/CharSequence;

    .line 77
    :cond_9
    iget-object v0, p0, LUt0;->s:LYQ0;

    new-instance v1, LQt0;

    invoke-direct {v1, p0, p2, p1}, LQt0;-><init>(LUt0;Lorg/chromium/base/Callback;Lju0;)V

    .line 78
    iput-object v1, v0, LYQ0;->d:Ljava/lang/Runnable;

    .line 79
    iget-object p1, p0, LUt0;->s:LYQ0;

    new-instance v0, LRt0;

    invoke-direct {v0, p0, v3, p2}, LRt0;-><init>(LUt0;Lju0;Lorg/chromium/base/Callback;)V

    .line 80
    iput-object v0, p1, LYQ0;->c:Ljava/lang/Runnable;

    .line 81
    iget-object p1, p0, LUt0;->k:LTQ0;

    .line 82
    iget-object p1, p1, LTQ0;->s:Ljava/lang/CharSequence;

    .line 83
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LUt0;->a(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, LUt0;->u:LO81;

    if-eqz p1, :cond_a

    iget-object p1, p0, LDQ0;->a:LNQ0;

    invoke-virtual {p1}, LNQ0;->d()Z

    :cond_a
    return-void
.end method

.method public onSubKeysReceived([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, LUt0;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LUt0;->o:Z

    .line 3
    iget-object v1, p0, LDQ0;->a:LNQ0;

    .line 4
    iget-boolean v1, v1, LNQ0;->S:Z

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, LUt0;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 6
    array-length v3, p1

    if-eqz v3, :cond_3

    array-length v3, p1

    array-length v4, p2

    if-ne v3, v4, :cond_3

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 8
    :goto_0
    array-length v6, p1

    if-ge v5, v6, :cond_2

    .line 9
    new-instance v6, LYy0;

    aget-object v7, p1, v5

    aget-object v8, p2, v5

    invoke-direct {v6, v7, v8}, LYy0;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v4}, Ljava/text/Collator;->setStrength(I)V

    .line 12
    new-instance p2, LWy0;

    invoke-direct {p2, p1}, LWy0;-><init>(Ljava/text/Collator;)V

    invoke-static {v3, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 13
    iget-object p1, p0, LDQ0;->b:Landroid/content/Context;

    const p2, 0x7f13055f

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {v2, v3, p1}, LTQ0;->a(Ljava/lang/CharSequence;Ljava/util/List;Ljava/lang/CharSequence;)LTQ0;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x5

    .line 16
    new-instance p2, LTQ0;

    invoke-direct {p2, p1}, LTQ0;-><init>(I)V

    move-object p1, p2

    .line 17
    :goto_1
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p1, p0, LUt0;->p:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 19
    iget-object p1, p0, LUt0;->t:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    iget-object p1, p0, LUt0;->t:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 21
    :cond_4
    iput-object v2, p0, LUt0;->t:Landroid/app/ProgressDialog;

    .line 22
    iget-object p1, p0, LUt0;->p:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LUt0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, LUt0;->c:Landroid/os/Handler;

    iget-object p2, p0, LUt0;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 24
    :cond_5
    iget-object p1, p0, LUt0;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTQ0;

    iget-object v1, p0, LUt0;->r:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v1, p2}, Lju0;->b(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;I)Ljava/lang/String;

    move-result-object p2

    .line 26
    iput-object p2, v0, LTQ0;->s:Ljava/lang/CharSequence;

    goto :goto_2

    .line 27
    :cond_6
    iget-object p1, p0, LUt0;->k:LTQ0;

    .line 28
    iget-object p1, p1, LTQ0;->s:Ljava/lang/CharSequence;

    .line 29
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, LUt0;->r:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getLanguageCode()Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-virtual {p0, p1, p2}, LUt0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, LDQ0;->a:LNQ0;

    iget-object p2, p0, LUt0;->s:LYQ0;

    invoke-virtual {p1, p2}, LNQ0;->a(LYQ0;)V

    :goto_3
    return-void
.end method
