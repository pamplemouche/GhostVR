.class public final enum Lcom/oculus/horizon/payments/CheckoutFlowModel$State;
.super Ljava/lang/Enum;
.source "CheckoutFlowModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/payments/CheckoutFlowModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/payments/CheckoutFlowModel$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

.field public static final enum ERROR:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

.field public static final enum PURCHASED:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

.field public static final enum RESET:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    const-string v1, "RESET"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->RESET:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    .line 23
    new-instance v0, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->ERROR:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    .line 24
    new-instance v0, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->PURCHASED:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    sget-object v1, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->RESET:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->ERROR:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->PURCHASED:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->$VALUES:[Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/payments/CheckoutFlowModel$State;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/payments/CheckoutFlowModel$State;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->$VALUES:[Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    invoke-virtual {v0}, [Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    return-object v0
.end method
