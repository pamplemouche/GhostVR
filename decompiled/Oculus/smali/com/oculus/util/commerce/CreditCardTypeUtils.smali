.class public Lcom/oculus/util/commerce/CreditCardTypeUtils;
.super Ljava/lang/Object;
.source "CreditCardTypeUtils.java"


# static fields
.field private static final POSSIBLE_AMEX_PATTERN:Ljava/util/regex/Pattern;

.field private static final POSSIBLE_DISCOVER_PATTERN:Ljava/util/regex/Pattern;

.field private static final POSSIBLE_JCB_PATTERN:Ljava/util/regex/Pattern;

.field private static final POSSIBLE_MASTER_CARD_PATTERN:Ljava/util/regex/Pattern;

.field private static final POSSIBLE_VISA_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/oculus/util/commerce/CreditCardTypeUtils;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPlatformCreditCardTypeMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/util/commerce/PaymentCardAssociation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const-class v0, Lcom/oculus/util/commerce/CreditCardTypeUtils;

    sput-object v0, Lcom/oculus/util/commerce/CreditCardTypeUtils;->TAG:Ljava/lang/Class;

    .line 27
    sget-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->AMEX:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 28
    invoke-virtual {v0}, Lcom/oculus/util/commerce/PaymentCardAssociation;->getPrefixMatchRegexPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oculus/util/commerce/CreditCardTypeUtils;->POSSIBLE_AMEX_PATTERN:Ljava/util/regex/Pattern;

    .line 30
    sget-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->JCB:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 31
    invoke-virtual {v0}, Lcom/oculus/util/commerce/PaymentCardAssociation;->getPrefixMatchRegexPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oculus/util/commerce/CreditCardTypeUtils;->POSSIBLE_JCB_PATTERN:Ljava/util/regex/Pattern;

    .line 32
    sget-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->VISA:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 33
    invoke-virtual {v0}, Lcom/oculus/util/commerce/PaymentCardAssociation;->getPrefixMatchRegexPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oculus/util/commerce/CreditCardTypeUtils;->POSSIBLE_VISA_PATTERN:Ljava/util/regex/Pattern;

    .line 34
    sget-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->DISCOVER:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 35
    invoke-virtual {v0}, Lcom/oculus/util/commerce/PaymentCardAssociation;->getPrefixMatchRegexPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oculus/util/commerce/CreditCardTypeUtils;->POSSIBLE_DISCOVER_PATTERN:Ljava/util/regex/Pattern;

    .line 36
    sget-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->MASTER_CARD:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 37
    invoke-virtual {v0}, Lcom/oculus/util/commerce/PaymentCardAssociation;->getPrefixMatchRegexPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oculus/util/commerce/CreditCardTypeUtils;->POSSIBLE_MASTER_CARD_PATTERN:Ljava/util/regex/Pattern;

    .line 40
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "credit_card_type_jcb"

    sget-object v2, Lcom/oculus/util/commerce/PaymentCardAssociation;->JCB:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "credit_card_type_visa"

    sget-object v2, Lcom/oculus/util/commerce/PaymentCardAssociation;->VISA:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "credit_card_type_american_express"

    sget-object v2, Lcom/oculus/util/commerce/PaymentCardAssociation;->AMEX:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "credit_card_type_discover"

    sget-object v2, Lcom/oculus/util/commerce/PaymentCardAssociation;->DISCOVER:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "credit_card_type_mastercard"

    sget-object v2, Lcom/oculus/util/commerce/PaymentCardAssociation;->MASTER_CARD:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "credit_card_type_unknown"

    sget-object v2, Lcom/oculus/util/commerce/PaymentCardAssociation;->UNKNOWN:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/oculus/util/commerce/CreditCardTypeUtils;->sPlatformCreditCardTypeMap:Lcom/google/common/collect/ImmutableMap;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineCardAssociation(Ljava/lang/String;)Lcom/oculus/util/commerce/PaymentCardAssociation;
    .locals 2

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/oculus/util/commerce/CreditCardTypeUtils;->TAG:Ljava/lang/Class;

    const-string v1, "Invalid cc number %s found "

    invoke-static {v0, v1, p0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->UNKNOWN:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 77
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-static {p0}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->stripNonNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/oculus/util/commerce/CreditCardTypeUtils;->POSSIBLE_VISA_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->matchAssociation(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    sget-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->VISA:Lcom/oculus/util/commerce/PaymentCardAssociation;

    goto :goto_0

    .line 66
    :cond_1
    sget-object v1, Lcom/oculus/util/commerce/CreditCardTypeUtils;->POSSIBLE_MASTER_CARD_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->matchAssociation(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    sget-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->MASTER_CARD:Lcom/oculus/util/commerce/PaymentCardAssociation;

    goto :goto_0

    .line 68
    :cond_2
    sget-object v1, Lcom/oculus/util/commerce/CreditCardTypeUtils;->POSSIBLE_AMEX_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->matchAssociation(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    sget-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->AMEX:Lcom/oculus/util/commerce/PaymentCardAssociation;

    goto :goto_0

    .line 70
    :cond_3
    sget-object v1, Lcom/oculus/util/commerce/CreditCardTypeUtils;->POSSIBLE_JCB_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->matchAssociation(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    sget-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->JCB:Lcom/oculus/util/commerce/PaymentCardAssociation;

    goto :goto_0

    .line 72
    :cond_4
    sget-object v1, Lcom/oculus/util/commerce/CreditCardTypeUtils;->POSSIBLE_DISCOVER_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->matchAssociation(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    sget-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->DISCOVER:Lcom/oculus/util/commerce/PaymentCardAssociation;

    goto :goto_0

    .line 76
    :cond_5
    sget-object v0, Lcom/oculus/util/commerce/CreditCardTypeUtils;->TAG:Ljava/lang/Class;

    const-string v1, "Invalid cc number %s found "

    invoke-static {v0, v1, p0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->UNKNOWN:Lcom/oculus/util/commerce/PaymentCardAssociation;

    goto :goto_0
.end method

.method public static formatCreditCardNumberWithSpaces(Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xe

    const/16 v5, 0xb

    const/16 v4, 0x9

    const/4 v2, 0x4

    const/16 v3, 0x20

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->stripNonNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gt v1, v2, :cond_0

    .line 187
    :goto_0
    return-object p1

    .line 168
    :cond_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 169
    sget-object v1, Lcom/oculus/util/commerce/CreditCardTypeUtils$1;->$SwitchMap$com$oculus$util$commerce$PaymentCardAssociation$CardType:[I

    invoke-virtual {p0}, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gt v1, v4, :cond_2

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 171
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gt v1, v5, :cond_1

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {v0, v5, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 187
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gt v1, v6, :cond_3

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 184
    :cond_3
    invoke-virtual {v0, v6, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCardAssociationByType(Ljava/lang/String;)Lcom/oculus/util/commerce/PaymentCardAssociation;
    .locals 4

    .prologue
    .line 87
    if-nez p0, :cond_1

    .line 88
    sget-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->UNKNOWN:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 98
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    sget-object v0, Lcom/oculus/util/commerce/CreditCardTypeUtils;->sPlatformCreditCardTypeMap:Lcom/google/common/collect/ImmutableMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 93
    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/oculus/util/commerce/CreditCardTypeUtils;->TAG:Ljava/lang/Class;

    const-string v1, "Invalid card type %s found "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->UNKNOWN:Lcom/oculus/util/commerce/PaymentCardAssociation;

    goto :goto_0
.end method

.method public static getFormattedCreditCardInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->getFormattedCreditCardInfoHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFormattedCreditCardInfoAllCaps(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->getFormattedCreditCardInfoHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFormattedCreditCardInfoHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    sget-object v0, Lcom/oculus/util/commerce/CreditCardTypeUtils;->sPlatformCreditCardTypeMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 124
    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lcom/oculus/util/commerce/CreditCardTypeUtils;->TAG:Ljava/lang/Class;

    const-string v1, "Invalid credit card type %s found "

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    sget-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->UNKNOWN:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 129
    :cond_0
    if-eqz p3, :cond_2

    .line 130
    sget v1, Lcom/oculus/util/commerce/R$string;->masked_credit_card:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 132
    invoke-virtual {v0}, Lcom/oculus/util/commerce/PaymentCardAssociation;->isUnknown()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, ""

    :goto_0
    aput-object v0, v2, v4

    aput-object p2, v2, v5

    .line 130
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_1
    return-object v0

    .line 132
    :cond_1
    invoke-virtual {v0}, Lcom/oculus/util/commerce/PaymentCardAssociation;->getHumanReadableName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_2
    sget v1, Lcom/oculus/util/commerce/R$string;->masked_credit_card:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 137
    invoke-virtual {v0}, Lcom/oculus/util/commerce/PaymentCardAssociation;->isUnknown()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, ""

    :goto_2
    aput-object v0, v2, v4

    aput-object p2, v2, v5

    .line 135
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 137
    :cond_3
    invoke-virtual {v0}, Lcom/oculus/util/commerce/PaymentCardAssociation;->getHumanReadableName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static getMaxFormattedLength(Lcom/oculus/util/commerce/PaymentCardAssociation;)I
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->AMEX:Lcom/oculus/util/commerce/PaymentCardAssociation;

    if-ne p0, v0, :cond_0

    const/16 v0, 0x11

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x13

    goto :goto_0
.end method

.method private static matchAssociation(Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static stripNonNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    const-string v0, "[^\\d]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
