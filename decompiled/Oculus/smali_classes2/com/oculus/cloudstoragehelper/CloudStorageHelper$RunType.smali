.class public final enum Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;
.super Ljava/lang/Enum;
.source "CloudStorageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/cloudstoragehelper/CloudStorageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RunType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;

.field public static final enum LAUNCH_SYNC:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;

.field public static final enum RESOLVE_CONFLICT:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;

    const-string v1, "LAUNCH_SYNC"

    invoke-direct {v0, v1, v2}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;->LAUNCH_SYNC:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;

    .line 43
    new-instance v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;

    const-string v1, "RESOLVE_CONFLICT"

    invoke-direct {v0, v1, v3}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;->RESOLVE_CONFLICT:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;

    sget-object v1, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;->LAUNCH_SYNC:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;->RESOLVE_CONFLICT:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;->$VALUES:[Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;->$VALUES:[Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;

    invoke-virtual {v0}, [Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;

    return-object v0
.end method
