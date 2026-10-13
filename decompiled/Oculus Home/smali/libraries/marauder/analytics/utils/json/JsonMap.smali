.class public Llibraries/marauder/analytics/utils/json/JsonMap;
.super Ljava/lang/Object;
.source "JsonMap.java"

# interfaces
.implements Llibraries/marauder/analytics/utils/json/JsonType;


# instance fields
.field public map:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonMap;->map:Ljava/lang/StringBuilder;

    return-void
.end method

.method private addKeyToMap(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonMap;->map:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonMap;->map:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_0
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonMap;->map:Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Llibraries/marauder/analytics/utils/json/JsonUtils;->serialize(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonMap;->map:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    return-void
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 29
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/utils/json/JsonMap;->addKeyToMap(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonMap;->map:Ljava/lang/StringBuilder;

    invoke-static {v0, p2, p3}, Llibraries/marauder/analytics/utils/json/JsonUtils;->serialize(Ljava/lang/StringBuilder;D)V

    .line 31
    return-void
.end method

.method public addEntry(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 24
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/utils/json/JsonMap;->addKeyToMap(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonMap;->map:Ljava/lang/StringBuilder;

    invoke-static {v0, p2, p3}, Llibraries/marauder/analytics/utils/json/JsonUtils;->serialize(Ljava/lang/StringBuilder;J)V

    .line 26
    return-void
.end method

.method public addEntry(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/utils/json/JsonMap;->addKeyToMap(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonMap;->map:Ljava/lang/StringBuilder;

    invoke-static {v0, p2}, Llibraries/marauder/analytics/utils/json/JsonUtils;->serialize(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public addEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/utils/json/JsonMap;->addKeyToMap(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonMap;->map:Ljava/lang/StringBuilder;

    invoke-static {v0, p2}, Llibraries/marauder/analytics/utils/json/JsonUtils;->serialize(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public addEntry(Ljava/lang/String;Llibraries/marauder/analytics/utils/json/JsonType;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Llibraries/marauder/analytics/utils/json/JsonType;

    .prologue
    .line 10
    invoke-static {p2}, Llibraries/marauder/analytics/utils/json/JsonUtils;->isValidInputType(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal input type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/utils/json/JsonMap;->addKeyToMap(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonMap;->map:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    return-void
.end method

.method public addEntry(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/utils/json/JsonMap;->addKeyToMap(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonMap;->map:Ljava/lang/StringBuilder;

    invoke-static {v0, p2}, Llibraries/marauder/analytics/utils/json/JsonUtils;->serialize(Ljava/lang/StringBuilder;Z)V

    .line 36
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 44
    iget-object v1, p0, Llibraries/marauder/analytics/utils/json/JsonMap;->map:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Llibraries/marauder/analytics/utils/json/JsonMap;->map:Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "res":Ljava/lang/String;
    iget-object v1, p0, Llibraries/marauder/analytics/utils/json/JsonMap;->map:Ljava/lang/StringBuilder;

    iget-object v2, p0, Llibraries/marauder/analytics/utils/json/JsonMap;->map:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 50
    return-object v0
.end method
