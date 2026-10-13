.class public Lcom/oculus/browser/acra/util/HttpUtils$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/oculus/browser/acra/util/HttpRequest$PostEntity;


# instance fields
.field public final synthetic val$parameters:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/acra/util/HttpUtils$1;->val$parameters:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 2
    new-instance p1, Lcom/oculus/browser/acra/util/UrlEncodingWriter;

    invoke-direct {p1, v0}, Lcom/oculus/browser/acra/util/UrlEncodingWriter;-><init>(Ljava/io/Writer;)V

    .line 3
    iget-object v1, p0, Lcom/oculus/browser/acra/util/HttpUtils$1;->val$parameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_0

    const/16 v2, 0x26

    .line 5
    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 6
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    .line 7
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/FilterWriter;->write(Ljava/lang/String;)V

    const/16 v3, 0x3d

    .line 8
    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(I)V

    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/FilterWriter;->write(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method
