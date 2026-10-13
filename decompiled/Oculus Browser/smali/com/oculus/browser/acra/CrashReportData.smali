.class public Lcom/oculus/browser/acra/CrashReportData;
.super Ljava/util/EnumMap;
.source "PG"


# static fields
.field public static final CONTINUE:I = 0x3

.field public static final IGNORE:I = 0x5

.field public static final KEY_DONE:I = 0x4

.field public static final NONE:I = 0x0

.field public static final PROP_DTD_NAME:Ljava/lang/String; = "http://java.sun.com/dtd/properties.dtd"

.field public static final SLASH:I = 0x1

.field public static final UNICODE:I = 0x2

.field public static lineSeparator:Ljava/lang/String; = "\n"

.field public static final serialVersionUID:J = 0x3912d07a70363e98L


# instance fields
.field public final LOCK:Ljava/lang/Object;

.field public defaults:Lcom/oculus/browser/acra/CrashReportData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Lcom/oculus/browser/acra/ReportField;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/acra/CrashReportData;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/browser/acra/CrashReportData;)V
    .locals 1

    .line 3
    const-class v0, Lcom/oculus/browser/acra/ReportField;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/acra/CrashReportData;->LOCK:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/oculus/browser/acra/CrashReportData;->defaults:Lcom/oculus/browser/acra/CrashReportData;

    return-void
.end method

.method private dumpString(Ljava/lang/Appendable;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-nez p3, :cond_0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_0

    const-string v3, "\\ "

    .line 3
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    .line 4
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    const/16 v5, 0x5c

    if-eqz p3, :cond_1

    if-eq v4, v2, :cond_2

    goto :goto_1

    :pswitch_1
    const-string v4, "\\r"

    .line 5
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_3

    :pswitch_2
    const-string v4, "\\f"

    .line 6
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_3

    :pswitch_3
    const-string v4, "\\n"

    .line 7
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_3

    :pswitch_4
    const-string v4, "\\t"

    .line 8
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_3

    :cond_1
    :goto_1
    if-eq v4, v5, :cond_2

    const/16 v6, 0x23

    if-eq v4, v6, :cond_2

    const/16 v6, 0x21

    if-eq v4, v6, :cond_2

    const/16 v6, 0x3a

    if-ne v4, v6, :cond_3

    .line 9
    :cond_2
    invoke-interface {p1, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_3
    if-lt v4, v2, :cond_4

    const/16 v5, 0x7e

    if-gt v4, v5, :cond_4

    .line 10
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_3

    .line 11
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\u"

    .line 12
    invoke-interface {p1, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v5, 0x0

    .line 13
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x4

    if-ge v5, v6, :cond_5

    const/16 v6, 0x30

    .line 14
    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 15
    :cond_5
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "ISO8859_1"

    invoke-direct {v0, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isEbcdic(Ljava/io/BufferedInputStream;)Z
    .locals 3

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x23

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method private keys()Ljava/util/Enumeration;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "&"

    const-string v1, "&amp;"

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\'"

    const-string v1, "&apos;"

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getProperty(Lcom/oculus/browser/acra/ReportField;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/oculus/browser/acra/CrashReportData;->defaults:Lcom/oculus/browser/acra/CrashReportData;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/oculus/browser/acra/CrashReportData;->getProperty(Lcom/oculus/browser/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getProperty(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4
    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/oculus/browser/acra/CrashReportData;->defaults:Lcom/oculus/browser/acra/CrashReportData;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, p1}, Lcom/oculus/browser/acra/CrashReportData;->getProperty(Lcom/oculus/browser/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    return-object p2

    :cond_1
    return-object v0
.end method

.method public list(Ljava/io/PrintStream;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-direct {p0}, Lcom/oculus/browser/acra/CrashReportData;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/browser/acra/ReportField;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-super {p0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    iget-object v4, p0, Lcom/oculus/browser/acra/CrashReportData;->defaults:Lcom/oculus/browser/acra/CrashReportData;

    :goto_1
    if-nez v3, :cond_0

    .line 9
    invoke-virtual {v4, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10
    iget-object v4, v4, Lcom/oculus/browser/acra/CrashReportData;->defaults:Lcom/oculus/browser/acra/CrashReportData;

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x28

    const/4 v5, 0x0

    if-le v2, v4, :cond_1

    const/16 v2, 0x25

    .line 12
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 17
    throw p1
.end method

.method public list(Ljava/io/PrintWriter;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 19
    invoke-direct {p0}, Lcom/oculus/browser/acra/CrashReportData;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 21
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/browser/acra/ReportField;

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    invoke-super {p0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 25
    iget-object v4, p0, Lcom/oculus/browser/acra/CrashReportData;->defaults:Lcom/oculus/browser/acra/CrashReportData;

    :goto_1
    if-nez v3, :cond_0

    .line 26
    invoke-virtual {v4, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 27
    iget-object v4, v4, Lcom/oculus/browser/acra/CrashReportData;->defaults:Lcom/oculus/browser/acra/CrashReportData;

    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x28

    const/4 v5, 0x0

    if-le v2, v4, :cond_1

    const/16 v2, 0x25

    .line 29
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 31
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 34
    throw p1
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/CrashReportData;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const p1, 0x7fffffff

    .line 3
    invoke-virtual {v1, p1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 4
    invoke-direct {p0, v1}, Lcom/oculus/browser/acra/CrashReportData;->isEbcdic(Ljava/io/BufferedInputStream;)Z

    move-result p1

    .line 5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->reset()V

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Ljava/io/InputStreamReader;

    const-string v2, "ISO8859-1"

    invoke-direct {p1, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oculus/browser/acra/CrashReportData;->load(Ljava/io/Reader;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1}, Lcom/oculus/browser/acra/CrashReportData;->load(Ljava/io/Reader;)V

    .line 8
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 10
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public load(Ljava/io/Reader;)V
    .locals 17

    move-object/from16 v1, p0

    .line 11
    iget-object v2, v1, Lcom/oculus/browser/acra/CrashReportData;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    const/16 v0, 0x28

    :try_start_0
    new-array v0, v0, [C

    .line 12
    new-instance v3, Ljava/io/BufferedReader;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v5, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v11, v0

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    :goto_0
    const/16 v16, 0x1

    .line 13
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v6

    if-eq v6, v9, :cond_26

    if-nez v6, :cond_0

    goto/16 :goto_f

    :cond_0
    int-to-char v6, v6

    .line 14
    array-length v4, v11

    if-ne v0, v4, :cond_1

    .line 15
    array-length v4, v11

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [C

    .line 16
    invoke-static {v11, v10, v4, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v11, v4

    :cond_1
    const/16 v4, 0x85

    const/16 v10, 0xa

    if-ne v12, v5, :cond_6

    const/16 v5, 0x10

    .line 17
    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-ltz v5, :cond_2

    shl-int/lit8 v15, v15, 0x4

    add-int/2addr v15, v5

    add-int/lit8 v13, v13, 0x1

    if-ge v13, v7, :cond_3

    const/4 v5, 0x2

    :goto_2
    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    if-le v13, v7, :cond_5

    :cond_3
    add-int/lit8 v5, v0, 0x1

    int-to-char v12, v15

    .line 18
    aput-char v12, v11, v0

    if-eq v6, v10, :cond_4

    if-eq v6, v4, :cond_4

    move v0, v5

    const/4 v5, 0x2

    goto/16 :goto_7

    :cond_4
    move v0, v5

    const/4 v12, 0x0

    goto :goto_3

    .line 19
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "luni.09"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    const/16 v5, 0xd

    if-ne v12, v8, :cond_10

    if-eq v6, v10, :cond_f

    if-eq v6, v5, :cond_e

    const/16 v12, 0x62

    if-eq v6, v12, :cond_c

    const/16 v12, 0x66

    if-eq v6, v12, :cond_b

    const/16 v12, 0x6e

    if-eq v6, v12, :cond_a

    const/16 v10, 0x72

    if-eq v6, v10, :cond_9

    if-eq v6, v4, :cond_f

    const/16 v4, 0x74

    if-eq v6, v4, :cond_8

    const/16 v4, 0x75

    if-eq v6, v4, :cond_7

    goto :goto_4

    :cond_7
    const/4 v5, 0x2

    const/4 v10, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto :goto_1

    :cond_8
    const/16 v6, 0x9

    goto :goto_4

    :cond_9
    const/16 v6, 0xd

    goto :goto_4

    :cond_a
    const/16 v6, 0xa

    goto :goto_4

    :cond_b
    const/16 v6, 0xc

    goto :goto_4

    :cond_c
    const/16 v6, 0x8

    :goto_4
    const/4 v4, 0x5

    :cond_d
    :goto_5
    const/4 v10, 0x0

    goto/16 :goto_b

    :cond_e
    const/4 v5, 0x2

    const/4 v10, 0x0

    const/4 v12, 0x3

    goto/16 :goto_1

    :cond_f
    const/4 v5, 0x2

    :goto_6
    const/4 v10, 0x0

    const/4 v12, 0x5

    goto/16 :goto_1

    :cond_10
    if-eq v6, v10, :cond_21

    if-eq v6, v5, :cond_11

    const/16 v8, 0x21

    if-eq v6, v8, :cond_15

    const/16 v8, 0x23

    if-eq v6, v8, :cond_15

    const/16 v5, 0x3a

    if-eq v6, v5, :cond_14

    const/16 v5, 0x3d

    if-eq v6, v5, :cond_14

    const/16 v5, 0x5c

    if-eq v6, v5, :cond_12

    if-eq v6, v4, :cond_11

    goto :goto_9

    :cond_11
    const/4 v4, 0x5

    goto/16 :goto_d

    :cond_12
    if-ne v12, v7, :cond_13

    move v14, v0

    :cond_13
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_14
    if-ne v14, v9, :cond_18

    move v14, v0

    const/4 v5, 0x2

    const/4 v8, 0x1

    :goto_7
    const/4 v10, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_15
    if-eqz v16, :cond_18

    .line 20
    :cond_16
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v6

    if-ne v6, v9, :cond_17

    goto :goto_8

    :cond_17
    int-to-char v6, v6

    if-eq v6, v5, :cond_1c

    if-eq v6, v10, :cond_1c

    if-ne v6, v4, :cond_16

    :goto_8
    goto :goto_a

    .line 21
    :cond_18
    :goto_9
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v4, 0x3

    if-ne v12, v4, :cond_19

    const/4 v12, 0x5

    :cond_19
    if-eqz v0, :cond_1b

    if-eq v0, v14, :cond_1b

    const/4 v4, 0x5

    if-ne v12, v4, :cond_1a

    goto :goto_a

    :cond_1a
    if-ne v14, v9, :cond_1e

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x4

    goto/16 :goto_1

    :cond_1b
    const/4 v4, 0x5

    :cond_1c
    :goto_a
    const/4 v5, 0x2

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_1d
    const/4 v4, 0x5

    :cond_1e
    move v10, v12

    if-eq v10, v4, :cond_d

    const/4 v5, 0x3

    if-ne v10, v5, :cond_1f

    goto :goto_5

    :cond_1f
    :goto_b
    if-ne v10, v7, :cond_20

    move v14, v0

    const/4 v12, 0x0

    goto :goto_c

    :cond_20
    move v12, v10

    :goto_c
    add-int/lit8 v5, v0, 0x1

    .line 22
    aput-char v6, v11, v0

    move v0, v5

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/16 v16, 0x0

    goto/16 :goto_1

    :goto_d
    const/4 v5, 0x3

    goto :goto_e

    :cond_21
    const/4 v4, 0x5

    const/4 v5, 0x3

    if-ne v12, v5, :cond_22

    const/4 v5, 0x2

    const/4 v8, 0x1

    goto/16 :goto_6

    :cond_22
    :goto_e
    if-gtz v0, :cond_23

    if-nez v0, :cond_25

    if-nez v14, :cond_25

    :cond_23
    if-ne v14, v9, :cond_24

    move v14, v0

    .line 23
    :cond_24
    new-instance v6, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v6, v11, v8, v0}, Ljava/lang/String;-><init>([CII)V

    .line 24
    const-class v0, Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {v6, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, -0x1

    goto/16 :goto_0

    :cond_26
    :goto_f
    const/4 v3, 0x2

    if-ne v12, v3, :cond_28

    if-le v13, v7, :cond_27

    goto :goto_10

    .line 25
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "luni.08"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :goto_10
    if-ne v14, v9, :cond_29

    if-lez v0, :cond_29

    move v14, v0

    :cond_29
    if-ltz v14, :cond_2b

    .line 26
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v11, v4, v0}, Ljava/lang/String;-><init>([CII)V

    .line 27
    const-class v0, Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {v3, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/browser/acra/ReportField;

    .line 28
    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v12, v4, :cond_2a

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u0000"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 30
    :cond_2a
    invoke-virtual {v1, v0, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_2b
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public merge(Lcom/oculus/browser/acra/CrashReportData;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/browser/acra/ReportField;

    .line 2
    invoke-virtual {p0, v1}, Lcom/oculus/browser/acra/CrashReportData;->getProperty(Lcom/oculus/browser/acra/ReportField;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lcom/oculus/browser/acra/CrashReportData;->getProperty(Lcom/oculus/browser/acra/ReportField;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p0, p3, p1, p2}, Lcom/oculus/browser/acra/CrashReportData;->storeKeyValuePair(Ljava/io/Writer;Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/oculus/browser/acra/CrashReportData;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setProperty(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/CrashReportData;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/oculus/browser/acra/CrashReportData;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/oculus/browser/acra/CrashReportData;->store(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public store(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/oculus/browser/acra/CrashReportData;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/oculus/browser/acra/CrashReportData;->storeComment(Ljava/io/Writer;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/browser/acra/ReportField;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v1}, Lcom/oculus/browser/acra/CrashReportData;->storeKeyValuePair(Ljava/io/Writer;Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public storeComment(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/CrashReportData;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "#"

    .line 2
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 4
    sget-object p2, Lcom/oculus/browser/acra/CrashReportData;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public storeKeyValuePair(Ljava/io/Writer;Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/CrashReportData;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p3, :cond_0

    const-string p3, ""

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    div-int/lit8 v4, v1, 0x5

    add-int/2addr v1, v4

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5
    invoke-direct {p0, v3, p2, v2}, Lcom/oculus/browser/acra/CrashReportData;->dumpString(Ljava/lang/Appendable;Ljava/lang/String;Z)V

    const/16 p2, 0x3d

    .line 6
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    .line 7
    invoke-direct {p0, v3, p3, p2}, Lcom/oculus/browser/acra/CrashReportData;->dumpString(Ljava/lang/Appendable;Ljava/lang/String;Z)V

    .line 8
    sget-object p2, Lcom/oculus/browser/acra/CrashReportData;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/browser/acra/CrashReportData;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/acra/CrashReportData;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 3
    :try_start_0
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :catch_0
    :try_start_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: encoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not supported, using UTF-8 as default encoding"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p3, "UTF-8"

    goto :goto_0

    .line 5
    :catch_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: encoding name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is illegal, using UTF-8 as default encoding"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p3, "UTF-8"

    .line 6
    :goto_0
    new-instance v1, Ljava/io/PrintStream;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string p1, "<?xml version=\"1.0\" encoding=\""

    .line 7
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p1, "\"?>"

    .line 9
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p1, "<!DOCTYPE properties SYSTEM \""

    .line 10
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p1, "http://java.sun.com/dtd/properties.dtd"

    .line 11
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p1, "\">"

    .line 12
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p1, "<properties>"

    .line 13
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "<comment>"

    .line 14
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p2}, Lcom/oculus/browser/acra/CrashReportData;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p1, "</comment>"

    .line 16
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    .line 19
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v2, "<entry key=\""

    .line 20
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p3}, Lcom/oculus/browser/acra/CrashReportData;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p3, "\">"

    .line 22
    invoke-virtual {v1, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p2}, Lcom/oculus/browser/acra/CrashReportData;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p2, "</entry>"

    .line 24
    invoke-virtual {v1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "</properties>"

    .line 25
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 27
    monitor-exit v0

    return-void

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
