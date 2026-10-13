.class public Lcom/facebook/common/procread/ProcReader;
.super Ljava/lang/Object;
.source "ProcReader.java"


# static fields
.field public static final PROC_CHAR:I = 0x800

.field public static final PROC_COMBINE:I = 0x100

.field public static final PROC_OUT_FLOAT:I = 0x4000

.field public static final PROC_OUT_LONG:I = 0x2000

.field public static final PROC_OUT_STRING:I = 0x1000

.field public static final PROC_PARENS:I = 0x200

.field public static final PROC_QUOTES:I = 0x400

.field private static final PROC_READ_STRING_ALL_FORMAT:[I

.field public static final PROC_SPACE_TERM:I = 0x20

.field public static final PROC_TERM_MASK:I = 0xff

.field public static final PROC_ZERO_TERM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ProcReader"

.field private static sProcReader:Lcom/facebook/common/procread/IProcReader;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x1000

    aput v3, v1, v2

    sput-object v1, Lcom/facebook/common/procread/ProcReader;->PROC_READ_STRING_ALL_FORMAT:[I

    .line 27
    invoke-static {}, Lcom/facebook/common/procread/OldProcReader;->create()Lcom/facebook/common/procread/OldProcReader;

    move-result-object v0

    .line 28
    .local v0, "procReader":Lcom/facebook/common/procread/IProcReader;
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
    .param p0, "buffer"    # [B
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "format"    # [I
    .param p4, "outStrings"    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "outLongs"    # [J
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "outFloats"    # [F
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

.method public static parseProcLineLongs([BII[I[J)Z
    .locals 7
    .param p0, "buffer"    # [B
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "format"    # [I
    .param p4, "outLongs"    # [J

    .prologue
    const/4 v4, 0x0

    .line 43
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/facebook/common/procread/ProcReader;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v0

    return v0
.end method

.method public static readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "format"    # [I
    .param p2, "outStrings"    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "outLongs"    # [J
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "outFloats"    # [F
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
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 52
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    aput-object v2, v0, v3

    .line 53
    .local v0, "outStrings":[Ljava/lang/String;
    sget-object v1, Lcom/facebook/common/procread/ProcReader;->PROC_READ_STRING_ALL_FORMAT:[I

    invoke-static {p0, v1, v0, v2, v2}, Lcom/facebook/common/procread/ProcReader;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 54
    aget-object v1, v0, v3

    return-object v1
.end method

.method public static readProcFileLongs(Ljava/lang/String;[I[J)Z
    .locals 1
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "format"    # [I
    .param p2, "outLongs"    # [J

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-static {p0, p1, v0, p2, v0}, Lcom/facebook/common/procread/ProcReader;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    return v0
.end method

.method public static readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "reqFields"    # [Ljava/lang/String;
    .param p2, "outSizes"    # [J

    .prologue
    .line 88
    sget-object v0, Lcom/facebook/common/procread/ProcReader;->sProcReader:Lcom/facebook/common/procread/IProcReader;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/common/procread/IProcReader;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)Z

    move-result v0

    return v0
.end method
