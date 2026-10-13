.class public Lcom/oculus/util/commerce/CreditCardUtils;
.super Ljava/lang/Object;
.source "CreditCardUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sCountryToZipRegMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const-class v0, Lcom/oculus/util/commerce/CreditCardUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/util/commerce/CreditCardUtils;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    const-string v1, "BE"

    const-string v2, "(B-|BE-)?[1-9]{1}[0-9]{3}"

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "CA"

    const-string v2, "[a-zA-Z][0-9][a-zA-Z] *[0-9][a-zA-Z][0-9]"

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "DE"

    const-string v2, "(D-|DE-)?[0-9]{5}"

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "DK"

    const-string v2, "(DNK-|DK-)??[1-9]{1}[0-9]{3}"

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "ES"

    const-string v2, "(E-|ES-)?([1-9]{2}|[0-9][1-9]|[1-9][0-9])[0-9]{3}"

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "FR"

    const-string v2, "(F-|FR-)?((2[A|B])|[0-9]{2})[0-9]{3}"

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "GB"

    const-string v2, "[a-zA-Z][a-zA-Z]?[0-9][0-9a-zA-Z]? *[0-9][a-zA-Z][a-zA-Z]"

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "IT"

    const-string v2, "(V-|I-|IT-)?[0-9]{5}"

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "NL"

    const-string v2, "(HOL-|NL-)?[1-9][0-9]{3}\\s?([a-zA-Z]{2})?"

    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "SE"

    const-string v2, "(SE-|S-)?[0-9]{3}\\s?[0-9]{2}"

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "PT"

    const-string v2, "(PT-|POR-)?[0-9]{4}-[0-9]{3}"

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "US"

    const-string v2, "[0-9]{5}(-[0-9]{4}){0,1}"

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/oculus/util/commerce/CreditCardUtils;->sCountryToZipRegMap:Ljava/util/Map;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCardNumberValid(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    invoke-static {p0}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->stripNonNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {v2}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->determineCardAssociation(Ljava/lang/String;)Lcom/oculus/util/commerce/PaymentCardAssociation;

    move-result-object v3

    .line 85
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 86
    sget-object v5, Lcom/oculus/util/commerce/CreditCardUtils$1;->$SwitchMap$com$oculus$util$commerce$PaymentCardAssociation$CardType:[I

    invoke-virtual {v3}, Lcom/oculus/util/commerce/PaymentCardAssociation;->getCardType()Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 100
    sget-object v0, Lcom/oculus/util/commerce/CreditCardUtils;->TAG:Ljava/lang/String;

    const-string v2, "Unsupported CardType %s found"

    invoke-virtual {v3}, Lcom/oculus/util/commerce/PaymentCardAssociation;->getCardType()Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 103
    goto :goto_0

    .line 88
    :pswitch_0
    if-ne v4, v7, :cond_2

    invoke-static {v2}, Lcom/oculus/util/commerce/CreditCardUtils;->isLuhnCompliant(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 90
    :pswitch_1
    if-ne v4, v7, :cond_3

    invoke-static {v2}, Lcom/oculus/util/commerce/CreditCardUtils;->isLuhnCompliant(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 92
    :pswitch_2
    const/16 v3, 0xf

    if-ne v4, v3, :cond_4

    invoke-static {v2}, Lcom/oculus/util/commerce/CreditCardUtils;->isLuhnCompliant(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 94
    :pswitch_3
    if-ne v4, v7, :cond_5

    invoke-static {v2}, Lcom/oculus/util/commerce/CreditCardUtils;->isLuhnCompliant(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    .line 96
    :pswitch_4
    if-ne v4, v7, :cond_6

    invoke-static {v2}, Lcom/oculus/util/commerce/CreditCardUtils;->isLuhnCompliant(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    .line 98
    :pswitch_5
    invoke-static {v2}, Lcom/oculus/util/commerce/CreditCardUtils;->isLuhnCompliant(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static isExpired(Ljava/util/Calendar;II)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 51
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 53
    if-gt v1, p2, :cond_0

    if-ne v1, p2, :cond_1

    if-le v2, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLuhnCompliant(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    move v0, v1

    .line 116
    :goto_0
    if-ge v2, v3, :cond_2

    .line 117
    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 118
    add-int/lit8 v4, v4, -0x30

    .line 119
    rem-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_0

    .line 120
    add-int/2addr v0, v4

    .line 116
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_0
    mul-int/lit8 v4, v4, 0x2

    .line 123
    const/16 v5, 0x9

    if-le v4, v5, :cond_1

    .line 124
    add-int/lit8 v4, v4, -0xa

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    goto :goto_1

    .line 126
    :cond_1
    add-int/2addr v0, v4

    goto :goto_1

    .line 130
    :cond_2
    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public static isValidMonth(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    :goto_0
    return v1

    .line 61
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 62
    if-lt v2, v0, :cond_1

    const/16 v3, 0xc

    if-gt v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isZipCodeValidForCountry(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 135
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    .line 139
    :cond_1
    sget-object v0, Lcom/oculus/util/commerce/CreditCardUtils;->sCountryToZipRegMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    sget-object v0, Lcom/oculus/util/commerce/CreditCardUtils;->sCountryToZipRegMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0

    .line 145
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
