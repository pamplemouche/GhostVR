.class public final enum Lcom/oculus/horizon/payments/RefundFlowModel$State;
.super Ljava/lang/Enum;
.source "RefundFlowModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/payments/RefundFlowModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/payments/RefundFlowModel$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/payments/RefundFlowModel$State;

.field public static final enum ERROR:Lcom/oculus/horizon/payments/RefundFlowModel$State;

.field public static final enum REFUNDED:Lcom/oculus/horizon/payments/RefundFlowModel$State;

.field public static final enum RESET:Lcom/oculus/horizon/payments/RefundFlowModel$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/oculus/horizon/payments/RefundFlowModel$State;

    const-string v1, "RESET"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/payments/RefundFlowModel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/payments/RefundFlowModel$State;->RESET:Lcom/oculus/horizon/payments/RefundFlowModel$State;

    .line 20
    new-instance v0, Lcom/oculus/horizon/payments/RefundFlowModel$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/payments/RefundFlowModel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/payments/RefundFlowModel$State;->ERROR:Lcom/oculus/horizon/payments/RefundFlowModel$State;

    .line 21
    new-instance v0, Lcom/oculus/horizon/payments/RefundFlowModel$State;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/payments/RefundFlowModel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/payments/RefundFlowModel$State;->REFUNDED:Lcom/oculus/horizon/payments/RefundFlowModel$State;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/payments/RefundFlowModel$State;

    sget-object v1, Lcom/oculus/horizon/payments/RefundFlowModel$State;->RESET:Lcom/oculus/horizon/payments/RefundFlowModel$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/payments/RefundFlowModel$State;->ERROR:Lcom/oculus/horizon/payments/RefundFlowModel$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/payments/RefundFlowModel$State;->REFUNDED:Lcom/oculus/horizon/payments/RefundFlowModel$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/horizon/payments/RefundFlowModel$State;->$VALUES:[Lcom/oculus/horizon/payments/RefundFlowModel$State;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/payments/RefundFlowModel$State;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/oculus/horizon/payments/RefundFlowModel$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/payments/RefundFlowModel$State;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/payments/RefundFlowModel$State;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/oculus/horizon/payments/RefundFlowModel$State;->$VALUES:[Lcom/oculus/horizon/payments/RefundFlowModel$State;

    invoke-virtual {v0}, [Lcom/oculus/horizon/payments/RefundFlowModel$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/payments/RefundFlowModel$State;

    return-object v0
.end method
