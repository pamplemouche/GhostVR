.class public final Lcom/facebook/androidinternals/ReflectionHelper;
.super Ljava/lang/Object;
.source "ReflectionHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rethrowRuntimeExceptions(Ljava/lang/reflect/InvocationTargetException;)V
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 27
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 28
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 29
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 32
    :cond_1
    return-void
.end method
