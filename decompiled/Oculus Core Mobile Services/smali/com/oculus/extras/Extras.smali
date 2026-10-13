.class public Lcom/oculus/extras/Extras;
.super Ljava/lang/Object;
.source "Extras.java"


# instance fields
.field private final mData:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/extras/Extras;->mData:Lcom/google/common/collect/ImmutableMap;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/extras/Extras;->mData:Lcom/google/common/collect/ImmutableMap;

    .line 27
    return-void
.end method

.method public static builder()Lcom/oculus/extras/ExtrasBuilder;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/oculus/extras/ExtrasBuilder;

    invoke-direct {v0}, Lcom/oculus/extras/ExtrasBuilder;-><init>()V

    return-object v0
.end method

.method public static empty()Lcom/oculus/extras/Extras;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/oculus/extras/ExtrasBuilder;

    invoke-direct {v0}, Lcom/oculus/extras/ExtrasBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/oculus/extras/ExtrasBuilder;->build()Lcom/oculus/extras/Extras;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildUpon()Lcom/oculus/extras/ExtrasBuilder;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/oculus/extras/ExtrasBuilder;

    iget-object v1, p0, Lcom/oculus/extras/Extras;->mData:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, v1}, Lcom/oculus/extras/ExtrasBuilder;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 150
    if-nez p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    instance-of v1, p1, Lcom/oculus/extras/Extras;

    if-eqz v1, :cond_0

    .line 158
    check-cast p1, Lcom/oculus/extras/Extras;

    .line 159
    iget-object v0, p0, Lcom/oculus/extras/Extras;->mData:Lcom/google/common/collect/ImmutableMap;

    iget-object v1, p1, Lcom/oculus/extras/Extras;->mData:Lcom/google/common/collect/ImmutableMap;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/oculus/extras/Extras;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/oculus/extras/Extras;->mData:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 140
    :cond_0
    return p2
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/extras/Extras;->mData:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/oculus/extras/Extras;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/oculus/extras/Extras;->mData:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 129
    :cond_0
    :goto_0
    return p2

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/oculus/extras/Extras;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/oculus/extras/Extras;->mData:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 114
    :cond_0
    :goto_0
    return p2

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/oculus/extras/Extras;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/oculus/extras/Extras;->mData:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 99
    :cond_0
    :goto_0
    return-wide p2

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/oculus/extras/Extras;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/oculus/extras/Extras;->mData:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/extras/Extras;->mData:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/oculus/extras/Extras;->mData:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/oculus/extras/Extras;->mData:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
