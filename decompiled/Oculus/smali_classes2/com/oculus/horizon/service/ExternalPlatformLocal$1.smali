.class synthetic Lcom/oculus/horizon/service/ExternalPlatformLocal$1;
.super Ljava/lang/Object;
.source "ExternalPlatformLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service/ExternalPlatformLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oculus$library$model$AppMediaCapability:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 508
    invoke-static {}, Lcom/oculus/library/model/AppMediaCapability;->values()[Lcom/oculus/library/model/AppMediaCapability;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$1;->$SwitchMap$com$oculus$library$model$AppMediaCapability:[I

    :try_start_0
    sget-object v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$1;->$SwitchMap$com$oculus$library$model$AppMediaCapability:[I

    sget-object v1, Lcom/oculus/library/model/AppMediaCapability;->LIVESTREAMING:Lcom/oculus/library/model/AppMediaCapability;

    invoke-virtual {v1}, Lcom/oculus/library/model/AppMediaCapability;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$1;->$SwitchMap$com$oculus$library$model$AppMediaCapability:[I

    sget-object v1, Lcom/oculus/library/model/AppMediaCapability;->SCREENRECORDING:Lcom/oculus/library/model/AppMediaCapability;

    invoke-virtual {v1}, Lcom/oculus/library/model/AppMediaCapability;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$1;->$SwitchMap$com$oculus$library$model$AppMediaCapability:[I

    sget-object v1, Lcom/oculus/library/model/AppMediaCapability;->VRCASTING:Lcom/oculus/library/model/AppMediaCapability;

    invoke-virtual {v1}, Lcom/oculus/library/model/AppMediaCapability;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
