.class synthetic Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy$1;
.super Ljava/lang/Object;
.source "CloudStorage2ResolutionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oculus$cloudstoragehelper$CloudStorageHelper$ResolutionType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    invoke-static {}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->values()[Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy$1;->$SwitchMap$com$oculus$cloudstoragehelper$CloudStorageHelper$ResolutionType:[I

    :try_start_0
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy$1;->$SwitchMap$com$oculus$cloudstoragehelper$CloudStorageHelper$ResolutionType:[I

    sget-object v1, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->USE_LOCAL:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

    invoke-virtual {v1}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy$1;->$SwitchMap$com$oculus$cloudstoragehelper$CloudStorageHelper$ResolutionType:[I

    sget-object v1, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->USE_REMOTE:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

    invoke-virtual {v1}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
