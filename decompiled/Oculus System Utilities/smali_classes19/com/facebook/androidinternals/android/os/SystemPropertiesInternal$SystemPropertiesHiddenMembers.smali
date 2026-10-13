.class Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal$SystemPropertiesHiddenMembers;
.super Ljava/lang/Object;
.source "SystemPropertiesInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemPropertiesHiddenMembers"
.end annotation


# instance fields
.field public final addChangeCallback:Ljava/lang/reflect/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final getEmptyDefault:Ljava/lang/reflect/Method;

.field public final getLong:Ljava/lang/reflect/Method;

.field public final set:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "addChangeCallback"    # Ljava/lang/reflect/Method;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "getEmptyDefault"    # Ljava/lang/reflect/Method;
    .param p3, "getLong"    # Ljava/lang/reflect/Method;
    .param p4, "set"    # Ljava/lang/reflect/Method;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal$SystemPropertiesHiddenMembers;->addChangeCallback:Ljava/lang/reflect/Method;

    .line 73
    iput-object p2, p0, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal$SystemPropertiesHiddenMembers;->getEmptyDefault:Ljava/lang/reflect/Method;

    .line 74
    iput-object p3, p0, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal$SystemPropertiesHiddenMembers;->getLong:Ljava/lang/reflect/Method;

    .line 75
    iput-object p4, p0, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal$SystemPropertiesHiddenMembers;->set:Ljava/lang/reflect/Method;

    .line 76
    return-void
.end method

.method public static newInstance()Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal$SystemPropertiesHiddenMembers;
    .locals 11
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 49
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 51
    .local v5, "systemProperties":Ljava/lang/Class;
    const-string v6, "get"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 52
    .local v2, "getEmptyDefault":Ljava/lang/reflect/Method;
    const-string v6, "getLong"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 53
    .local v3, "getLong":Ljava/lang/reflect/Method;
    const-string v6, "set"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 54
    .local v4, "set":Ljava/lang/reflect/Method;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v6, v8, :cond_0

    const-string v6, "addChangeCallback"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/Runnable;

    aput-object v10, v8, v9

    .line 56
    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 59
    .local v0, "addChangeCallback":Ljava/lang/reflect/Method;
    :goto_0
    new-instance v6, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal$SystemPropertiesHiddenMembers;

    invoke-direct {v6, v0, v2, v3, v4}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal$SystemPropertiesHiddenMembers;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    .end local v0    # "addChangeCallback":Ljava/lang/reflect/Method;
    .end local v2    # "getEmptyDefault":Ljava/lang/reflect/Method;
    .end local v3    # "getLong":Ljava/lang/reflect/Method;
    .end local v4    # "set":Ljava/lang/reflect/Method;
    :goto_1
    return-object v6

    .restart local v2    # "getEmptyDefault":Ljava/lang/reflect/Method;
    .restart local v3    # "getLong":Ljava/lang/reflect/Method;
    .restart local v4    # "set":Ljava/lang/reflect/Method;
    :cond_0
    move-object v0, v7

    .line 56
    goto :goto_0

    .line 60
    .end local v2    # "getEmptyDefault":Ljava/lang/reflect/Method;
    .end local v3    # "getLong":Ljava/lang/reflect/Method;
    .end local v4    # "set":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v6, v7

    .line 61
    goto :goto_1

    .line 62
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchMethodException;
    move-object v6, v7

    .line 63
    goto :goto_1
.end method
