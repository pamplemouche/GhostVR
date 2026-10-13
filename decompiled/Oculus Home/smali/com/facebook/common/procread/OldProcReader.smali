.class final Lcom/facebook/common/procread/OldProcReader;
.super Ljava/lang/Object;
.source "OldProcReader.java"

# interfaces
.implements Lcom/facebook/common/procread/IProcReader;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sParseProcLine:Ljava/lang/reflect/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile sParseProcLineInited:Z

.field private static volatile sReadProcFile:Ljava/lang/reflect/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile sReadProcFileInited:Z

.field private static volatile sReadProcLines:Ljava/lang/reflect/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile sReadProcLinesInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 13
    const-class v0, Lcom/facebook/common/procread/OldProcReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/procread/OldProcReader;->TAG:Ljava/lang/String;

    .line 15
    sput-object v2, Lcom/facebook/common/procread/OldProcReader;->sParseProcLine:Ljava/lang/reflect/Method;

    .line 16
    sput-boolean v1, Lcom/facebook/common/procread/OldProcReader;->sParseProcLineInited:Z

    .line 17
    sput-object v2, Lcom/facebook/common/procread/OldProcReader;->sReadProcFile:Ljava/lang/reflect/Method;

    .line 18
    sput-boolean v1, Lcom/facebook/common/procread/OldProcReader;->sReadProcFileInited:Z

    .line 19
    sput-object v2, Lcom/facebook/common/procread/OldProcReader;->sReadProcLines:Ljava/lang/reflect/Method;

    .line 20
    sput-boolean v1, Lcom/facebook/common/procread/OldProcReader;->sReadProcLinesInited:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create()Lcom/facebook/common/procread/OldProcReader;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/facebook/common/procread/OldProcReader;->init()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/facebook/common/procread/OldProcReader;

    invoke-direct {v0}, Lcom/facebook/common/procread/OldProcReader;-><init>()V

    .line 27
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getParseProcLine()Ljava/lang/reflect/Method;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 111
    sget-boolean v0, Lcom/facebook/common/procread/OldProcReader;->sParseProcLineInited:Z

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Lcom/facebook/common/procread/OldProcReader;->initParseProcLine()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/procread/OldProcReader;->sParseProcLine:Ljava/lang/reflect/Method;

    .line 113
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/common/procread/OldProcReader;->sParseProcLineInited:Z

    .line 116
    :cond_0
    sget-object v0, Lcom/facebook/common/procread/OldProcReader;->sParseProcLine:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static getReadProcFile()Ljava/lang/reflect/Method;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 120
    sget-boolean v0, Lcom/facebook/common/procread/OldProcReader;->sReadProcFileInited:Z

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/facebook/common/procread/OldProcReader;->initReadProcFile()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/procread/OldProcReader;->sReadProcFile:Ljava/lang/reflect/Method;

    .line 122
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/common/procread/OldProcReader;->sReadProcFileInited:Z

    .line 125
    :cond_0
    sget-object v0, Lcom/facebook/common/procread/OldProcReader;->sReadProcFile:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static getReadProcLines()Ljava/lang/reflect/Method;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 129
    sget-boolean v0, Lcom/facebook/common/procread/OldProcReader;->sReadProcLinesInited:Z

    if-nez v0, :cond_0

    .line 130
    invoke-static {}, Lcom/facebook/common/procread/OldProcReader;->initReadProcLines()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/procread/OldProcReader;->sReadProcLines:Ljava/lang/reflect/Method;

    .line 131
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/common/procread/OldProcReader;->sReadProcLinesInited:Z

    .line 134
    :cond_0
    sget-object v0, Lcom/facebook/common/procread/OldProcReader;->sReadProcLines:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static init()Z
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/facebook/common/procread/OldProcReader;->getParseProcLine()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/common/procread/OldProcReader;->getReadProcFile()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/common/procread/OldProcReader;->getReadProcLines()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static varargs initMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 160
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    const-class v2, Landroid/os/Process;

    invoke-virtual {v2, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 167
    :goto_0
    return-object v2

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lcom/facebook/common/procread/OldProcReader;->TAG:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Warning! Could not get access to JNI method - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/facebook/common/procread/OldProcReader;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static initParseProcLine()Ljava/lang/reflect/Method;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 138
    const-string v0, "parseProcLine"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, [B

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, [I

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, [Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, [J

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, [F

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/common/procread/OldProcReader;->initMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static initReadProcFile()Ljava/lang/reflect/Method;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 150
    const-string v0, "readProcFile"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, [I

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, [Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, [J

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, [F

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/common/procread/OldProcReader;->initMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static initReadProcLines()Ljava/lang/reflect/Method;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 155
    const-string v0, "readProcLines"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, [Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, [J

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/common/procread/OldProcReader;->initMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static varargs invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x6

    .line 80
    if-nez p0, :cond_0

    .line 81
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 103
    :goto_0
    return-object v2

    .line 85
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v2, Lcom/facebook/common/procread/OldProcReader;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error (IllegalAccessException - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/facebook/common/procread/OldProcReader;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 94
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v2, Lcom/facebook/common/procread/OldProcReader;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error (InvocationTargetException - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 100
    .restart local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/facebook/common/procread/OldProcReader;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public parseProcLine([BII[I[Ljava/lang/String;[J[F)Z
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "format"    # [I
    .param p5, "outStrings"    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "outLongs"    # [J
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "outFloats"    # [F
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-static {}, Lcom/facebook/common/procread/OldProcReader;->getParseProcLine()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const/4 v4, 0x1

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 46
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    aput-object p6, v3, v4

    const/4 v4, 0x6

    aput-object p7, v3, v4

    .line 42
    invoke-static {v2, v3}, Lcom/facebook/common/procread/OldProcReader;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, "successObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 54
    .end local v0    # "successObj":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "successObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "successObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
    .locals 5
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "format"    # [I
    .param p3, "outStrings"    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "outLongs"    # [J
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "outFloats"    # [F
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-static {}, Lcom/facebook/common/procread/OldProcReader;->getReadProcFile()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/common/procread/OldProcReader;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    .local v0, "successObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 69
    .end local v0    # "successObj":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "successObj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "successObj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)Z
    .locals 6
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "reqFields"    # [Ljava/lang/String;
    .param p3, "outSizes"    # [J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-static {}, Lcom/facebook/common/procread/OldProcReader;->getReadProcLines()Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Lcom/facebook/common/procread/OldProcReader;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    .local v0, "successObj":Ljava/lang/Object;
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method
