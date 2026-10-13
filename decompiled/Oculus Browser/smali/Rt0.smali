.class public final synthetic LRt0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LUt0;

.field public final x:Lju0;

.field public final y:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(LUt0;Lju0;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRt0;->w:LUt0;

    iput-object p2, p0, LRt0;->x:Lju0;

    iput-object p3, p0, LRt0;->y:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, LRt0;->w:LUt0;

    iget-object v1, p0, LRt0;->x:Lju0;

    iget-object v2, p0, LRt0;->y:Lorg/chromium/base/Callback;

    const/4 v3, 0x1

    .line 1
    iput-boolean v3, v0, LUt0;->o:Z

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    .line 3
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 4
    iget-wide v6, v4, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 5
    invoke-static {v6, v7}, LJ/N;->MCBooW5W(J)V

    .line 6
    iget-object v4, v0, LUt0;->r:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 7
    iget-object v6, v0, LUt0;->k:LTQ0;

    .line 8
    iget-object v6, v6, LTQ0;->s:Ljava/lang/CharSequence;

    .line 9
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 10
    iput-object v6, v4, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->l:Ljava/lang/String;

    .line 11
    iget-object v6, v0, LUt0;->l:LTQ0;

    .line 12
    iget-object v6, v6, LTQ0;->s:Ljava/lang/CharSequence;

    .line 13
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 14
    iput-object v6, v4, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->m:Ljava/lang/String;

    .line 15
    iget-object v6, v0, LUt0;->m:LTQ0;

    if-eqz v6, :cond_0

    .line 16
    iget-object v6, v6, LTQ0;->s:Ljava/lang/CharSequence;

    .line 17
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 18
    iput-object v6, v4, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->n:Ljava/lang/String;

    .line 19
    :cond_0
    iget-object v6, v0, LUt0;->j:Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;

    .line 20
    iget-object v6, v6, Lorg/chromium/chrome/browser/preferences/autofill/AutofillProfileBridge;->a:Ljava/lang/String;

    .line 21
    iput-object v6, v4, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->p:Ljava/lang/String;

    .line 22
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v7, 0x0

    .line 23
    :goto_0
    iget-object v8, v0, LUt0;->n:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 24
    iget-object v8, v0, LUt0;->n:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LXy0;

    .line 25
    iget v9, v8, LXy0;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    iget v8, v8, LXy0;->a:I

    if-eqz v8, :cond_1

    .line 27
    iget-object v9, v0, LUt0;->d:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LTQ0;

    .line 28
    iget-object v9, v9, LTQ0;->s:Ljava/lang/CharSequence;

    .line 29
    invoke-static {v4, v8, v9}, LUt0;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;ILjava/lang/CharSequence;)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 30
    :cond_2
    iget-object v7, v0, LUt0;->d:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 32
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, ""

    invoke-static {v4, v8, v9}, LUt0;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 33
    :cond_4
    iget-boolean v6, v0, LUt0;->i:Z

    if-eqz v6, :cond_6

    .line 34
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v6

    iget-object v7, v0, LUt0;->r:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    if-eqz v6, :cond_5

    .line 35
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 36
    iget-wide v8, v6, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 37
    invoke-static {v8, v9, v6, v7}, LJ/N;->McRRW$S3(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 38
    iput-object v5, v4, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->a:Ljava/lang/String;

    goto :goto_2

    .line 39
    :cond_5
    throw v5

    .line 40
    :cond_6
    :goto_2
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 41
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 42
    iput-object v5, v4, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->a:Ljava/lang/String;

    .line 43
    :cond_7
    iput-boolean v3, v4, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->c:Z

    .line 44
    iget-object v0, v0, LUt0;->r:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v1, v0}, Lju0;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)V

    .line 45
    invoke-interface {v2, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void

    .line 46
    :cond_8
    throw v5
.end method
