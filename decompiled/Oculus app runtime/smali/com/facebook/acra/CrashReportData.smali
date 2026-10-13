.class public Lcom/facebook/acra/CrashReportData;
.super Ljava/util/EnumMap;
.source "CrashReportData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "Lcom/facebook/acra/ReportField;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTINUE:I = 0x3

.field private static final IGNORE:I = 0x5

.field private static final KEY_DONE:I = 0x4

.field private static final NONE:I = 0x0

.field private static final PROP_DTD_NAME:Ljava/lang/String; = "http://java.sun.com/dtd/properties.dtd"

.field private static final SLASH:I = 0x1

.field private static final UNICODE:I = 0x2

.field private static lineSeparator:Ljava/lang/String; = "\n"

.field private static final serialVersionUID:J = 0x3912d07a70363e98L


# instance fields
.field protected defaults:Lcom/facebook/acra/CrashReportData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 84
    const-class v0, Lcom/facebook/acra/ReportField;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/acra/CrashReportData;)V
    .locals 1

    .line 95
    const-class v0, Lcom/facebook/acra/ReportField;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 96
    iput-object p1, p0, Lcom/facebook/acra/CrashReportData;->defaults:Lcom/facebook/acra/CrashReportData;

    return-void
.end method

.method private dumpString(Ljava/lang/Appendable;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-nez p3, :cond_0

    if-lez v0, :cond_0

    .line 102
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_0

    const-string v3, "\\ "

    .line 103
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    .line 108
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

    .line 120
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_3

    :pswitch_2
    const-string v4, "\\f"

    .line 117
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_3

    :pswitch_3
    const-string v4, "\\n"

    .line 114
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_3

    :pswitch_4
    const-string v4, "\\t"

    .line 111
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

    .line 128
    :cond_2
    invoke-interface {p1, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_3
    if-lt v4, v2, :cond_4

    const/16 v5, 0x7e

    if-gt v4, v5, :cond_4

    .line 131
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_3

    .line 133
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\u"

    .line 134
    invoke-interface {p1, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v5, 0x0

    .line 135
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x4

    if-ge v5, v6, :cond_5

    const/16 v6, 0x30

    .line 136
    invoke-interface {p1, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 138
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

    .line 563
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lcom/facebook/acra/ReportField;",
            ">;"
        }
    .end annotation

    .line 500
    invoke-virtual {p0}, Lcom/facebook/acra/CrashReportData;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "&"

    const-string v1, "&amp;"

    .line 830
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

    .line 831
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getProperty(Lcom/facebook/acra/ReportField;)Ljava/lang/String;
    .locals 2

    .line 154
    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/facebook/acra/CrashReportData;->defaults:Lcom/facebook/acra/CrashReportData;

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v1, p1}, Lcom/facebook/acra/CrashReportData;->getProperty(Lcom/facebook/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getProperty(Lcom/facebook/acra/ReportField;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 174
    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/facebook/acra/CrashReportData;->defaults:Lcom/facebook/acra/CrashReportData;

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v1, p1}, Lcom/facebook/acra/CrashReportData;->getProperty(Lcom/facebook/acra/ReportField;)Ljava/lang/String;

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

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 197
    invoke-direct {p0}, Lcom/facebook/acra/CrashReportData;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 198
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/acra/ReportField;

    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    .line 201
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    invoke-super {p0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 203
    iget-object v4, p0, Lcom/facebook/acra/CrashReportData;->defaults:Lcom/facebook/acra/CrashReportData;

    :goto_1
    if-nez v3, :cond_0

    .line 205
    invoke-virtual {v4, v2}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 206
    iget-object v4, v4, Lcom/facebook/acra/CrashReportData;->defaults:Lcom/facebook/acra/CrashReportData;

    goto :goto_1

    .line 208
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x28

    const/4 v5, 0x0

    if-le v2, v4, :cond_1

    const/16 v2, 0x25

    .line 209
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 212
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_2
    return-void

    .line 194
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public list(Ljava/io/PrintWriter;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 232
    invoke-direct {p0}, Lcom/facebook/acra/CrashReportData;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 233
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/acra/ReportField;

    .line 235
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    .line 236
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    invoke-super {p0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 238
    iget-object v4, p0, Lcom/facebook/acra/CrashReportData;->defaults:Lcom/facebook/acra/CrashReportData;

    :goto_1
    if-nez v3, :cond_0

    .line 240
    invoke-virtual {v4, v2}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 241
    iget-object v4, v4, Lcom/facebook/acra/CrashReportData;->defaults:Lcom/facebook/acra/CrashReportData;

    goto :goto_1

    .line 243
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x28

    const/4 v5, 0x0

    if-le v2, v4, :cond_1

    const/16 v2, 0x25

    .line 244
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    .line 245
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 247
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_2
    return-void

    .line 229
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 267
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const p1, 0x7fffffff

    .line 268
    invoke-virtual {v0, p1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 269
    invoke-direct {p0, v0}, Lcom/facebook/acra/CrashReportData;->isEbcdic(Ljava/io/BufferedInputStream;)Z

    move-result p1

    .line 270
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    if-nez p1, :cond_0

    .line 273
    new-instance p1, Ljava/io/InputStreamReader;

    const-string v1, "ISO8859-1"

    invoke-direct {p1, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/facebook/acra/CrashReportData;->load(Ljava/io/Reader;)V

    goto :goto_0

    .line 275
    :cond_0
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1}, Lcom/facebook/acra/CrashReportData;->load(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 265
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized load(Ljava/io/Reader;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    const/16 v0, 0x28

    .line 327
    :try_start_0
    new-array v0, v0, [C

    .line 330
    new-instance v2, Ljava/io/BufferedReader;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v4, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v10, v0

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x1

    .line 333
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v5

    if-eq v5, v8, :cond_26

    if-nez v5, :cond_0

    goto/16 :goto_f

    :cond_0
    int-to-char v5, v5

    .line 341
    array-length v3, v10

    if-ne v0, v3, :cond_1

    .line 342
    array-length v3, v10

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    .line 343
    invoke-static {v10, v9, v3, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v3

    :cond_1
    const/16 v3, 0x85

    const/16 v9, 0xa

    if-ne v11, v4, :cond_6

    const/16 v4, 0x10

    .line 347
    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-ltz v4, :cond_2

    shl-int/lit8 v14, v14, 0x4

    add-int/2addr v14, v4

    add-int/lit8 v12, v12, 0x1

    if-ge v12, v6, :cond_3

    const/4 v4, 0x2

    :goto_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    if-le v12, v6, :cond_5

    :cond_3
    add-int/lit8 v4, v0, 0x1

    int-to-char v11, v14

    .line 358
    aput-char v11, v10, v0

    if-eq v5, v9, :cond_4

    if-eq v5, v3, :cond_4

    move v0, v4

    const/4 v4, 0x2

    goto/16 :goto_7

    :cond_4
    move v0, v4

    const/4 v11, 0x0

    goto :goto_3

    .line 355
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "luni.09"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    const/16 v4, 0xd

    if-ne v11, v7, :cond_10

    if-eq v5, v9, :cond_f

    if-eq v5, v4, :cond_e

    const/16 v11, 0x62

    if-eq v5, v11, :cond_c

    const/16 v11, 0x66

    if-eq v5, v11, :cond_b

    const/16 v11, 0x6e

    if-eq v5, v11, :cond_a

    const/16 v9, 0x72

    if-eq v5, v9, :cond_9

    if-eq v5, v3, :cond_f

    const/16 v3, 0x74

    if-eq v5, v3, :cond_8

    const/16 v3, 0x75

    if-eq v5, v3, :cond_7

    goto :goto_4

    :cond_7
    const/4 v4, 0x2

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto :goto_1

    :cond_8
    const/16 v5, 0x9

    goto :goto_4

    :cond_9
    const/16 v5, 0xd

    goto :goto_4

    :cond_a
    const/16 v5, 0xa

    goto :goto_4

    :cond_b
    const/16 v5, 0xc

    goto :goto_4

    :cond_c
    const/16 v5, 0x8

    :goto_4
    const/4 v3, 0x5

    :cond_d
    :goto_5
    const/4 v9, 0x0

    goto/16 :goto_b

    :cond_e
    const/4 v4, 0x2

    const/4 v9, 0x0

    const/4 v11, 0x3

    goto/16 :goto_1

    :cond_f
    const/4 v4, 0x2

    :goto_6
    const/4 v9, 0x0

    const/4 v11, 0x5

    goto/16 :goto_1

    :cond_10
    if-eq v5, v9, :cond_21

    if-eq v5, v4, :cond_11

    const/16 v7, 0x21

    if-eq v5, v7, :cond_15

    const/16 v7, 0x23

    if-eq v5, v7, :cond_15

    const/16 v4, 0x3a

    if-eq v5, v4, :cond_14

    const/16 v4, 0x3d

    if-eq v5, v4, :cond_14

    const/16 v4, 0x5c

    if-eq v5, v4, :cond_12

    if-eq v5, v3, :cond_11

    goto :goto_9

    :cond_11
    const/4 v3, 0x5

    goto/16 :goto_d

    :cond_12
    if-ne v11, v6, :cond_13

    move v13, v0

    :cond_13
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_14
    if-ne v13, v8, :cond_18

    move v13, v0

    const/4 v4, 0x2

    const/4 v7, 0x1

    :goto_7
    const/4 v9, 0x0

    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_15
    if-eqz v15, :cond_18

    .line 399
    :cond_16
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v5

    if-ne v5, v8, :cond_17

    goto :goto_8

    :cond_17
    int-to-char v5, v5

    if-eq v5, v4, :cond_1c

    if-eq v5, v9, :cond_1c

    if-ne v5, v3, :cond_16

    :goto_8
    goto :goto_a

    .line 447
    :cond_18
    :goto_9
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x3

    if-ne v11, v3, :cond_19

    const/4 v11, 0x5

    :cond_19
    if-eqz v0, :cond_1b

    if-eq v0, v13, :cond_1b

    const/4 v3, 0x5

    if-ne v11, v3, :cond_1a

    goto :goto_a

    :cond_1a
    if-ne v13, v8, :cond_1e

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x4

    goto/16 :goto_1

    :cond_1b
    const/4 v3, 0x5

    :cond_1c
    :goto_a
    const/4 v4, 0x2

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_1d
    const/4 v3, 0x5

    :cond_1e
    move v9, v11

    if-eq v9, v3, :cond_d

    const/4 v4, 0x3

    if-ne v9, v4, :cond_1f

    goto :goto_5

    :cond_1f
    :goto_b
    if-ne v9, v6, :cond_20

    move v13, v0

    const/4 v11, 0x0

    goto :goto_c

    :cond_20
    move v11, v9

    :goto_c
    add-int/lit8 v4, v0, 0x1

    .line 469
    aput-char v5, v10, v0

    move v0, v4

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v15, 0x0

    goto/16 :goto_1

    :goto_d
    const/4 v4, 0x3

    goto :goto_e

    :cond_21
    const/4 v3, 0x5

    const/4 v4, 0x3

    if-ne v11, v4, :cond_22

    const/4 v4, 0x2

    const/4 v7, 0x1

    goto/16 :goto_6

    :cond_22
    :goto_e
    if-gtz v0, :cond_23

    if-nez v0, :cond_25

    if-nez v13, :cond_25

    :cond_23
    if-ne v13, v8, :cond_24

    move v13, v0

    .line 426
    :cond_24
    new-instance v5, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v5, v10, v7, v0}, Ljava/lang/String;-><init>([CII)V

    .line 427
    const-class v0, Lcom/facebook/acra/ReportField;

    invoke-virtual {v5, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, -0x1

    goto/16 :goto_0

    :cond_26
    :goto_f
    const/4 v2, 0x2

    if-ne v11, v2, :cond_28

    if-le v12, v6, :cond_27

    goto :goto_10

    .line 473
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "luni.08"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :goto_10
    if-ne v13, v8, :cond_29

    if-lez v0, :cond_29

    move v13, v0

    :cond_29
    if-ltz v13, :cond_2b

    .line 479
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v10, v3, v0}, Ljava/lang/String;-><init>([CII)V

    .line 480
    const-class v0, Lcom/facebook/acra/ReportField;

    invoke-virtual {v2, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ReportField;

    .line 481
    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v11, v3, :cond_2a

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u0000"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    :cond_2a
    invoke-virtual {v1, v0, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    :cond_2b
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public merge(Lcom/facebook/acra/CrashReportData;)V
    .locals 3

    .line 740
    invoke-virtual {p1}, Lcom/facebook/acra/CrashReportData;->keySet()Ljava/util/Set;

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

    check-cast v1, Lcom/facebook/acra/ReportField;

    .line 741
    invoke-virtual {p0, v1}, Lcom/facebook/acra/CrashReportData;->getProperty(Lcom/facebook/acra/ReportField;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 742
    invoke-virtual {p1, v1}, Lcom/facebook/acra/CrashReportData;->getProperty(Lcom/facebook/acra/ReportField;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    invoke-virtual {p0, p1, p2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 494
    invoke-virtual {p0, p3, p1, p2}, Lcom/facebook/acra/CrashReportData;->storeKeyValuePair(Ljava/io/Writer;Lcom/facebook/acra/ReportField;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 522
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/acra/CrashReportData;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setProperty(Lcom/facebook/acra/ReportField;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 538
    invoke-virtual {p0, p1, p2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 558
    :try_start_0
    invoke-static {p1}, Lcom/facebook/acra/CrashReportData;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/facebook/acra/CrashReportData;->store(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized store(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 584
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/acra/CrashReportData;->storeComment(Ljava/io/Writer;Ljava/lang/String;)V

    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/acra/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 587
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/acra/ReportField;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lcom/facebook/acra/CrashReportData;->storeKeyValuePair(Ljava/io/Writer;Lcom/facebook/acra/ReportField;Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :cond_1
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized storeComment(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "#"

    .line 593
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 595
    sget-object p2, Lcom/facebook/acra/CrashReportData;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized storeKeyValuePair(Ljava/io/Writer;Lcom/facebook/acra/ReportField;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 600
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p3, :cond_0

    const-string p3, ""

    .line 603
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    div-int/lit8 v3, v0, 0x5

    add-int/2addr v0, v3

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 607
    invoke-direct {p0, v2, p2, v1}, Lcom/facebook/acra/CrashReportData;->dumpString(Ljava/lang/Appendable;Ljava/lang/String;Z)V

    const/16 p2, 0x3d

    .line 608
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    .line 609
    invoke-direct {p0, v2, p3, p2}, Lcom/facebook/acra/CrashReportData;->dumpString(Ljava/lang/Appendable;Ljava/lang/String;Z)V

    .line 610
    sget-object p2, Lcom/facebook/acra/CrashReportData;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 729
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/acra/CrashReportData;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 784
    :try_start_0
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 789
    :catch_0
    :try_start_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not supported, using UTF-8 as default encoding"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p3, "UTF-8"

    goto :goto_0

    .line 786
    :catch_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: encoding name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is illegal, using UTF-8 as default encoding"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p3, "UTF-8"

    .line 793
    :goto_0
    new-instance v0, Ljava/io/PrintStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string p1, "<?xml version=\"1.0\" encoding=\""

    .line 795
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v0, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p1, "\"?>"

    .line 797
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p1, "<!DOCTYPE properties SYSTEM \""

    .line 799
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p1, "http://java.sun.com/dtd/properties.dtd"

    .line 800
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p1, "\">"

    .line 801
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p1, "<properties>"

    .line 803
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "<comment>"

    .line 806
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 807
    invoke-direct {p0, p2}, Lcom/facebook/acra/CrashReportData;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p1, "</comment>"

    .line 808
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 811
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/acra/CrashReportData;->entrySet()Ljava/util/Set;

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

    .line 812
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/facebook/acra/ReportField;

    invoke-virtual {p3}, Lcom/facebook/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object p3

    .line 813
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, "<entry key=\""

    .line 814
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 815
    invoke-direct {p0, p3}, Lcom/facebook/acra/CrashReportData;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p3, "\">"

    .line 816
    invoke-virtual {v0, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 817
    invoke-direct {p0, p2}, Lcom/facebook/acra/CrashReportData;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p2, "</entry>"

    .line 818
    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "</properties>"

    .line 820
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 822
    monitor-exit p0

    return-void

    .line 772
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
