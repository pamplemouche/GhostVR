.class public Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;
.super Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;
.source "MobileConfigContextV2Impl.java"

# interfaces
.implements Lcom/facebook/mobileconfig/factory/MobileConfigContext;


# instance fields
.field private mAutoExposureRateLimiter:Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;

.field private final mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFbErrorReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/errorreporting/FbErrorReporter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

.field private mManualExposureRateLimiter:Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/MobileConfigOverridesTable;Ljavax/inject/Provider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lcom/facebook/mobileconfig/MobileConfigManagerHolder;",
            "Lcom/facebook/mobileconfig/MobileConfigOverridesTable;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/errorreporting/FbErrorReporter;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p3}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;-><init>(Lcom/facebook/mobileconfig/MobileConfigOverridesTable;)V

    .line 62
    iput-object p2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    .line 66
    iput-object p4, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mFbErrorReporterProvider:Ljavax/inject/Provider;

    .line 68
    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-lez v0, :cond_0

    .line 70
    invoke-static {p1}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->getRootAsFBMobileConfigTableOptimized(Ljava/nio/ByteBuffer;)Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    invoke-virtual {v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->loggingIdsLength()I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 79
    :goto_1
    new-instance v1, Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;

    invoke-direct {v1, v0}, Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mAutoExposureRateLimiter:Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;

    .line 80
    new-instance v1, Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;

    invoke-direct {v1, v0}, Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mManualExposureRateLimiter:Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;

    .line 82
    :goto_2
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 75
    goto :goto_1

    .line 76
    :catch_0
    move-exception v0

    .line 79
    :goto_3
    new-instance v0, Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;

    invoke-direct {v0, v1}, Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mAutoExposureRateLimiter:Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;

    .line 80
    new-instance v0, Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;

    invoke-direct {v0, v1}, Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mManualExposureRateLimiter:Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;

    goto :goto_2

    .line 79
    :catchall_0
    move-exception v0

    new-instance v2, Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;

    invoke-direct {v2, v1}, Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;-><init>(I)V

    iput-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mAutoExposureRateLimiter:Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;

    .line 80
    new-instance v2, Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;

    invoke-direct {v2, v1}, Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;-><init>(I)V

    iput-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mManualExposureRateLimiter:Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;

    throw v0

    .line 76
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private getMeta(J)I
    .locals 5

    .prologue
    .line 232
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getParamType(J)I

    move-result v0

    .line 233
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getSlotId(J)I

    move-result v1

    .line 235
    packed-switch v0, :pswitch_data_0

    .line 250
    :goto_0
    const-string v0, "Null type specifier is given: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->logError(Ljava/lang/String;)V

    .line 251
    sget v0, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->INVALID_META:I

    :goto_1
    return v0

    .line 237
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    invoke-virtual {v0, v1}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->boolsMeta(I)I

    move-result v0

    goto :goto_1

    .line 239
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    invoke-virtual {v0, v1}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->longsMeta(I)I

    move-result v0

    goto :goto_1

    .line 241
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    invoke-virtual {v0, v1}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->stringsMeta(I)I

    move-result v0

    goto :goto_1

    .line 243
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    invoke-virtual {v0, v1}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->doublesMeta(I)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_1

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private logError(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 436
    const-string v0, "MobileConfigContextV2Impl"

    invoke-static {v0, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mFbErrorReporterProvider:Ljavax/inject/Provider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mFbErrorReporterProvider:Ljavax/inject/Provider;

    .line 438
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/errorreporting/FbErrorReporter;

    .line 439
    :goto_0
    if-eqz v0, :cond_0

    .line 440
    const-string v1, "MobileConfigContextV2Impl"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x186a0

    invoke-interface {v0, v1, p1, v2}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;I)V

    .line 442
    :cond_0
    return-void

    .line 438
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBooleanFromStorage(JZZ)Z
    .locals 5

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getParamType(J)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return p3

    .line 96
    :cond_1
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getSlotId(J)I

    move-result v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    invoke-virtual {v0, v1}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->bools(I)B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 105
    if-nez p4, :cond_2

    invoke-static {v2}, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->hasLoggingIdFromMeta(B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    sget v0, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->INVALID_META:I

    .line 108
    :try_start_1
    iget-object v3, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    invoke-virtual {v3, v1}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->boolsMeta(I)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 112
    :goto_1
    sget-object v1, Lcom/facebook/mobileconfig/factory/ExposureType;->AUTO_EXPOSURE:Lcom/facebook/mobileconfig/factory/ExposureType;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->logExposure(ILcom/facebook/mobileconfig/factory/ExposureType;)V

    .line 115
    :cond_2
    invoke-static {v2}, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->isNullFromMeta(B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->getBooleanValue(B)Z

    move-result p3

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    .line 101
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public getDoubleFromStorage(JDZ)D
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getParamType(J)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-wide p3

    .line 170
    :cond_1
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getSlotId(J)I

    move-result v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    invoke-virtual {v1, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->doublesMeta(I)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    .line 178
    if-nez p5, :cond_2

    invoke-static {v1}, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->hasLoggingIdFromMeta(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    sget-object v2, Lcom/facebook/mobileconfig/factory/ExposureType;->AUTO_EXPOSURE:Lcom/facebook/mobileconfig/factory/ExposureType;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->logExposure(ILcom/facebook/mobileconfig/factory/ExposureType;)V

    .line 182
    :cond_2
    invoke-static {v1}, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->isNullFromMeta(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    :try_start_1
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    invoke-virtual {v1, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->doubles(I)D
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide p3

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 174
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public getLongFromStorage(JJZ)J
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getParamType(J)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-wide p3

    .line 140
    :cond_1
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getSlotId(J)I

    move-result v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    invoke-virtual {v1, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->longsMeta(I)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    .line 148
    if-nez p5, :cond_2

    invoke-static {v1}, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->hasLoggingIdFromMeta(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    sget-object v2, Lcom/facebook/mobileconfig/factory/ExposureType;->AUTO_EXPOSURE:Lcom/facebook/mobileconfig/factory/ExposureType;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->logExposure(ILcom/facebook/mobileconfig/factory/ExposureType;)V

    .line 152
    :cond_2
    invoke-static {v1}, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->isNullFromMeta(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    :try_start_1
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    invoke-virtual {v1, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->longs(I)J
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide p3

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 144
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public getStringFromStorage(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getParamType(J)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-object p3

    .line 200
    :cond_1
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getSlotId(J)I

    move-result v0

    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    invoke-virtual {v1, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->stringsMeta(I)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_5

    move-result v1

    .line 208
    if-nez p4, :cond_2

    invoke-static {v1}, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->hasLoggingIdFromMeta(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    sget-object v2, Lcom/facebook/mobileconfig/factory/ExposureType;->AUTO_EXPOSURE:Lcom/facebook/mobileconfig/factory/ExposureType;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->logExposure(ILcom/facebook/mobileconfig/factory/ExposureType;)V

    .line 212
    :cond_2
    invoke-static {v1}, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->isNullFromMeta(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    :try_start_1
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    invoke-virtual {v1, v0}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->strings(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    move-object p3, v0

    .line 219
    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    .line 204
    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method public hasServerValueFromStorage(J)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 375
    invoke-virtual {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v0

    .line 379
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->getMeta(J)I

    move-result v1

    .line 380
    invoke-static {v1}, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->isMissingFromMeta(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasValueFromStorage(J)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return v0

    .line 370
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->getMeta(J)I

    move-result v1

    .line 371
    invoke-static {v1}, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->isNullFromMeta(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logExposure(ILcom/facebook/mobileconfig/factory/ExposureType;)V
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->hasLoggingIdFromMeta(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-static {p1}, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->getLoggingSlotIdFromMeta(I)I

    move-result v1

    .line 313
    sget-object v0, Lcom/facebook/mobileconfig/factory/ExposureType;->AUTO_EXPOSURE:Lcom/facebook/mobileconfig/factory/ExposureType;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mAutoExposureRateLimiter:Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;

    .line 316
    :goto_1
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;->take(I)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    :try_start_1
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    invoke-static {p1}, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->getLoggingSlotIdFromMeta(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;->loggingIds(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    .line 334
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl$1;->$SwitchMap$com$facebook$mobileconfig$factory$ExposureLoggingMode:[I

    invoke-static {p1}, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->getLoggingModeWithoutCaptureStackFromMeta(I)Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/mobileconfig/factory/ExposureLoggingMode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 345
    :pswitch_0
    sget-object v0, Lcom/facebook/mobileconfig/factory/ExposureType;->AUTO_EXPOSURE:Lcom/facebook/mobileconfig/factory/ExposureType;

    if-eq p2, v0, :cond_0

    .line 357
    :pswitch_1
    const-string v0, ""

    .line 358
    invoke-static {p1}, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->isCaptureStackFromMeta(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 359
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 362
    :cond_2
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mManagerHolder:Lcom/facebook/mobileconfig/MobileConfigManagerHolder;

    invoke-virtual {p2}, Lcom/facebook/mobileconfig/factory/ExposureType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3, v0}, Lcom/facebook/mobileconfig/MobileConfigManagerHolder;->logExposure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mManualExposureRateLimiter:Lcom/facebook/mobileconfig/factory/ExposureRateLimiter;

    goto :goto_1

    .line 319
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 327
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public logExposure(JLcom/facebook/mobileconfig/factory/ExposureType;)V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->mConfigTable:Lcom/facebook/mobileconfig/FBMobileConfigTableOptimized;

    if-nez v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->getMeta(J)I

    move-result v0

    .line 301
    invoke-static {v0}, Lcom/facebook/mobileconfig/factory/MobileConfigTableUtil;->hasLoggingIdFromMeta(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {p0, v0, p3}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->logExposure(ILcom/facebook/mobileconfig/factory/ExposureType;)V

    goto :goto_0
.end method
