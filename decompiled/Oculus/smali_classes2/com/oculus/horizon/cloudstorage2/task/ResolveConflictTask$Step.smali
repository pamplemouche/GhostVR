.class public final enum Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;
.super Ljava/lang/Enum;
.source "ResolveConflictTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Step"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

.field public static final enum DONE:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

.field public static final enum DOWNLOAD_PATTERNS:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

.field public static final enum EXECUTE_POLICY:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

.field public static final enum EXISTING_CONFLICT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

.field public static final enum INIT:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

.field public static final enum PREFLIGHT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;->INIT:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    .line 35
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    const-string v1, "PREFLIGHT_CHECK"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;->PREFLIGHT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    .line 36
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    const-string v1, "DOWNLOAD_PATTERNS"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;->DOWNLOAD_PATTERNS:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    .line 37
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    const-string v1, "EXISTING_CONFLICT_CHECK"

    invoke-direct {v0, v1, v6}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;->EXISTING_CONFLICT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    .line 38
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    const-string v1, "EXECUTE_POLICY"

    invoke-direct {v0, v1, v7}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;->EXECUTE_POLICY:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    .line 39
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    const-string v1, "DONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;->DONE:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;->INIT:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;->PREFLIGHT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;->DOWNLOAD_PATTERNS:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;->EXISTING_CONFLICT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;->EXECUTE_POLICY:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;->DONE:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;->$VALUES:[Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;->$VALUES:[Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    invoke-virtual {v0}, [Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    return-object v0
.end method
