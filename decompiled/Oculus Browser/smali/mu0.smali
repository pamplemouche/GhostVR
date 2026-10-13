.class public Lmu0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LLu0;


# instance fields
.field public final w:Lorg/chromium/content_public/browser/WebContents;

.field public x:Ljava/util/Set;

.field public y:Ljava/util/Set;

.field public z:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmu0;->w:Lorg/chromium/content_public/browser/WebContents;

    return-void
.end method

.method public static b(Ljava/util/Map;)Z
    .locals 2

    const-string v0, "basic-card"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/payments/mojom/PaymentMethodData;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lou0;->a(Lorg/chromium/payments/mojom/PaymentMethodData;)Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-static {}, Lou0;->b()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    .line 6
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method


# virtual methods
.method public a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)LQu0;
    .locals 10

    .line 2
    iget-object v0, p0, Lmu0;->z:Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getBillingAddressId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getBillingAddressId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a(Ljava/lang/String;)Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 6
    invoke-static {v0, v2}, Lju0;->a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;I)I

    move-result v3

    if-eqz v3, :cond_2

    move-object v7, v1

    goto :goto_1

    :cond_2
    move-object v7, v0

    :goto_1
    if-nez v7, :cond_3

    .line 7
    iput-object v1, p1, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->m:Ljava/lang/String;

    .line 8
    :cond_3
    iget-object v0, p0, Lmu0;->y:Ljava/util/Set;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getBasicCardIssuerNetwork()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "basic-card"

    goto :goto_2

    .line 10
    :cond_4
    iget-object v0, p0, Lmu0;->z:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getBasicCardIssuerNetwork()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getBasicCardIssuerNetwork()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v8, v0

    goto :goto_3

    :cond_5
    move-object v8, v1

    :goto_3
    if-eqz v8, :cond_8

    .line 12
    iget-object v0, p0, Lmu0;->x:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getCardType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;->getCardType()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lmu0;->x:Ljava/util/Set;

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    const/4 v9, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v9, 0x1

    .line 15
    :goto_5
    new-instance v0, Lnu0;

    iget-object v5, p0, Lmu0;->w:Lorg/chromium/content_public/browser/WebContents;

    move-object v4, v0

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lnu0;-><init>(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;Ljava/lang/String;Z)V

    return-object v0

    :cond_8
    return-object v1
.end method

.method public a()Ljava/util/Set;
    .locals 2

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lou0;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v1, "basic-card"

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a(LKu0;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;LJu0;)V
    .locals 0

    .line 1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p3, Llu0;

    invoke-direct {p3, p0, p7, p2}, Llu0;-><init>(Lmu0;LJu0;Ljava/util/Map;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/util/Map;)Z
    .locals 0

    .line 18
    invoke-static {p1}, Lmu0;->b(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/net/URI;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .locals 8

    .line 1
    iget-object v0, p0, Lmu0;->x:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lmu0;->x:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 4
    iget-object v3, p0, Lmu0;->x:Ljava/util/Set;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 5
    iget-object v4, p0, Lmu0;->x:Ljava/util/Set;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    new-array v5, v5, [I

    .line 6
    fill-array-data v5, :array_0

    const-class v6, I

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[[I

    .line 7
    aget-object v6, v5, v1

    aget-object v6, v6, v1

    aput v1, v6, v1

    .line 8
    aget-object v6, v5, v1

    aget-object v6, v6, v1

    const v7, 0x7f1304db

    aput v7, v6, v2

    .line 9
    aget-object v6, v5, v1

    aget-object v6, v6, v2

    const v7, 0x7f1304c1

    aput v7, v6, v1

    .line 10
    aget-object v6, v5, v1

    aget-object v6, v6, v2

    const v7, 0x7f1304c2

    aput v7, v6, v2

    .line 11
    aget-object v6, v5, v2

    aget-object v6, v6, v1

    const v7, 0x7f1304be

    aput v7, v6, v1

    .line 12
    aget-object v6, v5, v2

    aget-object v6, v6, v1

    const v7, 0x7f1304c0

    aput v7, v6, v2

    .line 13
    aget-object v6, v5, v2

    aget-object v6, v6, v2

    const v7, 0x7f1304bf

    aput v7, v6, v1

    .line 14
    aget-object v6, v5, v2

    aget-object v6, v6, v2

    aput v1, v6, v2

    .line 15
    aget-object v0, v5, v0

    aget-object v0, v0, v3

    aget v0, v0, v4

    return v0

    :cond_1
    :goto_0
    return v1

    nop

    :array_0
    .array-data 4
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "Chrome_Autofill_Payment_App"

    return-object v0
.end method
