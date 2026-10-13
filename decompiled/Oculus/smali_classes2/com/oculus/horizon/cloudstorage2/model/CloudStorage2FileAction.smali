.class public final enum Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;
.super Ljava/lang/Enum;
.source "CloudStorage2FileAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

.field public static final enum ADD:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

.field public static final enum REMOVE:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

.field public static final enum UPDATE:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;->ADD:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    .line 8
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;->UPDATE:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    .line 9
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;->REMOVE:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;->ADD:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;->UPDATE:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;->REMOVE:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;->$VALUES:[Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;->$VALUES:[Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    invoke-virtual {v0}, [Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    return-object v0
.end method
