.class public Lcom/facebook/common/util/FinanceUtils;
.super Ljava/lang/Object;
.source "FinanceUtils.java"


# static fields
.field public static final DEFAULT_DECIMAL_PLACES:I = 0x2

.field public static final DEFAULT_OFFSET:I = 0x64


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPriceDisplayString(Ljava/lang/String;JI)Ljava/lang/String;
    .locals 5
    .param p0, "currency"    # Ljava/lang/String;
    .param p1, "priceInHundredths"    # J
    .param p3, "decimalPlaces"    # I

    .prologue
    .line 22
    if-ltz p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 24
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 25
    .local v1, "moneyFormat":Ljava/text/NumberFormat;
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 26
    invoke-virtual {v1, p3}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 27
    invoke-virtual {v1, p3}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 30
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    new-instance v3, Ljava/math/BigDecimal;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 33
    .local v0, "divided":Ljava/math/BigDecimal;
    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 22
    .end local v0    # "divided":Ljava/math/BigDecimal;
    .end local v1    # "moneyFormat":Ljava/text/NumberFormat;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
