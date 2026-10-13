.class public final Lcom/oculus/ocms/library/provider/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CONTENT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;",
            "Lcom/oculus/ocms/library/provider/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTENT_URI_MATCHER:Landroid/content/UriMatcher;

.field public static final PUBLICCONTENT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;",
            "Lcom/oculus/ocms/library/provider/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_CONTENT_URI_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oculus/ocms/library/provider/Constants;->CONTENT:Ljava/util/HashMap;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oculus/ocms/library/provider/Constants;->PUBLICCONTENT:Ljava/util/HashMap;

    .line 17
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/oculus/ocms/library/provider/Constants;->CONTENT_URI_MATCHER:Landroid/content/UriMatcher;

    .line 18
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/oculus/ocms/library/provider/Constants;->PUBLIC_CONTENT_URI_MATCHER:Landroid/content/UriMatcher;

    .line 21
    new-instance v0, Lcom/oculus/ocms/library/provider/ContentType;

    const-string v1, "com.oculus.ocms.library"

    const-string v2, "apps"

    sget-object v3, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->SINGLE:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/ocms/library/provider/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;)V

    .line 26
    new-instance v1, Lcom/oculus/ocms/library/provider/ContentType;

    const-string v2, "com.oculus.ocms.library"

    const-string v3, "apps"

    sget-object v4, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->MULTIPLE:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    invoke-direct {v1, v2, v3, v4}, Lcom/oculus/ocms/library/provider/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;)V

    .line 31
    new-instance v2, Lcom/oculus/ocms/library/provider/ContentType;

    const-string v3, "com.oculus.ocms.publiclibrary"

    const-string v4, "apps"

    sget-object v5, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->SINGLE:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    invoke-direct {v2, v3, v4, v5}, Lcom/oculus/ocms/library/provider/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;)V

    .line 36
    new-instance v3, Lcom/oculus/ocms/library/provider/ContentType;

    const-string v4, "com.oculus.ocms.publiclibrary"

    const-string v5, "apps"

    sget-object v6, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->MULTIPLE:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    invoke-direct {v3, v4, v5, v6}, Lcom/oculus/ocms/library/provider/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;)V

    .line 42
    sget-object v4, Lcom/oculus/ocms/library/provider/Constants;->CONTENT:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/oculus/ocms/library/provider/ContentType;->queryMethod:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v4, Lcom/oculus/ocms/library/provider/Constants;->CONTENT:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/oculus/ocms/library/provider/ContentType;->queryMethod:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v4, Lcom/oculus/ocms/library/provider/Constants;->PUBLICCONTENT:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/oculus/ocms/library/provider/ContentType;->queryMethod:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v4, Lcom/oculus/ocms/library/provider/Constants;->PUBLICCONTENT:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/oculus/ocms/library/provider/ContentType;->queryMethod:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v4, Lcom/oculus/ocms/library/provider/Constants;->CONTENT_URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, v4}, Lcom/oculus/ocms/library/provider/ContentType;->addToMatcher(Landroid/content/UriMatcher;)V

    .line 48
    sget-object v0, Lcom/oculus/ocms/library/provider/Constants;->CONTENT_URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, v0}, Lcom/oculus/ocms/library/provider/ContentType;->addToMatcher(Landroid/content/UriMatcher;)V

    .line 49
    sget-object v0, Lcom/oculus/ocms/library/provider/Constants;->PUBLIC_CONTENT_URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, v0}, Lcom/oculus/ocms/library/provider/ContentType;->addToMatcher(Landroid/content/UriMatcher;)V

    .line 50
    sget-object v0, Lcom/oculus/ocms/library/provider/Constants;->PUBLIC_CONTENT_URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, v0}, Lcom/oculus/ocms/library/provider/ContentType;->addToMatcher(Landroid/content/UriMatcher;)V

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentTypeFor(Landroid/net/Uri;)Lcom/oculus/ocms/library/provider/ContentType;
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/oculus/ocms/library/provider/Constants;->CONTENT_URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 61
    invoke-static {v0}, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->fromValue(I)Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/oculus/ocms/library/provider/Constants;->CONTENT:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/ocms/library/provider/ContentType;

    return-object v0
.end method

.method public static getPublicContentTypeFor(Landroid/net/Uri;)Lcom/oculus/ocms/library/provider/ContentType;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/oculus/ocms/library/provider/Constants;->PUBLIC_CONTENT_URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 74
    invoke-static {v0}, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->fromValue(I)Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/oculus/ocms/library/provider/Constants;->PUBLICCONTENT:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/ocms/library/provider/ContentType;

    return-object v0
.end method
