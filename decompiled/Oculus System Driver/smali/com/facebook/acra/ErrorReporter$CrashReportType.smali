.class public final enum Lcom/facebook/acra/ErrorReporter$CrashReportType;
.super Ljava/lang/Enum;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CrashReportType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/acra/ErrorReporter$CrashReportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

.field public static final enum ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

.field public static final enum ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

.field public static final enum NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;


# instance fields
.field private final attachmentField:Lcom/facebook/acra/ReportField;

.field private final defaultMaxSize:J

.field private final directory:Ljava/lang/String;

.field private final fileExtensions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 196
    new-instance v8, Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const-string v1, "ACRA_CRASH_REPORT"

    const-string v3, "acra-reports"

    const-string v0, ".stacktrace"

    const-string v2, ".temp_stacktrace"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const-wide/32 v4, 0x100000

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/acra/ErrorReporter$CrashReportType;-><init>(Ljava/lang/String;ILjava/lang/String;JLcom/facebook/acra/ReportField;[Ljava/lang/String;)V

    sput-object v8, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    .line 203
    new-instance v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const-string v10, "NATIVE_CRASH_REPORT"

    const-string v12, "minidumps"

    sget-object v15, Lcom/facebook/acra/ReportField;->MINIDUMP:Lcom/facebook/acra/ReportField;

    const-string v1, ".dmp"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v16

    const/4 v11, 0x1

    const-wide/32 v13, 0x800000

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/facebook/acra/ErrorReporter$CrashReportType;-><init>(Ljava/lang/String;ILjava/lang/String;JLcom/facebook/acra/ReportField;[Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    .line 209
    new-instance v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const-string v2, "ANR_REPORT"

    const-string v4, "traces"

    sget-object v7, Lcom/facebook/acra/ReportField;->SIGQUIT:Lcom/facebook/acra/ReportField;

    const-string v1, ".stacktrace"

    const-string v3, ".temp_stacktrace"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x2

    const-wide/32 v5, 0x80000

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/facebook/acra/ErrorReporter$CrashReportType;-><init>(Ljava/lang/String;ILjava/lang/String;JLcom/facebook/acra/ReportField;[Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const/4 v0, 0x3

    .line 194
    new-array v0, v0, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    sget-object v1, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->$VALUES:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;JLcom/facebook/acra/ReportField;[Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/facebook/acra/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/facebook/acra/ReportField;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 219
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 220
    iput-object p3, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;

    .line 221
    iput-wide p4, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->defaultMaxSize:J

    .line 222
    iput-object p6, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->attachmentField:Lcom/facebook/acra/ReportField;

    .line 223
    iput-object p7, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->fileExtensions:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/acra/ErrorReporter$CrashReportType;)[Ljava/lang/String;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->fileExtensions:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ReportField;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->attachmentField:Lcom/facebook/acra/ReportField;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/acra/ErrorReporter$CrashReportType;)J
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->defaultMaxSize:J

    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/acra/ErrorReporter$CrashReportType;
    .locals 1

    .line 194
    const-class v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/acra/ErrorReporter$CrashReportType;
    .locals 1

    .line 194
    sget-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->$VALUES:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-virtual {v0}, [Lcom/facebook/acra/ErrorReporter$CrashReportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    return-object v0
.end method
