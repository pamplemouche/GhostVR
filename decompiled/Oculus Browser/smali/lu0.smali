.class public final synthetic Llu0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lmu0;

.field public final x:LJu0;

.field public final y:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lmu0;LJu0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llu0;->w:Lmu0;

    iput-object p2, p0, Llu0;->x:LJu0;

    iput-object p3, p0, Llu0;->y:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Llu0;->w:Lmu0;

    iget-object v1, p0, Llu0;->x:LJu0;

    iget-object v2, p0, Llu0;->y:Ljava/util/Map;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v4

    const-string v5, "ReturnGooglePayInBasicCard"

    .line 2
    invoke-static {v5}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 3
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 4
    iget-wide v7, v4, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 5
    invoke-static {v7, v8, v4, v5}, LJ/N;->M00Q2SNr(JLjava/lang/Object;Z)[Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v4, v3}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const-string v5, "basic-card"

    .line 8
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 9
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/chromium/payments/mojom/PaymentMethodData;

    .line 10
    invoke-static {v7}, Lou0;->a(Lorg/chromium/payments/mojom/PaymentMethodData;)Ljava/util/Set;

    move-result-object v7

    iput-object v7, v0, Lmu0;->y:Ljava/util/Set;

    .line 11
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/chromium/payments/mojom/PaymentMethodData;

    .line 12
    invoke-static {v5}, Lou0;->b(Lorg/chromium/payments/mojom/PaymentMethodData;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, v0, Lmu0;->x:Ljava/util/Set;

    goto :goto_0

    .line 13
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-static {}, Lou0;->a()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lmu0;->x:Ljava/util/Set;

    .line 14
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    :goto_0
    new-instance v5, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lmu0;->z:Ljava/util/Set;

    .line 16
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_2

    .line 17
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;

    invoke-virtual {v0, v2}, Lmu0;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)LQu0;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 18
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 19
    :cond_2
    check-cast v1, Lyv0;

    invoke-virtual {v1, v0, v4}, Lyv0;->a(LLu0;Ljava/util/List;)V

    return-void

    .line 20
    :cond_3
    throw v3

    .line 21
    :cond_4
    throw v3
.end method
