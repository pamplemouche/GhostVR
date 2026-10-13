.class public final enum Lcom/oculus/library/model/GrantReason;
.super Ljava/lang/Enum;
.source "GrantReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/library/model/GrantReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/library/model/GrantReason;

.field public static final enum ADDITIONAL_ENTITLEMENT_GRANT:Lcom/oculus/library/model/GrantReason;

.field public static final enum ADMIN_OFFER:Lcom/oculus/library/model/GrantReason;

.field public static final enum BUNDLE_OFFER:Lcom/oculus/library/model/GrantReason;

.field public static final enum CSR:Lcom/oculus/library/model/GrantReason;

.field public static final enum DEVELOPER:Lcom/oculus/library/model/GrantReason;

.field public static final enum EXTENSION_CONSUMED:Lcom/oculus/library/model/GrantReason;

.field public static final enum F2P_IAP_MIGRATION:Lcom/oculus/library/model/GrantReason;

.field public static final enum INTERN:Lcom/oculus/library/model/GrantReason;

.field public static final enum NUX:Lcom/oculus/library/model/GrantReason;

.field public static final enum NUX_BUNDLE:Lcom/oculus/library/model/GrantReason;

.field public static final enum OCULUS_EMPLOYEE_OFFER:Lcom/oculus/library/model/GrantReason;

.field public static final enum OCULUS_KEYS:Lcom/oculus/library/model/GrantReason;

.field public static final enum PAID_OFFER:Lcom/oculus/library/model/GrantReason;

.field public static final enum PREORDER:Lcom/oculus/library/model/GrantReason;

.field public static final enum PRESS_OFFER:Lcom/oculus/library/model/GrantReason;

.field public static final enum RELEASE_CHANNEL_OFFER:Lcom/oculus/library/model/GrantReason;

.field public static final enum RETAIL_DEMO:Lcom/oculus/library/model/GrantReason;

.field public static final enum SAMSUNG_IMEI_PROMOTION:Lcom/oculus/library/model/GrantReason;

.field public static final enum STORE_WIDE_OFFER:Lcom/oculus/library/model/GrantReason;

.field public static final enum TEST_USER:Lcom/oculus/library/model/GrantReason;

.field public static final enum THREE_DOF_UPGRADE:Lcom/oculus/library/model/GrantReason;

.field public static final enum TRIAL_OFFER:Lcom/oculus/library/model/GrantReason;

.field public static final enum UNKNOWN:Lcom/oculus/library/model/GrantReason;

.field public static final enum XBUY:Lcom/oculus/library/model/GrantReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->UNKNOWN:Lcom/oculus/library/model/GrantReason;

    .line 7
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "ADDITIONAL_ENTITLEMENT_GRANT"

    invoke-direct {v0, v1, v4}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->ADDITIONAL_ENTITLEMENT_GRANT:Lcom/oculus/library/model/GrantReason;

    .line 8
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "ADMIN_OFFER"

    invoke-direct {v0, v1, v5}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->ADMIN_OFFER:Lcom/oculus/library/model/GrantReason;

    .line 9
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "BUNDLE_OFFER"

    invoke-direct {v0, v1, v6}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->BUNDLE_OFFER:Lcom/oculus/library/model/GrantReason;

    .line 10
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "CSR"

    invoke-direct {v0, v1, v7}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->CSR:Lcom/oculus/library/model/GrantReason;

    .line 11
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "DEVELOPER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->DEVELOPER:Lcom/oculus/library/model/GrantReason;

    .line 12
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "EXTENSION_CONSUMED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->EXTENSION_CONSUMED:Lcom/oculus/library/model/GrantReason;

    .line 13
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "F2P_IAP_MIGRATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->F2P_IAP_MIGRATION:Lcom/oculus/library/model/GrantReason;

    .line 14
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "INTERN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->INTERN:Lcom/oculus/library/model/GrantReason;

    .line 15
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "NUX"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->NUX:Lcom/oculus/library/model/GrantReason;

    .line 16
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "NUX_BUNDLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->NUX_BUNDLE:Lcom/oculus/library/model/GrantReason;

    .line 17
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "OCULUS_EMPLOYEE_OFFER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->OCULUS_EMPLOYEE_OFFER:Lcom/oculus/library/model/GrantReason;

    .line 18
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "OCULUS_KEYS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->OCULUS_KEYS:Lcom/oculus/library/model/GrantReason;

    .line 19
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "PAID_OFFER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->PAID_OFFER:Lcom/oculus/library/model/GrantReason;

    .line 20
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "PREORDER"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->PREORDER:Lcom/oculus/library/model/GrantReason;

    .line 21
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "PRESS_OFFER"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->PRESS_OFFER:Lcom/oculus/library/model/GrantReason;

    .line 22
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "RELEASE_CHANNEL_OFFER"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->RELEASE_CHANNEL_OFFER:Lcom/oculus/library/model/GrantReason;

    .line 23
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "RETAIL_DEMO"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->RETAIL_DEMO:Lcom/oculus/library/model/GrantReason;

    .line 24
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "SAMSUNG_IMEI_PROMOTION"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->SAMSUNG_IMEI_PROMOTION:Lcom/oculus/library/model/GrantReason;

    .line 25
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "STORE_WIDE_OFFER"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->STORE_WIDE_OFFER:Lcom/oculus/library/model/GrantReason;

    .line 26
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "TEST_USER"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->TEST_USER:Lcom/oculus/library/model/GrantReason;

    .line 27
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "THREE_DOF_UPGRADE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->THREE_DOF_UPGRADE:Lcom/oculus/library/model/GrantReason;

    .line 28
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "TRIAL_OFFER"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->TRIAL_OFFER:Lcom/oculus/library/model/GrantReason;

    .line 29
    new-instance v0, Lcom/oculus/library/model/GrantReason;

    const-string v1, "XBUY"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/GrantReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/GrantReason;->XBUY:Lcom/oculus/library/model/GrantReason;

    .line 5
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/oculus/library/model/GrantReason;

    sget-object v1, Lcom/oculus/library/model/GrantReason;->UNKNOWN:Lcom/oculus/library/model/GrantReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/library/model/GrantReason;->ADDITIONAL_ENTITLEMENT_GRANT:Lcom/oculus/library/model/GrantReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/library/model/GrantReason;->ADMIN_OFFER:Lcom/oculus/library/model/GrantReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/library/model/GrantReason;->BUNDLE_OFFER:Lcom/oculus/library/model/GrantReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/library/model/GrantReason;->CSR:Lcom/oculus/library/model/GrantReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/library/model/GrantReason;->DEVELOPER:Lcom/oculus/library/model/GrantReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/library/model/GrantReason;->EXTENSION_CONSUMED:Lcom/oculus/library/model/GrantReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/library/model/GrantReason;->F2P_IAP_MIGRATION:Lcom/oculus/library/model/GrantReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/library/model/GrantReason;->INTERN:Lcom/oculus/library/model/GrantReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oculus/library/model/GrantReason;->NUX:Lcom/oculus/library/model/GrantReason;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oculus/library/model/GrantReason;->NUX_BUNDLE:Lcom/oculus/library/model/GrantReason;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oculus/library/model/GrantReason;->OCULUS_EMPLOYEE_OFFER:Lcom/oculus/library/model/GrantReason;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oculus/library/model/GrantReason;->OCULUS_KEYS:Lcom/oculus/library/model/GrantReason;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/oculus/library/model/GrantReason;->PAID_OFFER:Lcom/oculus/library/model/GrantReason;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/oculus/library/model/GrantReason;->PREORDER:Lcom/oculus/library/model/GrantReason;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/oculus/library/model/GrantReason;->PRESS_OFFER:Lcom/oculus/library/model/GrantReason;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/oculus/library/model/GrantReason;->RELEASE_CHANNEL_OFFER:Lcom/oculus/library/model/GrantReason;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/oculus/library/model/GrantReason;->RETAIL_DEMO:Lcom/oculus/library/model/GrantReason;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/oculus/library/model/GrantReason;->SAMSUNG_IMEI_PROMOTION:Lcom/oculus/library/model/GrantReason;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/oculus/library/model/GrantReason;->STORE_WIDE_OFFER:Lcom/oculus/library/model/GrantReason;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/oculus/library/model/GrantReason;->TEST_USER:Lcom/oculus/library/model/GrantReason;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/oculus/library/model/GrantReason;->THREE_DOF_UPGRADE:Lcom/oculus/library/model/GrantReason;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/oculus/library/model/GrantReason;->TRIAL_OFFER:Lcom/oculus/library/model/GrantReason;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/oculus/library/model/GrantReason;->XBUY:Lcom/oculus/library/model/GrantReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/library/model/GrantReason;->$VALUES:[Lcom/oculus/library/model/GrantReason;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/library/model/GrantReason;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/oculus/library/model/GrantReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/GrantReason;

    return-object v0
.end method

.method public static values()[Lcom/oculus/library/model/GrantReason;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/oculus/library/model/GrantReason;->$VALUES:[Lcom/oculus/library/model/GrantReason;

    invoke-virtual {v0}, [Lcom/oculus/library/model/GrantReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/library/model/GrantReason;

    return-object v0
.end method
