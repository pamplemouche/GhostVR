.class public abstract Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;
.super Ljava/lang/Object;
.source "MobileConfigContextBase.java"

# interfaces
.implements Lcom/facebook/mobileconfig/factory/MobileConfigContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;
    }
.end annotation


# instance fields
.field final boolValueGetter:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final doubleValueGetter:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field final longValueGetter:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final stringValueGetter:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/facebook/mobileconfig/MobileConfigOverridesTable;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$1;

    invoke-direct {v0, p0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$1;-><init>(Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;)V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->boolValueGetter:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;

    .line 112
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$2;

    invoke-direct {v0, p0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$2;-><init>(Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;)V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->longValueGetter:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;

    .line 121
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$3;

    invoke-direct {v0, p0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$3;-><init>(Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;)V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->doubleValueGetter:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;

    .line 130
    new-instance v0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$4;

    invoke-direct {v0, p0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$4;-><init>(Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;)V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->stringValueGetter:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;

    .line 28
    iput-object p1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    .line 29
    return-void
.end method

.method public static throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 320
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 321
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 322
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 324
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBoolean(J)Z
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->NONE:Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->getBooleanWithOptions(JLcom/facebook/mobileconfig/factory/MobileConfigOptions;)Z

    move-result v0

    return v0
.end method

.method public abstract getBooleanFromStorage(JZZ)Z
.end method

.method public getBooleanWithOptions(JLcom/facebook/mobileconfig/factory/MobileConfigOptions;)Z
    .locals 1

    .prologue
    .line 162
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/MobileConfigDefaults;->getBoolDefaults(J)Z

    move-result v0

    .line 161
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->getBooleanWithOptions(JZLcom/facebook/mobileconfig/factory/MobileConfigOptions;)Z

    move-result v0

    return v0
.end method

.method public getBooleanWithOptions(JZLcom/facebook/mobileconfig/factory/MobileConfigOptions;)Z
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    .line 169
    invoke-interface {v0, p1, p2}, Lcom/facebook/mobileconfig/MobileConfigOverridesTable;->hasBoolOverrideForParam(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-boolean v0, p4, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mRequestForValueSource:Z

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->OVERRIDE:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    invoke-virtual {p4, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->setValueSource(Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/mobileconfig/MobileConfigOverridesTable;->boolOverrideForParam(JZ)Z

    move-result v0

    .line 176
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->boolValueGetter:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;->getValue(JLjava/lang/Object;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public abstract getDoubleFromStorage(JDZ)D
.end method

.method public getDoubleWithOptions(JDLcom/facebook/mobileconfig/factory/MobileConfigOptions;)D
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    invoke-interface {v0, p1, p2}, Lcom/facebook/mobileconfig/MobileConfigOverridesTable;->hasDoubleOverrideForParam(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-boolean v0, p5, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mRequestForValueSource:Z

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->OVERRIDE:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    invoke-virtual {p5, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->setValueSource(Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/mobileconfig/MobileConfigOverridesTable;->doubleOverrideForParam(JD)D

    move-result-wide v0

    .line 235
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->doubleValueGetter:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p5}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;->getValue(JLjava/lang/Object;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getDoubleWithOptions(JLcom/facebook/mobileconfig/factory/MobileConfigOptions;)D
    .locals 7

    .prologue
    .line 222
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/MobileConfigDefaults;->getDoubleDefaults(J)D

    move-result-wide v4

    move-object v1, p0

    move-wide v2, p1

    move-object v6, p3

    .line 221
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->getDoubleWithOptions(JDLcom/facebook/mobileconfig/factory/MobileConfigOptions;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(JI)I
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->getInt(JIZ)I

    move-result v0

    return v0
.end method

.method public getInt(JIZ)I
    .locals 7

    .prologue
    .line 302
    int-to-long v4, p3

    if-eqz p4, :cond_1

    sget-object v6, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->WITHOUT_LOGGING:Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    .line 303
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->getLongWithOptions(JJLcom/facebook/mobileconfig/factory/MobileConfigOptions;)J

    move-result-wide v2

    .line 309
    long-to-int v0, v2

    .line 310
    int-to-long v4, v0

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    move p3, v0

    :cond_0
    return p3

    .line 302
    :cond_1
    sget-object v6, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->NONE:Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    goto :goto_0
.end method

.method public abstract getLoggingId(J)Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public getLong(J)J
    .locals 3

    .prologue
    .line 181
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->NONE:Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->getLongWithOptions(JLcom/facebook/mobileconfig/factory/MobileConfigOptions;)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getLongFromStorage(JJZ)J
.end method

.method public getLongWithOptions(JJLcom/facebook/mobileconfig/factory/MobileConfigOptions;)J
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    .line 199
    invoke-interface {v0, p1, p2}, Lcom/facebook/mobileconfig/MobileConfigOverridesTable;->hasIntOverrideForParam(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-boolean v0, p5, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mRequestForValueSource:Z

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->OVERRIDE:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    invoke-virtual {p5, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->setValueSource(Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/mobileconfig/MobileConfigOverridesTable;->intOverrideForParam(JJ)J

    move-result-wide v0

    .line 206
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->longValueGetter:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p5}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;->getValue(JLjava/lang/Object;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLongWithOptions(JLcom/facebook/mobileconfig/factory/MobileConfigOptions;)J
    .locals 7

    .prologue
    .line 192
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/MobileConfigDefaults;->getLongDefaults(J)J

    move-result-wide v4

    move-object v1, p0

    move-wide v2, p1

    move-object v6, p3

    .line 191
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->getLongWithOptions(JJLcom/facebook/mobileconfig/factory/MobileConfigOptions;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->NONE:Lcom/facebook/mobileconfig/factory/MobileConfigOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->getStringWithOptions(JLcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getStringFromStorage(JLjava/lang/String;Z)Ljava/lang/String;
.end method

.method public getStringWithOptions(JLcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/MobileConfigDefaults;->getStringDefaults(J)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->getStringWithOptions(JLjava/lang/String;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringWithOptions(JLjava/lang/String;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    invoke-interface {v0, p1, p2}, Lcom/facebook/mobileconfig/MobileConfigOverridesTable;->hasStringOverrideForParam(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    iget-boolean v0, p4, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->mRequestForValueSource:Z

    if-eqz v0, :cond_0

    .line 265
    sget-object v0, Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;->OVERRIDE:Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;

    invoke-virtual {p4, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigOptions;->setValueSource(Lcom/facebook/mobileconfig/factory/MobileConfigValueSource;)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/mobileconfig/MobileConfigOverridesTable;->stringOverrideForParam(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    const-string v1, "__fbt_null__"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    :goto_0
    return-object p3

    :cond_1
    move-object p3, v0

    .line 268
    goto :goto_0

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->stringValueGetter:Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase$ValueGetterWithOption;->getValue(JLjava/lang/Object;Lcom/facebook/mobileconfig/factory/MobileConfigOptions;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p3, v0

    goto :goto_0
.end method

.method public hasOverride(J)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 328
    iget-object v1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    if-nez v1, :cond_0

    .line 342
    :goto_0
    return v0

    .line 331
    :cond_0
    invoke-static {p1, p2}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getParamType(J)I

    move-result v1

    .line 332
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 334
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    invoke-interface {v0, p1, p2}, Lcom/facebook/mobileconfig/MobileConfigOverridesTable;->hasBoolOverrideForParam(J)Z

    move-result v0

    goto :goto_0

    .line 336
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    invoke-interface {v0, p1, p2}, Lcom/facebook/mobileconfig/MobileConfigOverridesTable;->hasIntOverrideForParam(J)Z

    move-result v0

    goto :goto_0

    .line 338
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    invoke-interface {v0, p1, p2}, Lcom/facebook/mobileconfig/MobileConfigOverridesTable;->hasDoubleOverrideForParam(J)Z

    move-result v0

    goto :goto_0

    .line 340
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;

    invoke-interface {v0, p1, p2}, Lcom/facebook/mobileconfig/MobileConfigOverridesTable;->hasStringOverrideForParam(J)Z

    move-result v0

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public abstract hasServerValueFromStorage(J)Z
.end method

.method public abstract hasValueFromStorage(J)Z
.end method

.method public abstract isValid()Z
.end method

.method public abstract logExposure(JLcom/facebook/mobileconfig/factory/ExposureType;)V
.end method

.method public declared-synchronized refreshOverridesTable(Lcom/facebook/mobileconfig/MobileConfigOverridesTable;)V
    .locals 1

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/facebook/mobileconfig/factory/MobileConfigContextBase;->mOverridesTable:Lcom/facebook/mobileconfig/MobileConfigOverridesTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
