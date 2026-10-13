.class public abstract Ljava/lang/invoke/MethodHandle;
.super Ljava/lang/Object;
.source "MethodHandle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asCollector(Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public asFixedArity()Ljava/lang/invoke/MethodHandle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public asVarargsCollector(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final varargs invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final varargs invokeExact([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public invokeWithArguments(Ljava/util/List;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public isVarargsCollector()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public type()Ljava/lang/invoke/MethodType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
