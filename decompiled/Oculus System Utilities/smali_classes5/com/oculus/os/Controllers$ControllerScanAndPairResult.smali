.class public final enum Lcom/oculus/os/Controllers$ControllerScanAndPairResult;
.super Ljava/lang/Enum;
.source "Controllers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/os/Controllers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControllerScanAndPairResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/os/Controllers$ControllerScanAndPairResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

.field public static final enum ALREADY_IN_PROGRESS:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

.field public static final enum FAILED_TO_PAIR:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

.field public static final enum INTERNAL_ERROR:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

.field public static final enum SUCCESS:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

.field public static final enum TIMED_OUT:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

.field public static final enum UNKNOWN_ERROR:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    const-string v1, "ALREADY_IN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->ALREADY_IN_PROGRESS:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    .line 40
    new-instance v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    const-string v1, "FAILED_TO_PAIR"

    invoke-direct {v0, v1, v4}, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->FAILED_TO_PAIR:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    .line 41
    new-instance v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->INTERNAL_ERROR:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    .line 42
    new-instance v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v6}, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->SUCCESS:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    .line 43
    new-instance v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    const-string v1, "TIMED_OUT"

    invoke-direct {v0, v1, v7}, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->TIMED_OUT:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    .line 44
    new-instance v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->UNKNOWN_ERROR:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    sget-object v1, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->ALREADY_IN_PROGRESS:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->FAILED_TO_PAIR:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->INTERNAL_ERROR:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->SUCCESS:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->TIMED_OUT:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->UNKNOWN_ERROR:Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->$VALUES:[Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/os/Controllers$ControllerScanAndPairResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    return-object v0
.end method

.method public static values()[Lcom/oculus/os/Controllers$ControllerScanAndPairResult;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->$VALUES:[Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    invoke-virtual {v0}, [Lcom/oculus/os/Controllers$ControllerScanAndPairResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/os/Controllers$ControllerScanAndPairResult;

    return-object v0
.end method
