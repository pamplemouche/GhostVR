.class public Lcom/oculus/library/utils/AppStatusConverter;
.super Ljava/lang/Object;
.source "AppStatusConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appStatusNamesToLegacyProductStatuses([Ljava/lang/String;)[Lcom/oculus/model/ProductStatus;
    .locals 5

    .prologue
    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 73
    sget-object v4, Lcom/oculus/library/model/AppStatus;->UNKNOWN:Lcom/oculus/library/model/AppStatus;

    invoke-static {v3, v4}, Lcom/oculus/library/utils/AppStatusConverter;->parseAppStatusNameWithDefault(Ljava/lang/String;Lcom/oculus/library/model/AppStatus;)Lcom/oculus/library/model/AppStatus;

    move-result-object v3

    .line 74
    invoke-static {v3}, Lcom/oculus/library/utils/AppStatusConverter;->toLegacyProductStatus(Lcom/oculus/library/model/AppStatus;)Lcom/oculus/model/ProductStatus;

    move-result-object v3

    .line 75
    if-eqz v3, :cond_0

    .line 76
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/oculus/model/ProductStatus;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/model/ProductStatus;

    return-object v0
.end method

.method public static isIncompatible(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 38
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseAppStatusNameWithDefault(Ljava/lang/String;Lcom/oculus/library/model/AppStatus;)Lcom/oculus/library/model/AppStatus;
    .locals 1

    .prologue
    .line 85
    :try_start_0
    invoke-static {p0}, Lcom/oculus/library/model/AppStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/AppStatus;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 87
    :goto_0
    return-object p1

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toAppStatus(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/model/ProductStatus;)Lcom/oculus/library/model/AppStatus;
    .locals 3

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/oculus/library/utils/AppStatusConverter;->isIncompatible(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/oculus/library/model/AppStatus;->INCOMPATIBLE:Lcom/oculus/library/model/AppStatus;

    .line 63
    :goto_0
    return-object v0

    .line 45
    :cond_0
    sget-object v0, Lcom/oculus/library/utils/AppStatusConverter$1;->$SwitchMap$com$oculus$model$ProductStatus:[I

    invoke-virtual {p2}, Lcom/oculus/model/ProductStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported product status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported status: NOT_PURCHASED"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :pswitch_1
    sget-object v0, Lcom/oculus/library/model/AppStatus;->ENTITLED:Lcom/oculus/library/model/AppStatus;

    goto :goto_0

    .line 51
    :pswitch_2
    sget-object v0, Lcom/oculus/library/model/AppStatus;->DOWNLOAD_QUEUED:Lcom/oculus/library/model/AppStatus;

    goto :goto_0

    .line 55
    :pswitch_3
    sget-object v0, Lcom/oculus/library/model/AppStatus;->DOWNLOADING:Lcom/oculus/library/model/AppStatus;

    goto :goto_0

    .line 57
    :pswitch_4
    sget-object v0, Lcom/oculus/library/model/AppStatus;->DOWNLOADING:Lcom/oculus/library/model/AppStatus;

    goto :goto_0

    .line 59
    :pswitch_5
    sget-object v0, Lcom/oculus/library/model/AppStatus;->INSTALLING:Lcom/oculus/library/model/AppStatus;

    goto :goto_0

    .line 61
    :pswitch_6
    sget-object v0, Lcom/oculus/library/model/AppStatus;->INSTALLED:Lcom/oculus/library/model/AppStatus;

    goto :goto_0

    .line 63
    :pswitch_7
    sget-object v0, Lcom/oculus/library/model/AppStatus;->UNINSTALLING:Lcom/oculus/library/model/AppStatus;

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static toLegacyProductStatus(Lcom/oculus/library/model/AppStatus;)Lcom/oculus/model/ProductStatus;
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/oculus/library/utils/AppStatusConverter$1;->$SwitchMap$com$oculus$library$model$AppStatus:[I

    invoke-virtual {p0}, Lcom/oculus/library/model/AppStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 32
    const-string v0, "AppStatusConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert status to legacy status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/library/model/AppStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 20
    :pswitch_0
    sget-object v0, Lcom/oculus/model/ProductStatus;->NOT_DOWNLOADED:Lcom/oculus/model/ProductStatus;

    goto :goto_0

    .line 22
    :pswitch_1
    sget-object v0, Lcom/oculus/model/ProductStatus;->QUEUED:Lcom/oculus/model/ProductStatus;

    goto :goto_0

    .line 24
    :pswitch_2
    sget-object v0, Lcom/oculus/model/ProductStatus;->DOWNLOADING:Lcom/oculus/model/ProductStatus;

    goto :goto_0

    .line 26
    :pswitch_3
    sget-object v0, Lcom/oculus/model/ProductStatus;->INSTALLING:Lcom/oculus/model/ProductStatus;

    goto :goto_0

    .line 28
    :pswitch_4
    sget-object v0, Lcom/oculus/model/ProductStatus;->INSTALLED:Lcom/oculus/model/ProductStatus;

    goto :goto_0

    .line 30
    :pswitch_5
    sget-object v0, Lcom/oculus/model/ProductStatus;->UNINSTALLING:Lcom/oculus/model/ProductStatus;

    goto :goto_0

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
