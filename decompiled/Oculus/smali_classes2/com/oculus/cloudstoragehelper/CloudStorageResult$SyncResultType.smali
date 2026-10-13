.class public final enum Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;
.super Ljava/lang/Enum;
.source "CloudStorageResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/cloudstoragehelper/CloudStorageResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

.field public static final enum CONFLICT:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

.field public static final enum FAILURE:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

.field public static final enum PROGRESS:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

.field public static final enum SUCCESS:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    const-string v1, "PROGRESS"

    invoke-direct {v0, v1, v2}, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->PROGRESS:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    .line 17
    new-instance v0, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->SUCCESS:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    .line 18
    new-instance v0, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->FAILURE:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    .line 19
    new-instance v0, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    const-string v1, "CONFLICT"

    invoke-direct {v0, v1, v5}, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->CONFLICT:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    sget-object v1, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->PROGRESS:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->SUCCESS:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->FAILURE:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->CONFLICT:Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->$VALUES:[Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->$VALUES:[Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    invoke-virtual {v0}, [Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/cloudstoragehelper/CloudStorageResult$SyncResultType;

    return-object v0
.end method
