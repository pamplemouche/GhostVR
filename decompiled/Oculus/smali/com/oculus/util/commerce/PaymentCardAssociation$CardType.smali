.class public final enum Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;
.super Ljava/lang/Enum;
.source "PaymentCardAssociation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/util/commerce/PaymentCardAssociation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

.field public static final enum AMEX:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

.field public static final enum DISCOVER:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

.field public static final enum JCB:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

.field public static final enum MASTER_CARD:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

.field public static final enum UNKNOWN:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

.field public static final enum VISA:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    new-instance v0, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    const-string v1, "JCB"

    invoke-direct {v0, v1, v3}, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->JCB:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    .line 87
    new-instance v0, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    const-string v1, "VISA"

    invoke-direct {v0, v1, v4}, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->VISA:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    .line 88
    new-instance v0, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    const-string v1, "AMEX"

    invoke-direct {v0, v1, v5}, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->AMEX:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    .line 89
    new-instance v0, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    const-string v1, "DISCOVER"

    invoke-direct {v0, v1, v6}, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->DISCOVER:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    .line 90
    new-instance v0, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    const-string v1, "MASTER_CARD"

    invoke-direct {v0, v1, v7}, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->MASTER_CARD:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    .line 91
    new-instance v0, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->UNKNOWN:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    .line 85
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    sget-object v1, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->JCB:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->VISA:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->AMEX:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->DISCOVER:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->MASTER_CARD:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->UNKNOWN:Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->$VALUES:[Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->$VALUES:[Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    invoke-virtual {v0}, [Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    return-object v0
.end method
