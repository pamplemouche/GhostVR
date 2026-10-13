.class public Lcom/oculus/ocms/library/provider/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;
    }
.end annotation


# instance fields
.field public final authority:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public final queryMethod:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/oculus/ocms/library/provider/ContentType;->authority:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->MULTIPLE:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    if-ne p3, v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/ocms/library/provider/ContentType;->path:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/oculus/ocms/library/provider/ContentType;->queryMethod:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/ocms/library/provider/ContentType;->uri:Landroid/net/Uri;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vnd.android.cursor."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->MULTIPLE:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    if-ne p3, v0, :cond_1

    const-string v0, "dir"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/ocms/library/provider/ContentType;->mimeType:Ljava/lang/String;

    .line 52
    return-void

    .line 38
    :cond_0
    const-string v0, "/*"

    goto :goto_0

    .line 43
    :cond_1
    const-string v0, "item"

    goto :goto_1
.end method


# virtual methods
.method public addToMatcher(Landroid/content/UriMatcher;)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/ocms/library/provider/ContentType;->authority:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/ocms/library/provider/ContentType;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/ocms/library/provider/ContentType;->queryMethod:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    iget v2, v2, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->value:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oculus/ocms/library/provider/ContentType;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
