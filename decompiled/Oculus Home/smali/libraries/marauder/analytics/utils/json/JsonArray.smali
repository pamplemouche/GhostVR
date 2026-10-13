.class public Llibraries/marauder/analytics/utils/json/JsonArray;
.super Ljava/lang/Object;
.source "JsonArray.java"

# interfaces
.implements Llibraries/marauder/analytics/utils/json/JsonType;


# instance fields
.field public array:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonArray;->array:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonArray;->array:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 11
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonArray;->array:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_0
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonArray;->array:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    return-void
.end method

.method public addEntry(Llibraries/marauder/analytics/utils/json/JsonType;)V
    .locals 2
    .param p1, "value"    # Llibraries/marauder/analytics/utils/json/JsonType;

    .prologue
    .line 24
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonArray;->array:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 25
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonArray;->array:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_0
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonArray;->array:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    return-void
.end method

.method public addStringEntry(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 17
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonArray;->array:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 18
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonArray;->array:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_0
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonArray;->array:Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Llibraries/marauder/analytics/utils/json/JsonUtils;->serialize(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    iget-object v1, p0, Llibraries/marauder/analytics/utils/json/JsonArray;->array:Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "res":Ljava/lang/String;
    iget-object v1, p0, Llibraries/marauder/analytics/utils/json/JsonArray;->array:Ljava/lang/StringBuilder;

    iget-object v2, p0, Llibraries/marauder/analytics/utils/json/JsonArray;->array:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 33
    return-object v0
.end method
