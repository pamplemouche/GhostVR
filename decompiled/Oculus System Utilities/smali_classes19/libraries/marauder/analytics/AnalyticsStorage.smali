.class Llibraries/marauder/analytics/AnalyticsStorage;
.super Ljava/lang/Object;
.source "AnalyticsStorage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnalyticsStorage"


# instance fields
.field private final mDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Llibraries/marauder/analytics/AnalyticsUtil;->getAnalyticsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Llibraries/marauder/analytics/AnalyticsStorage;->mDirectory:Ljava/io/File;

    .line 23
    return-void
.end method

.method private ensureDirectory()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsStorage;->mDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Llibraries/marauder/analytics/AnalyticsStorage;->mDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const-string v0, "AnalyticsStorage"

    const-string v1, "Unable to open analytics storage."

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public store(Llibraries/marauder/analytics/AnalyticsSession;)Ljava/io/File;
    .locals 8
    .param p1, "session"    # Llibraries/marauder/analytics/AnalyticsSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Llibraries/marauder/analytics/AnalyticsStorage;->ensureDirectory()V

    .line 28
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Llibraries/marauder/analytics/AnalyticsStorage;->mDirectory:Ljava/io/File;

    invoke-static {p1}, Llibraries/marauder/analytics/AnalyticsUtil;->getBatchFilename(Llibraries/marauder/analytics/AnalyticsSession;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .local v0, "batchFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 32
    .local v1, "deleted":Z
    if-nez v1, :cond_0

    .line 33
    const-string v4, "AnalyticsStorage"

    const-string v5, "File %s was not deleted"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Llibraries/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .end local v1    # "deleted":Z
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Llibraries/marauder/analytics/AnalyticsSession;->setTime(J)V

    .line 39
    invoke-static {p1}, Llibraries/marauder/analytics/AnalyticsSessionSerializer;->serialize(Llibraries/marauder/analytics/AnalyticsSession;)Llibraries/marauder/analytics/utils/json/JsonMap;

    move-result-object v4

    invoke-virtual {v4}, Llibraries/marauder/analytics/utils/json/JsonMap;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "loggingEntries":Ljava/lang/String;
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 41
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 44
    return-object v0
.end method
