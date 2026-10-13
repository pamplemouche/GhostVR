.class public final Lcom/oculus/library/provider/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CONTENT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oculus/library/provider/ContentType$QueryMethod;",
            "Lcom/oculus/library/provider/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTENT_URI_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oculus/library/provider/Constants;->CONTENT:Ljava/util/HashMap;

    .line 14
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/oculus/library/provider/Constants;->CONTENT_URI_MATCHER:Landroid/content/UriMatcher;

    .line 17
    new-instance v0, Lcom/oculus/library/provider/ContentType;

    const-string v1, "com.oculus.library"

    const-string v2, "apps"

    sget-object v3, Lcom/oculus/library/provider/ContentType$QueryMethod;->SINGLE:Lcom/oculus/library/provider/ContentType$QueryMethod;

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/library/provider/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/provider/ContentType$QueryMethod;)V

    .line 22
    new-instance v1, Lcom/oculus/library/provider/ContentType;

    const-string v2, "com.oculus.library"

    const-string v3, "apps"

    sget-object v4, Lcom/oculus/library/provider/ContentType$QueryMethod;->MULTIPLE:Lcom/oculus/library/provider/ContentType$QueryMethod;

    invoke-direct {v1, v2, v3, v4}, Lcom/oculus/library/provider/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/provider/ContentType$QueryMethod;)V

    .line 27
    new-instance v2, Lcom/oculus/library/provider/ContentType;

    const-string v3, "com.oculus.library"

    const-string v4, "id"

    sget-object v5, Lcom/oculus/library/provider/ContentType$QueryMethod;->ID:Lcom/oculus/library/provider/ContentType$QueryMethod;

    invoke-direct {v2, v3, v4, v5}, Lcom/oculus/library/provider/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/provider/ContentType$QueryMethod;)V

    .line 33
    sget-object v3, Lcom/oculus/library/provider/Constants;->CONTENT:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/oculus/library/provider/ContentType;->queryMethod:Lcom/oculus/library/provider/ContentType$QueryMethod;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v3, Lcom/oculus/library/provider/Constants;->CONTENT:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/oculus/library/provider/ContentType;->queryMethod:Lcom/oculus/library/provider/ContentType$QueryMethod;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v3, Lcom/oculus/library/provider/Constants;->CONTENT:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/oculus/library/provider/ContentType;->queryMethod:Lcom/oculus/library/provider/ContentType$QueryMethod;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v3, Lcom/oculus/library/provider/Constants;->CONTENT_URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, v3}, Lcom/oculus/library/provider/ContentType;->addToMatcher(Landroid/content/UriMatcher;)V

    .line 38
    sget-object v0, Lcom/oculus/library/provider/Constants;->CONTENT_URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, v0}, Lcom/oculus/library/provider/ContentType;->addToMatcher(Landroid/content/UriMatcher;)V

    .line 39
    sget-object v0, Lcom/oculus/library/provider/Constants;->CONTENT_URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, v0}, Lcom/oculus/library/provider/ContentType;->addToMatcher(Landroid/content/UriMatcher;)V

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentTypeFor(Landroid/net/Uri;)Lcom/oculus/library/provider/ContentType;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/oculus/library/provider/Constants;->CONTENT_URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 50
    invoke-static {v0}, Lcom/oculus/library/provider/ContentType$QueryMethod;->fromValue(I)Lcom/oculus/library/provider/ContentType$QueryMethod;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/oculus/library/provider/Constants;->CONTENT:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/provider/ContentType;

    return-object v0
.end method
