.class public Llibraries/marauder/analytics/utils/json/JsonString;
.super Ljava/lang/Object;
.source "JsonString.java"

# interfaces
.implements Llibraries/marauder/analytics/utils/json/JsonType;


# instance fields
.field public array:Ljava/lang/String;


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "input"    # D

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1, p2}, Llibraries/marauder/analytics/utils/json/JsonUtils;->serialize(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonString;->array:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "input"    # J

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1, p2}, Llibraries/marauder/analytics/utils/json/JsonUtils;->serialize(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonString;->array:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p1}, Llibraries/marauder/analytics/utils/json/JsonUtils;->serializeV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonString;->array:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "input"    # Z

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Llibraries/marauder/analytics/utils/json/JsonUtils;->serialize(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonString;->array:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Llibraries/marauder/analytics/utils/json/JsonString;->array:Ljava/lang/String;

    return-object v0
.end method
