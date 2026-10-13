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
    .param p1    # Ljava/lang/reflect/Method;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

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
    .locals 9
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 49
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 51
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 52
    const-string v2, "getLong"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 53
    const-string/jumbo v2, "set"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 54
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v2, v6, :cond_0

    const-string v2, "addChangeCallback"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/Runnable;

    aput-object v8, v6, v7

    .line 56
    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v2, v0

    .line 59
    :goto_0
    new-instance v0, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal$SystemPropertiesHiddenMembers;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal$SystemPropertiesHiddenMembers;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    :goto_1
    return-object v0

    :cond_0
    move-object v2, v1

    .line 56
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 61
    goto :goto_1

    .line 62
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 63
    goto :goto_1
.end method
