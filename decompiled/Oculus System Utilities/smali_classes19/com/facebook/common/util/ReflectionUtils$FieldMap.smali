.class public Lcom/facebook/common/util/ReflectionUtils$FieldMap;
.super Ljava/util/AbstractMap;
.source "ReflectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/util/ReflectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEntries:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->of([Ljava/lang/Object;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    new-instance v1, Lcom/facebook/common/util/ReflectionUtils$FieldMap$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/common/util/ReflectionUtils$FieldMap$1;-><init>(Lcom/facebook/common/util/ReflectionUtils$FieldMap;Ljava/lang/Object;)V

    .line 233
    invoke-virtual {v0, v1}, Lcom/google/common/collect/FluentIterable;->transform(Lcom/google/common/base/Function;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lcom/google/common/collect/FluentIterable;->toSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/util/ReflectionUtils$FieldMap;->mEntries:Lcom/google/common/collect/ImmutableSet;

    .line 258
    return-void
.end method


# virtual methods
.method public entrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/facebook/common/util/ReflectionUtils$FieldMap;->mEntries:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/facebook/common/util/ReflectionUtils$FieldMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
