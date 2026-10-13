.class public Llibraries/marauder/analytics/utils/json/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidInputType(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 83
    instance-of v0, p0, Llibraries/marauder/analytics/utils/json/JsonString;

    if-nez v0, :cond_0

    instance-of v0, p0, Llibraries/marauder/analytics/utils/json/JsonArray;

    if-nez v0, :cond_0

    instance-of v0, p0, Llibraries/marauder/analytics/utils/json/JsonMap;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static serialize(D)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # D

    .prologue
    .line 31
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serialize(J)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # J

    .prologue
    .line 23
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serialize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/Object;

    .prologue
    .line 35
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibraries/marauder/analytics/utils/json/JsonUtils;->serialize(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static serialize(Z)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Z

    .prologue
    .line 27
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serialize(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Llibraries/marauder/analytics/utils/json/JsonUtils;->serialize(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 10
    return-object v0
.end method

.method public static serialize(Ljava/lang/StringBuilder;D)V
    .locals 1
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "input"    # D

    .prologue
    .line 65
    invoke-static {p1, p2}, Llibraries/marauder/analytics/utils/json/JsonUtils;->serialize(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    return-void
.end method

.method public static serialize(Ljava/lang/StringBuilder;J)V
    .locals 1
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "input"    # J

    .prologue
    .line 57
    invoke-static {p1, p2}, Llibraries/marauder/analytics/utils/json/JsonUtils;->serialize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    return-void
.end method

.method public static serialize(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "input"    # Ljava/lang/Object;

    .prologue
    .line 69
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Llibraries/marauder/analytics/utils/json/JsonUtils;->serialize(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static serialize(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {p0, p1}, Llibraries/marauder/analytics/utils/json/JsonUtilsEscape;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static serialize(Ljava/lang/StringBuilder;Z)V
    .locals 1
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "input"    # Z

    .prologue
    .line 61
    invoke-static {p1}, Llibraries/marauder/analytics/utils/json/JsonUtils;->serialize(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    return-void
.end method

.method public static serializeV2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 14
    if-nez p0, :cond_0

    .line 15
    const-string v1, "null"

    .line 19
    :goto_0
    return-object v1

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Llibraries/marauder/analytics/utils/json/JsonUtils;->serialize(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
