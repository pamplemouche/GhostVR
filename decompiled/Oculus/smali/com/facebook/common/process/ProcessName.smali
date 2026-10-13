.class public Lcom/facebook/common/process/ProcessName;
.super Ljava/lang/Object;
.source "ProcessName.java"


# static fields
.field private static volatile sCachedProcessName:Lcom/facebook/common/process/ProcessName;


# instance fields
.field private final mFullProcessName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPrivateProcessName:Lcom/facebook/common/process/PrivateProcessName;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0, v0}, Lcom/facebook/common/process/ProcessName;-><init>(Ljava/lang/String;Lcom/facebook/common/process/PrivateProcessName;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/common/process/PrivateProcessName;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/common/process/PrivateProcessName;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/common/process/ProcessName;->mFullProcessName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/facebook/common/process/ProcessName;->mPrivateProcessName:Lcom/facebook/common/process/PrivateProcessName;

    .line 42
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/facebook/common/process/ProcessName;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 53
    if-nez p0, :cond_0

    .line 54
    new-instance v0, Lcom/facebook/common/process/ProcessName;

    invoke-direct {v0, v1, v1}, Lcom/facebook/common/process/ProcessName;-><init>(Ljava/lang/String;Lcom/facebook/common/process/PrivateProcessName;)V

    .line 65
    :goto_0
    return-object v0

    .line 58
    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 59
    array-length v1, v0

    if-le v1, v2, :cond_1

    .line 60
    aget-object v0, v0, v2

    .line 64
    :goto_1
    new-instance v1, Lcom/facebook/common/process/ProcessName;

    .line 65
    invoke-static {v0}, Lcom/facebook/common/process/PrivateProcessName;->createFromShortName(Ljava/lang/String;)Lcom/facebook/common/process/PrivateProcessName;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/facebook/common/process/ProcessName;-><init>(Ljava/lang/String;Lcom/facebook/common/process/PrivateProcessName;)V

    move-object v0, v1

    goto :goto_0

    .line 62
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static current()Lcom/facebook/common/process/ProcessName;
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/facebook/common/process/ProcessName;->sCachedProcessName:Lcom/facebook/common/process/ProcessName;

    .line 205
    if-nez v0, :cond_0

    .line 208
    invoke-static {}, Lcom/facebook/common/activitythreadholder/ActivityThreadHolder;->getActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/process/ProcessName;->create(Ljava/lang/String;)Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/process/ProcessName;->sCachedProcessName:Lcom/facebook/common/process/ProcessName;

    .line 209
    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-static {}, Lcom/facebook/common/process/ProcessName;->getProcessNameFromProcFS()Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    .line 212
    if-nez v0, :cond_1

    .line 214
    sget-object v0, Lcom/facebook/common/process/ProcessName;->sCachedProcessName:Lcom/facebook/common/process/ProcessName;

    .line 220
    :cond_0
    :goto_0
    return-object v0

    .line 216
    :cond_1
    sput-object v0, Lcom/facebook/common/process/ProcessName;->sCachedProcessName:Lcom/facebook/common/process/ProcessName;

    goto :goto_0
.end method

.method private static getProcessNameFromProcFS()Lcom/facebook/common/process/ProcessName;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 229
    const-string v0, "/proc/self/cmdline"

    invoke-static {v0}, Lcom/facebook/common/procread/ProcReader;->readProcFileEntirely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/facebook/common/process/ProcessName;->create(Ljava/lang/String;)Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 178
    if-ne p0, p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 182
    goto :goto_0

    .line 184
    :cond_3
    check-cast p1, Lcom/facebook/common/process/ProcessName;

    .line 185
    iget-object v2, p0, Lcom/facebook/common/process/ProcessName;->mFullProcessName:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 186
    iget-object v2, p1, Lcom/facebook/common/process/ProcessName;->mFullProcessName:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 188
    :cond_4
    iget-object v0, p0, Lcom/facebook/common/process/ProcessName;->mFullProcessName:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/common/process/ProcessName;->mFullProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/common/process/ProcessName;->mFullProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateProcessName()Lcom/facebook/common/process/PrivateProcessName;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/common/process/ProcessName;->mPrivateProcessName:Lcom/facebook/common/process/PrivateProcessName;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/facebook/common/process/ProcessName;->mFullProcessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/process/ProcessName;->mFullProcessName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/facebook/common/process/ProcessName;->mFullProcessName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "<unknown>"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/common/process/ProcessName;->mFullProcessName:Ljava/lang/String;

    goto :goto_0
.end method
