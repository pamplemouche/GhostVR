.class public final enum Lcom/facebook/analytics2/logger/ProcessorPriority;
.super Ljava/lang/Enum;
.source "ProcessorPriority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/analytics2/logger/ProcessorPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/analytics2/logger/ProcessorPriority;

.field public static final enum HIGH:Lcom/facebook/analytics2/logger/ProcessorPriority;

.field public static final enum NORMAL:Lcom/facebook/analytics2/logger/ProcessorPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/facebook/analytics2/logger/ProcessorPriority;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v2}, Lcom/facebook/analytics2/logger/ProcessorPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/analytics2/logger/ProcessorPriority;->HIGH:Lcom/facebook/analytics2/logger/ProcessorPriority;

    .line 7
    new-instance v0, Lcom/facebook/analytics2/logger/ProcessorPriority;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/facebook/analytics2/logger/ProcessorPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/analytics2/logger/ProcessorPriority;->NORMAL:Lcom/facebook/analytics2/logger/ProcessorPriority;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/analytics2/logger/ProcessorPriority;

    sget-object v1, Lcom/facebook/analytics2/logger/ProcessorPriority;->HIGH:Lcom/facebook/analytics2/logger/ProcessorPriority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/analytics2/logger/ProcessorPriority;->NORMAL:Lcom/facebook/analytics2/logger/ProcessorPriority;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/analytics2/logger/ProcessorPriority;->$VALUES:[Lcom/facebook/analytics2/logger/ProcessorPriority;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/analytics2/logger/ProcessorPriority;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/facebook/analytics2/logger/ProcessorPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/ProcessorPriority;

    return-object v0
.end method

.method public static values()[Lcom/facebook/analytics2/logger/ProcessorPriority;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/facebook/analytics2/logger/ProcessorPriority;->$VALUES:[Lcom/facebook/analytics2/logger/ProcessorPriority;

    invoke-virtual {v0}, [Lcom/facebook/analytics2/logger/ProcessorPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/analytics2/logger/ProcessorPriority;

    return-object v0
.end method
