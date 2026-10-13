.class Lcom/facebook/androidinternals/android/os/TraceInternal$SystraceHiddenMembers;
.super Ljava/lang/Object;
.source "TraceInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/androidinternals/android/os/TraceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystraceHiddenMembers"
.end annotation


# instance fields
.field public final TRACE_TAG_APP:J

.field public final isTagEnabled:Ljava/lang/reflect/Method;

.field public final setAppTracingAllowed:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;J)V
    .locals 1
    .param p1, "isTagEnabled"    # Ljava/lang/reflect/Method;
    .param p2, "setAppTracingAllowed"    # Ljava/lang/reflect/Method;
    .param p3, "traceTagApp"    # J

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/facebook/androidinternals/android/os/TraceInternal$SystraceHiddenMembers;->isTagEnabled:Ljava/lang/reflect/Method;

    .line 98
    iput-object p2, p0, Lcom/facebook/androidinternals/android/os/TraceInternal$SystraceHiddenMembers;->setAppTracingAllowed:Ljava/lang/reflect/Method;

    .line 99
    iput-wide p3, p0, Lcom/facebook/androidinternals/android/os/TraceInternal$SystraceHiddenMembers;->TRACE_TAG_APP:J

    .line 100
    return-void
.end method

.method public static newInstance()Lcom/facebook/androidinternals/android/os/TraceInternal$SystraceHiddenMembers;
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 75
    :try_start_0
    const-class v7, Landroid/os/Trace;

    const-string v8, "isTagEnabled"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 76
    .local v2, "isTagEnabled":Ljava/lang/reflect/Method;
    const-class v7, Landroid/os/Trace;

    const-string v8, "setAppTracingAllowed"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    .line 77
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 79
    .local v3, "setAppTracingAllowed":Ljava/lang/reflect/Method;
    const-class v7, Landroid/os/Trace;

    const-string v8, "TRACE_TAG_APP"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 80
    .local v0, "appTraceTagField":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v7, v8, :cond_0

    .line 91
    .end local v0    # "appTraceTagField":Ljava/lang/reflect/Field;
    .end local v3    # "setAppTracingAllowed":Ljava/lang/reflect/Method;
    :goto_0
    return-object v6

    .line 83
    .restart local v0    # "appTraceTagField":Ljava/lang/reflect/Field;
    .restart local v3    # "setAppTracingAllowed":Ljava/lang/reflect/Method;
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    .line 85
    .local v4, "traceTagApp":J
    new-instance v7, Lcom/facebook/androidinternals/android/os/TraceInternal$SystraceHiddenMembers;

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/facebook/androidinternals/android/os/TraceInternal$SystraceHiddenMembers;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;J)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v6, v7

    goto :goto_0

    .line 86
    .end local v0    # "appTraceTagField":Ljava/lang/reflect/Field;
    .end local v3    # "setAppTracingAllowed":Ljava/lang/reflect/Method;
    .end local v4    # "traceTagApp":J
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 88
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 90
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0
.end method
