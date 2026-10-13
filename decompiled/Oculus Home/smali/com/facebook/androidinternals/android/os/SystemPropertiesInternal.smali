.class public final Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;
.super Ljava/lang/Object;
.source "SystemPropertiesInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal$SystemPropertiesHiddenMembers;
    }
.end annotation


# static fields
.field private static final sAddChangeCallback:Ljava/lang/reflect/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final sGetEmptyDefault:Ljava/lang/reflect/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final sGetLong:Ljava/lang/reflect/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile sHiddenMembersEnabled:Z

.field private static final sSet:Ljava/lang/reflect/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-static {}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal$SystemPropertiesHiddenMembers;->newInstance()Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal$SystemPropertiesHiddenMembers;

    move-result-object v0

    .line 82
    .local v0, "hiddenMembers":Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal$SystemPropertiesHiddenMembers;
    if-eqz v0, :cond_0

    .line 83
    iget-object v1, v0, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal$SystemPropertiesHiddenMembers;->addChangeCallback:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->sAddChangeCallback:Ljava/lang/reflect/Method;

    .line 84
    iget-object v1, v0, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal$SystemPropertiesHiddenMembers;->getEmptyDefault:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->sGetEmptyDefault:Ljava/lang/reflect/Method;

    .line 85
    iget-object v1, v0, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal$SystemPropertiesHiddenMembers;->getLong:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->sGetLong:Ljava/lang/reflect/Method;

    .line 86
    iget-object v1, v0, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal$SystemPropertiesHiddenMembers;->set:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->sSet:Ljava/lang/reflect/Method;

    .line 87
    const/4 v1, 0x1

    sput-boolean v1, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->sHiddenMembersEnabled:Z

    .line 95
    :goto_0
    return-void

    .line 89
    :cond_0
    sput-object v1, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->sAddChangeCallback:Ljava/lang/reflect/Method;

    .line 90
    sput-object v1, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->sGetEmptyDefault:Ljava/lang/reflect/Method;

    .line 91
    sput-object v1, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->sGetLong:Ljava/lang/reflect/Method;

    .line 92
    sput-object v1, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->sSet:Ljava/lang/reflect/Method;

    .line 93
    const/4 v1, 0x0

    sput-boolean v1, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->sHiddenMembersEnabled:Z

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChangeCallback(Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 139
    sget-boolean v0, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->sHiddenMembersEnabled:Z

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->sAddChangeCallback:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-boolean v1, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->sHiddenMembersEnabled:Z

    if-nez v1, :cond_1

    .line 101
    const-string v0, ""

    .line 109
    :cond_0
    :goto_0
    return-object v0

    .line 104
    :cond_1
    sget-object v1, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->sGetEmptyDefault:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 106
    const-string v0, ""

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {p0}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # J

    .prologue
    .line 118
    sget-boolean v1, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->sHiddenMembersEnabled:Z

    if-nez v1, :cond_1

    .line 127
    .end local p1    # "def":J
    :cond_0
    :goto_0
    return-wide p1

    .line 122
    .restart local p1    # "def":J
    :cond_1
    sget-object v1, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->sGetLong:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 123
    .local v0, "result":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0
.end method

.method private static varargs invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 148
    if-nez p0, :cond_0

    .line 165
    .end local p1    # "args":[Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 153
    .restart local p1    # "args":[Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->sHiddenMembersEnabled:Z

    goto :goto_0

    .line 160
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0}, Lcom/facebook/androidinternals/ReflectionHelper;->rethrowRuntimeExceptions(Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 131
    sget-boolean v0, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->sHiddenMembersEnabled:Z

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->sSet:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
