.class public final Lcom/facebook/androidinternals/android/os/TraceInternal;
.super Ljava/lang/Object;
.source "TraceInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/androidinternals/android/os/TraceInternal$SystraceHiddenMembers;
    }
.end annotation


# static fields
.field public static final ANDROID_OS_TRACE_SUPPORTED:Z

.field public static final TRACE_TAG_APP:J

.field private static volatile sHiddenMembersEnabled:Z

.field private static final sIsTagEnabled:Ljava/lang/reflect/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final sSetAppTracingAllowed:Ljava/lang/reflect/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v0, v4, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/facebook/androidinternals/android/os/TraceInternal;->ANDROID_OS_TRACE_SUPPORTED:Z

    .line 105
    sget-boolean v0, Lcom/facebook/androidinternals/android/os/TraceInternal;->ANDROID_OS_TRACE_SUPPORTED:Z

    if-eqz v0, :cond_2

    .line 106
    invoke-static {}, Lcom/facebook/androidinternals/android/os/TraceInternal$SystraceHiddenMembers;->newInstance()Lcom/facebook/androidinternals/android/os/TraceInternal$SystraceHiddenMembers;

    move-result-object v0

    .line 109
    :goto_1
    if-eqz v0, :cond_1

    .line 110
    iget-object v2, v0, Lcom/facebook/androidinternals/android/os/TraceInternal$SystraceHiddenMembers;->isTagEnabled:Ljava/lang/reflect/Method;

    sput-object v2, Lcom/facebook/androidinternals/android/os/TraceInternal;->sIsTagEnabled:Ljava/lang/reflect/Method;

    .line 111
    iget-object v2, v0, Lcom/facebook/androidinternals/android/os/TraceInternal$SystraceHiddenMembers;->setAppTracingAllowed:Ljava/lang/reflect/Method;

    sput-object v2, Lcom/facebook/androidinternals/android/os/TraceInternal;->sSetAppTracingAllowed:Ljava/lang/reflect/Method;

    .line 112
    iget-wide v2, v0, Lcom/facebook/androidinternals/android/os/TraceInternal$SystraceHiddenMembers;->TRACE_TAG_APP:J

    sput-wide v2, Lcom/facebook/androidinternals/android/os/TraceInternal;->TRACE_TAG_APP:J

    .line 113
    sput-boolean v1, Lcom/facebook/androidinternals/android/os/TraceInternal;->sHiddenMembersEnabled:Z

    .line 120
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 36
    goto :goto_0

    .line 115
    :cond_1
    sput-object v3, Lcom/facebook/androidinternals/android/os/TraceInternal;->sIsTagEnabled:Ljava/lang/reflect/Method;

    .line 116
    sput-object v3, Lcom/facebook/androidinternals/android/os/TraceInternal;->sSetAppTracingAllowed:Ljava/lang/reflect/Method;

    .line 117
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/facebook/androidinternals/android/os/TraceInternal;->TRACE_TAG_APP:J

    .line 118
    sput-boolean v2, Lcom/facebook/androidinternals/android/os/TraceInternal;->sHiddenMembersEnabled:Z

    goto :goto_2

    :cond_2
    move-object v0, v3

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 147
    const/4 v1, 0x0

    :try_start_0
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v1

    .line 151
    const/4 v1, 0x0

    sput-boolean v1, Lcom/facebook/androidinternals/android/os/TraceInternal;->sHiddenMembersEnabled:Z

    goto :goto_0

    .line 154
    :catch_1
    move-exception v1

    .line 155
    invoke-static {v1}, Lcom/facebook/androidinternals/ReflectionHelper;->rethrowRuntimeExceptions(Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0
.end method

.method public static isTagEnabled(J)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 125
    sget-boolean v0, Lcom/facebook/androidinternals/android/os/TraceInternal;->sHiddenMembersEnabled:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 134
    :goto_0
    return v0

    .line 129
    :cond_0
    sget-object v0, Lcom/facebook/androidinternals/android/os/TraceInternal;->sIsTagEnabled:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/facebook/androidinternals/android/os/TraceInternal;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 130
    if-nez v0, :cond_1

    move v0, v1

    .line 131
    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static setAppTracingAllowed(Z)V
    .locals 4

    .prologue
    .line 138
    sget-boolean v0, Lcom/facebook/androidinternals/android/os/TraceInternal;->sHiddenMembersEnabled:Z

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    sget-object v0, Lcom/facebook/androidinternals/android/os/TraceInternal;->sSetAppTracingAllowed:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/androidinternals/android/os/TraceInternal;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
