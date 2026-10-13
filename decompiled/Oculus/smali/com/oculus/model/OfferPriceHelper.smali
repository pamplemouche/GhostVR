.class public Lcom/oculus/model/OfferPriceHelper;
.super Landroid/content/ContextWrapper;
.source "OfferPriceHelper.java"


# instance fields
.field private final mFree:Ljava/lang/String;

.field private final mStrikeFormat:I

.field private final mStrikeWithPromoBenefitFormat:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/OfferPriceHelper;->mFree:Ljava/lang/String;

    .line 25
    iput p3, p0, Lcom/oculus/model/OfferPriceHelper;->mStrikeFormat:I

    .line 26
    iput p4, p0, Lcom/oculus/model/OfferPriceHelper;->mStrikeWithPromoBenefitFormat:I

    .line 27
    return-void
.end method


# virtual methods
.method public getPriceText(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/16 v8, 0x21

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 31
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oculus/model/OfferPriceHelper;->mFree:Ljava/lang/String;

    .line 32
    :goto_0
    if-nez p3, :cond_1

    move-object v0, v1

    .line 53
    :goto_1
    return-object v0

    :cond_0
    move-object v1, p2

    .line 31
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {p4}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    new-instance v0, Landroid/text/SpannableString;

    .line 38
    invoke-virtual {p0}, Lcom/oculus/model/OfferPriceHelper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/oculus/model/OfferPriceHelper;->mStrikeFormat:I

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p3, v4, v5

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 51
    :goto_2
    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 52
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 51
    invoke-virtual {v0, v1, v5, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 40
    :cond_2
    new-instance v0, Landroid/text/SpannableString;

    .line 42
    invoke-virtual {p0}, Lcom/oculus/model/OfferPriceHelper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/oculus/model/OfferPriceHelper;->mStrikeWithPromoBenefitFormat:I

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v5

    aput-object p4, v4, v6

    aput-object v1, v4, v7

    .line 43
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 47
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    .line 48
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 45
    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2
.end method
