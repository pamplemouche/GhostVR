.class public Ltw0;
.super LZw0;
.source "PG"


# instance fields
.field public final g:Landroid/content/Context;

.field public final h:LGu0;

.field public i:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Collection;LGu0;LHu0;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v1, v0}, LZw0;-><init>(ILCQ0;)V

    .line 2
    iput-object p1, p0, Ltw0;->g:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Ltw0;->h:LGu0;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Ltw0;->i:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Ltw0;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 8
    iget-object v2, p0, Ltw0;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {p0, v2}, Ltw0;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)Lku0;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 9
    iget-object v3, p0, Ltw0;->h:LGu0;

    .line 10
    iget-object v4, v2, Lku0;->M:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v3, v3, LGu0;->g:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    iget-object v3, p0, Ltw0;->h:LGu0;

    .line 13
    iget-object v4, v2, Lku0;->N:Ljava/lang/String;

    .line 14
    invoke-virtual {v3}, LGu0;->c()LRQ0;

    move-result-object v5

    invoke-interface {v5, v4}, LRQ0;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v3, v3, LGu0;->h:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_1
    iget-object v3, p0, Ltw0;->h:LGu0;

    .line 16
    iget-object v4, v2, Lku0;->O:Ljava/lang/String;

    .line 17
    invoke-virtual {v3}, LGu0;->b()LRQ0;

    move-result-object v5

    invoke-interface {v5, v4}, LRQ0;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v3, v3, LGu0;->i:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_3
    throw v0

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_5
    new-instance v1, Lsw0;

    invoke-direct {v1, p0}, Lsw0;-><init>(Ltw0;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 21
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_10

    .line 22
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lku0;

    const/4 v4, 0x0

    .line 23
    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    .line 24
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lku0;

    .line 25
    iget-boolean v6, v5, Lku0;->J:Z

    if-eqz v6, :cond_7

    .line 26
    iget-object v6, v5, Lku0;->M:Ljava/lang/String;

    if-nez v6, :cond_6

    iget-object v6, v2, Lku0;->M:Ljava/lang/String;

    if-eqz v6, :cond_6

    goto :goto_4

    .line 27
    :cond_6
    iget-object v6, v5, Lku0;->M:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v7, v2, Lku0;->M:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 28
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_4

    .line 29
    :cond_7
    iget-boolean v6, v5, Lku0;->K:Z

    if-eqz v6, :cond_9

    .line 30
    iget-object v6, v5, Lku0;->N:Ljava/lang/String;

    if-nez v6, :cond_8

    iget-object v6, v2, Lku0;->N:Ljava/lang/String;

    if-eqz v6, :cond_8

    goto :goto_4

    .line 31
    :cond_8
    iget-object v6, v5, Lku0;->N:Ljava/lang/String;

    if-eqz v6, :cond_9

    iget-object v7, v2, Lku0;->N:Ljava/lang/String;

    if-eqz v7, :cond_9

    .line 32
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_4

    .line 33
    :cond_9
    iget-boolean v6, v5, Lku0;->L:Z

    if-eqz v6, :cond_b

    .line 34
    iget-object v6, v5, Lku0;->O:Ljava/lang/String;

    if-nez v6, :cond_a

    iget-object v6, v2, Lku0;->O:Ljava/lang/String;

    if-eqz v6, :cond_a

    goto :goto_4

    .line 35
    :cond_a
    iget-object v5, v5, Lku0;->O:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v6, v2, Lku0;->O:Ljava/lang/String;

    if-eqz v6, :cond_b

    .line 36
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    :goto_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_b
    const/4 v5, 0x1

    :goto_5
    if-eqz v5, :cond_c

    const/4 v4, 0x0

    goto :goto_6

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_e

    .line 37
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_f

    goto :goto_7

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 39
    :cond_10
    :goto_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v1, -0x1

    if-nez p1, :cond_11

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lku0;

    .line 40
    iget-boolean p1, p1, LCQ0;->w:Z

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    goto :goto_8

    :cond_11
    const/4 p1, -0x1

    :goto_8
    if-eqz p4, :cond_13

    .line 41
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq p1, v1, :cond_12

    const/4 v1, 0x1

    goto :goto_9

    :cond_12
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p4, p3, v2, v1}, LHu0;->a(IIZ)V

    .line 42
    :cond_13
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_14

    goto :goto_a

    :cond_14
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lku0;

    .line 43
    :goto_a
    iget-object p4, p0, Ltw0;->h:LGu0;

    .line 44
    iget-boolean p4, p4, LGu0;->c:Z

    if-eqz p4, :cond_16

    if-eqz v0, :cond_15

    .line 45
    iget-object p4, v0, Lku0;->M:Ljava/lang/String;

    .line 46
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_16

    :cond_15
    const/4 p3, 0x1

    .line 47
    :cond_16
    iget-object p4, p0, Ltw0;->h:LGu0;

    .line 48
    iget-boolean p4, p4, LGu0;->d:Z

    if-eqz p4, :cond_18

    if-eqz v0, :cond_17

    .line 49
    iget-object p4, v0, Lku0;->N:Ljava/lang/String;

    .line 50
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_18

    :cond_17
    or-int/lit8 p3, p3, 0x2

    .line 51
    :cond_18
    iget-object p4, p0, Ltw0;->h:LGu0;

    .line 52
    iget-boolean p4, p4, LGu0;->e:Z

    if-eqz p4, :cond_1a

    if-eqz v0, :cond_19

    .line 53
    iget-object p4, v0, Lku0;->O:Ljava/lang/String;

    .line 54
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1a

    :cond_19
    or-int/lit8 p3, p3, 0x4

    :cond_1a
    if-eqz p3, :cond_1b

    const-string p4, "PaymentRequest.MissingContactFields"

    .line 55
    invoke-static {p4, p3}, LfV;->e(Ljava/lang/String;I)V

    .line 56
    :cond_1b
    invoke-virtual {p0, p1, p2}, LZw0;->a(ILjava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)Lku0;
    .locals 11

    .line 15
    iget-object v0, p0, Ltw0;->h:LGu0;

    .line 16
    iget-boolean v8, v0, LGu0;->c:Z

    .line 17
    iget-boolean v9, v0, LGu0;->d:Z

    .line 18
    iget-boolean v10, v0, LGu0;->e:Z

    const/4 v0, 0x0

    if-eqz v8, :cond_0

    .line 19
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-eqz v9, :cond_1

    .line 21
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 22
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    if-eqz v10, :cond_2

    .line 23
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 24
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, v0

    :goto_2
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    return-object v0

    .line 25
    :cond_4
    :goto_3
    iget-object v0, p0, Ltw0;->h:LGu0;

    invoke-virtual {v0, v4, v5, v6}, LGu0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 26
    new-instance v0, Lku0;

    iget-object v2, p0, Ltw0;->g:Landroid/content/Context;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v10}, Lku0;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return-object v0
.end method

.method public a(Lju0;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p1, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 2
    invoke-virtual {p0, v0}, Ltw0;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)Lku0;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, LZw0;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, LZw0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 5
    iget-object v2, p0, LZw0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lku0;

    .line 6
    iget-object v2, v2, Lku0;->G:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 7
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v3, p1, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 9
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    iget-object p1, p0, LZw0;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, LZw0;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, LZw0;->b:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LZw0;->b:Ljava/util/ArrayList;

    .line 14
    :cond_4
    iget-object p1, p0, LZw0;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
