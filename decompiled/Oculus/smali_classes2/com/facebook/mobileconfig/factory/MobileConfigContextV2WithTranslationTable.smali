.class public Lcom/facebook/mobileconfig/factory/MobileConfigContextV2WithTranslationTable;
.super Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;
.source "MobileConfigContextV2WithTranslationTable.java"

# interfaces
.implements Lcom/facebook/mobileconfig/factory/MobileConfigContext;


# instance fields
.field private final mTranslationTable:[[J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/MobileConfigOverridesTable;Ljavax/inject/Provider;[[J)V
    .locals 0
    .param p4    # Ljavax/inject/Provider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lcom/facebook/mobileconfig/MobileConfigManagerHolder;",
            "Lcom/facebook/mobileconfig/MobileConfigOverridesTable;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/errorreporting/FbErrorReporter;",
            ">;[[J)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;-><init>(Ljava/nio/ByteBuffer;Lcom/facebook/mobileconfig/MobileConfigManagerHolder;Lcom/facebook/mobileconfig/MobileConfigOverridesTable;Ljavax/inject/Provider;)V

    .line 31
    iput-object p5, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2WithTranslationTable;->mTranslationTable:[[J

    .line 32
    return-void
.end method

.method public static getUpdatedSpecifier(J[[J)J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 135
    if-nez p2, :cond_0

    .line 136
    const-string v2, "MobileConfigContextV2WithTranslationTable"

    const-string v3, "TranslationTable passed was null"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getParamType(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 139
    invoke-static {p0, p1}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getSlotId(J)I

    move-result v3

    .line 140
    if-ltz v2, :cond_1

    array-length v4, p2

    if-ge v2, v4, :cond_1

    if-ltz v3, :cond_1

    aget-object v4, p2, v2

    if-eqz v4, :cond_1

    aget-object v4, p2, v2

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 145
    aget-object v2, p2, v2

    aget-wide v2, v2, v3

    .line 146
    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    .line 147
    invoke-static {v2, v3}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getParamType(J)I

    move-result v4

    .line 148
    invoke-static {p0, p1}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getParamType(J)I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 149
    const-string v2, "MobileConfigContextV2WithTranslationTable"

    const-string v3, "Translated to invalid param for config idx: %d param idx: %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 153
    invoke-static {p0, p1}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getConfigIndex(J)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 154
    invoke-static {p0, p1}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getParamIndex(J)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 151
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    move-wide v0, v2

    .line 157
    goto :goto_0
.end method


# virtual methods
.method public getBooleanFromStorage(JZZ)Z
    .locals 5

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2WithTranslationTable;->mTranslationTable:[[J

    .line 38
    invoke-static {p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2WithTranslationTable;->getUpdatedSpecifier(J[[J)J

    move-result-wide v0

    .line 40
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 43
    :goto_0
    return p3

    :cond_0
    invoke-super {p0, v0, v1, p3, p4}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->getBooleanFromStorage(JZZ)Z

    move-result p3

    goto :goto_0
.end method

.method public getDoubleFromStorage(JDZ)D
    .locals 7

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2WithTranslationTable;->mTranslationTable:[[J

    .line 62
    invoke-static {p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2WithTranslationTable;->getUpdatedSpecifier(J[[J)J

    move-result-wide v2

    .line 64
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-wide p3

    :cond_0
    move-object v1, p0

    move-wide v4, p3

    move v6, p5

    invoke-super/range {v1 .. v6}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->getDoubleFromStorage(JDZ)D

    move-result-wide p3

    goto :goto_0
.end method

.method public getLoggingId(J)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2WithTranslationTable;->mTranslationTable:[[J

    .line 108
    invoke-static {p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2WithTranslationTable;->getUpdatedSpecifier(J[[J)J

    move-result-wide v0

    .line 110
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, v0, v1}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->getLoggingId(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLongFromStorage(JJZ)J
    .locals 7

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2WithTranslationTable;->mTranslationTable:[[J

    .line 50
    invoke-static {p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2WithTranslationTable;->getUpdatedSpecifier(J[[J)J

    move-result-wide v2

    .line 52
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-wide p3

    :cond_0
    move-object v1, p0

    move-wide v4, p3

    move v6, p5

    invoke-super/range {v1 .. v6}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->getLongFromStorage(JJZ)J

    move-result-wide p3

    goto :goto_0
.end method

.method public getStringFromStorage(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2WithTranslationTable;->mTranslationTable:[[J

    .line 74
    invoke-static {p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2WithTranslationTable;->getUpdatedSpecifier(J[[J)J

    move-result-wide v0

    .line 76
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 79
    :goto_0
    return-object p3

    :cond_0
    invoke-super {p0, v0, v1, p3, p4}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->getStringFromStorage(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public logExposure(JLcom/facebook/mobileconfig/factory/ExposureType;)V
    .locals 5

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2WithTranslationTable;->mTranslationTable:[[J

    .line 119
    invoke-static {p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2WithTranslationTable;->getUpdatedSpecifier(J[[J)J

    move-result-wide v0

    .line 121
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-super {p0, v0, v1, p3}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2Impl;->logExposure(JLcom/facebook/mobileconfig/factory/ExposureType;)V

    goto :goto_0
.end method
