.class public Lcom/oculus/util/commerce/PaymentCardAssociation;
.super Ljava/lang/Object;
.source "PaymentCardAssociation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final AMEX:Lcom/oculus/util/commerce/PaymentCardAssociation;

.field public static final DISCOVER:Lcom/oculus/util/commerce/PaymentCardAssociation;

.field public static final JCB:Lcom/oculus/util/commerce/PaymentCardAssociation;

.field public static final MASTER_CARD:Lcom/oculus/util/commerce/PaymentCardAssociation;

.field public static final UNKNOWN:Lcom/oculus/util/commerce/PaymentCardAssociation;

.field public static final VISA:Lcom/oculus/util/commerce/PaymentCardAssociation;


# instance fields
.field private final mCVVLength:I

.field private final mCardType:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

.field private final mHumanReadableName:Ljava/lang/String;

.field private final mIconDrawableId:I

.field private final mPrefixMatchRegexPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v5, 0x3

    .line 30
    new-instance v0, Lcom/oculus/util/commerce/PaymentCardAssociation;

    sget-object v1, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->JCB:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    sget v2, Lcom/oculus/util/commerce/R$drawable;->credit_card_jcb:I

    const-string v3, "JCB"

    const-string v4, "3|35|352|^35(2[8-9]|[3-8])[\\d]*"

    .line 35
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/oculus/util/commerce/PaymentCardAssociation;-><init>(Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;ILjava/lang/String;Ljava/util/regex/Pattern;I)V

    sput-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->JCB:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 38
    new-instance v0, Lcom/oculus/util/commerce/PaymentCardAssociation;

    sget-object v1, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->VISA:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    sget v2, Lcom/oculus/util/commerce/R$drawable;->credit_card_visa:I

    const-string v3, "Visa"

    const-string v4, "^4[\\d]*"

    .line 43
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/oculus/util/commerce/PaymentCardAssociation;-><init>(Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;ILjava/lang/String;Ljava/util/regex/Pattern;I)V

    sput-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->VISA:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 46
    new-instance v6, Lcom/oculus/util/commerce/PaymentCardAssociation;

    sget-object v7, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->AMEX:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    sget v8, Lcom/oculus/util/commerce/R$drawable;->credit_card_amex:I

    const-string v9, "American Express"

    const-string v0, "3|^3[47][\\d]*"

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    const/4 v11, 0x4

    invoke-direct/range {v6 .. v11}, Lcom/oculus/util/commerce/PaymentCardAssociation;-><init>(Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;ILjava/lang/String;Ljava/util/regex/Pattern;I)V

    sput-object v6, Lcom/oculus/util/commerce/PaymentCardAssociation;->AMEX:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 54
    new-instance v0, Lcom/oculus/util/commerce/PaymentCardAssociation;

    sget-object v1, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->DISCOVER:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    sget v2, Lcom/oculus/util/commerce/R$drawable;->credit_card_discover:I

    const-string v3, "Discover"

    const-string v4, "6|60|601|64|62|622|622[19]|62212|62292|^(6011|65|64[4-9]|622([2-8]|1[3-9]|12[6-9]|9[0-1]|92[0-5]))[\\d]*"

    .line 59
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/oculus/util/commerce/PaymentCardAssociation;-><init>(Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;ILjava/lang/String;Ljava/util/regex/Pattern;I)V

    sput-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->DISCOVER:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 62
    new-instance v0, Lcom/oculus/util/commerce/PaymentCardAssociation;

    sget-object v1, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->MASTER_CARD:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    sget v2, Lcom/oculus/util/commerce/R$drawable;->credit_card_mastercard:I

    const-string v3, "MasterCard"

    const-string v4, "5|^5[0-5][\\d]*"

    .line 67
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/oculus/util/commerce/PaymentCardAssociation;-><init>(Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;ILjava/lang/String;Ljava/util/regex/Pattern;I)V

    sput-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->MASTER_CARD:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 71
    new-instance v0, Lcom/oculus/util/commerce/PaymentCardAssociation;

    sget-object v1, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->UNKNOWN:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    sget v2, Lcom/oculus/util/commerce/R$drawable;->credit_card_placeholder_black:I

    const-string v3, "Unknown"

    const-string v4, ""

    .line 76
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/oculus/util/commerce/PaymentCardAssociation;-><init>(Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;ILjava/lang/String;Ljava/util/regex/Pattern;I)V

    sput-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation;->UNKNOWN:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 71
    return-void
.end method

.method private constructor <init>(Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;ILjava/lang/String;Ljava/util/regex/Pattern;I)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/oculus/util/commerce/PaymentCardAssociation;->mCardType:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    .line 101
    iput p2, p0, Lcom/oculus/util/commerce/PaymentCardAssociation;->mIconDrawableId:I

    .line 102
    iput-object p3, p0, Lcom/oculus/util/commerce/PaymentCardAssociation;->mHumanReadableName:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lcom/oculus/util/commerce/PaymentCardAssociation;->mPrefixMatchRegexPattern:Ljava/util/regex/Pattern;

    .line 104
    iput p5, p0, Lcom/oculus/util/commerce/PaymentCardAssociation;->mCVVLength:I

    .line 105
    return-void
.end method


# virtual methods
.method public getCVVLength()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/oculus/util/commerce/PaymentCardAssociation;->mCVVLength:I

    return v0
.end method

.method public getCardType()Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/oculus/util/commerce/PaymentCardAssociation;->mCardType:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    return-object v0
.end method

.method public getHumanReadableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/oculus/util/commerce/PaymentCardAssociation;->mHumanReadableName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconDrawableId()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/oculus/util/commerce/PaymentCardAssociation;->mIconDrawableId:I

    return v0
.end method

.method public getPrefixMatchRegexPattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oculus/util/commerce/PaymentCardAssociation;->mPrefixMatchRegexPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public isUnknown()Z
    .locals 2

    .prologue
    .line 124
    const-string v0, "Unknown"

    iget-object v1, p0, Lcom/oculus/util/commerce/PaymentCardAssociation;->mHumanReadableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
