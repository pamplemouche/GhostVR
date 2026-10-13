.class public Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;
.super Ljava/lang/Object;
.source "MobileConfigJavaOverridesTable.java"

# interfaces
.implements Lcom/facebook/mobileconfig/MobileConfigOverridesTable;


# instance fields
.field private final mBoolOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDoubleOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final mLongOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mNullOverrides:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mStringOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTranslationTable:[[J
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverrides;[[J)V
    .locals 8
    .param p1    # Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverrides;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [[J
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mTranslationTable:[[J

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mBoolOverrides:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mDoubleOverrides:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mLongOverrides:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mStringOverrides:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mNullOverrides:Ljava/util/HashSet;

    .line 41
    if-nez p1, :cond_1

    .line 92
    :cond_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p1, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverrides;->overrides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Long;

    if-nez v1, :cond_4

    .line 47
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Unexpected format for overrides JSON"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_4
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 51
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 55
    :try_start_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, "__NULL_VALUE__"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 56
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mNullOverrides:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v2, "MobileConfigJavaOverridesTable"

    const-string v3, "Unable to override specifier %d due to changed type. Skipping..."

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v2, v0, v3, v5}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/mobileconfig/specifier/MobileConfigSpecifierUtil;->getParamType(J)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 62
    :pswitch_0
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mBoolOverrides:Ljava/util/Map;

    check-cast v0, Ljava/lang/Boolean;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :pswitch_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_6

    instance-of v2, v0, Ljava/lang/Double;

    if-eqz v2, :cond_2

    .line 67
    :cond_6
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_7

    check-cast v0, Ljava/lang/Integer;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v2

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 69
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mDoubleOverrides:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_7
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_1

    .line 73
    :pswitch_2
    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_8

    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 75
    :cond_8
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_9

    check-cast v0, Ljava/lang/Integer;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 77
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mLongOverrides:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 76
    :cond_9
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2

    .line 81
    :pswitch_3
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mStringOverrides:Ljava/util/Map;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private translateSpecifierIfNeeded(J)J
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mTranslationTable:[[J

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mTranslationTable:[[J

    invoke-static {p1, p2, v0}, Lcom/facebook/mobileconfig/factory/MobileConfigContextV2WithTranslationTable;->getUpdatedSpecifier(J[[J)J

    move-result-wide p1

    .line 221
    :cond_0
    return-wide p1
.end method


# virtual methods
.method public boolOverrideForParam(JZ)Z
    .locals 5

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->translateSpecifierIfNeeded(J)J

    move-result-wide v0

    .line 97
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mBoolOverrides:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mBoolOverrides:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 100
    :cond_0
    return p3
.end method

.method public doubleOverrideForParam(JD)D
    .locals 5

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->translateSpecifierIfNeeded(J)J

    move-result-wide v0

    .line 106
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mDoubleOverrides:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mDoubleOverrides:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    .line 109
    :cond_0
    return-wide p3
.end method

.method public hasBoolOverrideForParam(J)Z
    .locals 3

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->translateSpecifierIfNeeded(J)J

    move-result-wide v0

    .line 133
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mBoolOverrides:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->hasNullOverrideForParam(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDoubleOverrideForParam(J)Z
    .locals 3

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->translateSpecifierIfNeeded(J)J

    move-result-wide v0

    .line 139
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mDoubleOverrides:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->hasNullOverrideForParam(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIntOverrideForParam(J)Z
    .locals 3

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->translateSpecifierIfNeeded(J)J

    move-result-wide v0

    .line 145
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mLongOverrides:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->hasNullOverrideForParam(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNullOverrideForParam(J)Z
    .locals 3

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->translateSpecifierIfNeeded(J)J

    move-result-wide v0

    .line 157
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mNullOverrides:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasStringOverrideForParam(J)Z
    .locals 3

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->translateSpecifierIfNeeded(J)J

    move-result-wide v0

    .line 151
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mStringOverrides:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->hasNullOverrideForParam(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public intOverrideForParam(JJ)J
    .locals 5

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->translateSpecifierIfNeeded(J)J

    move-result-wide v0

    .line 115
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mLongOverrides:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mLongOverrides:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    .line 118
    :cond_0
    return-wide p3
.end method

.method public stringOverrideForParam(JLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->translateSpecifierIfNeeded(J)J

    move-result-wide v0

    .line 124
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mStringOverrides:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/facebook/mobileconfig/factory/MobileConfigJavaOverridesTable;->mStringOverrides:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p3

    goto :goto_0
.end method

.method public updateOverrideForParam(JD)V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public updateOverrideForParam(JJ)V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public updateOverrideForParam(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 177
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public updateOverrideForParam(JZ)V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
