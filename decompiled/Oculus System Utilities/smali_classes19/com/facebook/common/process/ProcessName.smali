.class public Lcom/facebook/common/process/ProcessName;
.super Ljava/lang/Object;
.source "ProcessName.java"


# static fields
.field private static final FIRST_ISOLATED_UID:I = 0x182b8

.field private static final LAST_ISOLATED_UID:I = 0x1869f

.field private static final PER_USER_RANGE:I = 0x186a0

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
    .param p1, "fullProcessName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "privateProcessName"    # Lcom/facebook/common/process/PrivateProcessName;
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
    .locals 5
    .param p0, "processName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 53
    if-nez p0, :cond_0

    .line 54
    new-instance v2, Lcom/facebook/common/process/ProcessName;

    invoke-direct {v2, v4, v4}, Lcom/facebook/common/process/ProcessName;-><init>(Ljava/lang/String;Lcom/facebook/common/process/PrivateProcessName;)V

    .line 65
    :goto_0
    return-object v2

    .line 58
    :cond_0
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "parts":[Ljava/lang/String;
    array-length v2, v0

    if-le v2, v3, :cond_1

    .line 60
    aget-object v1, v0, v3

    .line 64
    .local v1, "shortPrivateProcessName":Ljava/lang/String;
    :goto_1
    new-instance v2, Lcom/facebook/common/process/ProcessName;

    .line 65
    invoke-static {v1}, Lcom/facebook/common/process/PrivateProcessName;->createFromShortName(Ljava/lang/String;)Lcom/facebook/common/process/PrivateProcessName;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/facebook/common/process/ProcessName;-><init>(Ljava/lang/String;Lcom/facebook/common/process/PrivateProcessName;)V

    goto :goto_0

    .line 62
    .end local v1    # "shortPrivateProcessName":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    .restart local v1    # "shortPrivateProcessName":Ljava/lang/String;
    goto :goto_1
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/common/process/ProcessName;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "shortPrivateName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 81
    if-nez p0, :cond_0

    .line 82
    new-instance v0, Lcom/facebook/common/process/ProcessName;

    invoke-direct {v0, v1, v1}, Lcom/facebook/common/process/ProcessName;-><init>(Ljava/lang/String;Lcom/facebook/common/process/PrivateProcessName;)V

    .line 89
    :goto_0
    return-object v0

    .line 84
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    :cond_1
    new-instance v0, Lcom/facebook/common/process/ProcessName;

    const-string v1, ""

    invoke-static {v1}, Lcom/facebook/common/process/PrivateProcessName;->createFromShortName(Ljava/lang/String;)Lcom/facebook/common/process/PrivateProcessName;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/common/process/ProcessName;-><init>(Ljava/lang/String;Lcom/facebook/common/process/PrivateProcessName;)V

    goto :goto_0

    .line 87
    :cond_2
    new-instance v0, Lcom/facebook/common/process/ProcessName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {p1}, Lcom/facebook/common/process/PrivateProcessName;->createFromShortName(Ljava/lang/String;)Lcom/facebook/common/process/PrivateProcessName;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/process/ProcessName;-><init>(Ljava/lang/String;Lcom/facebook/common/process/PrivateProcessName;)V

    goto :goto_0
.end method

.method public static current()Lcom/facebook/common/process/ProcessName;
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/facebook/common/process/ProcessName;->sCachedProcessName:Lcom/facebook/common/process/ProcessName;

    .line 205
    .local v0, "processName":Lcom/facebook/common/process/ProcessName;
    if-nez v0, :cond_0

    .line 208
    invoke-static {}, Lcom/facebook/common/activitythreadholder/ActivityThreadHolder;->getActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/process/ProcessName;->create(Ljava/lang/String;)Lcom/facebook/common/process/ProcessName;

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

.method public static fakeProcessName(Lcom/facebook/common/process/ProcessName;)V
    .locals 0
    .param p0, "fake"    # Lcom/facebook/common/process/ProcessName;

    .prologue
    .line 225
    sput-object p0, Lcom/facebook/common/process/ProcessName;->sCachedProcessName:Lcom/facebook/common/process/ProcessName;

    .line 226
    return-void
.end method

.method private static getProcessNameFromProcFS()Lcom/facebook/common/process/ProcessName;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 229
    const-string v1, "/proc/self/cmdline"

    invoke-static {v1}, Lcom/facebook/common/procread/ProcReader;->readProcFileEntirely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "cmdLine":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    const/4 v1, 0x0

    .line 233
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/facebook/common/process/ProcessName;->create(Ljava/lang/String;)Lcom/facebook/common/process/ProcessName;

    move-result-object v1

    goto :goto_0
.end method

.method public static isCurrentProcessIsolated()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 147
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 158
    .local v0, "appUid":I
    .local v1, "uid":I
    :cond_0
    :goto_0
    return v2

    .line 153
    .end local v0    # "appUid":I
    .end local v1    # "uid":I
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 154
    .restart local v1    # "uid":I
    const v3, 0x186a0

    rem-int v0, v1, v3

    .line 158
    .restart local v0    # "appUid":I
    const v3, 0x182b8

    if-gt v3, v0, :cond_0

    const v3, 0x1869f

    if-gt v0, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    if-ne p0, p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v1

    .line 181
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 182
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 184
    check-cast v0, Lcom/facebook/common/process/ProcessName;

    .line 185
    .local v0, "that":Lcom/facebook/common/process/ProcessName;
    iget-object v3, p0, Lcom/facebook/common/process/ProcessName;->mFullProcessName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 186
    iget-object v3, v0, Lcom/facebook/common/process/ProcessName;->mFullProcessName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 188
    :cond_4
    iget-object v1, p0, Lcom/facebook/common/process/ProcessName;->mFullProcessName:Ljava/lang/String;

    iget-object v2, v0, Lcom/facebook/common/process/ProcessName;->mFullProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

.method public getShortNameForDiagnostics()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/facebook/common/process/ProcessName;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "<unknown>"

    .line 172
    :goto_0
    return-object v0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/common/process/ProcessName;->isDefaultProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    const-string v0, "<default>"

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/process/ProcessName;->mPrivateProcessName:Lcom/facebook/common/process/PrivateProcessName;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/common/process/ProcessName;->mPrivateProcessName:Lcom/facebook/common/process/PrivateProcessName;

    invoke-virtual {v0}, Lcom/facebook/common/process/PrivateProcessName;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShortPrivateName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/common/process/ProcessName;->mPrivateProcessName:Lcom/facebook/common/process/PrivateProcessName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/process/ProcessName;->mPrivateProcessName:Lcom/facebook/common/process/PrivateProcessName;

    invoke-virtual {v0}, Lcom/facebook/common/process/PrivateProcessName;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

.method public isDefaultProcess()Z
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/facebook/common/process/PrivateProcessName;->DEFAULT_PROCESS:Lcom/facebook/common/process/PrivateProcessName;

    iget-object v1, p0, Lcom/facebook/common/process/ProcessName;->mPrivateProcessName:Lcom/facebook/common/process/PrivateProcessName;

    invoke-virtual {v0, v1}, Lcom/facebook/common/process/PrivateProcessName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUnknown()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/common/process/ProcessName;->mFullProcessName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

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
