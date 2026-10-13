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
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 75
    :try_start_0
    const-class v1, Landroid/os/Trace;

    const-string v2, "isTagEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 76
    const-class v1, Landroid/os/Trace;

    const-string v3, "setAppTracingAllowed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 77
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 79
    const-class v1, Landroid/os/Trace;

    const-string v4, "TRACE_TAG_APP"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_0

    .line 91
    :goto_0
    return-object v0

    .line 83
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    .line 85
    new-instance v1, Lcom/facebook/androidinternals/android/os/TraceInternal$SystraceHiddenMembers;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/androidinternals/android/os/TraceInternal$SystraceHiddenMembers;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;J)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    goto :goto_0

    .line 88
    :catch_1
    move-exception v1

    goto :goto_0

    .line 86
    :catch_2
    move-exception v1

    goto :goto_0
.end method
