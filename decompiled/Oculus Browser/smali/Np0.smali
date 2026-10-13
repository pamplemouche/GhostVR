.class public LNp0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final f:Ljava/util/HashSet;

.field public static final g:Ljava/util/HashSet;

.field public static final h:LNp0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/CharSequence;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-string v5, "javascript"

    const-string v6, "chrome"

    const-string v0, "about"

    const-string v1, "data"

    const-string v2, "file"

    const-string v3, "ftp"

    const-string v4, "inline"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, LsT;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, LNp0;->f:Ljava/util/HashSet;

    const-string v8, "javascript"

    const-string v9, "chrome"

    const-string v1, "about"

    const-string v2, "data"

    const-string v3, "file"

    const-string v4, "ftp"

    const-string v5, "http"

    const-string v6, "https"

    const-string v7, "inline"

    .line 3
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LsT;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, LNp0;->g:Ljava/util/HashSet;

    const-string v0, ""

    .line 4
    invoke-static {v0}, LNp0;->a(Ljava/lang/String;)LNp0;

    move-result-object v0

    sput-object v0, LNp0;->h:LNp0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LNp0;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, LNp0;->b:Ljava/lang/CharSequence;

    .line 4
    iput p3, p0, LNp0;->d:I

    .line 5
    iput p4, p0, LNp0;->e:I

    .line 6
    iput-object p5, p0, LNp0;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)LNp0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {v1, p0, v0, v0, v1}, LNp0;->a(Ljava/lang/String;Ljava/lang/CharSequence;IILjava/lang/String;)LNp0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/CharSequence;IILjava/lang/String;)LNp0;
    .locals 7

    .line 17
    new-instance v6, LNp0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LNp0;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;IILjava/lang/String;)V

    return-object v6
.end method

.method public static a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)LNp0;
    .locals 6

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x2f

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 5
    sget-object v2, LNp0;->f:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v4, v0, p2}, LNp0;->a(Ljava/lang/String;Ljava/lang/CharSequence;IILjava/lang/String;)LNp0;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    sget-object v2, LNp0;->g:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 9
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v5, 0x3a

    if-eq v2, v5, :cond_1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 10
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v5, -0x1

    if-ge v1, v2, :cond_4

    .line 11
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v1, -0x1

    :goto_2
    if-ne v1, v5, :cond_5

    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v4, v0, p2}, LNp0;->a(Ljava/lang/String;Ljava/lang/CharSequence;IILjava/lang/String;)LNp0;

    move-result-object p0

    return-object p0

    .line 13
    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_6

    .line 14
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, p1, v4, v0, p2}, LNp0;->a(Ljava/lang/String;Ljava/lang/CharSequence;IILjava/lang/String;)LNp0;

    move-result-object p0

    return-object p0

    .line 16
    :cond_6
    invoke-static {p0, p1, v4, v1, p2}, LNp0;->a(Ljava/lang/String;Ljava/lang/CharSequence;IILjava/lang/String;)LNp0;

    move-result-object p0

    return-object p0
.end method
