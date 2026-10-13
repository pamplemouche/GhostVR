.class public final enum Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;
.super Ljava/lang/Enum;
.source "CloudStorage2ResolutionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

.field public static final enum MANUAL:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

.field public static final enum USE_LATEST:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

.field public static final enum USE_LOCAL:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

.field public static final enum USE_REMOTE:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    const-string v1, "USE_LOCAL"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;->USE_LOCAL:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    .line 11
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    const-string v1, "USE_REMOTE"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;->USE_REMOTE:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    .line 12
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    const-string v1, "USE_LATEST"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;->USE_LATEST:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    .line 13
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    const-string v1, "MANUAL"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;->MANUAL:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;->USE_LOCAL:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;->USE_REMOTE:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;->USE_LATEST:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;->MANUAL:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;->$VALUES:[Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static from(Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy$1;->$SwitchMap$com$oculus$cloudstoragehelper$CloudStorageHelper$ResolutionType:[I

    invoke-virtual {p0}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unconvertable ResolutionType %s"

    .line 23
    invoke-static {v1, p0}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :pswitch_0
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;->USE_LOCAL:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    .line 20
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;->USE_REMOTE:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;->$VALUES:[Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    invoke-virtual {v0}, [Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    return-object v0
.end method
