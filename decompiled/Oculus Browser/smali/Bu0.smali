.class public LBu0;
.super LDQ0;
.source "PG"

# interfaces
.implements Lr10;


# instance fields
.field public A:Z

.field public B:I

.field public C:I

.field public D:Z

.field public final c:Lorg/chromium/content_public/browser/WebContents;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/Map;

.field public final f:LUt0;

.field public final g:Lxv0;

.field public final h:Ljava/util/Map;

.field public final i:Ljava/util/Set;

.field public final j:Ljava/util/Set;

.field public final k:Ljava/util/Set;

.field public final l:Ljava/util/List;

.field public final m:Landroid/os/Handler;

.field public final n:LRQ0;

.field public final o:LSQ0;

.field public final p:LkW;

.field public q:LTQ0;

.field public r:LTQ0;

.field public s:LTQ0;

.field public t:LTQ0;

.field public u:LTQ0;

.field public v:LTQ0;

.field public w:LTQ0;

.field public x:Ls10;

.field public y:LRQ0;

.field public z:Z


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;LUt0;Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, LDQ0;-><init>()V

    .line 2
    iput-object p1, p0, LBu0;->c:Lorg/chromium/content_public/browser/WebContents;

    .line 3
    iput-object p2, p0, LBu0;->f:LUt0;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, LBu0;->g:Lxv0;

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 6
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 7
    iget-wide v0, p2, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v2, p2

    move v4, p3

    .line 8
    invoke-static/range {v0 .. v5}, LJ/N;->MfY8Rzvb(JLjava/lang/Object;ZZZ)[Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-wide v0, p2, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 10
    invoke-static {v0, v1, p2}, LJ/N;->M2$wnjuR(JLjava/lang/Object;)[Ljava/lang/String;

    move-result-object p3

    .line 11
    invoke-virtual {p2, p1, p3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, LBu0;->d:Ljava/util/List;

    .line 13
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, LBu0;->e:Ljava/util/Map;

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p3, v0, :cond_3

    .line 15
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 16
    iget-boolean v2, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->c:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getStreetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    iget-object v2, p0, LBu0;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-static {v0, v1}, Lju0;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;I)I

    move-result v1

    .line 20
    invoke-static {v1}, Lju0;->a(I)Landroid/util/Pair;

    move-result-object v1

    .line 21
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    .line 22
    iget-object v2, p0, LBu0;->e:Ljava/util/Map;

    .line 23
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 24
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 25
    :cond_3
    iget-object p1, p0, LBu0;->d:Ljava/util/List;

    sget-object p3, Lpu0;->w:Ljava/util/Comparator;

    invoke-static {p1, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LBu0;->h:Ljava/util/Map;

    .line 27
    new-instance p3, LAu0;

    const v0, 0x7f080083

    const v2, 0x7f130163

    invoke-direct {p3, v0, v2}, LAu0;-><init>(II)V

    const-string v0, "amex"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object p1, p0, LBu0;->h:Ljava/util/Map;

    new-instance p3, LAu0;

    const v0, 0x7f0800dc

    const v2, 0x7f130164

    invoke-direct {p3, v0, v2}, LAu0;-><init>(II)V

    const-string v0, "diners"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object p1, p0, LBu0;->h:Ljava/util/Map;

    new-instance p3, LAu0;

    const v0, 0x7f0800dd

    const v2, 0x7f130165

    invoke-direct {p3, v0, v2}, LAu0;-><init>(II)V

    const-string v0, "discover"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object p1, p0, LBu0;->h:Ljava/util/Map;

    new-instance p3, LAu0;

    const v0, 0x7f080255

    const v2, 0x7f130166

    invoke-direct {p3, v0, v2}, LAu0;-><init>(II)V

    const-string v0, "jcb"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object p1, p0, LBu0;->h:Ljava/util/Map;

    new-instance p3, LAu0;

    const v0, 0x7f08025d

    const v2, 0x7f130167

    invoke-direct {p3, v0, v2}, LAu0;-><init>(II)V

    const-string v0, "mastercard"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object p1, p0, LBu0;->h:Ljava/util/Map;

    new-instance p3, LAu0;

    const v0, 0x7f08025f

    const v2, 0x7f130168

    invoke-direct {p3, v0, v2}, LAu0;-><init>(II)V

    const-string v0, "mir"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object p1, p0, LBu0;->h:Ljava/util/Map;

    new-instance p3, LAu0;

    const v0, 0x7f0802ef

    const v2, 0x7f130169

    invoke-direct {p3, v0, v2}, LAu0;-><init>(II)V

    const-string v0, "unionpay"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object p1, p0, LBu0;->h:Ljava/util/Map;

    new-instance p3, LAu0;

    const v0, 0x7f0802f1

    const v2, 0x7f13016a

    invoke-direct {p3, v0, v2}, LAu0;-><init>(II)V

    const-string v0, "visa"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LBu0;->i:Ljava/util/Set;

    .line 36
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LBu0;->j:Ljava/util/Set;

    .line 37
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LBu0;->k:Ljava/util/Set;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LBu0;->l:Ljava/util/List;

    .line 39
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, LBu0;->m:Landroid/os/Handler;

    .line 40
    new-instance p1, Lvu0;

    invoke-direct {p1, p0}, Lvu0;-><init>(LBu0;)V

    iput-object p1, p0, LBu0;->n:LRQ0;

    .line 41
    new-instance p1, Lqu0;

    invoke-direct {p1, p0}, Lqu0;-><init>(LBu0;)V

    iput-object p1, p0, LBu0;->o:LSQ0;

    .line 42
    new-instance p1, Lwu0;

    invoke-direct {p1, p0}, Lwu0;-><init>(LBu0;)V

    iput-object p1, p0, LBu0;->p:LkW;

    .line 43
    sget-object p3, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    .line 44
    iget-object p1, p0, LBu0;->c:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 45
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->w0()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p1

    invoke-interface {p1}, LdI0;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    :cond_4
    iput-boolean p2, p0, LBu0;->D:Z

    return-void

    .line 46
    :cond_5
    throw p1
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;
    .locals 2

    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 17
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, LBu0;->A:Z

    return-void
.end method

.method public a(Lju0;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, LCQ0;->w:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, LBu0;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, LBu0;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p1, LCQ0;->C:Ljava/lang/String;

    .line 5
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v0, p0, LBu0;->d:Ljava/util/List;

    .line 7
    iget-object v2, p1, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 8
    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, LBu0;->e:Ljava/util/Map;

    .line 10
    iget-object p1, p1, LCQ0;->C:Ljava/lang/String;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Lju0;->j()V

    .line 13
    iget-object v1, p0, LBu0;->d:Ljava/util/List;

    new-instance v2, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 14
    iget-object p1, p1, Lju0;->H:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    .line 15
    invoke-direct {v2, p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;-><init>(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method
