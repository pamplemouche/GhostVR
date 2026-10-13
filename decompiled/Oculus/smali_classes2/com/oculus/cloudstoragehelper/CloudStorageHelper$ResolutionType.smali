.class public final enum Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;
.super Ljava/lang/Enum;
.source "CloudStorageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/cloudstoragehelper/CloudStorageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResolutionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

.field public static final enum USE_LOCAL:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

.field public static final enum USE_REMOTE:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

    const-string v1, "USE_LOCAL"

    invoke-direct {v0, v1, v2}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->USE_LOCAL:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

    .line 49
    new-instance v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

    const-string v1, "USE_REMOTE"

    invoke-direct {v0, v1, v3}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->USE_REMOTE:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

    sget-object v1, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->USE_LOCAL:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->USE_REMOTE:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->$VALUES:[Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->$VALUES:[Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

    invoke-virtual {v0}, [Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

    return-object v0
.end method
