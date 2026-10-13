.class public LlS;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "analytics"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    iput-object v0, p0, LlS;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a(LkS;)Ljava/io/File;
    .locals 8

    .line 1
    iget-object v0, p0, LlS;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "AnalyticsStorage"

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LlS;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unable to open analytics storage."

    .line 3
    invoke-static {v1, v0}, LgS;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, LlS;->a:Ljava/io/File;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, LkS;->a()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 6
    iget v4, p1, LkS;->b:I

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x0

    const-string v7, "%s_%d.batch"

    .line 8
    invoke-static {v4, v7, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    const-string v3, "File %s was not deleted"

    .line 12
    invoke-static {v1, v3, v2}, LgS;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 14
    iput-wide v1, p1, LkS;->i:J

    .line 15
    new-instance v1, LMS;

    invoke-direct {v1}, LMS;-><init>()V

    .line 16
    iget v2, p1, LkS;->b:I

    int-to-long v2, v2

    const-string v4, "seq"

    .line 17
    invoke-virtual {v1, v4}, LMS;->a(Ljava/lang/String;)V

    .line 18
    iget-object v4, v1, LMS;->a:Ljava/lang/StringBuilder;

    .line 19
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-wide v2, p1, LkS;->i:J

    .line 22
    invoke-static {v2, v3}, LoS;->a(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "time"

    .line 23
    invoke-virtual {v1, v3}, LMS;->a(Ljava/lang/String;)V

    .line 24
    iget-object v3, v1, LMS;->a:Ljava/lang/StringBuilder;

    invoke-static {v3, v2}, LNS;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 25
    iget-object v2, p1, LkS;->f:Ljava/lang/String;

    const-string v3, "app_id"

    .line 26
    invoke-virtual {v1, v3}, LMS;->a(Ljava/lang/String;)V

    .line 27
    iget-object v3, v1, LMS;->a:Ljava/lang/StringBuilder;

    invoke-static {v3, v2}, LNS;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 28
    iget-object v2, p1, LkS;->d:Ljava/lang/String;

    const-string v3, "app_ver"

    .line 29
    invoke-virtual {v1, v3}, LMS;->a(Ljava/lang/String;)V

    .line 30
    iget-object v3, v1, LMS;->a:Ljava/lang/StringBuilder;

    invoke-static {v3, v2}, LNS;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    iget-object v2, p1, LkS;->e:Ljava/lang/String;

    const-string v3, "build_num"

    .line 32
    invoke-virtual {v1, v3}, LMS;->a(Ljava/lang/String;)V

    .line 33
    iget-object v3, v1, LMS;->a:Ljava/lang/StringBuilder;

    invoke-static {v3, v2}, LNS;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 34
    iget-object v2, p1, LkS;->c:Ljava/lang/String;

    const-string v3, "device_id"

    .line 35
    invoke-virtual {v1, v3}, LMS;->a(Ljava/lang/String;)V

    .line 36
    iget-object v3, v1, LMS;->a:Ljava/lang/StringBuilder;

    invoke-static {v3, v2}, LNS;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, LkS;->a()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "session_id"

    .line 38
    invoke-virtual {v1, v3}, LMS;->a(Ljava/lang/String;)V

    .line 39
    iget-object v3, v1, LMS;->a:Ljava/lang/StringBuilder;

    invoke-static {v3, v2}, LNS;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 40
    iget-object v2, p1, LkS;->g:Ljava/lang/String;

    const-string v3, "uid"

    .line 41
    invoke-virtual {v1, v3}, LMS;->a(Ljava/lang/String;)V

    .line 42
    iget-object v3, v1, LMS;->a:Ljava/lang/StringBuilder;

    invoke-static {v3, v2}, LNS;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 43
    iget-object v2, p1, LkS;->h:Ljava/lang/String;

    const-string v3, "cuid"

    .line 44
    invoke-virtual {v1, v3}, LMS;->a(Ljava/lang/String;)V

    .line 45
    iget-object v3, v1, LMS;->a:Ljava/lang/StringBuilder;

    invoke-static {v3, v2}, LNS;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object p1, p1, LkS;->j:Ljava/util/List;

    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LwS;

    .line 49
    check-cast v3, LxS;

    invoke-virtual {v3}, LxS;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eq v4, v6, :cond_2

    const-string v4, ","

    .line 51
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string p1, "data"

    .line 53
    invoke-virtual {v1, p1}, LMS;->a(Ljava/lang/String;)V

    .line 54
    iget-object p1, v1, LMS;->a:Ljava/lang/StringBuilder;

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "log_type"

    .line 57
    invoke-virtual {v1, p1}, LMS;->a(Ljava/lang/String;)V

    .line 58
    iget-object p1, v1, LMS;->a:Ljava/lang/StringBuilder;

    const-string v2, "client_event"

    invoke-static {p1, v2}, LNS;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, LMS;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 61
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-object v0
.end method
