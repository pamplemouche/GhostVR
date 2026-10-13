.class public Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static volatile a:Ljava/lang/String;

.field public static volatile b:Z

.field public static volatile c:Z

.field public static d:Z

.field public static e:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->e:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 2
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.android.partnerbrowsercustomizations"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.partnerbrowsercustomizations"

    return-object v0
.end method

.method public static final synthetic a(LkW;)V
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, LkW;->cancel(Z)Z

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v1, "partner-homepage-for-testing"

    .line 2
    invoke-virtual {v0, v1}, LwT;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, LwT;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-static {p0}, LFO0;->d(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "PartnerCustomize"

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-static {p0}, LMm0;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "Partner homepage must be HTTP(S) or NewTabPage. Got invalid URL \"%s\""

    .line 6
    invoke-static {v2, p0, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 7
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x3e8

    if-le v1, v4, :cond_2

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "The homepage URL \"%s\" is too long."

    .line 8
    invoke-static {v2, p0, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_2
    return v3
.end method

.method public static isIncognitoDisabled()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->b:Z

    return v0
.end method
