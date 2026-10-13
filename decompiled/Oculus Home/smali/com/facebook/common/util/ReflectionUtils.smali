.class public Lcom/facebook/common/util/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/util/ReflectionUtils$FieldMap;,
        Lcom/facebook/common/util/ReflectionUtils$Filter;,
        Lcom/facebook/common/util/ReflectionUtils$IncludeFlags;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAncestralChain(Ljava/lang/Class;)Ljava/lang/Iterable;
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 166
    .local v0, "self":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    const-class v1, Ljava/lang/Object;

    if-ne p0, v1, :cond_0

    .line 169
    .end local v0    # "self":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    :goto_0
    return-object v0

    .restart local v0    # "self":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/util/ReflectionUtils;->getAncestralChain(Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getComponents(Ljava/lang/Class;Lcom/facebook/common/util/ReflectionUtils$Filter;Ljava/util/EnumSet;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/facebook/common/util/ReflectionUtils$Filter",
            "<TT;>;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/common/util/ReflectionUtils$IncludeFlags;",
            ">;)",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/reflect/AccessibleObject;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "filter":Lcom/facebook/common/util/ReflectionUtils$Filter;, "Lcom/facebook/common/util/ReflectionUtils$Filter<TT;>;"
    .local p2, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/common/util/ReflectionUtils$IncludeFlags;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v0, "accumulator":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/AccessibleObject;TT;>;"
    invoke-static {p0, p1, p2, v0}, Lcom/facebook/common/util/ReflectionUtils;->getComponents(Ljava/lang/Class;Lcom/facebook/common/util/ReflectionUtils$Filter;Ljava/util/EnumSet;Ljava/util/Map;)V

    .line 48
    return-object v0
.end method

.method protected static getComponents(Ljava/lang/Class;Lcom/facebook/common/util/ReflectionUtils$Filter;Ljava/util/EnumSet;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/facebook/common/util/ReflectionUtils$Filter",
            "<TT;>;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/common/util/ReflectionUtils$IncludeFlags;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/AccessibleObject;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "filter":Lcom/facebook/common/util/ReflectionUtils$Filter;, "Lcom/facebook/common/util/ReflectionUtils$Filter<TT;>;"
    .local p2, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/common/util/ReflectionUtils$IncludeFlags;>;"
    .local p3, "accumulator":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/AccessibleObject;TT;>;"
    sget-object v6, Lcom/facebook/common/util/ReflectionUtils$IncludeFlags;->INCLUDE_SUPERCLASSES:Lcom/facebook/common/util/ReflectionUtils$IncludeFlags;

    invoke-virtual {p2, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 58
    .local v5, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_0

    .line 59
    invoke-static {v5, p1, p2, p3}, Lcom/facebook/common/util/ReflectionUtils;->getComponents(Ljava/lang/Class;Lcom/facebook/common/util/ReflectionUtils$Filter;Ljava/util/EnumSet;Ljava/util/Map;)V

    .line 63
    .end local v5    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    sget-object v6, Lcom/facebook/common/util/ReflectionUtils$IncludeFlags;->INCLUDE_CONSTRUCTORS:Lcom/facebook/common/util/ReflectionUtils$IncludeFlags;

    invoke-virtual {p2, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 64
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 66
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x0

    .local v2, "ix":I
    :goto_0
    array-length v6, v0

    if-ge v2, v6, :cond_2

    .line 67
    aget-object v6, v0, v2

    invoke-interface {p1, v6}, Lcom/facebook/common/util/ReflectionUtils$Filter;->mapper(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/Object;

    move-result-object v4

    .line 68
    .local v4, "result":Ljava/lang/Object;, "TT;"
    if-eqz v4, :cond_1

    .line 69
    aget-object v6, v0, v2

    invoke-interface {p3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "ix":I
    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    :cond_2
    sget-object v6, Lcom/facebook/common/util/ReflectionUtils$IncludeFlags;->INCLUDE_METHODS:Lcom/facebook/common/util/ReflectionUtils$IncludeFlags;

    invoke-virtual {p2, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 75
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 77
    .local v3, "methods":[Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .restart local v2    # "ix":I
    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_4

    .line 78
    aget-object v6, v3, v2

    invoke-interface {p1, v6}, Lcom/facebook/common/util/ReflectionUtils$Filter;->mapper(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/Object;

    move-result-object v4

    .line 79
    .restart local v4    # "result":Ljava/lang/Object;, "TT;"
    if-eqz v4, :cond_3

    .line 80
    aget-object v6, v3, v2

    invoke-interface {p3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85
    .end local v2    # "ix":I
    .end local v3    # "methods":[Ljava/lang/reflect/Method;
    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    :cond_4
    sget-object v6, Lcom/facebook/common/util/ReflectionUtils$IncludeFlags;->INCLUDE_FIELDS:Lcom/facebook/common/util/ReflectionUtils$IncludeFlags;

    invoke-virtual {p2, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 86
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 88
    .local v1, "fields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .restart local v2    # "ix":I
    :goto_2
    array-length v6, v1

    if-ge v2, v6, :cond_6

    .line 89
    aget-object v6, v1, v2

    invoke-interface {p1, v6}, Lcom/facebook/common/util/ReflectionUtils$Filter;->mapper(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/Object;

    move-result-object v4

    .line 90
    .restart local v4    # "result":Ljava/lang/Object;, "TT;"
    if-eqz v4, :cond_5

    .line 91
    aget-object v6, v1, v2

    invoke-interface {p3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 95
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    .end local v2    # "ix":I
    .end local v4    # "result":Ljava/lang/Object;, "TT;"
    :cond_6
    return-void
.end method

.method public static getConstants(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->of([Ljava/lang/Object;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    new-instance v1, Lcom/facebook/common/util/ReflectionUtils$3;

    invoke-direct {v1}, Lcom/facebook/common/util/ReflectionUtils$3;-><init>()V

    .line 202
    invoke-virtual {v0, v1}, Lcom/google/common/collect/FluentIterable;->filter(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    new-instance v1, Lcom/facebook/common/util/ReflectionUtils$2;

    invoke-direct {v1}, Lcom/facebook/common/util/ReflectionUtils$2;-><init>()V

    .line 212
    invoke-virtual {v0, v1}, Lcom/google/common/collect/FluentIterable;->toMap(Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static getEnclosingObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "innerRef"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 125
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lcom/facebook/common/util/ReflectionUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getOnlyConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 195
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v3, v0

    if-ne v3, v1, :cond_0

    :goto_0
    const-string v3, "%s has %d constructors"

    array-length v4, v0

    invoke-static {v1, v3, p0, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;I)V

    .line 197
    aget-object v1, v0, v2

    return-object v1

    :cond_0
    move v1, v2

    .line 195
    goto :goto_0
.end method

.method public static hasAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 174
    .line 175
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/common/collect/FluentIterable;->of([Ljava/lang/Object;)Lcom/google/common/collect/FluentIterable;

    move-result-object v3

    new-instance v4, Lcom/facebook/common/util/ReflectionUtils$1;

    invoke-direct {v4}, Lcom/facebook/common/util/ReflectionUtils$1;-><init>()V

    .line 176
    invoke-virtual {v3, v4}, Lcom/google/common/collect/FluentIterable;->transform(Lcom/google/common/base/Function;)Lcom/google/common/collect/FluentIterable;

    move-result-object v3

    const-class v4, Ljava/lang/Class;

    .line 183
    invoke-virtual {v3, v4}, Lcom/google/common/collect/FluentIterable;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Class;

    .line 184
    .local v2, "types":[Ljava/lang/Class;
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 185
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 187
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public static readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "ref"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/common/util/ReflectionUtils;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "ref"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 135
    .local p2, "refClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 136
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-static {p0, v1}, Lcom/facebook/common/util/ReflectionUtils;->readField(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 139
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-class v2, Ljava/lang/Object;

    if-eq p2, v2, :cond_0

    .line 139
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/facebook/common/util/ReflectionUtils;->readField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 141
    :cond_0
    new-instance v2, Ljava/lang/NoSuchFieldException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " among classes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/common/util/ReflectionUtils;->getAncestralChain(Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static readField(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 2
    .param p0, "ref"    # Ljava/lang/Object;
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Field;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 147
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 149
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static reflectiveToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 103
    .local v3, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " extends "

    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 107
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " {\n"

    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    .local v0, "desc":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 112
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 113
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 110
    invoke-static {v4, v5, v6}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    .line 114
    .local v2, "members":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/reflect/Member;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Member;

    .line 115
    .local v1, "member":Ljava/lang/reflect/Member;
    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    instance-of v5, v1, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_0

    .line 117
    const-string v5, " = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast v1, Ljava/lang/reflect/Field;

    .end local v1    # "member":Ljava/lang/reflect/Member;
    invoke-static {p0, v1}, Lcom/facebook/common/util/ReflectionUtils;->readField(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    :cond_0
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 121
    :cond_1
    const-string v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static writeField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 2
    .param p0, "ref"    # Ljava/lang/Object;
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 156
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 158
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
