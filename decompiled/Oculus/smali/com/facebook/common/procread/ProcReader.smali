.class public Lcom/facebook/common/procread/ProcReader;
.super Ljava/lang/Object;
.source "ProcReader.java"


# static fields
.field private static final PROC_READ_STRING_ALL_FORMAT:[I

.field private static sProcReader:Lcom/facebook/common/procread/IProcReader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1000

    aput v2, v0, v1

    sput-object v0, Lcom/facebook/common/procread/ProcReader;->PROC_READ_STRING_ALL_FORMAT:[I

    .line 27
    invoke-static {}, Lcom/facebook/common/procread/OldProcReader;->create()Lcom/facebook/common/procread/OldProcReader;

    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lcom/facebook/common/procread/NewProcReader;->create()Lcom/facebook/common/procread/NewProcReader;

    move-result-object v0

    .line 32
    :cond_0
    sput-object v0, Lcom/facebook/common/procread/ProcReader;->sProcReader:Lcom/facebook/common/procread/IProcReader;

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseProcLine([BII[I[Ljava/lang/String;[J[F)Z
    .locals 8
    .param p4    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [J
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [F
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    sget-object v0, Lcom/facebook/common/procread/ProcReader;->sProcReader:Lcom/facebook/common/procread/IProcReader;

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/facebook/common/procread/ProcReader;->sProcReader:Lcom/facebook/common/procread/IProcReader;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/facebook/common/procread/IProcReader;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v0

    goto :goto_0
.end method

.method public static readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
    .locals 6
    .param p2    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [J
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [F
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    sget-object v0, Lcom/facebook/common/procread/ProcReader;->sProcReader:Lcom/facebook/common/procread/IProcReader;

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/facebook/common/procread/ProcReader;->sProcReader:Lcom/facebook/common/procread/IProcReader;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/facebook/common/procread/IProcReader;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    goto :goto_0
.end method

.method public static readProcFileEntirely(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    .line 53
    sget-object v1, Lcom/facebook/common/procread/ProcReader;->PROC_READ_STRING_ALL_FORMAT:[I

    invoke-static {p0, v1, v0, v2, v2}, Lcom/facebook/common/procread/ProcReader;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 54
    aget-object v0, v0, v3

    return-object v0
.end method

.method public static readProcFileLongs(Ljava/lang/String;[I[J)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-static {p0, p1, v0, p2, v0}, Lcom/facebook/common/procread/ProcReader;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    return v0
.end method

.method public static readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)Z
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/facebook/common/procread/ProcReader;->sProcReader:Lcom/facebook/common/procread/IProcReader;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/procread/IProcReader;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)Z

    move-result v0

    return v0
.end method
